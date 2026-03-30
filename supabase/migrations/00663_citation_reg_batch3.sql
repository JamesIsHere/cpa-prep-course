-- Migration: Citation backfill — REG batch 3 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Professional Ethics in Tax, Property Transactions: Basis, S Corporations, Tax Procedures

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (5 questions)
-- ============================================================

-- ID 2485: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 8.01, a gratuitous agent owes the same fiduciary duties as a compensated agent, including loyalty, obedience, care, accounting, and notification. The acceptance of the agency relationship — not the presence of compensation — triggers these obligations. However, unlike a paid agent held to ordinary care, some courts apply a slightly lower standard requiring only slight diligence from an uncompensated agent.'
WHERE id = 2485;

-- ID 2486: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 2.04, the doctrine of respondeat superior holds an employer vicariously liable for torts committed by an employee acting within the scope of employment. Liability attaches even if the employer did not authorize or know about the specific tortious act, because the employee was performing job-related duties. However, actions outside the scope of employment — such as personal errands or a frolic and detour — generally do not trigger employer vicarious liability.'
WHERE id = 2486;

-- ID 2487: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 6.01, when an agent acts for a disclosed principal whose identity is known to the third party, the principal is bound as the real party to the contract. The third party''s contractual remedies therefore run against the principal, not the agent. Unlike an undisclosed principal situation where the agent remains personally liable, the agent for a disclosed principal drops out of the transaction once the principal is bound, unless the agent personally guaranteed performance.'
WHERE id = 2487;

-- ID 2488: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 6.03, when an agent acts for an undisclosed principal, the third party may hold either the agent or the principal liable once the principal''s existence is discovered. The agent remains liable because the third party relied on the agent''s personal credit and reputation when entering the contract. Unlike a disclosed principal scenario where only the principal is liable, both parties are potentially liable here, though the third party must generally elect to hold one party liable once both are identified.'
WHERE id = 2488;

-- ID 2489: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 8.01, the duty of loyalty requires an agent to act solely in the principal''s best interests by disclosing all material information and avoiding conflicts of interest and self-dealing. Mitchell must disclose the developer''s above-market offer and refrain from purchasing the property for personal profit, because profiting at the principal''s expense breaches this fundamental fiduciary obligation. Unlike other duties such as care or obedience, the duty of loyalty is considered the most fundamental fiduciary duty and cannot be waived without the principal''s informed consent.'
WHERE id = 2489;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (1 questions)
-- ============================================================

-- ID 4812: Alternative Minimum Tax
UPDATE questions SET
  explanation = 'Under IRC Section 56(b)(1)(A), state and local tax (SALT) deductions — including state income taxes and property taxes — must be added back when computing alternative minimum taxable income (AMTI). This add-back exists because the AMT was designed to ensure taxpayers with substantial deductions still pay a minimum level of tax. Unlike SALT deductions, home mortgage interest on acquisition debt and investment interest expense are generally allowed for both regular tax and AMT purposes, making them incorrect choices for required AMT adjustments.'
WHERE id = 4812;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (4 questions)
-- ============================================================

-- ID 2457: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under UCC Section 2-201 and the common law Statute of Frauds, six categories of contracts must be evidenced by a writing to be enforceable, remembered by the mnemonic MYLEGS: Marriage (promises in consideration of marriage), Year (not performable within one year), Land (sale of real property interests), Executor (executor''s personal promise to pay estate debts), Goods (sale of goods $500 or more under UCC), and Suretyship (promises to pay another''s debt). While oral contracts are generally enforceable, these six categories require written evidence because of their significance and susceptibility to fraud.'
WHERE id = 2457;

-- ID 2459: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under common law contract principles and UCC Section 2-210, contract rights — especially the right to receive payment — are freely assignable unless the contract expressly prohibits assignment or the assignment would materially change the obligor''s duty. Davis''s assignment of the right to payment to First Bank is valid because payment rights are almost always assignable. However, unlike the right to receive payment, the obligation to paint (a duty involving personal skill) generally cannot be delegated without Evans''s consent.'
WHERE id = 2459;

