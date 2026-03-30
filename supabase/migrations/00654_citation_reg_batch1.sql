-- Migration: Citation backfill — REG batch 1 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (5 questions)
-- ============================================================

-- ID 66: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 2.03, apparent authority exists when a principal''s conduct causes a third party to reasonably believe the agent has authority to act. Because Crestwood never notified Hanover of Larson''s termination, Hanover reasonably relied on the prior representations, binding Crestwood through apparent authority. However, Larson has no actual authority because Crestwood revoked it in January 2026, unlike apparent authority which persists until the third party receives notice.'
WHERE id = 66;

-- ID 67: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 7.07, an employer is vicariously liable under respondeat superior for employee torts committed within the scope of employment. The 15-minute coffee detour is a minor deviation that keeps Mitchell within scope, so Thornton is liable; the 30-mile personal trip on a day off is a frolic that severs the employment connection, relieving Thornton. While Thornton escapes liability for the frolic, Mitchell remains personally liable for negligence in both scenarios because respondeat superior adds employer liability rather than replacing employee responsibility.'
WHERE id = 67;

-- ID 205: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 4.01, a principal may ratify an unauthorized act by the agent, thereby binding the principal as though the agent had actual authority. Ratification requires the principal to have full knowledge of material facts and to accept the entire transaction. While apparent authority might also apply here given the VP''s introduction, ratification is the mechanism that allows a principal to retroactively authorize an act that exceeded the agent''s actual authority at the time it occurred.'
WHERE id = 205;

-- ID 207: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 6.01, when an agent acts on behalf of a disclosed principal within the scope of authority, only the principal is liable on the contract. The agent drops out of the transaction because the third party intended to deal with the principal. However, if the principal were partially disclosed or undisclosed, the agent would also be personally liable on the contract, unlike the disclosed principal scenario where the third party has full knowledge of whom they are contracting with.'
WHERE id = 207;

-- ID 503: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Ultramares doctrine from Ultramares Corp. v. Touche (1931), referenced in Restatement (Second) of Torts Section 552, an accountant is liable for ordinary negligence only to those in privity or near privity of contract. The court held that extending negligence liability to all foreseeable third parties would impose indeterminate liability to an indeterminate class. While the broader foreseeability standard adopted by some jurisdictions under Section 552 would extend liability to all foreseeable users, Ultramares specifically rejected this approach, limiting recovery to the client and those in near privity.'
WHERE id = 503;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (1 questions)
-- ============================================================

-- ID 4807: Alternative Minimum Tax
UPDATE questions SET
  explanation = 'Under IRC Section 57(a)(5), interest on specified private activity bonds issued after August 7, 1986, is a tax preference item that must be added back when computing AMTI. Although this interest is tax-exempt for regular income tax purposes, Congress included it as a preference to ensure that taxpayers benefiting from tax-exempt bond income pay a minimum level of tax. While charitable contributions are generally allowed for both regular tax and AMT purposes, private activity bond interest is specifically targeted as a preference item because it represents a tax benefit Congress chose to limit through the AMT system.'
WHERE id = 4807;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (4 questions)
-- ============================================================

-- ID 63: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts Section 17, a valid contract requires mutual assent (offer and acceptance), consideration, capacity, and legality of purpose. Apex''s verbal agreement with Ridgeline satisfies these elements because both parties agreed to terms, consideration exists ($75,000 for advisory services), and the subject matter is lawful. While Ridgeline claims no enforceable contract exists, a writing is only required when the contract falls within the Statute of Frauds, and a services contract performable within one year does not trigger that requirement.'
WHERE id = 63;

-- ID 64: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Statute of Frauds (Restatement (Second) of Contracts Section 110), certain categories of contracts must be in writing to be enforceable: real property transfers, contracts not performable within one year, goods contracts of $500 or more under UCC Section 2-201, suretyship promises, and marriage consideration contracts. Henderson''s land sale falls within the real property category and is unenforceable without writing. However, Torres''s painting contract is performable within two weeks and involves services rather than goods, so it falls outside every Statute of Frauds category despite its $8,000 value.'
WHERE id = 64;

