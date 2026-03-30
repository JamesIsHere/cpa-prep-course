-- Migration: Citation backfill — REG batch 4 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (5 questions)
-- ============================================================

-- ID 2490: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency, Section 8.05, an agent has a duty of loyalty that prohibits using confidential information obtained during the agency for personal profit. Harper exploited inside knowledge of Baxter's acquisition plans to purchase adjacent land for personal gain, breaching this fiduciary obligation. While the duty of care (Section 8.08) relates to competence in performing assigned tasks, it does not address self-dealing or misuse of confidential information.$EXPL$
WHERE id = 2490;

-- ID 2491: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency, Section 8.14, a principal owes the agent a duty of reimbursement for expenses reasonably incurred while performing authorized agency duties. Abbott traveled to client sites as instructed and submitted documented receipts, entitling him to reimbursement of the $3,200. Unlike the duty of compensation (Section 8.13), which covers agreed-upon pay, the duty of reimbursement specifically covers out-of-pocket expenses authorized by the principal.$EXPL$
WHERE id = 2491;

-- ID 2492: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency, Section 8.09, an agent has a duty of obedience to act within the scope of authority granted by the principal. When an agent exceeds that authority and causes the principal to suffer a loss, the agent is personally liable for resulting damages. However, the business judgment rule (a corporate law doctrine) protects directors making informed decisions in good faith and does not shield agents who act outside their authorized scope.$EXPL$
WHERE id = 2492;

-- ID 2493: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency, Section 3.06, an agency relationship may be terminated by acts of the parties (mutual agreement, revocation, or renunciation) or by operation of law, including death of either party under Section 3.07(1). Death automatically terminates the agency because the principal-agent relationship is personal in nature. Although impossibility and bankruptcy also terminate agencies by operation of law, the filing of a routine lawsuit between unrelated parties does not end an existing agency.$EXPL$
WHERE id = 2493;

-- ID 2495: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency, Section 4.01, ratification occurs when a principal, with knowledge of all material facts, affirms an agent's previously unauthorized act. The principal must have had the capacity and legal power to authorize the act originally, and the ratification must encompass the entire transaction. Unlike an original authorization, ratification does not require third-party consent or a court filing — rather, it relates back to the time of the unauthorized act.$EXPL$
WHERE id = 2495;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (1 questions)
-- ============================================================

-- ID 4813: Alternative Minimum Tax
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 55(b)(1), the individual AMT uses a two-tier rate structure: 26% on the first portion of alternative minimum taxable income above the exemption amount and 28% on AMTI exceeding a specified threshold. For 2026, the 28% rate applies to AMTI above the exemption exceeding $232,600 for single filers. Unlike the regular tax system's seven graduated brackets (10% through 37%), the AMT's simpler two-rate structure was designed to ensure a minimum level of taxation on high-income individuals.$EXPL$
WHERE id = 4813;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (4 questions)
-- ============================================================

-- ID 2465: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Second) of Contracts, Section 14, a minor (person under 18) has the power to disaffirm contracts for non-necessities at any time during minority or within a reasonable time after reaching the age of majority. Jones, at 16, may void the $2,000 contract because it is for a non-essential item. Unlike void contracts that have no legal effect from inception, a voidable contract remains enforceable until the minor exercises the right to disaffirm.$EXPL$
WHERE id = 2465;

-- ID 2466: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Second) of Contracts, Section 175, duress — including threats of physical harm, wrongful detention of property, or improper economic pressure — vitiates genuine assent and renders a contract voidable. Because Garrett discovered material misrepresentations, fraud or misrepresentation (Section 164) provides the applicable defense. While a bad bargain or failure to read the contract are generally not defenses to enforcement, lack of genuine assent through fraud, duress, undue influence, or mutual mistake of material fact may void the agreement.$EXPL$
WHERE id = 2466;