-- ID 2460: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under UCC Section 2-601, the perfect tender rule requires that goods delivered under a sale-of-goods contract conform exactly to the contract specifications. Garcia''s delivery of only 80 widgets out of 100 contracted constitutes a material breach because the 20% shortfall exceeds any reasonable de minimis deviation. Unlike a minor breach that might allow only a claim for damages while performance continues, a material breach under the perfect tender rule entitles Harper to reject the nonconforming goods, suspend performance, and sue for damages.'
WHERE id = 2460;

-- ID 2461: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts Section 302, an intended third-party beneficiary — whether a donee or creditor beneficiary — may enforce the contract against the promisor once the beneficiary''s rights have vested. Rights vest when the beneficiary learns of and assents to the contract, materially changes position in reliance, or brings suit to enforce it. Unlike an intended beneficiary who has enforceable rights, an incidental beneficiary has no legal standing to enforce the contract because the contracting parties did not intend to benefit them directly.'
WHERE id = 2461;

-- ============================================================
-- BUSINESS STRUCTURES (4 questions)
-- ============================================================

-- ID 2509: Business Structures
UPDATE questions SET
  explanation = 'Under the Revised Uniform Partnership Act (RUPA) Section 306(a), each partner in a general partnership has joint and several liability for all partnership obligations. The supplier can collect the entire $250,000 remaining debt ($300,000 minus $50,000 partnership assets) from Tom personally, regardless of his proportionate share. Unlike a limited partner whose liability is capped at their capital contribution, a general partner''s personal assets are fully exposed, though Tom would have a right of contribution against Jerry for Jerry''s share.'
WHERE id = 2509;

-- ID 2510: Business Structures
UPDATE questions SET
  explanation = 'Under the Revised Uniform Limited Partnership Act (RULPA) Section 303, a limited partner''s liability is generally limited to their capital contribution to the partnership. Morgan''s maximum exposure is the $150,000 invested, not the full $400,000 in partnership debts. However, unlike a general partner who accepts unlimited personal liability, a limited partner retains this protection only if they do not exercise control over the business equivalent to a general partner under the control rule.'
WHERE id = 2510;

-- ID 2511: Business Structures
UPDATE questions SET
  explanation = 'Under the Revised Uniform Limited Partnership Act (RULPA) Section 403, general partners bear unlimited personal liability for all partnership debts, while limited partners risk only their capital contributions. The two general partners are personally liable for the full $500,000 debt and can be pursued individually for the entire amount. Unlike general partners, the ten limited partners'' exposure is capped at their invested capital, provided they have not participated in management activities that would trigger the control rule under Section 303.'
WHERE id = 2511;

-- ID 2512: Business Structures
UPDATE questions SET
  explanation = 'Under the Revised Uniform Limited Liability Company Act (RULLCA) Section 304, LLC members receive limited liability protection while retaining the right to actively participate in management. This is the key structural advantage over a general partnership, where active management participation exposes partners to unlimited personal liability. Unlike limited partners under RULPA who must avoid management control to preserve their liability shield, LLC members can fully manage the business without risking personal assets beyond their investment.'
WHERE id = 2512;

-- ============================================================
-- C CORPORATIONS (1 questions)
-- ============================================================

-- ID 2793: C Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 541, the personal holding company (PHC) tax is imposed at a rate of 20% on undistributed PHC income. For Thorn Corp, the tax is $500,000 multiplied by 20%, equaling $100,000. This penalty tax is imposed in addition to the regular corporate income tax to encourage PHCs to distribute passive income as dividends. Unlike the accumulated earnings tax under Section 531, which focuses on unreasonable accumulation of earnings, the PHC tax targets corporations that are primarily vehicles for holding passive investment income.'
WHERE id = 2793;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 200: Circular 230
UPDATE questions SET
  explanation = 'Under Treasury Circular 230 Section 10.34, a practitioner may not sign a return containing a position unless there is at least a reasonable basis for that position. If the position lacks substantial authority, it must be adequately disclosed on the return using Form 8275 or Form 8275-R to avoid penalties. Unlike a frivolous position that has no legal support and is prohibited outright, a position with reasonable basis may be taken provided the taxpayer is informed of the disclosure requirements and potential penalty exposure.'