-- ID 65: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the common law mailbox rule (Restatement (Second) of Contracts Section 63), an acceptance is effective upon dispatch, while a revocation is effective only upon receipt. Baker''s Thursday acceptance was effective the moment it was mailed, before Allen''s Wednesday revocation arrived, forming a valid contract. However, if Baker had mailed a rejection first on Wednesday and then an acceptance on Thursday, the mailbox rule would not apply because the offeree dispatched a rejection first, and whichever communication arrives first controls the outcome.'
WHERE id = 65;

-- ID 201: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts Section 71, valid consideration requires a bargained-for exchange of legal value at the time of agreement. Henderson''s forbearance from filing a legitimate lawsuit is a present legal detriment that constitutes valid consideration supporting Dawson''s $5,000 promise. While Martinez''s gratitude is genuine, her promise fails because past consideration is not valid consideration under Section 86 — the neighbor''s moving help was completed before the promise was made, so there was no bargained-for exchange at the time of contracting.'
WHERE id = 201;

-- ============================================================
-- BUSINESS STRUCTURES (4 questions)
-- ============================================================

-- ID 69: Business Structures
UPDATE questions SET
  explanation = 'Under IRC Section 1366, an S corporation''s income, losses, deductions, and credits pass through to shareholders'' individual returns, avoiding the double taxation that C corporations face under IRC Sections 11 and 301. C corporation income is taxed at the entity level and again when distributed as dividends to shareholders. While both entity types offer limited liability, the fundamental distinction is that S corporations are pass-through entities, unlike C corporations which are subject to entity-level taxation creating two layers of tax on the same income.'
WHERE id = 69;

-- ID 210: Business Structures
UPDATE questions SET
  explanation = 'Under the Revised Uniform Partnership Act (RUPA) Section 306(c), partners in an LLP are not personally liable for obligations arising from the negligence, malpractice, or misconduct of other partners. Each partner remains fully liable for their own professional errors and for general contractual obligations of the partnership. While an LLC provides a complete liability shield for all member obligations, an LLP provides only a partial shield — protecting partners from vicarious liability for other partners'' wrongful acts but not from their own professional negligence or partnership contract debts.'
WHERE id = 210;

-- ID 211: Business Structures
UPDATE questions SET
  explanation = 'Under the Model Business Corporation Act (MBCA) Sections 7.21 and 7.28, shareholders have the right to vote on major corporate matters including election of directors, mergers, and charter amendments, as well as the right to receive dividends when declared, inspect books and records, and receive residual assets upon liquidation. Daily management is the exclusive responsibility of the board of directors under MBCA Section 8.01. Unlike directors and officers who manage the corporation, shareholders cannot bind the corporation in contracts or unilaterally direct business operations.'
WHERE id = 211;

-- ID 505: Business Structures
UPDATE questions SET
  explanation = 'Under Restatement (Third) of Suretyship and Guaranty Section 37, a surety may be discharged if the creditor materially modifies the obligation — including extending the time for payment — without the surety''s consent, to the extent the surety is prejudiced. The modification defense exists because the surety agreed to guarantee a specific obligation, and material changes alter the risk the surety assumed. Unlike a guarantor of collection who has the defense of exhaustion (requiring the creditor to pursue the principal debtor first), a surety is primarily liable and the creditor may demand payment directly.'
WHERE id = 505;

-- ============================================================
-- C CORPORATIONS (1 questions)
-- ============================================================

-- ID 83: C Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 243, the dividends received deduction (DRD) is structured in three tiers based on ownership percentage: less than 20% ownership receives a 50% DRD, 20–79% ownership receives a 65% DRD, and 80% or greater ownership receives a 100% DRD. Apex''s 25% ownership qualifies for the 65% tier ($100,000 x 65% = $65,000 deduction), while Crest''s 85% ownership qualifies for the full 100% deduction. Unlike a flat deduction that would treat all corporate shareholders equally, the tiered structure reflects the principle that higher ownership represents greater economic integration warranting more complete relief from multiple taxation.'
WHERE id = 83;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 61: Circular 230
UPDATE questions SET
  explanation = 'Under Treasury Circular 230 Section 10.3, only enrolled agents, CPAs, and attorneys have unlimited rights to practice before the IRS. The EA''s authority derives from passing the three-part Special Enrollment Examination, which demonstrates competency in tax law. While a bookkeeper may have extensive practical experience, Circular 230 Section 10.7 limits unenrolled preparers to representing clients only before revenue agents and only for returns they personally prepared — they cannot appear before the IRS Appeals Office, unlike credentialed practitioners who have full representation authority.'