-- ID 2469: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Second) of Contracts, Section 360, specific performance is available when monetary damages are inadequate because the subject matter is unique. Real property is presumed unique under Section 360(b), making specific performance routinely available for land sale contracts. Thornton's refusal to close on the historic brownstone entitles Rivera to seek this equitable remedy. Unlike fungible goods that can be replaced through a market purchase, each parcel of real property has unique location and characteristics.$EXPL$
WHERE id = 2469;

-- ID 2471: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Second) of Contracts, Section 63 (the mailbox rule), an acceptance is effective when properly dispatched, while a revocation under Section 42 is effective only when received by the offeree. Quinn received the offer Thursday and immediately mailed an acceptance, which was effective upon dispatch. Although Parker mailed the revocation on Wednesday, it had not yet been received by Quinn when she dispatched her acceptance. Therefore, a valid contract was formed on Thursday under the mailbox rule.$EXPL$
WHERE id = 2471;

-- ============================================================
-- BUSINESS STRUCTURES (3 questions)
-- ============================================================

-- ID 2514: Business Structures
UPDATE questions SET
  explanation = $EXPL$Under the Revised Uniform Limited Liability Company Act (RULLCA) Section 503, a creditor of an individual LLC member is limited to obtaining a charging order against the member's transferable interest. The charging order entitles the creditor to receive distributions that would otherwise go to the debtor-member but does not allow the creditor to seize the membership interest, force a sale, or compel dissolution. Unlike a judgment lien on personal assets, the charging order protects the other members from disruption caused by one member's personal debts.$EXPL$
WHERE id = 2514;

-- ID 2515: Business Structures
UPDATE questions SET
  explanation = $EXPL$Under the Revised Uniform Partnership Act (RUPA) Section 306(c) and state LLP statutes, an LLP provides partners with a liability shield against vicarious liability for the negligence, malpractice, or misconduct of other partners. Each partner remains fully liable for their own acts and those they directly supervise. Unlike a general partnership where all partners share unlimited joint and several liability, an LLP limits cross-partner exposure while retaining pass-through partnership taxation and imposing no statutory partner limit.$EXPL$
WHERE id = 2515;

-- ID 2516: Business Structures
UPDATE questions SET
  explanation = $EXPL$Under the Revised Model Business Corporation Act (RMBCA) Section 2.02, articles of incorporation (also called a certificate of incorporation or corporate charter) must be filed with the state to legally create a corporation. This document includes the corporate name, authorized shares, registered agent, and incorporator information. While bylaws govern internal operations under Section 2.06, they are adopted by the board and not filed with the state — unlike articles of incorporation, which are a public filing requirement.$EXPL$
WHERE id = 2516;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 2794: C Corporations
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 316(a) and Section 301(c), corporate distributions are treated as dividends to the extent of current earnings and profits (E&P), then accumulated E&P, then return of capital. Per Rev. Rul. 74-338, when current E&P is insufficient to cover all distributions, it is allocated chronologically by distribution date. The first $60,000 to X is fully covered, leaving $40,000 of current E&P for Y's $80,000 distribution. Unlike accumulated E&P which is allocated pro rata, current E&P follows the chronological rule.$EXPL$
WHERE id = 2794;

-- ID 2795: C Corporations
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 170(b)(2), a C corporation's charitable contribution deduction is limited to 10% of taxable income computed before the charitable deduction, the dividends-received deduction, any NOL carryback, and any capital loss carryback. Flash's base for the limitation is $900,000, yielding a maximum deduction of $90,000 (10% x $900,000). The excess $30,000 carries forward for five years under Section 170(d)(2). Unlike individual taxpayers who use AGI-based percentage limits (up to 60%), corporations are capped at 10% of modified taxable income.$EXPL$
WHERE id = 2795;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 492: Circular 230
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 7522 and IRS examination procedures, the 30-day letter is a preliminary notice issued at the conclusion of an IRS field audit proposing adjustments to the taxpayer's return. It informs the taxpayer of the right to request a conference with the IRS Appeals Office within 30 days. If the taxpayer does not respond or reach agreement, the IRS issues a statutory notice of deficiency (90-day letter) under IRC Sec. 6212. Unlike the 90-day letter, the 30-day letter is not a statutory prerequisite to Tax Court jurisdiction.$EXPL$
WHERE id = 492;

