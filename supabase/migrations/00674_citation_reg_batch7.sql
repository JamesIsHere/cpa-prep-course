-- Migration: Citation backfill — REG batch 7 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for REG section
-- Affected topics: Agency and Regulation, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Professional Ethics in Tax, Property Transactions: Basis, S Corporations, Tax Procedures

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (4 questions)
-- ============================================================

-- ID 11169: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 3.07(1), the death of the principal automatically terminates the agent''s authority by operation of law. Because Nelson died on June 10, the lease Shaw signed on June 12 is void and does not bind Nelson''s estate, regardless of Shaw''s lack of knowledge. While Shaw acted in good faith, the common law rule is absolute — unlike revocation, which requires notice, termination by death is immediate and cannot be preserved by the agent''s ignorance of the event.'
WHERE id = 11169;

-- ID 11170: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Torts Section 552, CPAs are liable to foreseen users who rely on negligent audit work. Pacific Investors was specifically identified to Graham and qualifies as a foreseen user entitled to recover under the majority Restatement approach. However, under the Ultramares doctrine (Ultramares Corp. v. Touche, 1931), CPA negligence liability extends only to parties in privity or near privity — so Overland Bank, lacking any contractual relationship with Graham, cannot recover for ordinary negligence under that standard.'
WHERE id = 11170;

-- ID 11172: Agency and Regulation
UPDATE questions SET
  explanation = 'Under Securities Act of 1933 Section 5(b)(1), during the waiting period between filing and effectiveness of a registration statement, the issuer may distribute a preliminary prospectus (red herring) to gauge investor interest. This permits oral offers and written offers via the preliminary prospectus but prohibits binding sales or acceptances. Unlike the post-effective period where final prospectus delivery enables actual sales, the waiting period restricts activity to information dissemination only.'
WHERE id = 11172;

-- ID 11174: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the predominant purpose test applied by most courts, a mixed goods-and-services contract is governed entirely by whichever body of law corresponds to the contract''s dominant element. Because services account for $85,000 (71%) of the $120,000 price, common law governs the entire agreement, requiring Canton to prove a material breach to justify rejection. Unlike UCC Article 2 Section 2-601''s perfect tender rule — which allows rejection for any nonconformity in goods contracts — common law''s substantial performance doctrine tolerates minor cosmetic defects.'
WHERE id = 11174;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (4 questions)
-- ============================================================

-- ID 11200: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts Section 39(1), a counteroffer operates as a rejection of the original offer and simultaneously constitutes a new offer. When Klein proposed $16,000, Hoffman''s original $18,000 offer was extinguished by operation of law, terminating Klein''s power of acceptance. Klein''s subsequent attempt to accept at $18,000 is merely a new offer that Hoffman may accept or reject. Unlike a mere inquiry about price flexibility, Klein''s definitive statement of a different price constituted a counteroffer that destroyed the original offer.'
WHERE id = 11200;

-- ID 11202: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts Section 265, frustration of purpose applies when a supervening event destroys the principal purpose of the contract without making performance impossible. Lawton''s lease can still be performed, but the fireworks ban eliminates its value. Under Restatement Section 261, impossibility (or impracticability) applies to Garner because the hurricane destroyed the cabin, making performance literally impossible. While both doctrines discharge obligations, frustration eliminates the value of performance whereas impossibility eliminates the ability to perform.'
WHERE id = 11202;

-- ID 11204: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts Section 281, an accord and satisfaction discharges a disputed obligation when the debtor offers a lesser amount clearly designated as full payment and the creditor accepts it. The three requirements are: (1) a bona fide dispute about the amount owed, (2) a clear offer of a specific amount as full settlement, and (3) acceptance by the creditor through cashing the check. Unlike partial payment of an undisputed liquidated debt — which lacks consideration and cannot discharge the balance — a genuinely disputed claim provides the necessary consideration for the accord.'
WHERE id = 11204;

-- ID 11206: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Restitution and Unjust Enrichment Section 1, a quasi-contract (contract implied in law) is a court-imposed remedy to prevent unjust enrichment when one party confers a measurable benefit on another. Dawson can recover the reasonable value of the plumbing repair from Nguyen because it would be unjust for Nguyen to retain the benefit without compensation. Unlike an implied-in-fact contract — which requires mutual assent inferred from the parties'' conduct — a quasi-contract is imposed by law regardless of the parties'' intent or agreement.'
WHERE id = 11206;

