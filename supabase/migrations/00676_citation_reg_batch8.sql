-- Migration: Citation backfill — REG batch 8 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (5 questions)
-- ============================================================

-- ID 11175: Agency and Regulation
UPDATE questions SET
  explanation = 'Under Section 3(b) of the Securities Act of 1933 and SEC Regulation A (Rule 251 et seq.), a simplified registration process is available for securities offerings of up to $75 million, sometimes called a "mini-registration." This exemption permits public solicitation with reduced disclosure requirements compared to a full S-1 registration, making it attractive for smaller issuers seeking public capital. Unlike Rule 506(b) under Regulation D, which is a private placement exemption prohibiting general solicitation, Regulation A allows the issuer to openly market the offering to the public.'
WHERE id = 11175;

-- ID 11178: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 8.08, an agent owes a duty of care requiring performance with the competence and diligence that a reasonable person would exercise under similar circumstances. This objective standard means the agent must act prudently and skillfully, but is not held to a standard of perfection. Unlike a duty of absolute perfection, the duty of care requires only reasonable competence — an agent who exercises ordinary diligence satisfies this obligation even if the outcome is imperfect.'
WHERE id = 11178;

-- ID 11179: Agency and Regulation
UPDATE questions SET
  explanation = 'Under UCC Article 9, Section 9-322(a)(2), a perfected security interest has priority over an unperfected security interest. Lakeland perfected its security interest by filing a UCC-1 financing statement under Section 9-310, while Second National Bank failed to file and remains unperfected. Although Second National Bank also holds a security interest, the failure to perfect means it is subordinate to Lakeland''s perfected interest regardless of when either credit transaction occurred.'
WHERE id = 11179;

-- ID 11180: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Securities Exchange Act of 1934, Section 13(a), publicly traded companies must file periodic reports with the SEC, including Form 10-K annually. The 10-K provides a comprehensive overview of the company''s financial condition and results of operations. While Form 10-Q is the quarterly report required under the same provision, it is not the annual filing — and Form S-1 is a registration statement under the Securities Act of 1933, not a periodic report under the 1934 Act.'
WHERE id = 11180;

-- ID 11181: Agency and Regulation
UPDATE questions SET
  explanation = 'Under Section 3(a)(11) of the Securities Act of 1933 and SEC Rule 147, the intrastate offering exemption applies when securities are offered and sold exclusively to residents of a single state by an issuer incorporated and doing business in that state. The exemption requires strict compliance: if even one sale is made to an out-of-state investor, the entire exemption is lost and the full offering may require registration. Unlike Regulation D exemptions that permit limited out-of-state sales, Rule 147 has no exception permitting any sales to non-residents.'
WHERE id = 11181;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (1 questions)
-- ============================================================

-- ID 4825: Alternative Minimum Tax
UPDATE questions SET
  explanation = 'Under IRC Section 55, the tentative minimum tax is computed by applying AMT rates to AMTI above the exemption amount. Per Section 55(b)(1), the 26% rate applies to the first $232,600 and the 28% rate applies to the excess. Calculation: (26% x $232,600) + (28% x $17,400) = $60,476 + $4,872 = $65,348. Unlike the regular tax which uses graduated brackets, the AMT uses only two brackets to ensure high-income taxpayers pay a minimum level of tax.'
WHERE id = 4825;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (4 questions)
-- ============================================================

-- ID 11207: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under common law contract principles codified in the Restatement (Second) of Contracts Section 79, courts generally do not inquire into the adequacy of consideration. As long as there is a bargained-for exchange of legal value, the contract is enforceable regardless of whether the exchange is proportionate. However, unlike a contract with fair consideration, grossly inadequate consideration may serve as evidence of fraud, duress, or unconscionability — though inadequacy alone does not invalidate the agreement.'
WHERE id = 11207;

-- ID 11209: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts Section 224, a condition precedent is an event that must occur before a party''s duty to perform is triggered. The mortgage approval clause is a condition precedent — because Delaney''s mortgage was denied, the condition failed and the duty to close never arose. Unlike a covenant, which creates an affirmative obligation to perform and subjects the breaching party to damages, a failed condition precedent simply excuses the dependent party''s performance entirely.'
WHERE id = 11209;