WHERE id = 61;

-- ID 62: Circular 230
UPDATE questions SET
  explanation = 'Under Circular 230 Section 10.22, a practitioner must exercise due diligence in preparing, approving, and filing tax returns and other documents. Due diligence requires making reasonable inquiries when information furnished by the client appears incomplete, inconsistent, or incorrect. Failing to follow up on known missing information that is material to the return violates this standard. However, relying on client-provided information that appears reasonable on its face is generally permissible, unlike ignoring obvious red flags which constitutes a clear due diligence violation.'
WHERE id = 62;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 1177: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under UCC Article 9 Section 9-203, attachment of a security interest requires three elements: (1) the secured party gives value, (2) the debtor has rights in the collateral, and (3) there is an authenticated security agreement describing the collateral or the secured party has possession. Attachment is what creates the security interest between the parties. While filing a UCC-1 financing statement is required for perfection under Section 9-310, it is not a requirement for attachment — these are distinct steps, and a security interest can attach before it is perfected.'
WHERE id = 1177;

-- ID 1180: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under UCC Article 9 Section 9-310, a security interest is perfected by filing a financing statement (UCC-1) with the appropriate state filing office, typically the Secretary of State. Perfection may also occur through the secured party taking possession under Section 9-313 or by control under Section 9-314 for deposit accounts and investment property. Perfection establishes the secured party''s priority against other creditors and third parties. While a court order may resolve priority disputes, it is not a method of perfection — unlike filing, possession, or control which are the exclusive statutory methods.'
WHERE id = 1180;

-- ============================================================
-- FEDERAL TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 1157: Federal Tax Procedures
UPDATE questions SET
  explanation = 'Under IRS Internal Revenue Manual (IRM) Section 4.10.1, a field audit is an IRS examination conducted by a revenue agent at the taxpayer''s place of business, home, or accountant''s office. Field audits are reserved for complex returns involving business income, multiple entities, or large dollar amounts where on-site review of books and records is necessary. While a correspondence audit under IRM Section 4.19.10 is conducted entirely through the mail and an office audit requires the taxpayer to visit an IRS office, a field audit is distinguished by the agent traveling to the taxpayer''s location.'
WHERE id = 1157;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (3 questions)
-- ============================================================

-- ID 4786: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under the Securities Act of 1933 Section 5, the primary purpose of requiring a registration statement is to ensure full and fair disclosure of material information to investors so they can make informed investment decisions. The Act is fundamentally a disclosure statute — the SEC reviews registration statements for completeness but does not evaluate the merits of the investment. While the Securities Exchange Act of 1934 governs secondary market trading and ongoing reporting, the 1933 Act focuses exclusively on initial public offerings and the registration process to protect investors from inadequate disclosure.'
WHERE id = 4786;

-- ID 4789: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under the Fair Labor Standards Act (FLSA) Section 13(a)(1), employees who meet the duties test and salary threshold for the executive, administrative, or professional exemptions are exempt from overtime pay requirements. An executive exemption requires a primary duty of managing the enterprise, regularly directing two or more full-time employees, and compensation on a salary basis at or above the threshold. While hourly production workers, retail associates, and janitorial staff are generally classified as nonexempt under the FLSA, salaried managers meeting all three prongs of the executive test qualify for the overtime exemption.'
WHERE id = 4789;

-- ID 4792: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under Title VII of the Civil Rights Act of 1964 Section 703(a), it is unlawful for an employer with 15 or more employees to discriminate based on race, color, religion, sex, or national origin. These five protected categories are the exclusive scope of Title VII. While age discrimination for individuals over 40 is addressed by the Age Discrimination in Employment Act (ADEA) and disability discrimination by the Americans with Disabilities Act (ADA), those are separate federal statutes — unlike Title VII which is limited to the five enumerated categories.'
WHERE id = 4792;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (2 questions)
-- ============================================================