-- ============================================================
-- BUSINESS STRUCTURES (4 questions)
-- ============================================================

-- ID 2526: Business Structures
UPDATE questions SET
  explanation = 'Under the Revised Model Business Corporation Act (RMBCA) Section 10.03, amending the articles of incorporation is a fundamental change requiring shareholder approval, typically by a majority vote. Other fundamental changes requiring shareholder approval include mergers (Section 11.04), dissolution (Section 14.02), and sale of substantially all assets (Section 12.02). Unlike day-to-day management decisions such as declaring dividends, hiring officers, or setting budgets — which fall within the board''s authority under RMBCA Section 8.01 — amendments to the articles alter the corporation''s foundational charter.'
WHERE id = 2526;

-- ID 2528: Business Structures
UPDATE questions SET
  explanation = 'Under IRC Section 702(a), each partner must include in gross income their distributive share of partnership items, regardless of whether any distribution is actually made. Dave''s 50% share of the $120,000 partnership income equals $60,000, reportable as ordinary income on his individual return. The partnership itself files an informational Form 1065 under IRC Section 6031 but pays no entity-level federal income tax. Unlike C corporations, which face double taxation at both the entity and shareholder levels, partnerships are pass-through entities taxed only at the partner level.'
WHERE id = 2528;

-- ID 2530: Business Structures
UPDATE questions SET
  explanation = 'Under RMBCA Section 8.40, corporate officers are appointed by the board of directors and serve at the board''s pleasure, handling day-to-day operations of the corporation. Officers can be removed by the board at any time with or without cause, and they need not be directors or shareholders. Unlike directors — who are elected by the shareholders under RMBCA Section 8.03 — officers derive their authority entirely from the board''s delegation and remain accountable to the board rather than directly to shareholders.'
WHERE id = 2530;

-- ID 11224: Business Structures
UPDATE questions SET
  explanation = 'Under state common law, a sole proprietorship has no continuity of life because it is not a separate legal entity — the business terminates upon the owner''s death. This distinguishes it from corporations (which have perpetual existence under RMBCA Section 3.02) and LLCs (which continue as separate legal entities under the Revised Uniform LLC Act). Unlike LLCs and corporations that provide limited liability, a sole proprietor has unlimited personal liability for all business debts and obligations, making entity selection a critical planning decision.'
WHERE id = 11224;

-- ============================================================
-- C CORPORATIONS (1 questions)
-- ============================================================

-- ID 2802: C Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 1211(a), corporations may not deduct net capital losses against ordinary income. Instead, IRC Section 1212(a) allows corporations to carry net capital losses back 3 years and forward 5 years, treating the carryover as a short-term capital loss regardless of the original character. Ridge Corp''s $20,000 net capital loss ($30,000 loss minus $10,000 gain) must be carried to other tax years. Unlike individuals, who may deduct up to $3,000 of net capital losses against ordinary income annually under IRC Section 1211(b), corporations receive no current-year ordinary income offset.'
WHERE id = 2802;

-- ============================================================
-- CIRCULAR 230 (3 questions)
-- ============================================================

-- ID 2391: Circular 230
UPDATE questions SET
  explanation = 'Under 31 CFR Section 10.25(a) (Circular 230), a practitioner who is suspended from practice before the IRS is completely barred from all IRS practice during the suspension period. This includes preparing tax returns, representing clients, and corresponding with the IRS on clients'' behalf. The suspension is absolute — the practitioner may not practice even under another practitioner''s supervision. Unlike censure, which is a public reprimand that still permits continued practice, suspension entirely removes the practitioner''s authority until reinstatement is granted under Section 10.81.'
WHERE id = 2391;

-- ID 2393: Circular 230
UPDATE questions SET
  explanation = 'Under 31 CFR Section 10.51(a)(7) (Circular 230), providing false or misleading information to the Office of Professional Responsibility during a disciplinary investigation is itself a sanctionable violation. This constitutes obstruction and can result in enhanced sanctions beyond those for the original misconduct, including disbarment under Section 10.50. While criminal referral for obstruction is possible under 18 U.S.C. Section 1001, it is not automatic. Unlike routine correspondence with the IRS, communications during OPR investigations carry an affirmative obligation of truthfulness.'