WHERE id = 200;

-- ID 491: Circular 230
UPDATE questions SET
  explanation = 'Under IRC Section 6103, the IRS Discriminant Index Function (DIF) assigns scores based on how significantly a return''s characteristics deviate from statistical norms for comparable returns. Archer''s 91% expense ratio and home office deduction produce a high DIF score because they deviate substantially from the expected profile for self-employment returns at the $180,000 income level. Unlike Briggs''s simple W-2 return with a standard deduction that closely matches statistical norms, self-employment returns with unusually high deduction ratios trigger elevated audit risk because the DIF system compares each return''s profile against expected patterns rather than examining absolute dollar amounts in isolation.'
WHERE id = 491;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 2884: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under UCC Article 9, Section 9-310(a), the primary method of perfecting a security interest is filing a financing statement (Form UCC-1) with the appropriate filing office, typically the Secretary of State. Filing provides constructive public notice of the secured party''s interest and establishes priority over subsequent creditors. Unlike perfection by possession or control — which are alternative methods available for specific collateral types such as deposit accounts or investment property — filing is the default method applicable to most collateral including accounts receivable and inventory.'
WHERE id = 2884;

-- ID 2885: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under 11 U.S.C. Section 707(b), the means test was introduced by the Bankruptcy Abuse Prevention and Consumer Protection Act of 2005 to determine whether an individual debtor''s Chapter 7 filing is presumed to be an abuse. If the debtor''s income exceeds the state median and they have sufficient disposable income to fund a repayment plan, the case may be dismissed or converted to Chapter 13. Unlike Chapter 13 which requires a repayment plan, Chapter 7 provides a full discharge, so the means test serves as a gatekeeper to prevent higher-income debtors from using Chapter 7 to avoid repaying creditors.'
WHERE id = 2885;

-- ============================================================
-- FEDERAL TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 1164: Federal Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 6501(c)(1), when a taxpayer files a false or fraudulent return with the intent to evade tax, there is no statute of limitations for assessment — the IRS may assess additional tax at any time. Briggs''s intentional understatement of $120,000 constitutes fraud, so the normal three-year assessment period under Section 6501(a) does not apply. Unlike the six-year period that applies when gross income is understated by more than 25% under Section 6501(e), fraudulent returns face unlimited assessment time because the taxpayer''s intentional deception forfeits the protection of any limitations period.'
WHERE id = 1164;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (3 questions)
-- ============================================================

-- ID 4800: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under Securities Act of 1933, Regulation A+ (Tier 2) as amended by the JOBS Act, an issuer must file an offering circular with the SEC and obtain qualification before any sales can be made. Tier 2 permits offerings of up to $75 million in a 12-month period and allows sales to both accredited and non-accredited investors, subject to investment limits for non-accredited purchasers. Unlike a full Section 5 registration which requires extensive SEC review and ongoing reporting, Regulation A+ provides a simplified disclosure framework, though the securities are not automatically listed on an exchange.'
WHERE id = 4800;

-- ID 4804: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under state workers'' compensation statutes (see, e.g., Section 3600 of the California Labor Code as a representative model), employees who suffer work-related injuries receive statutory benefits — including medical expenses, disability payments, and rehabilitation — regardless of fault. Workers'' compensation operates as a no-fault system where the employee need not prove employer negligence. In exchange for guaranteed benefits, the exclusive remedy doctrine bars the employee from suing the employer in tort for workplace injuries, unlike common law negligence claims where the employee would need to prove fault but could potentially recover larger damages.'
WHERE id = 4804;