-- ID 11211: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under UCC Section 2-715(1), incidental damages are the reasonable expenses directly resulting from a seller''s breach, including costs of inspection, transportation, storage, and arranging substitute performance. These damages compensate the buyer for the immediate out-of-pocket costs of dealing with the breach. Unlike consequential damages under UCC Section 2-715(2), which cover additional foreseeable losses such as lost profits, incidental damages are limited to the transactional costs of curing the breach.'
WHERE id = 11211;

-- ID 11213: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under common law, as stated in the Restatement (Second) of Contracts Section 178, a contract formed for an illegal purpose is void ab initio — it is treated as though it never existed and is completely unenforceable by either party. Courts will generally leave both parties where they stand, refusing to enforce illegal arrangements. Unlike a voidable contract, which remains valid until one party elects to rescind, a void contract has no legal effect whatsoever and cannot be ratified or cured by the parties'' consent.'
WHERE id = 11213;

-- ============================================================
-- BUSINESS STRUCTURES (3 questions)
-- ============================================================

-- ID 11230: Business Structures
UPDATE questions SET
  explanation = 'Under the Revised Uniform Limited Liability Company Act (RULLCA) Section 110, the operating agreement is the primary governing document of an LLC, specifying member rights, management structure, profit-sharing arrangements, and transfer of interests. State LLC statutes recognize the operating agreement as controlling internal governance, with default statutory rules applying only where the agreement is silent. Unlike articles of incorporation or corporate bylaws, which govern corporations, the operating agreement is unique to the LLC entity form.'
WHERE id = 11230;

-- ID 11234: Business Structures
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Suretyship and Guaranty Section 28, subrogation allows a surety who pays the creditor''s claim in full to step into the creditor''s shoes and assert all of the creditor''s rights and remedies against the principal debtor. After paying $250,000, Marshall may pursue Pine Creek using the bank''s original security interests and legal claims. Unlike contribution, which applies among co-sureties sharing a joint obligation, subrogation operates between the surety and the principal debtor to transfer the creditor''s rights.'
WHERE id = 11234;

-- ID 11238: Business Structures
UPDATE questions SET
  explanation = 'Under the Revised Model Business Corporation Act (RMBCA) Section 14.01 et seq., dissolution is the legal process of terminating a corporation''s existence, typically initiated by a vote of the board of directors and shareholders. After dissolution, the corporation winds up its affairs — settling debts, distributing remaining assets, and filing articles of dissolution with the state. Unlike dissociation under the Revised Uniform Partnership Act (RUPA), which refers to a partner leaving a partnership, dissolution applies specifically to the termination of a corporate entity.'
WHERE id = 11238;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 2805: C Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 311(b), when a corporation distributes appreciated property, it recognizes gain as if the property were sold at fair market value. The distribution amount to the shareholder equals FMV minus liability assumed: $200,000 - $50,000 = $150,000 per IRC Section 301(b). E&P increases by the $80,000 gain ($200,000 - $120,000) to $230,000 before measuring dividend treatment under Section 316. Since the $150,000 net distribution is fully covered by E&P, the entire amount is a taxable dividend — unlike a return of capital, which would only apply if E&P were insufficient.'
WHERE id = 2805;

-- ID 2806: C Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 6655, corporations must make quarterly estimated tax payments to avoid the underpayment penalty. Large corporations — those with taxable income exceeding $1,000,000 in any of the three preceding years — may not use the prior-year safe harbor after the first quarter per Section 6655(d)(2). They must pay 100% of the current-year tax liability through estimated payments. Unlike smaller corporations that may base estimated payments on 100% of the prior year''s tax, large corporations must project and pay based on current-year liability.'
WHERE id = 2806;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 2395: Circular 230
UPDATE questions SET
  explanation = 'Under Circular 230, Section 10.7(c)(1)(i), the Annual Filing Season Program (AFSP) grants limited representation rights to unenrolled return preparers who complete required continuing education. AFSP participants may represent clients before revenue agents, customer service representatives, and similar IRS employees during examinations of returns they prepared and signed. However, unlike CPAs, attorneys, and enrolled agents who have unlimited practice rights under Section 10.3, AFSP participants cannot represent clients before appeals officers, revenue officers, or in collection matters.'
WHERE id = 2395;

-- ID 2396: Circular 230
UPDATE questions SET
  explanation = 'Under Circular 230, Section 10.22, a practitioner must exercise due diligence in preparing and filing tax returns and other documents relating to IRS matters. Relying on outdated software without independently verifying the applicable tax code constitutes a failure of due diligence and competence. While this sanctionable conduct under Section 10.50 may result in censure, suspension, or monetary penalties, it does not rise to the level of willful misconduct — unlike intentional fraud, which would warrant disbarment under Section 10.51.'