-- ID 2382: Circular 230
UPDATE questions SET
  explanation = $EXPL$Under 31 CFR Part 10 (Circular 230), Section 10.50, the Office of Professional Responsibility may impose administrative sanctions including censure (public reprimand), suspension (temporary prohibition from practice), or disbarment (permanent prohibition from practice before the IRS). These sanctions address incompetence, disreputable conduct, or violations of Circular 230 standards. Unlike state licensing boards that can revoke CPA licenses or courts that impose criminal penalties, the OPR's authority is limited to regulating practice before the IRS.$EXPL$
WHERE id = 2382;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 2887: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = $EXPL$Under 11 U.S.C. Section 523(a)(8), student loans are generally not dischargeable in Chapter 7 bankruptcy unless the debtor demonstrates undue hardship — an extremely difficult standard under the Brunner test. Other non-dischargeable debts listed in Section 523(a) include certain taxes, child support, alimony, and debts obtained through fraud. While general unsecured debts such as credit card balances, medical bills, and utility bills are typically dischargeable, student loan obligations survive the bankruptcy discharge absent a separate adversary proceeding.$EXPL$
WHERE id = 2887;

-- ID 2889: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Suretyship and Guaranty, Section 72, when a surety pays the creditor on the debtor's default, the surety obtains the right of subrogation — stepping into the creditor's legal position to pursue the debtor for reimbursement. The surety also has a direct right of reimbursement against the debtor (Section 22) and, if co-sureties exist, a right of contribution (Section 55). Unlike an assignment of the original debt, subrogation arises by operation of law upon payment and requires no separate agreement.$EXPL$
WHERE id = 2889;

-- ============================================================
-- FEDERAL TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 1165: Federal Tax Procedures
UPDATE questions SET
  explanation = $EXPL$Under 28 U.S.C. Section 1346(a)(1), the U.S. District Court is the only forum that provides a jury trial for federal tax disputes. The taxpayer must first pay the deficiency and file a refund claim before suing in District Court. The U.S. Tax Court (IRC Sec. 7441) uses specialized judges without juries, and the Court of Federal Claims (28 U.S.C. Section 1491) also has no jury. Unlike the Tax Court, which allows pre-payment litigation, District Court requires full payment before suit.$EXPL$
WHERE id = 1165;