WHERE id = 2393;

-- ID 2394: Circular 230
UPDATE questions SET
  explanation = 'Under 31 CFR Section 10.22(a) (Circular 230), a practitioner must exercise due diligence in determining the correctness of oral and written representations made to the IRS and to clients. Knowingly failing to review relevant tax authority — statutes, regulations, and case law — before recommending a return position represents a clear failure of this duty. While relying on client-provided W-2s and using tax preparation software are consistent with due diligence, the practitioner must independently verify the legal basis for positions taken rather than proceeding without adequate research.'
WHERE id = 2394;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (3 questions)
-- ============================================================

-- ID 2894: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under 11 U.S.C. Section 1322 (Bankruptcy Code Chapter 13), the wage earner''s plan is specifically designed for individuals with regular income who wish to retain their property while repaying debts over a 3-to-5-year court-approved plan. Eligibility requires that secured and unsecured debts fall below statutory limits as adjusted periodically. Unlike Chapter 7 liquidation, which requires surrender of nonexempt assets, Chapter 13 allows debtors to keep property by committing future disposable income to the repayment plan.'
WHERE id = 2894;

-- ID 2896: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under UCC Article 9 Section 9-313(a), perfection by possession is available for tangible collateral including negotiable instruments, goods, money, and certificated securities. Negotiable instruments such as promissory notes and checks can be perfected when the secured party takes physical possession. Unlike accounts receivable and general intangibles — which are intangible assets that cannot be physically possessed and must be perfected by filing — negotiable instruments offer the secured party the option of possessory perfection as an alternative to filing a financing statement.'
WHERE id = 2896;

-- ID 2897: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Suretyship and Guaranty Section 55, co-sureties have a right of contribution from each other based on their proportional maximum liability. Surety B''s proportional share is $40,000/$120,000 (one-third), making B responsible for $40,000 of the default — which also equals B''s maximum commitment. Since Surety A paid the full $120,000, A can recover $40,000 from B. Unlike subrogation — where the surety steps into the creditor''s rights against the principal debtor — contribution is a right among co-sureties to equalize the burden of payment.'
WHERE id = 2897;

-- ============================================================
-- FEDERAL TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 12704: Federal Tax Procedures
UPDATE questions SET
  explanation = 'Under IRS Revenue Procedure 2012-18 and IRC Section 7803(e), when the disputed amount exceeds $25,000, the taxpayer must file a formal written protest to request an Appeals conference. The small case request procedure under IRM 8.6.1.4 is only available for disputes of $25,000 or less per tax period. Since Palmer''s $32,000 dispute exceeds this threshold, a written protest detailing the contested issues, facts, and legal arguments is required. Unlike filing a Tax Court petition — which initiates a judicial proceeding — requesting Appeals is an administrative remedy that does not require court involvement.'
WHERE id = 12704;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (3 questions)
-- ============================================================

-- ID 11308: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under SEC Rule 506(b) of Regulation D (17 CFR Section 230.506(b)), general solicitation or general advertising is strictly prohibited as a condition of the exemption. The sales agent''s telephone solicitations to 50 unknown individuals constitute general solicitation, which violates this fundamental requirement regardless of whether any solicited persons actually purchased securities. Loss of the Rule 506(b) exemption exposes the entire $8 million offering to potential Securities Act Section 5 registration violations. Unlike Rule 506(c), which permits general solicitation provided all purchasers are verified accredited investors, Rule 506(b) prohibits the conduct itself.'
WHERE id = 11308;

-- ID 13821: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 7.07, respondeat superior holds a principal vicariously liable for torts committed by an agent acting within the scope of employment. Courts distinguish between a minor detour (employer remains liable) and a substantial frolic (employer not liable), making the degree of departure from authorized duties the critical factor. Rivera''s brief lunch stop during a delivery route is likely a minor detour rather than a frolic. Unlike express permission — which is relevant but not dispositive — scope of employment is the controlling standard for determining vicarious liability.'
WHERE id = 13821;