WHERE id = 2396;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 2901: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under UCC Section 9-324(b), a purchase-money security interest (PMSI) in inventory achieves superpriority over a prior-perfected secured party only if the PMSI holder perfects before the debtor receives the inventory and sends authenticated notification to the prior-perfected party. This notification must be received before the debtor takes possession. Unlike a PMSI in equipment under Section 9-324(a), which requires only perfection within 20 days of the debtor''s receipt, the inventory PMSI imposes the additional notification requirement to protect existing lenders.'
WHERE id = 2901;

-- ID 11254: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Suretyship and Guaranty Section 28, subrogation entitles a surety who pays the creditor in full to step into the creditor''s shoes and exercise all of the creditor''s rights, including enforcing liens and security interests against the principal debtor. Ortega may enforce the bank''s lien on Kendall''s warehouse through this right. Unlike reimbursement, which only allows recovery of the amount paid from the debtor, subrogation transfers the creditor''s actual security interests and legal remedies to the surety.'
WHERE id = 11254;

-- ============================================================
-- FEDERAL TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 12710: Federal Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 7482 and 28 U.S.C. Section 1295(a)(3), decisions of the U.S. Court of Federal Claims are appealed exclusively to the U.S. Court of Appeals for the Federal Circuit. This differs from the appellate path for Tax Court and District Court decisions, which are appealed to the taxpayer''s geographic circuit court of appeals. Unlike the Tax Court, which is a specialized trial-level court, the Court of Federal Claims sits in Washington, D.C., and its appeals follow a uniform national circuit rather than regional circuits.'
WHERE id = 12710;

-- ID 12716: Federal Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 6323(a), the Notice of Federal Tax Lien (NFTL) is filed to provide public notice of the government''s legal claim against the taxpayer''s property and to establish priority against other creditors. The federal tax lien itself arises automatically upon assessment and demand under Section 6321, but filing the NFTL makes it a matter of public record. Unlike a levy under Section 6331, which involves the actual seizure and sale of property, the NFTL merely establishes the government''s priority position among competing creditors.'
WHERE id = 12716;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (3 questions)
-- ============================================================

-- ID 13823: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 8.01, the duty of loyalty is the fiduciary obligation requiring an agent to act in the principal''s best interest, avoid self-dealing, and refrain from conflicts of interest. It is the most fundamental duty in an agency relationship and prohibits the agent from profiting at the principal''s expense. Unlike the duty of care under Section 8.08, which requires reasonable competence and diligence, the duty of loyalty specifically targets conflicts of interest and self-dealing.'
WHERE id = 13823;

-- ID 13825: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 2.06, when an undisclosed principal authorizes an agent to act, both the agent and the principal are liable on contracts entered with third parties. Upon discovering the principal''s existence, the third party may elect to enforce the contract against either the agent or the principal. Unlike situations involving a disclosed principal where only the principal is typically bound, the undisclosed principal doctrine holds the agent personally liable because the agent contracted in their own name without revealing the agency.'
WHERE id = 13825;

-- ID 13826: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 3.07, the death of the principal terminates the agent''s authority by operation of law, regardless of whether the agent or third parties have notice. Contracts entered after termination do not bind the deceased principal''s estate because the agent lacked authority at the time of execution. Unlike revocation of authority, which may require notice to preserve apparent authority under Section 3.09, death terminates the agency automatically — the agent''s good faith ignorance does not preserve authority that has been extinguished by law.'
WHERE id = 13826;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (2 questions)
-- ============================================================

-- ID 2695: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Section 32(c)(1)(A)(ii), a taxpayer with no qualifying children must be at least age 25 but under age 65 to claim the earned income credit. This age restriction ensures the credit targets working adults rather than dependent students or retired individuals. Unlike taxpayers who have a qualifying child, for whom no minimum age requirement applies under Section 32(c)(1)(A)(i), childless workers must meet the age threshold to be eligible for this refundable credit.'
WHERE id = 2695;