-- ID 11284: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under Securities Act Section 4(a)(2) and SEC Rule 506(c) of Regulation D, as enacted by the JOBS Act, issuers may use general solicitation and advertising — including television and social media — to offer securities, provided all purchasers are accredited investors and the issuer takes reasonable steps to verify their accredited status. Redwood''s use of television advertisements and social media for the $15 million offering to 40 verified accredited investors satisfies these requirements. Unlike Rule 506(b) which prohibits general solicitation entirely, Rule 506(c) was specifically designed to permit public marketing under strict investor verification conditions.'
WHERE id = 11284;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (2 questions)
-- ============================================================

-- ID 2680: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Section 24(a) as modified by the Tax Cuts and Jobs Act, the child tax credit is $2,000 per qualifying child (with potential increases for inflation adjustments). Under Section 24(d), the refundable portion — the additional child tax credit — is limited to $1,700 per child for 2026. Angela''s $1,800 tax liability absorbs $1,800 of the credit as a nonrefundable offset, and the remaining $700 (which is within the $1,700 refundable cap) is refundable. Unlike fully nonrefundable credits that are lost when they exceed tax liability, the additional child tax credit under Section 24(d) provides a refund for the unused portion up to the statutory cap.'
WHERE id = 2680;

-- ID 2681: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Section 21(c), the child and dependent care credit is computed on a maximum of $3,000 in employment-related expenses for one qualifying individual and $6,000 for two or more. Although Martin and Lisa paid $12,000, only $6,000 qualifies as the expense base for computing the credit. Unlike the child tax credit which provides a fixed dollar amount per child, the dependent care credit under Section 21 applies a percentage (ranging from 20% to 35% based on AGI) to the capped expense amount, and both spouses must have earned income to qualify.'
WHERE id = 2681;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 2708: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = 'Under IRC Section 55(d)(3), the AMT exemption for married filing jointly begins to phase out when AMTI exceeds the applicable threshold, approximately $1,079,800 for 2026 (indexed for inflation). The exemption is reduced by 25 cents for each dollar of AMTI above the threshold, fully phasing out at approximately $1,627,800. Unlike the regular tax standard deduction which has no phase-out based on income, the AMT exemption''s phase-out mechanism effectively increases the marginal AMT rate for taxpayers in the phase-out range, creating a hidden surcharge on high-income filers.'
WHERE id = 2708;

-- ID 2711: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = 'Under IRC Section 1411, the net investment income tax (NIIT) is 3.8% of the lesser of net investment income or MAGI exceeding the applicable threshold ($200,000 for single filers). Michael''s NIIT is calculated on the lesser of $60,000 (net investment income) or $75,000 ($275,000 MAGI minus $200,000 threshold), yielding $60,000 multiplied by 3.8% equaling $2,280. Unlike the additional Medicare tax under Section 3101(b)(2) which applies to earned income, the NIIT under Section 1411 targets unearned investment income including interest, dividends, capital gains, and rental income.'
WHERE id = 2711;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (3 questions)
-- ============================================================

-- ID 2652: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 62(a)(2)(D), the educator expense deduction is an above-the-line adjustment to gross income, limited to $300 for 2026. This above-the-line classification reduces AGI, which cascades through the return affecting AGI-sensitive provisions such as education credits, the rental loss allowance under Section 469(i), and the taxable percentage of Social Security benefits. Unlike an itemized deduction which only reduces taxable income and provides no benefit to the approximately 90% of filers who take the standard deduction after TCJA, the above-the-line educator deduction is available regardless of whether the taxpayer itemizes.'
WHERE id = 2652;

-- ID 2657: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 215 (as in effect for pre-2019 agreements), alimony paid under a divorce or separation agreement executed before January 1, 2019, is deductible by the payer as an above-the-line adjustment to gross income. Since Frank''s decree was executed in 2017, the pre-TCJA rules apply and the $12,000 is fully deductible. However, under the Tax Cuts and Jobs Act Section 11051, agreements executed after December 31, 2018, eliminate the alimony deduction entirely, making the execution date of the agreement the critical factor in determining deductibility.'
WHERE id = 2657;