-- ID 13822: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under UCC Article 9 Section 9-310(a), perfection of a security interest typically requires filing a financing statement, which establishes the creditor''s priority over competing claimants and puts third parties on constructive notice. National Bank''s filing perfects its already-created security interest in Whitfield''s equipment and determines the order of claims in default or bankruptcy under UCC Section 9-322. Unlike the security agreement itself — which creates the security interest between the parties — the financing statement is a public notice document that protects the secured party''s priority position against other creditors.'
WHERE id = 13822;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (3 questions)
-- ============================================================

-- ID 2692: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Section 21(d)(2), the child and dependent care credit requires both spouses on a joint return to have earned income. However, IRC Section 21(d)(2) provides an exception: a spouse who is a full-time student or is physically or mentally incapable of self-care is deemed to have earned income of $250 per month for one qualifying individual ($500 for two or more). This allows the working spouse to claim the credit despite the other spouse''s lack of earnings. Unlike the earned income credit, which has no comparable deemed-income provision for students, Section 21 explicitly accommodates this situation.'
WHERE id = 2692;

-- ID 2693: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Section 25A(a), taxpayers may claim both the American Opportunity Tax Credit (Section 25A(b)) and the Lifetime Learning Credit (Section 25A(c)) on the same return, provided they are claimed for different students. The AOTC applies to the daughter''s first four years of undergraduate education, while the LLC applies to Robert''s graduate MBA program. However, IRC Section 25A(c)(2)(A) prohibits claiming both credits for the same student in the same tax year. Unlike the AOTC, which is limited to four years per student, the LLC has no limit on the number of years it may be claimed.'
WHERE id = 2693;

-- ID 2694: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Section 25A(f)(1)(A), the AOTC''s definition of qualified expenses includes tuition, fees, and course materials (textbooks, supplies, and equipment needed for enrollment). The Lifetime Learning Credit under IRC Section 25A(f)(1)(B) covers only tuition and fees paid directly to the eligible educational institution and does not include course materials purchased separately. This distinction makes the AOTC more inclusive for students with significant textbook and supply costs. Unlike the LLC''s narrower scope, the AOTC was specifically expanded by the American Recovery and Reinvestment Act to cover course materials.'
WHERE id = 2694;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (1 questions)
-- ============================================================

-- ID 2719: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = 'Under IRC Section 55(a), the alternative minimum tax equals the excess of the tentative minimum tax over the regular tax liability. Since Brennan''s regular tax of $52,000 exceeds her tentative minimum tax of $45,000, the excess is zero and no AMT is owed. The AMT functions as a floor — it triggers additional tax only when the tentative minimum tax computed under IRC Section 55(b) exceeds the regular tax. Unlike the regular tax computation, the AMT calculation adds back certain preference items and adjustments under IRC Section 56 to arrive at alternative minimum taxable income.'
WHERE id = 2719;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (3 questions)
-- ============================================================

-- ID 2672: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 163(h), mortgage interest on a personal residence is an itemized deduction claimed on Schedule A, not an above-the-line deduction. Above-the-line deductions reduce AGI directly and include HSA contributions (IRC Section 223), student loan interest (IRC Section 221), and the deductible portion of self-employment tax (IRC Section 164(f)). Unlike above-the-line deductions — which benefit all taxpayers regardless of whether they itemize — mortgage interest only provides a tax benefit to taxpayers who choose to itemize rather than claiming the standard deduction.'
WHERE id = 2672;

-- ID 2673: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under H.R. 1 (effective for 2026), personal auto loan interest is deductible as an itemized deduction on Schedule A under an expanded version of IRC Section 163(h). This represents a new category of deductible personal interest that was previously nondeductible under the Tax Cuts and Jobs Act. The taxpayer''s $1,680 in auto loan interest qualifies for this deduction only if the taxpayer itemizes. Unlike the student loan interest deduction under IRC Section 221, which is an above-the-line adjustment available to all filers, auto loan interest requires itemization to provide any tax benefit.'
WHERE id = 2673;