-- ID 12695: Federal Tax Procedures
UPDATE questions SET
  explanation = $EXPL$Under IRS Internal Revenue Manual (IRM) 4.10.1, a correspondence audit is the simplest form of IRS examination, conducted entirely by mail. The IRS sends a notice under IRC Sec. 7602 requesting documentation to substantiate specific return items, and the taxpayer responds with records. No in-person meeting occurs. Unlike an office audit (conducted at an IRS facility) or a field audit (conducted at the taxpayer's place of business), a correspondence audit addresses limited, straightforward issues through written communication.$EXPL$
WHERE id = 12695;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (3 questions)
-- ============================================================

-- ID 11286: Government Regulation of Business
UPDATE questions SET
  explanation = $EXPL$Under Securities Act Section 3(b) and SEC Regulation D, Rule 504 (17 CFR 230.504) permits issuers to sell up to $10 million of securities in a 12-month period without restricting the number or sophistication of non-accredited investors. Because Atlas has 40 non-accredited investors, it exceeds Rule 506(b)'s cap of 35 non-accredited purchasers. While Rule 506(b) would otherwise accommodate the $4.5 million amount and prohibition on general solicitation, its 35-person limit for non-accredited investors disqualifies this offering from that exemption.$EXPL$
WHERE id = 11286;

-- ID 11287: Government Regulation of Business
UPDATE questions SET
  explanation = $EXPL$Under the Hart-Scott-Rodino Antitrust Improvements Act of 1976 (15 U.S.C. Section 18a), parties to mergers and acquisitions exceeding statutory size thresholds must file pre-merger notification with the FTC and DOJ and observe a mandatory waiting period (typically 30 days) before consummating the transaction. This allows antitrust agencies to evaluate competitive effects under the Clayton Act. Unlike an outright prohibition of competitor mergers, Hart-Scott-Rodino requires regulatory review and a waiting period while agencies assess whether the combination would substantially lessen competition.$EXPL$
WHERE id = 11287;

-- ID 11288: Government Regulation of Business
UPDATE questions SET
  explanation = $EXPL$Under Securities Act Section 3(a)(11) and SEC Rule 147 (17 CFR 230.147), the intrastate offering exemption requires the issuer to derive at least 80% of its gross revenues from in-state operations, hold at least 80% of assets within the state, and use at least 80% of offering proceeds within the state. Magnolia's 85% in-state revenue satisfies the revenue threshold. Unlike Regulation D exemptions, Rule 147 does not require investors to be accredited — it requires only that all purchasers be residents of the issuing state.$EXPL$
WHERE id = 11288;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (2 questions)
-- ============================================================

-- ID 2682: Individual Taxation: Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 21(c), the child and dependent care credit limits eligible employment-related expenses to $3,000 for one qualifying individual or $6,000 for two or more qualifying individuals. Although Denise paid $7,500 in daycare for her two children, her maximum eligible expense amount is capped at $6,000. The credit percentage (ranging from 20% to 35%) is then applied to this capped amount based on her AGI under Section 21(a)(2). Unlike the child tax credit, which is per-child, the dependent care credit caps total eligible expenses regardless of actual costs.$EXPL$
WHERE id = 2682;

-- ID 2683: Individual Taxation: Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 32(a), the earned income credit requires the taxpayer to have earned income (wages, salaries, or self-employment income) and meet applicable AGI limits. A qualifying child is not required — Section 32(c)(1)(A)(ii) provides a smaller EIC for eligible workers without qualifying children. However, Section 32(i) imposes an investment income limitation ($11,600 for 2026); Garcia's $8,000 in investment income must be checked against this threshold. Unlike the child tax credit, the EIC does not require MFJ filing status.$EXPL$
WHERE id = 2683;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 2713: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1411(c)(1)(A), net investment income subject to the 3.8% NIIT includes rental income, dividends, capital gains, interest, and other passive income. Net rental income from a passive activity is included in NII and subject to the surtax when modified AGI exceeds $250,000 for MFJ filers. While wages and active self-employment income are excluded from NII under Section 1411(c)(6) (though subject to other Medicare taxes), IRA distributions are specifically excluded from the NIIT by statute under Section 1411(c)(5).$EXPL$
WHERE id = 2713;

-- ID 2714: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 56(b)(1)(A), charitable contributions are fully deductible for both regular tax and AMT purposes and require no add-back when computing alternative minimum taxable income. In contrast, state and local income taxes (SALT), real property taxes, and personal property taxes must be added back under Section 56(b)(1)(A)(ii) because these deductions are disallowed for AMT purposes. This SALT add-back is one of the most common AMT adjustments for itemizing taxpayers, unlike charitable contributions which pass through unchanged.$EXPL$
WHERE id = 2714;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (3 questions)
-- ============================================================

-- ID 2660: Individual Taxation: Deductions
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 163(h)(3)(B)(ii), as amended by the Tax Cuts and Jobs Act, the mortgage interest deduction for mortgages originated after December 15, 2017, is limited to interest on the first $750,000 of acquisition indebtedness. Since the couple's $900,000 mortgage exceeds this cap, only the proportionate interest is deductible: $38,000 x ($750,000 / $900,000) = $31,667. Unlike pre-TCJA mortgages (which retained the $1,000,000 grandfathered limit), post-December 15, 2017 mortgages are subject to the reduced $750,000 ceiling.$EXPL$
WHERE id = 2660;

-- ID 2661: Individual Taxation: Deductions
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 170(b)(1)(G), cash contributions to public charities are deductible up to 60% of the taxpayer's adjusted gross income. Greg's 60% AGI limit is $36,000 ($60,000 x 60%), and his $15,000 cash donation falls well below this ceiling, so the entire amount is deductible in 2026. Any excess over the AGI limitation would carry forward for up to five years under Section 170(d)(1). Unlike donations of appreciated capital gain property (limited to 30% of AGI), cash gifts to public charities benefit from the higher 60% ceiling.$EXPL$
WHERE id = 2661;

-- ID 2662: Individual Taxation: Deductions
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 170(b)(1)(C), donations of long-term capital gain property to public charities are deductible at fair market value but limited to 30% of AGI. Sandra's 30% limit is $21,000 ($70,000 x 30%), so although the stock is worth $25,000, she can only deduct $21,000 in 2026. The remaining $4,000 carries forward for up to five years under Section 170(d)(1). Unlike cash contributions (which qualify for the higher 60% AGI limit under Section 170(b)(1)(G)), capital gain property is subject to the more restrictive 30% ceiling.$EXPL$
WHERE id = 2662;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (3 questions)
-- ============================================================

-- ID 2733: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 6654(d)(1)(C), higher-income taxpayers with prior-year AGI exceeding $150,000 (or $75,000 for married filing separately) must pay at least 110% of the prior year's tax liability to use the safe harbor and avoid the estimated tax underpayment penalty. The alternative safe harbor remains 90% of the current year's tax under Section 6654(d)(1)(B). Unlike the standard 100% prior-year safe harbor available to most taxpayers, this elevated 110% threshold prevents high-income individuals from underpaying based on a significantly lower prior-year liability.$EXPL$
WHERE id = 2733;

-- ID 2735: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 63(c), married filing separately provides the lowest standard deduction among the five filing statuses. For 2026, MFS yields a standard deduction of $15,700, equal to the single filer amount but paired with more restrictive phase-outs and credit limitations. While head of household receives a higher standard deduction under Section 63(c)(2)(B) and married filing jointly/qualifying surviving spouse receives the highest at $31,400, MFS is considered the least favorable status because it also restricts access to many credits and deductions.$EXPL$
WHERE id = 2735;

-- ID 2736: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 63(c)(6)(A), when married taxpayers file separately and one spouse itemizes deductions, the other spouse must also itemize and cannot claim the standard deduction. This consistency requirement prevents couples from optimizing by having one spouse itemize while the other takes the standard deduction. Since Rita itemizes, Tom must also itemize regardless of whether his itemized deductions exceed the standard deduction. Unlike jointly filing couples who make a single election, MFS filers are bound by the matching-method rule.$EXPL$
WHERE id = 2736;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 2623: Individual Taxation: Income
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 86(a)(2), for married taxpayers filing jointly with provisional income at or above the $44,000 second-tier threshold, up to 85% of Social Security benefits may be included in gross income. Provisional income equals AGI plus tax-exempt interest plus 50% of Social Security benefits. Henry and Martha's provisional income of $44,000 reaches this second tier. Unlike the first-tier threshold of $32,000 (which triggers up to 50% inclusion under Section 86(a)(1)), exceeding the $44,000 threshold subjects up to 85% of benefits to taxation.$EXPL$
WHERE id = 2623;

-- ID 2624: Individual Taxation: Income
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 215 and Section 71 (pre-TCJA), for divorce or separation agreements executed before January 1, 2019, alimony is deductible by the payor and includible in the recipient's gross income. David and Susan's 2016 decree falls under these pre-TCJA rules, so David deducts the $2,000 monthly payments and Susan includes them in income. Unlike agreements executed after December 31, 2018 — where Section 11051 of the TCJA eliminated both the deduction and the income inclusion — pre-2019 agreements retain the traditional tax treatment.$EXPL$
WHERE id = 2624;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 2867: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = $EXPL$Under the Ultramares doctrine (Ultramares Corp. v. Touche, 255 N.Y. 170, 1931), consistent with Restatement (Second) of Torts Section 552 commentary, a CPA firm is liable for negligence only to parties in privity of contract or near-privity with the firm. The bank was neither a party to the engagement nor known to the auditors, so it cannot recover for mere negligence. However, if the CPA had committed fraud, the bank could recover regardless of privity. Unlike the Restatement approach (which extends liability to foreseen users), Ultramares limits negligence claims to those in direct contractual privity.$EXPL$
WHERE id = 2867;

-- ID 2870: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Second) of Torts, Section 552, a CPA is liable for negligence to foreseen users — specifically identified third parties or members of a limited class the accountant knows will rely on the work product. The supplier was identified by name during the engagement, making them a specifically foreseen user entitled to recover for the CPA's negligence. Unlike the more restrictive Ultramares privity doctrine, the Restatement approach extends liability beyond the client to those the accountant knew would rely on the financial statements.$EXPL$
WHERE id = 2870;