-- ID 2659: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 164(b)(6) as enacted by the Tax Cuts and Jobs Act, the state and local tax (SALT) deduction is capped at $10,000 ($5,000 for married filing separately). Although Patricia paid $12,300 in combined state income taxes ($6,500) and property taxes ($5,800), her deduction is limited to the $10,000 cap. Unlike pre-TCJA law where the full $12,300 would have been deductible on Schedule A, the SALT cap applies to the aggregate of state and local income taxes (or sales taxes if elected) and property taxes, resulting in $2,300 of nondeductible taxes.'
WHERE id = 2659;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (4 questions)
-- ============================================================

-- ID 2729: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 152(d)(1)(B), a qualifying relative must have gross income below the exemption amount, which is approximately $5,050 for 2026 (indexed for inflation). If the potential dependent''s gross income equals or exceeds this threshold, they cannot be claimed as a qualifying relative regardless of the support provided. Unlike the qualifying child test under Section 152(c) which has no gross income requirement, the qualifying relative test imposes this income ceiling to ensure the dependent is genuinely financially dependent on the taxpayer.'
WHERE id = 2729;

-- ID 2730: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 152(d), Barbara''s mother meets all four tests for a qualifying relative: the income test ($4,800 is below the approximately $5,050 threshold), the support test (Barbara provides over half), the relationship test (mother qualifies under Section 152(d)(2)), and the joint return test. Notably, under Section 152(d)(2)(A), a parent is an exception to the residency requirement — unlike other qualifying relatives who must live with the taxpayer for the entire year, a dependent parent does not need to share the taxpayer''s household.'
WHERE id = 2730;

-- ID 2731: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 152(c)(1)(B), a qualifying child must share the same principal place of abode as the taxpayer for more than half the tax year (more than six months). Jason lived with his parents for only five months during summer break, which does not meet this residency requirement. Although Section 152(c)(1)(B) treats temporary absences for education as time lived at home, the taxpayer must establish that the home remains the child''s principal residence. Unlike the qualifying relative test which allows a parent exception to residency, the qualifying child test strictly requires more than half-year cohabitation.'
WHERE id = 2731;

-- ID 2732: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 6654(d)(1)(B), taxpayers can avoid the estimated tax underpayment penalty by paying at least the lesser of 90% of the current year''s tax liability or 100% of the prior year''s tax liability through withholding and estimated payments. Since Sanders''s prior-year AGI of $130,000 is $150,000 or less, the 100% safe harbor applies rather than the 110% threshold required under Section 6654(d)(1)(C) for higher-income taxpayers. Unlike the 110% safe harbor for taxpayers with prior-year AGI exceeding $150,000, the standard 100% safe harbor provides a lower payment threshold.'
WHERE id = 2732;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 546: Individual Taxation: Income
UPDATE questions SET
  explanation = 'Under IRC Section 469(g)(1), when a taxpayer completely disposes of their entire interest in a passive activity in a fully taxable transaction to an unrelated party, all suspended passive activity losses from that activity are released and may be deducted in full against any type of income — active, portfolio, or passive. This complete disposition rule is the primary mechanism by which suspended passive losses become fully deductible. Unlike partial dispositions or transfers to related parties under Section 469(g)(1)(B), which do not trigger loss release, a complete taxable disposition removes the activity from the passive loss limitation system entirely.'
WHERE id = 546;

-- ID 548: Individual Taxation: Income
UPDATE questions SET
  explanation = 'Under IRC Section 469(e)(1), portfolio income — including interest, dividends, annuities, and gains from the sale of investment property such as stocks and bonds — is specifically excluded from the definition of passive income. Portfolio income cannot be offset by passive activity losses because Congress intended the passive loss rules to limit tax shelter abuse, not restrict investment income. Unlike rental income which is generally classified as passive under Section 469(c)(2) regardless of the taxpayer''s participation level, portfolio income is always treated as a separate category outside the passive activity framework.'
WHERE id = 548;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 2863: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under the Ultramares doctrine (Ultramares Corp. v. Touche, 1931), an accountant''s liability for negligence is limited to those in privity of contract and intended third-party beneficiaries of the engagement. This is the most restrictive standard of third-party accountant liability, protecting accountants from indeterminate liability to an unknown class of users. Unlike the broader foreseen users approach adopted under Restatement (Second) of Torts Section 552, which extends liability to a limited group the accountant knows will rely on the work, the Ultramares doctrine requires a direct contractual or near-contractual relationship.'
WHERE id = 2863;