-- ID 2675: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 213(a), medical expenses are deductible only to the extent they exceed 7.5% of AGI — here $12,000 minus $7,125 (7.5% of $95,000) equals $4,875. Under IRC Section 164(b)(6), the SALT deduction is capped at $10,000. Mortgage interest of $8,000 is fully deductible under IRC Section 163(h)(3), and charitable contributions of $4,000 qualify under IRC Section 170. Total itemized deductions equal $26,875 ($4,875 + $10,000 + $8,000 + $4,000). Unlike the standard deduction, which provides a flat amount regardless of actual expenses, itemizing allows Maria to claim the full benefit of her above-threshold expenditures.'
WHERE id = 2675;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (4 questions)
-- ============================================================

-- ID 2744: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 152(d)(1)(C), the support test for a qualifying relative requires the taxpayer to provide more than 50% of the individual''s total support for the calendar year. Total support includes amounts spent for food, lodging, clothing, medical care, education, and similar necessities as defined in Treas. Reg. Section 1.152-1(a)(2). If no single person provides more than 50%, IRC Section 152(d)(3) permits a multiple support agreement among contributors. Unlike the qualifying child test — which has no support percentage threshold — the qualifying relative test places a specific numerical burden on the claiming taxpayer.'
WHERE id = 2744;

-- ID 2746: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 6012(a)(1), a dependent must file a return if gross income exceeds the applicable filing threshold. For dependents, IRC Section 63(c)(5) limits the standard deduction to the greater of $1,300 or earned income plus $450, up to the regular standard deduction amount. Kevin''s earned income of $14,500 yields a standard deduction of $14,950 ($14,500 + $450). Since his gross income of $14,500 does not exceed $14,950, Kevin is not required to file — although filing may still be advisable to claim a refund of withheld taxes.'
WHERE id = 2746;

-- ID 2747: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 6654(a), the estimated tax underpayment penalty is calculated as interest at the federal short-term rate plus 3 percentage points, applied to each quarterly underpayment for the period it remained unpaid. Despite being labeled a penalty, it is technically an interest charge under IRC Section 6621. Rhodes cannot avoid it merely by paying the full balance at filing. Unlike the failure-to-file penalty under IRC Section 6651(a)(1), which is a true percentage-based penalty that the IRS may waive for reasonable cause, the underpayment charge is a time-value-of-money assessment with very limited waiver authority.'
WHERE id = 2747;

-- ID 2748: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 25A(d), the American Opportunity Tax Credit phases out for single filers with modified AGI between $80,000 and $90,000. Nancy''s AGI of $130,000 far exceeds the $90,000 upper limit, making her completely ineligible for the AOTC. She may instead consider the Lifetime Learning Credit under IRC Section 25A(c), which has higher income phase-out thresholds ($80,000–$90,000 for single filers under current law). Unlike the AOTC, which provides a partially refundable credit of up to $2,500, the LLC is nonrefundable and limited to $2,000 per return.'
WHERE id = 2748;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 2639: Individual Taxation: Income
UPDATE questions SET
  explanation = 'Under IRC Section 86(a), the taxable amount of Social Security benefits is determined using a two-tier formula based on provisional income. With provisional income of $36,000, the calculation yields: 50% of the excess over $25,000 up to $34,000 ($4,500) plus 85% of the excess over $34,000 ($1,700), totaling $6,200. This is compared to 85% of total benefits ($20,400), and the lesser amount ($6,200) is included in gross income. Unlike earned income — which is fully taxable — Social Security benefits are phased into taxation gradually to protect lower-income recipients.'
WHERE id = 2639;

-- ID 2641: Individual Taxation: Income
UPDATE questions SET
  explanation = 'Under IRC Section 1(h), qualified dividends are taxed at the same preferential rates as long-term capital gains rather than at ordinary income rates. For 2026, IRC Section 1(h)(1)(B) applies a 15% rate to qualified dividends for single filers with taxable income in Jane''s bracket (approximately $48,476 to $533,400). Jane''s $5,000 in qualified dividends is therefore taxed at 15%, not her 22% marginal ordinary rate. Unlike ordinary dividends — which are taxed at the taxpayer''s regular marginal rate — qualified dividends receive preferential treatment if holding period and other requirements under IRC Section 1(h)(11) are met.'
WHERE id = 2641;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (3 questions)
-- ============================================================