-- ============================================================
-- LIKE-KIND EXCHANGES (2 questions)
-- ============================================================

-- ID 2607: Like-Kind Exchanges
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1031(b), gain is recognized in a like-kind exchange only to the extent of boot received. Tom's realized gain is ($140,000 + $20,000) - $90,000 - $5,000 = $65,000. Boot received is $20,000 cash, reduced by $5,000 in exchange expenses, yielding net boot of $15,000. Recognized gain equals the lesser of realized gain ($65,000) or net boot ($15,000) = $15,000 under Section 1031(b). Unlike a fully taxable sale, Section 1031 defers gain to the extent the exchange involves qualifying like-kind property rather than boot.$EXPL$
WHERE id = 2607;

-- ID 2609: Like-Kind Exchanges
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1031 and Treas. Reg. Section 1.1031(k)-1(c)(4), the three-property rule allows a taxpayer to identify up to three replacement properties without regard to their aggregate value. Janet identified four properties, exceeding this limit. However, the exchange may still qualify under the 200% rule (aggregate FMV of all identified properties must not exceed 200% of the relinquished property's FMV) or the 95% rule (taxpayer must acquire at least 95% of the total identified value). Unlike the three-property rule, these alternatives impose value-based constraints.$EXPL$
WHERE id = 2609;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (3 questions)
-- ============================================================

-- ID 2412: Professional Ethics in Tax
UPDATE questions SET
  explanation = $EXPL$Under AICPA Statement on Standards for Tax Services (SSTS) No. 1, a CPA should not recommend a tax return position unless the CPA has a good-faith belief that the position has at least a realistic possibility of being sustained on its merits if challenged. This aligns with the realistic possibility standard (generally interpreted as approximately a one-in-three likelihood). Unlike a certainty or substantial authority standard, SSTS No. 1 does not require guaranteed success — it requires only a reasonable basis grounded in applicable tax authority.$EXPL$
WHERE id = 2412;

-- ID 2413: Professional Ethics in Tax
UPDATE questions SET
  explanation = $EXPL$Under AICPA SSTS No. 7 (Form and Content of Advice), a CPA may communicate tax advice in any form — written or oral — appropriate to the circumstances. The CPA should use professional judgment considering factors such as the transaction's importance, dollar amounts involved, complexity of the issue, and likelihood of challenge. Unlike a blanket requirement for written advice, SSTS No. 7 leaves the form to the practitioner's discretion based on the specific engagement circumstances. There are no IRS-mandated templates or dollar thresholds dictating the required format.$EXPL$
WHERE id = 2413;

-- ID 2414: Professional Ethics in Tax
UPDATE questions SET
  explanation = $EXPL$Under AICPA SSTS No. 6 (Knowledge of Error), when a CPA becomes aware of a possible error on a previously filed return — regardless of who prepared it — the CPA should promptly inform the client and recommend corrective measures, such as filing an amended return. The CPA should not contact the prior preparer without the client's consent, report directly to the IRS without authorization, or ignore the issue. Unlike Circular 230 Section 10.21 (which imposes a similar duty), SSTS No. 6 emphasizes the professional obligation to the client rather than regulatory compliance.$EXPL$
WHERE id = 2414;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (2 questions)
-- ============================================================

-- ID 1285: Property Transactions: Basis
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 168(k), as restored by H.R. 1, 100% bonus depreciation applies to qualified property placed in service after January 19, 2025. This retroactive restoration reversed the TCJA phase-down schedule that had reduced bonus depreciation to 40% for 2025. Apex's $750,000 of new production equipment qualifies for full expensing because it was placed in service during 2026, after the January 19, 2025 effective date. Unlike Section 179 expensing (which has annual dollar limits), bonus depreciation under Section 168(k) has no dollar cap.$EXPL$
WHERE id = 1285;

-- ID 2538: Property Transactions: Basis
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1015(a) and Treas. Reg. Section 1.1015-1(a)(2), when gift property has a FMV below the donor's basis at the date of gift, a dual-basis rule applies. The gain basis is the donor's adjusted basis ($80,000) and the loss basis is the FMV at the date of gift ($55,000). Because the $70,000 selling price falls between these two amounts, no gain is recognized (selling price < gain basis) and no loss is recognized (selling price > loss basis). Unlike property sold above the donor's basis, sales in this "no man's land" produce neither gain nor loss.$EXPL$
WHERE id = 2538;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (1 questions)
-- ============================================================

-- ID 2573: Property Transactions: Gains/Losses
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1211(b), individual taxpayers may deduct up to $3,000 of net capital losses against ordinary income annually. The taxpayer nets the $12,000 short-term capital loss against the $5,000 long-term capital gain under Section 1222(6), resulting in a $7,000 net short-term capital loss. Of this, $3,000 is deductible against ordinary income, and the remaining $4,000 carries forward to 2027 under Section 1212(b), retaining its short-term character. Unlike capital gains, which are fully includible, capital losses are subject to this annual deduction limitation.$EXPL$
WHERE id = 2573;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 2823: S Corporations
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1366(d)(1), an S corporation shareholder may deduct losses up to the sum of stock basis (Section 1367) and direct debt basis (loans from the shareholder to the corporation). R's total basis is $50,000 (stock) + $30,000 (direct loan) = $80,000, allowing a deduction of $80,000 of the $90,000 allocated loss. The remaining $10,000 is suspended and carries forward indefinitely under Section 1366(d)(2). Unlike partnership at-risk rules, S corporation debt basis requires the shareholder to make a direct loan — guarantees of corporate debt do not create basis.$EXPL$
WHERE id = 2823;

-- ID 2824: S Corporations
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1367(a)(2), S corporation losses reduce stock basis first, then debt basis. The $115,000 loss reduces S's stock basis from $100,000 to $0 (absorbing $100,000), then reduces debt basis from $25,000 by the remaining $15,000 to $10,000. S deducts the full $115,000 because total basis ($125,000) exceeds the loss. Under Section 1367(b)(2), future net income must restore debt basis before increasing stock basis. Unlike stock basis which can receive both income and distribution adjustments, debt basis follows a mandatory restoration sequence.$EXPL$
WHERE id = 2824;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 2442: Tax Procedures
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 6212 and Section 6213, the standard IRS dispute resolution sequence is: (1) the IRS issues a 30-day letter proposing adjustments; (2) the taxpayer may appeal to the IRS Appeals Office under Rev. Proc. 87-24; (3) if unresolved, the IRS issues a statutory notice of deficiency (90-day letter) under Section 6212; (4) the taxpayer may petition the U.S. Tax Court within 90 days under Section 6213(a). Unlike filing directly in District Court (which requires prior payment), the Tax Court allows pre-payment adjudication of the proposed deficiency.$EXPL$
WHERE id = 2442;

-- ID 2444: Tax Procedures
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 6654(d)(1)(B), taxpayers can avoid the estimated tax underpayment penalty by paying at least 90% of the current year's tax liability or 100% of the prior year's tax through withholding and estimated payments. Because Henderson's prior-year AGI of $130,000 does not exceed the $150,000 threshold in Section 6654(d)(1)(C), the standard 100% prior-year safe harbor applies. Unlike higher-income taxpayers (AGI over $150,000) who must pay 110% of prior-year tax, Henderson qualifies for the lower 100% threshold.$EXPL$
WHERE id = 2444;

COMMIT;