-- ID 2865: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under common law fraud principles (see Restatement (Second) of Torts Section 525), five elements must be proven to establish actual fraud against a CPA: (1) a material misrepresentation of fact, (2) scienter (knowledge of falsity or reckless disregard for truth), (3) intent to induce reliance, (4) justifiable reliance by the plaintiff, and (5) resulting damages. All five elements must be established. Unlike a negligence claim which requires only a breach of the duty of care, fraud requires proof of scienter — the CPA''s knowing or reckless involvement — making it a significantly higher burden of proof for the plaintiff.'
WHERE id = 2865;

-- ============================================================
-- LIKE-KIND EXCHANGES (1 questions)
-- ============================================================

-- ID 2605: Like-Kind Exchanges
UPDATE questions SET
  explanation = 'Under IRC Section 1031, Rachel''s realized gain is $100,000 ($275,000 FMV minus $175,000 basis), and she received $25,000 in boot (cash). Under Section 1031(b), recognized gain equals the lesser of realized gain ($100,000) or boot received ($25,000), so $25,000 is recognized. The basis of the replacement property under Section 1031(d) is $175,000 (old basis plus $25,000 gain recognized minus $25,000 boot received). Unlike a fully tax-deferred exchange with no boot where the old basis carries over entirely, receiving boot triggers partial gain recognition that adjusts the replacement property''s basis calculation.'
WHERE id = 2605;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (4 questions)
-- ============================================================

-- ID 2408: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under AICPA Statement on Standards for Tax Services (SSTS) No. 6, when a prior-year error has no carryforward effect on the current-year return, the CPA may continue preparing the current return because no incorrect amounts flow into the current year. The CPA should document the client''s refusal to file an amended return and evaluate the relationship. However, if the prior-year error affects carryforward items such as basis, NOLs, or credits under IRC Sections 172 or 39, the CPA cannot sign a return the CPA knows contains incorrect amounts and must use corrected figures on the current return.'
WHERE id = 2408;

-- ID 2409: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under AICPA SSTS No. 2 (Answers to Questions on Returns), a CPA should make a reasonable effort to obtain information to answer all questions on a return but may leave certain questions unanswered when the information is not readily available and the answer is not significant in determining the correct tax liability. The CPA must consider whether the omission may cause the return to be deemed incomplete or create a presumption of negligence. Unlike a blanket permission to skip questions at the client''s direction, SSTS No. 2 requires the CPA to independently evaluate the significance of each omitted answer.'
WHERE id = 2409;

-- ID 2410: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under AICPA SSTS No. 3 (Certain Procedural Aspects of Preparing Returns), a CPA may rely on tax preparation software for mathematical accuracy but retains professional responsibility to review the output for reasonableness. This includes verifying that the software correctly applied tax rates, limitations, and phase-outs to the data entered. Unlike a standard where the CPA must manually verify every calculation, SSTS No. 3 establishes a reasonableness review standard — the CPA is responsible for appropriate use of the software and the accuracy of data input, rather than for replicating each computation.'
WHERE id = 2410;

-- ID 2411: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under AICPA SSTS No. 5 (Departure from a Position Previously Concluded in an Administrative Proceeding or Court Decision), a CPA may recommend a position contrary to a prior IRS administrative settlement when facts and circumstances have changed or new legal authority supports the different position. The standard recognizes that prior determinations are not permanent constraints on future tax positions when the underlying conditions differ. Unlike simply relying on the passage of time or client insistence, SSTS No. 5 requires an objective basis — changed facts or new authority — to justify departing from a previous resolution.'
WHERE id = 2411;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (3 questions)
-- ============================================================