-- ID 2877: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under 31 CFR Section 10.34(a) (Circular 230), an undisclosed position on a tax return must meet the substantial authority standard, which requires approximately a 40% likelihood of being sustained on the merits. If the position is disclosed on the return, the lower reasonable basis standard under Section 10.34(c) (approximately 20% likelihood) applies. The more-likely-than-not standard (over 50%) is reserved for tax shelter items under IRC Section 6662(d)(2)(C). Unlike the reasonable basis threshold — which merely requires a supportable legal theory — substantial authority demands a more rigorous analysis of relevant authorities.'
WHERE id = 2877;

-- ID 2878: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under SSARS No. 21 (AR-C Section 80.21), when a CPA performing a compilation becomes aware that financial statements are materially misstated and the client refuses to make corrections, the CPA should withdraw from the engagement. The CPA should also consider whether to inform known users that the statements should not be relied upon, consistent with AR-C Section 80.22. Unlike an audit engagement — where the CPA can issue a qualified or adverse opinion to communicate the misstatement — a compilation provides no assurance, and there is no mechanism for a qualified compilation report.'
WHERE id = 2878;

-- ID 2879: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under 31 CFR Section 10.6(e) (Circular 230), practitioners who practice before the IRS must complete 72 hours of continuing education every three-year period, with a minimum of 16 hours per calendar year. At least 2 of the 72 hours must cover ethics as required by Section 10.6(e)(2). This ensures tax practitioners maintain current knowledge of evolving tax law and professional standards. Unlike state CPA licensing requirements — which vary by jurisdiction — Circular 230''s CE mandate is a uniform federal requirement administered by the IRS Office of Professional Responsibility.'
WHERE id = 2879;

-- ============================================================
-- LIKE-KIND EXCHANGES (1 questions)
-- ============================================================

-- ID 13060: Like-Kind Exchanges
UPDATE questions SET
  explanation = 'Under Treas. Reg. Section 1.1031(k)-1(g)(6), the qualified intermediary safe harbor requires that the taxpayer have no right to receive, pledge, borrow, or otherwise obtain the benefits of exchange proceeds until the exchange is completed or the exchange period expires. If the QI releases $50,000 to Lawson before replacement property is identified, constructive receipt occurs and the entire exchange may be disqualified under IRC Section 1031. Unlike a partial exchange — where only the boot received is taxable — a safe harbor violation may taint the full transaction, causing recognition of all realized gain.'
WHERE id = 13060;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (4 questions)
-- ============================================================

-- ID 2425: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under 31 CFR Section 10.34(a) (Circular 230), by signing a return as paid preparer, the CPA represents that the return positions have a reasonable basis and comply with applicable tax standards. The CPA certifies that the return is correct and complete based on all information known to the practitioner. This representation does not guarantee freedom from audit, certify that every supporting document was personally examined, or create personal liability for the client''s tax deficiency. Unlike the substantial authority standard for undisclosed positions, the signing representation requires at minimum a reasonable basis for each position taken.'
WHERE id = 2425;

-- ID 2426: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under AICPA SSTS No. 7, a CPA generally has no obligation to update previously provided written tax advice when subsequent developments undermine the original authority. However, when the CPA becomes aware of significant new developments — such as an adverse court decision — and maintains an ongoing relationship with the client, the CPA should consider informing the client of the changed circumstances. Unlike Circular 230 Section 10.37, which imposes specific requirements for written advice at the time it is given, SSTS No. 7 addresses the practitioner''s ongoing duty and relies on professional judgment rather than a mandatory update obligation.'
WHERE id = 2426;

-- ID 2427: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under AICPA SSTS No. 3, a CPA may generally rely on client-provided information without independent verification, but must not ignore implications of information known to the CPA. When income appears significantly understated relative to industry norms in a cash-intensive business, the CPA has a duty to make reasonable inquiries and evaluate the reliability of the records. The CPA should document the inquiry and conclusions but is not required to report the client or unilaterally adjust income. Unlike an audit engagement governed by AU-C standards — which requires independent corroboration — a tax preparation engagement relies more heavily on client representations, tempered by the CPA''s duty of inquiry.'
WHERE id = 2427;