-- ID 562: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Section 904(d), the foreign tax credit limitation is computed separately for each category or "basket" of income. The two main baskets under current law are general category income (most active business income, wages, and other income) and passive category income (dividends, interest, rents, royalties, and other passive income). The separate basket calculation prevents taxpayers from using excess credits generated by high-tax passive income to offset tax on low-tax active income. Unlike a single unified limitation, the basket system ensures that each income type bears its proportionate share of foreign tax.'
WHERE id = 562;

-- ID 563: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Section 421(a), no income is recognized for regular tax purposes when incentive stock options (ISOs) are exercised — the taxable event is deferred until the stock is sold. However, under IRC Section 56(b)(3), the bargain element (FMV minus exercise price) at exercise is an AMT adjustment that increases alternative minimum taxable income. While nonqualified stock options under IRC Section 83 trigger ordinary income at exercise equal to the spread, ISOs receive preferential treatment by deferring regular tax recognition, provided the holding period requirements of Section 422(a)(1) are met.'
WHERE id = 563;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 79: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = 'Under IRC Section 24, the child tax credit directly reduces tax liability dollar-for-dollar, making it a credit rather than a deduction. Credits are subtracted from the tax owed after computing taxable income and applying the rate tables. This makes credits more valuable than deductions of the same dollar amount. While mortgage interest under IRC Section 163(h) and charitable contributions under IRC Section 170 reduce taxable income as itemized deductions, they only save tax at the taxpayer''s marginal rate rather than providing the full dollar-for-dollar benefit that a credit delivers.'
WHERE id = 79;

-- ID 80: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = 'Under IRC Section 55, the AMT is the excess of tentative minimum tax over regular tax liability. The AMT calculation adds back certain deductions and preferences to regular taxable income, creating AMTI. Under IRC Section 56(b)(1)(A), the SALT deduction is one of the largest addback items — the $35,000 SALT deduction allowed for regular tax must be added back for AMT, pushing the TMT to $52,000 and creating $7,000 in AMT. While the TCJA''s $10,000 SALT cap under IRC Section 164(b)(6) has reduced AMT exposure for many taxpayers, the addback mechanism still triggers AMT when state taxes exceed the cap.'
WHERE id = 80;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (3 questions)
-- ============================================================

-- ID 222: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 221, student loan interest (up to $2,500 annually) is an above-the-line deduction that reduces gross income to arrive at adjusted gross income (AGI). Above-the-line deductions are claimed on Schedule 1 regardless of whether the taxpayer itemizes. This makes the student loan interest deduction universally available to qualifying taxpayers. While charitable contributions under IRC Section 170, state and local taxes under Section 164, and mortgage interest under Section 163(h) are below-the-line itemized deductions that benefit only taxpayers who exceed the standard deduction, the student loan interest deduction is available to all eligible filers.'
WHERE id = 222;

-- ID 223: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 164(b)(6) as enacted by the TCJA, the state and local tax (SALT) deduction is capped at $10,000 for all filing statuses ($5,000 for married filing separately). The Nguyens'' $20,000 in combined state income and property taxes exceeds the cap by $10,000, losing a significant portion of their prior deduction. The Petersons'' $9,000 falls below the cap and is unaffected. While the pre-TCJA law allowed unlimited SALT deductions, the $10,000 cap primarily impacts taxpayers in high-tax states, unlike lower-tax-state residents who rarely exceed the threshold.'
WHERE id = 223;

-- ID 224: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 162(l), self-employed taxpayers may deduct 100% of health insurance premiums as an above-the-line deduction, subject to the limitation that the deduction cannot exceed net self-employment income. Rivera''s $12,000 deduction reduces her AGI, affecting calculations for AGI-sensitive provisions. Congress placed this deduction above-the-line to approximate the treatment employees receive under IRC Section 106, where employer-paid health premiums are excluded from gross income entirely. While employees enjoy a complete exclusion through employer plans, forcing self-employed taxpayers to itemize and clear the 7.5% AGI medical expense floor under Section 213 would create a significant disparity.'
WHERE id = 224;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (3 questions)
-- ============================================================