-- ID 515: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Section 168(c) as amended by the Omnibus Budget Reconciliation Act of 1993, nonresidential real property placed in service after May 13, 1993 uses a 39-year straight-line recovery period, while property placed in service on or before that date retains the 31.5-year period. Morrison''s April warehouse qualifies for the shorter 31.5-year period at approximately 3.17% annually, while the June warehouse uses 39 years at approximately 2.56%. Unlike residential rental property which uses a 27.5-year recovery period under Section 168(c), commercial real estate placed in service after the May 1993 threshold date received a longer recovery period to reduce the tax subsidy for commercial development.'
WHERE id = 515;

-- ID 516: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Section 168(d)(1), the half-year convention treats all property as placed in service at the midpoint of the tax year, regardless of the actual acquisition date. For 7-year MACRS property using 200% declining balance, the full-year rate is 2/7 (approximately 28.57%), but the half-year convention allows only half that rate in year one: 14.29%. Both Petrov (March) and Santiago (November) receive the identical 14.29% first-year rate. Unlike the mid-quarter convention under Section 168(d)(3) — which applies only when more than 40% of property is placed in service in the fourth quarter — the half-year convention ignores the specific month of acquisition.'
WHERE id = 516;

-- ID 518: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Section 168(g), the Alternative Depreciation System (ADS) requires straight-line depreciation over a longer recovery period (9 years for this asset class versus 5 years under GDS), producing smaller annual deductions than the 200% declining balance method under GDS. While total depreciation over the asset''s life is identical ($40,000), the timing difference significantly affects cash flow. A company might voluntarily elect ADS under Section 168(g)(7) to avoid creating unusable net operating losses, to eliminate AMT depreciation adjustments under former Section 56(a)(1), or to smooth income. Unlike GDS which front-loads deductions through accelerated methods, ADS spreads deductions evenly across the longer recovery period.'
WHERE id = 518;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 2821: S Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 1362(d)(3), if an S corporation with accumulated C corporation earnings and profits has passive investment income exceeding 25% of gross receipts for three consecutive tax years, the S election is automatically terminated on the first day of the fourth consecutive year. The corporation reverts to C corporation status. This rule under Section 1362(d)(3) applies only to S corporations with accumulated E&P from prior C corporation years — unlike an S corporation that has never been a C corporation, which faces no risk of termination regardless of its passive income level.'
WHERE id = 2821;

-- ID 2822: S Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 1368(b), distributions from an S corporation with no accumulated earnings and profits are tax-free to the extent of the shareholder''s stock basis, reducing basis dollar for dollar. Shareholder Q receives $60,000 tax-free (reducing basis from $60,000 to zero), and the remaining $20,000 is treated as capital gain from the deemed sale of stock under Section 1368(b)(2). Unlike an S corporation with accumulated C corporation E&P where distributions may be taxed as dividends under Section 1368(c), Willow''s distributions follow the simpler no-E&P ordering rules because it has never had C corporation earnings.'
WHERE id = 2822;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 2438: Tax Procedures
UPDATE questions SET
  explanation = 'Under IRS administrative procedures, a 30-day letter proposes adjustments and gives the taxpayer 30 days to either agree or file a written protest requesting a conference with the IRS Appeals Office under IRC Section 7803(e). This is an administrative appeal, not a court proceeding, and provides an opportunity to resolve the dispute without litigation. Unlike the statutory notice of deficiency (90-day letter) under IRC Section 6212 which opens access to Tax Court, ignoring the 30-day letter means losing the administrative appeal opportunity before the IRS issues the formal deficiency notice.'
WHERE id = 2438;

-- ID 2440: Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 6662(d)(1)(A), a substantial understatement of income tax for individuals exists when the understatement exceeds the greater of $5,000 or 10% of the tax required to be shown on the return. This triggers the 20% accuracy-related penalty under Section 6662(a). The penalty can be avoided by adequate disclosure of the position on Form 8275 or by demonstrating reasonable cause under Section 6664(c). Unlike the corporate threshold under Section 6662(d)(1)(B) which uses the lesser of 10% of the tax or $10,000,000, the individual threshold uses the greater-of test, making it easier for smaller understatements to trigger the penalty.'
WHERE id = 2440;

COMMIT;