-- ID 13007: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under 31 CFR Section 10.27(b)(2) (Circular 230), contingent fees are prohibited for preparing or filing original tax returns, including original Form 1040s. Patel''s arrangement tying the fee to 15% of the refund is a contingent fee that violates this provision. Contingent fees are only permitted for amended returns claiming tax refunds or credits and for services rendered in connection with IRS examinations or proceedings under Section 10.27(b)(3). Unlike permissible contingent-fee arrangements for amended returns, no amount of client consent, IRS disclosure, or fee percentage adjustment cures the prohibition for original returns.'
WHERE id = 13007;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (3 questions)
-- ============================================================

-- ID 2552: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Section 1012(a), the cost basis of stock includes the purchase price plus any incidental costs of acquisition, such as brokerage commissions. Robert''s total cost is (1,000 shares x $25) + $150 commission = $25,150, yielding a per-share basis of $25.15. Treas. Reg. Section 1.263(a)-2(e) confirms that transaction costs incurred in acquiring property are capitalized into basis rather than currently deducted. Unlike selling expenses — which reduce the amount realized under IRC Section 1001(b) — purchasing costs increase the taxpayer''s basis and reduce future gain on disposition.'
WHERE id = 2552;

-- ID 2556: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under Treas. Reg. Section 1.61-6(a) and IRC Section 1060 principles, when a lump-sum purchase includes multiple assets, the total cost is allocated based on relative fair market values. Using the county tax assessment as a reasonable FMV proxy: the building ratio is $450,000/$600,000 = 75%, so building basis = 75% x $750,000 = $562,500 and land basis = 25% x $750,000 = $187,500. Unlike the building portion — which is depreciable over its recovery period under IRC Section 168 — the land allocation is never depreciable because land does not have a determinable useful life.'
WHERE id = 2556;

-- ID 2557: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under Treas. Reg. Section 1.167(g)-1, when personal-use property is converted to business use, the depreciable basis is the lower of the taxpayer''s adjusted basis or the property''s fair market value at the date of conversion. Carol''s adjusted basis is $35,000 (original cost), but the FMV is only $22,000, so the depreciable basis is $22,000. This rule under IRC Section 167 prevents taxpayers from claiming depreciation deductions for the $13,000 decline in value that occurred during personal use. Unlike property acquired directly for business use — where the full cost becomes the depreciable basis — converted property is limited to its current FMV if that amount is lower.'
WHERE id = 2557;

-- ============================================================
-- S CORPORATIONS (1 questions)
-- ============================================================

-- ID 2834: S Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 1366(d)(1), S corporation losses first reduce the shareholder''s stock basis, then debt basis. In Year 1, the $30,000 loss reduces V''s stock basis from $20,000 to $0 ($20,000 absorbed), then reduces debt basis from $15,000 by the remaining $10,000 to $5,000. In Year 2, under IRC Section 1367(b)(2)(B), income of $18,000 must first restore debt basis from $5,000 to $15,000 ($10,000 used), then the remaining $8,000 increases stock basis from $0 to $8,000. Unlike partnerships — where debt basis is calculated differently under IRC Section 752 — S corporation debt basis requires the shareholder to have personally loaned funds to the corporation.'
WHERE id = 2834;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 12856: Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 6664(c)(1), demonstrating reasonable cause and good faith reliance on professional advice waives the accuracy-related penalty under IRC Section 6662. However, under IRC Section 6601(a), interest on underpayments accrues from the due date of the return regardless of reasonable cause and cannot be abated on that basis. Nakamura''s penalty is waived because reliance on a qualified CPA''s advice satisfies the reasonable cause standard. Unlike penalties — which are punitive and subject to reasonable cause defenses — interest represents the time value of money owed to the government and continues to accrue irrespective of fault.'
WHERE id = 12856;

-- ID 12858: Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 7463(a), the Tax Court Small Case Division (S cases) handles disputes of $50,000 or less per tax year using simplified procedures. Cases are tried informally without strict rules of evidence, making the process more accessible for pro se taxpayers. However, the decision is final and cannot be appealed under IRC Section 7463(b). Unlike the $25,000 threshold for requiring a written protest to IRS Appeals under IRM 8.6.1.4, the Small Case Division''s $50,000 ceiling is a separate jurisdictional limit that governs access to simplified Tax Court proceedings.'
WHERE id = 12858;

COMMIT;