-- ID 2696: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Section 24(h)(7), enacted by the Tax Cuts and Jobs Act, the qualifying child must have a Social Security Number (SSN) valid for employment to claim the $2,000 child tax credit. The SSN must be issued before the due date of the return for the taxable year. Unlike an Individual Taxpayer Identification Number (ITIN), which may be used for other tax purposes, an ITIN does not satisfy the SSN requirement for the child tax credit — a child with only an ITIN is ineligible.'
WHERE id = 2696;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 2720: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = 'Under IRC Section 1411(c)(1), net investment income includes interest, dividends, capital gains, rental income, royalty income, and income from passive activities. Wages subject to FICA are earned income and are explicitly excluded from the 3.8% net investment income tax calculation. Unlike investment income subject to the NIIT, wages are instead subject to the additional 0.9% Medicare tax under IRC Section 3101(b)(2) when they exceed the same MAGI thresholds.'
WHERE id = 2720;

-- ID 2721: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = 'Under IRC Section 55(d)(3), the AMT exemption is reduced by 25% of alternative minimum taxable income exceeding the applicable phase-out threshold. For single filers: ($750,000 - $609,350) x 25% = $35,163 reduction. The reduced exemption is $88,100 - $35,163 = $52,937. Unlike the regular standard deduction, which is not phased out at higher income levels, the AMT exemption phases out to ensure that very high-income taxpayers cannot use it to avoid the alternative minimum tax.'
WHERE id = 2721;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (2 questions)
-- ============================================================

-- ID 2676: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 163(h)(3)(B), as modified by the Tax Cuts and Jobs Act, home equity loan interest is deductible only if the loan proceeds are used to buy, build, or substantially improve the taxpayer''s qualified residence. Since James used the funds for a kitchen renovation — a substantial improvement — the $5,000 interest is deductible as acquisition indebtedness, provided total debt remains under the $750,000 limit. Unlike home equity interest used for personal expenses such as credit card payoff, interest on loans used for home improvements qualifies for the mortgage interest deduction.'
WHERE id = 2676;

-- ID 2677: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 170(f)(8) and the quid pro quo contribution rules of Section 6115, when a donor receives a benefit in return for a charitable contribution, the deductible amount is reduced by the fair market value of the benefit received. The deductible contribution is $500 - $30 = $470. Unlike a pure charitable gift where the full amount is deductible, a quid pro quo contribution requires the charity to provide a written disclosure of the benefit''s value when the payment exceeds $75.'
WHERE id = 2677;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (3 questions)
-- ============================================================

-- ID 2749: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 2(a), qualifying surviving spouse (QSS) status requires: (1) the spouse died in one of the two preceding tax years, (2) the surviving spouse has not remarried, (3) the surviving spouse maintains a household that is the principal residence of a dependent child for the entire year, and (4) the surviving spouse paid over half the cost of maintaining the home. This status provides the same standard deduction and tax brackets as married filing jointly. Unlike head of household, which has narrower brackets, QSS preserves the full joint-filing benefit for two years after the spouse''s death.'
WHERE id = 2749;

-- ID 2750: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 63(c)(5), a dependent''s standard deduction is the greater of $1,300 or earned income plus $450, but not exceeding the regular standard deduction. Here: $800 earned income + $450 = $1,250, which is less than the $1,300 floor, so the standard deduction is $1,300. Unlike an independent taxpayer who receives the full standard deduction regardless of income composition, a dependent''s standard deduction is limited by this formula to prevent sheltering significant unearned income from tax.'
WHERE id = 2750;

-- ID 2751: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 152(e)(2), Form 8332 (Release/Revocation of Release of Claim to Exemption for Child by Custodial Parent) must be signed by the custodial parent to allow the non-custodial parent to claim the child tax credit and dependency exemption. This release transfers the dependency claim without requiring a multiple support agreement. Unlike Form 2120, which is used for multiple support agreements under Section 152(d)(3), Form 8332 applies specifically to custodial parent releases in divorce or separation situations.'
WHERE id = 2751;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 11049: Individual Taxation: Income
UPDATE questions SET
  explanation = 'Under IRC Section 63(c)(2), the standard deduction is a fixed dollar amount indexed annually for inflation. For 2026, the approximate standard deduction for a single filer is $15,000, which reduces taxable income for taxpayers who do not itemize deductions on Schedule A. Unlike the head of household standard deduction (approximately $22,500) or the married filing jointly amount (approximately $30,000), the single filer amount reflects the baseline deduction for individual taxpayers without additional household responsibilities.'
WHERE id = 11049;