-- ID 227: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 1(a), married filing jointly provides the widest tax brackets and the most favorable rate structure available to individual taxpayers. Because Warren married on December 29, 2025, he is considered married for the entire 2025 tax year under IRC Section 7703(a)(1), which determines marital status as of the last day of the taxable year. While head of household status under Section 2(b) offers the next most favorable brackets for qualifying individuals, married filing separately under Section 1(d) typically produces the highest tax liability and restricts access to several credits and deductions.'
WHERE id = 227;

-- ID 228: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 32, the Earned Income Tax Credit (EITC) is a refundable credit designed to supplement the wages of low-to-moderate income working individuals and families. The credit amount varies based on filing status, number of qualifying children, and earned income, with phase-in and phase-out ranges. Because the EITC is refundable, taxpayers can receive payments exceeding their tax liability. While nonrefundable credits like the lifetime learning credit under Section 25A can only reduce tax to zero, the EITC''s refundable nature allows it to function as a wage supplement for eligible low-income workers.'
WHERE id = 228;

-- ID 229: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 24(a), the child tax credit provides $2,000 per qualifying child under 17. The phase-out under Section 24(b) begins at $400,000 AGI for MFJ filers and reduces the credit by $50 for every $1,000 of AGI above the threshold. The Andersons'' AGI equals the threshold exactly, so they receive the full $6,000 for three children. The Garcias'' $50,000 excess reduces their credit by $2,500, leaving $3,500. While some credits use a cliff phase-out that eliminates the entire benefit at a threshold, the child tax credit uses a gradual reduction mechanism unlike an all-or-nothing cutoff.'
WHERE id = 229;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 77: Individual Taxation: Income
UPDATE questions SET
  explanation = 'Under IRC Section 451 and Treasury Regulation Section 1.451-2, the constructive receipt doctrine provides that income is taxable when it is credited, set apart, or made available to the taxpayer without substantial limitation, regardless of whether it is actually reduced to possession. Brennan had unrestricted access to the $10,000 check on December 28, 2025, so the income is recognized in 2025 despite depositing in January 2026. However, Sato faced a genuine restriction — the funds were not available until January 2026, so unlike Brennan, no constructive receipt occurred in 2025 because the taxpayer lacked the power to receive the income.'
WHERE id = 77;

-- ID 78: Individual Taxation: Income
UPDATE questions SET
  explanation = 'Under IRC Section 451(a), a cash-basis taxpayer reports income in the year it is actually or constructively received, regardless of when it is earned. Henderson''s $5,000 rental payment received in December 2025 is included in 2025 gross income, even though it represents January 2026 rent. While accrual-basis taxpayers under Treasury Regulation Section 1.451-1 recognize income when all events have occurred fixing the right to receive it, cash-basis taxpayers like Henderson cannot defer prepaid rental income — unlike certain advance payments for services which may qualify for limited deferral under Revenue Procedure 2004-34.'
WHERE id = 78;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 1168: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under IRC Section 6109(a)(4), all paid tax return preparers must obtain and use a Preparer Tax Identification Number (PTIN) on every return they prepare. The PTIN serves two functions: identity protection by replacing the preparer''s SSN on client returns, and enforcement by creating a searchable database linking every prepared return to a specific individual. This enables the IRS to identify high-error preparers and track penalty patterns across a preparer''s entire client base. While an EIN identifies a business entity for general tax purposes, the PTIN is specifically required for return preparation identification, unlike the SSN which would expose preparers to identity theft risk.'
WHERE id = 1168;

-- ID 1173: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under Federal Rule of Civil Procedure 26(b)(3), the work product doctrine protects materials prepared in anticipation of litigation from discovery. A memo analyzing an aggressive tax position after receiving a 30-day letter from the IRS is likely prepared in anticipation of possible Tax Court litigation, qualifying for work product protection. The 30-day letter signals a formal dispute that may escalate to litigation. While the attorney-client privilege under IRC Section 7525 extends to tax advice from authorized practitioners, the work product doctrine provides broader protection for litigation preparation materials, unlike routine tax compliance documents that are prepared in the ordinary course of business.'
WHERE id = 1173;

-- ============================================================
-- LIKE-KIND EXCHANGES (1 questions)
-- ============================================================