-- ID 11064: Individual Taxation: Income
UPDATE questions SET
  explanation = 'Under H.R. 1, Section 10203 (effective for tax years beginning after 2025), taxpayers may claim an above-the-line deduction for interest paid on loans used to purchase vehicles manufactured in the United States. The deduction is capped at $10,000 of interest per year. Unlike the student loan interest deduction under IRC Section 221, which is capped at $2,500, this new auto loan provision provides a larger deduction and applies specifically to U.S.-manufactured vehicle purchases, reducing AGI regardless of whether the taxpayer itemizes.'
WHERE id = 11064;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 2881: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under common law negligence principles as applied in Ultramares Corp. v. Touche (1931) and the Restatement (Second) of Torts Section 466, contributory negligence is the defense where the plaintiff''s own negligence contributed to the loss. If the client provided false information that directly caused the errors in the financial statements, the client''s own conduct is a proximate cause of the damages. Unlike comparative fault, which merely reduces the plaintiff''s recovery proportionally, contributory negligence in strict jurisdictions can completely bar the client''s claim.'
WHERE id = 2881;

-- ID 13790: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under IRC Section 7701(a)(36), a tax return preparer is any person who prepares for compensation all or a substantial portion of a return or claim for refund. Taylor determined the tax treatment of a complex revenue recognition transaction, which constitutes a substantial portion of the return. Martinez merely entered data into software and transmitted the return, which is classified as mechanical assistance under Treas. Reg. 301.7701-15(d). Unlike substantive tax determination, mechanical data entry does not make an individual a tax return preparer.'
WHERE id = 13790;

-- ============================================================
-- LIKE-KIND EXCHANGES (2 questions)
-- ============================================================

-- ID 13063: Like-Kind Exchanges
UPDATE questions SET
  explanation = 'Under IRC Section 1031 and Treas. Reg. 1.1031(k)-1, a deferred (Starker) exchange differs from a simultaneous exchange in that the taxpayer transfers the relinquished property before receiving the replacement property. A qualified intermediary holds the proceeds during the interim period, and the taxpayer must identify replacement property within 45 days and complete the exchange within 180 days. Unlike a simultaneous exchange where properties are swapped directly, the deferred exchange requires a QI to avoid constructive receipt of the sale proceeds.'
WHERE id = 13063;

-- ID 13064: Like-Kind Exchanges
UPDATE questions SET
  explanation = 'Under Rev. Proc. 2000-37, a reverse exchange uses an exchange accommodation titleholder (EAT) to "park" the replacement property while the taxpayer disposes of the relinquished property within 180 days. If the taxpayer fails to transfer the relinquished property within this period, the safe harbor is lost and the entire transaction becomes fully taxable with the gain recognized immediately. Unlike a forward deferred exchange where failure merely results in partial recognition, a failed reverse exchange results in complete loss of Section 1031 deferral with no penalty reduction or automatic extension available.'
WHERE id = 13064;

-- ============================================================
-- PARTNERSHIPS (1 questions)
-- ============================================================

-- ID 2860: Partnerships
UPDATE questions SET
  explanation = 'Under IRC Section 722, a partner''s initial outside basis equals the adjusted basis of contributed property — here, $40,000 for the equipment. Under Section 752(b), the partnership''s assumption of the $25,000 liability is treated as a deemed cash distribution reducing basis by $25,000. However, under Section 752(a), AA''s 50% share of the recourse liability ($12,500) increases basis. Net basis: $40,000 - $25,000 + $12,500 = $27,500. Unlike FMV, which is irrelevant to basis calculations in partnership contributions, the adjusted basis of contributed property controls the initial outside basis.'
WHERE id = 2860;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (3 questions)
-- ============================================================

-- ID 13008: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under Circular 230, Section 10.28(a), practitioners must promptly return all client records upon request, regardless of any fee dispute. The practitioner may retain copies but cannot withhold originals as leverage for unpaid fees. Unlike state law, which may permit a retaining lien on work product in some jurisdictions, Circular 230 does not allow practitioners to condition the return of client records on payment — there is no partial payment threshold or distinction between source documents and work product for purposes of the return obligation.'
WHERE id = 13008;

-- ID 13009: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under Circular 230, Section 10.3(a), enrolled agents have unlimited practice rights before the IRS, identical to those of CPAs and attorneys. An EA may represent any taxpayer — individual or corporate — in audits, Appeals conferences, and collection proceedings without restriction. Unlike unenrolled return preparers who have only limited representation rights under Section 10.7, enrolled agents hold full authority to represent clients at every level of IRS proceedings and are not limited by entity type or proceeding.'
WHERE id = 13009;

-- ID 13010: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under Circular 230, Section 10.50, the IRS Office of Professional Responsibility (OPR) may impose sanctions including censure (a public reprimand), suspension from practice, disbarment, and monetary penalties on practitioners who violate Circular 230 provisions. Censure is the least severe formal sanction. Unlike criminal prosecution, which is handled by the Department of Justice rather than the OPR, these are administrative sanctions — and unlike CPA license revocation, which falls under state board authority, OPR sanctions specifically govern the right to practice before the IRS.'
WHERE id = 13010;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (2 questions)
-- ============================================================

-- ID 2558: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Section 1015(a), the basis of property received by gift is generally the donor''s adjusted basis. Per Section 1015(d)(6), the donee''s basis is increased by the portion of gift tax attributable to net appreciation. Net appreciation: $12,000 FMV - $5,000 donor basis = $7,000. Gift tax adjustment: $800 x ($7,000 / $12,000) = $467. James''s basis: $5,000 + $467 = $5,467. Unlike inherited property under Section 1014, which receives a full step-up to FMV, gifted property retains the donor''s basis with only a partial gift-tax adjustment.'
WHERE id = 2558;

-- ID 2561: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Section 1014(b)(9), only the decedent''s share of jointly held property receives a stepped-up basis to fair market value at date of death. In a common law state, Beth''s half retains her original basis of $100,000, while her husband''s half receives a stepped-up basis of $250,000 (half of $500,000 FMV). Beth''s total basis is $100,000 + $250,000 = $350,000. Unlike community property states under Section 1014(b)(6), where both halves receive a full step-up, common law states only step up the decedent''s interest.'
WHERE id = 2561;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (1 questions)
-- ============================================================

-- ID 2582: Property Transactions: Gains/Losses
UPDATE questions SET
  explanation = 'Under IRC Section 1211(b), individual taxpayers may deduct a maximum of $3,000 of net capital losses against ordinary income per year ($1,500 if married filing separately). Jennifer can deduct $3,000 of her $4,000 net long-term capital loss in 2026, and the remaining $1,000 carries forward under Section 1212(b) as a long-term capital loss to 2027. Unlike capital gains, which are fully includible in income, capital loss deductions are limited to $3,000 per year to prevent excessive offsets against ordinary income.'
WHERE id = 2582;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 2835: S Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 1366(a), all S corporation items — including tax-exempt income — pass through pro rata to shareholders based on their ownership percentages. Each 50% shareholder receives $10,000 of tax-exempt municipal bond interest ($20,000 x 50%). Under Section 1367(a)(1)(A), this tax-exempt income increases each shareholder''s stock basis even though it is not taxable. Unlike taxable pass-through items, tax-exempt income does not create a current tax liability but remains relevant for basis tracking and AAA calculations.'
WHERE id = 2835;

-- ID 11136: S Corporations
UPDATE questions SET
  explanation = 'Under Treas. Reg. 1.1367-2(c), when a shareholder''s debt basis has been reduced by prior-year losses, any net increase for the year must first restore debt basis to its original face amount before increasing stock basis. Franklin''s debt basis was reduced from $25,000 to $10,000, so $15,000 of the $20,000 income restores debt basis to $25,000, and the remaining $5,000 increases stock basis from $0 to $5,000. Unlike the general ordering rules under Section 1367(a) for stock basis, debt basis restoration takes priority to prevent gain recognition on future loan repayments.'
WHERE id = 11136;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 12860: Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 7602(a) and IRS procedures in the Internal Revenue Manual (IRM 4.10.2), a field audit is the most comprehensive IRS examination and is conducted at the taxpayer''s home, place of business, or accountant''s office where the revenue agent reviews books and records on-site. Field audits are typically reserved for complex returns with significant business income, such as Schedule C filers. Unlike an office audit conducted at the IRS office or a correspondence audit handled entirely by mail, a field audit requires the revenue agent to physically visit the taxpayer''s location.'
WHERE id = 12860;

-- ID 12864: Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 7123 and the IRS Independent Office of Appeals procedures, Appeals officers settle cases based on the hazards of litigation — the probability that the IRS would prevail if the case went to court. If the IRS has a 40% chance of winning, the officer may concede approximately 60% of the disputed amount to achieve a settlement. Unlike offers in compromise under Section 7122, which consider the taxpayer''s ability to pay, Appeals settlements focus on the merits of the legal position and the litigation risk to both parties.'
WHERE id = 12864;

COMMIT;