-- ID 2597: Like-Kind Exchanges
UPDATE questions SET
  explanation = 'Under Treasury Regulation Section 1.1031(k)-1(g)(4), a qualified intermediary (QI) facilitates a deferred like-kind exchange under IRC Section 1031 by acquiring the relinquished property from the taxpayer, transferring it to the buyer, holding the sale proceeds, and using those proceeds to acquire the replacement property. The QI''s critical function is preventing the taxpayer from having actual or constructive receipt of the exchange funds, which would disqualify the transaction from nonrecognition treatment. While a tax advisor provides planning guidance and an appraiser determines property values, the QI is the transactional facilitator unlike these other professionals who serve advisory roles.'
WHERE id = 2597;

-- ============================================================
-- PARTNERSHIPS (1 questions)
-- ============================================================

-- ID 89: Partnerships
UPDATE questions SET
  explanation = 'Under IRC Section 732(a)(2), in a nonliquidating distribution, a partner''s basis in distributed property cannot exceed the partner''s remaining outside basis. Cash reduces outside basis first under Section 733. Xavier''s $60,000 basis is reduced by $45,000 cash to $15,000, so the property (inside basis $25,000) takes a reduced $15,000 basis. Yates receives no cash, so the full $60,000 outside basis is available and the property retains its $25,000 carryover basis. While distributed property in a liquidating distribution under Section 732(b) takes whatever basis remains, nonliquidating distributions cap property basis at the partner''s remaining outside basis to prevent negative basis.'
WHERE id = 89;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (3 questions)
-- ============================================================

-- ID 251: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under AICPA Statements on Standards for Tax Services (SSTS) No. 1, a CPA should not recommend a tax return position unless there is a realistic possibility of the position being sustained on its merits, generally interpreted as at least a one-in-three (33%) likelihood. If the position does not meet the realistic possibility standard, it may still be taken if it has a reasonable basis and is adequately disclosed on the return. While the IRC Section 6662 substantial authority standard (approximately 40%) applies for penalty avoidance purposes, the SSTS No. 1 realistic possibility threshold is a lower professional standard unlike the penalty-based substantial authority test.'
WHERE id = 251;

-- ID 252: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under AICPA SSTS No. 6, when a CPA becomes aware of an error on a previously filed return that is still open under the statute of limitations, the CPA must promptly inform the client and recommend appropriate corrective action such as filing an amended return. The CPA cannot amend the return without the client''s authorization and is not required to notify the IRS directly. While the CPA must consider the error''s implications for the current engagement, the decision to correct the error remains the client''s responsibility, unlike situations involving fraud where the CPA may have additional obligations including potential withdrawal from the engagement.'
WHERE id = 252;

-- ID 253: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under AICPA SSTS No. 6, when a CPA discovers an error in a previously filed return — here, the $28,000 erroneous deduction on the 2024 return — the CPA should promptly advise the client of the error and recommend corrective measures. The decision to file an amended return remains the client''s responsibility. While the CPA may not file an amended return without the client''s consent, the CPA also has no obligation to report the error directly to the IRS, unlike situations where the client refuses to correct and the CPA must evaluate whether to continue the engagement.'
WHERE id = 253;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (3 questions)
-- ============================================================

-- ID 212: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Section 167(a) and Treasury Regulation Section 1.167(a)-2, land is never depreciable because it does not have a determinable useful life. Only the building portion of the purchase price creates a depreciable basis. Kowalski''s $200,000 building allocation produces approximately $7,273 in annual depreciation over 27.5 years under IRC Section 168(c), while Park''s $150,000 allocation yields approximately $5,455 annually. While both investors paid the same $250,000 total, the allocation between land and building — which must reflect fair market values supported by appraisal — directly controls the annual depreciation deduction, unlike total cost which is irrelevant to the calculation.'
WHERE id = 212;

-- ID 213: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under Treasury Regulation Section 1.168(i)-4(b), when a personal residence is converted to rental property, the basis for depreciation is the lower of the taxpayer''s adjusted basis or fair market value at the time of conversion. Foster''s depreciation basis is $260,000 (FMV) rather than $300,000 (cost) because the $40,000 decline occurred during personal use — a period when losses are nondeductible under IRC Section 165(c). Allowing depreciation on the full cost basis would effectively let the taxpayer recover a personal loss through business deductions. While FMV is used here because it is lower than cost, if FMV exceeded cost the original cost would serve as the depreciation basis, unlike a simple FMV-only rule.'
WHERE id = 213;

-- ID 510: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Section 168(c), residential rental property is depreciated over 27.5 years using the straight-line method, while nonresidential real property uses a 39-year straight-line recovery period. Chen''s duplex generates approximately $10,000 annually ($275,000 / 27.5), providing faster cost recovery per dollar invested than the retail building at approximately $10,000 ($390,000 / 39). Congress set the shorter recovery period for residential property as a policy tool to encourage housing investment and affordability. While both categories must use straight-line depreciation, real property is never eligible for the declining balance methods under IRC Section 168(b), unlike personal property such as equipment which uses 200% or 150% declining balance.'
WHERE id = 510;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (1 questions)
-- ============================================================

-- ID 215: Property Transactions: Gains/Losses
UPDATE questions SET
  explanation = 'Under IRC Section 1222, the one-year holding period is the dividing line between short-term and long-term capital gains. Block A, held 8 months, produces a short-term capital gain taxed at ordinary income rates (up to 37%) under Section 1(h). Block B, held 14 months, produces a long-term capital gain taxed at the preferential rates of 0%, 15%, or 20% established under IRC Section 1(h)(1). For a taxpayer in the 32% bracket, the same $10,000 gain results in approximately $3,200 tax (short-term) versus $1,500 (long-term at 15%). While the $3,000 figure under Section 1211(b) relates to capital loss deductions against ordinary income, it has no application to capital gain rate calculations.'
WHERE id = 215;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 85: S Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 1361(b)(1)(D), an S corporation is limited to one class of stock. Issuing a second class of stock with different distribution or liquidation rights violates the eligibility requirements and automatically terminates the S election under IRC Section 1362(d)(2). Additional disqualifying events include exceeding 100 shareholders under Section 1361(b)(1)(A), having an ineligible shareholder such as a C corporation under Section 1361(b)(1)(B), or having a nonresident alien shareholder. While differences in voting rights alone do not create a second class of stock under Treasury Regulation Section 1.1361-1(l)(1), differences in economic rights such as preferential distributions are disqualifying unlike purely governance-related distinctions.'
WHERE id = 85;

-- ID 578: S Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 3121(a), wages subject to FICA include compensation for services, while S corporation distributions under Section 1368 are not subject to employment taxes. When Crawford takes $200,000 entirely as distributions with zero salary, no FICA taxes are paid. IRS reclassification of $120,000 as reasonable compensation triggers approximately $18,360 in combined employee FICA taxes (Social Security at 6.2% up to the wage base under Section 3101(a) plus Medicare at 1.45% under Section 3101(b)). While S corporation shareholders may legitimately receive both salary and distributions, zero-salary arrangements violate the reasonable compensation doctrine because Crawford is performing services that generate the income, unlike passive investors who receive only distributions.'
WHERE id = 578;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 242: Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 6501(a), the general statute of limitations for the IRS to assess additional tax is three years from the later of the date the return was filed or the due date of the return. Werner timely filed on April 15, 2024, so the IRS has until April 15, 2027 to propose adjustments. Under IRC Section 6501(e), the period extends to six years if the taxpayer omits more than 25% of gross income. While the standard three-year period applies to most returns, there is no statute of limitations under Section 6501(c) for fraud or failure to file, unlike honest errors which are protected by the three-year window.'
WHERE id = 242;

-- ID 243: Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 7803(e), after an IRS examination results in a proposed assessment communicated via a 30-day letter, the taxpayer may request a conference with the IRS Independent Office of Appeals. This administrative appeal provides an opportunity to resolve the dispute without going to court and is independent from the examination function. The Appeals Office has authority to settle cases based on the hazards of litigation. While the taxpayer could ultimately petition the Tax Court under IRC Section 6213 after receiving a statutory notice of deficiency (90-day letter), the administrative appeal to the Independent Office of Appeals is the first available step, unlike direct litigation which requires exhausting administrative remedies.'
WHERE id = 243;

COMMIT;
