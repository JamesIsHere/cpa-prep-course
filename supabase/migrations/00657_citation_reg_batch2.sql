-- Migration: Citation backfill — REG batch 2 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (5 questions)
-- ============================================================

-- ID 2480: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency, Section 1.01, an agency relationship is created when one person (the principal) manifests assent that another (the agent) shall act on the principal''s behalf and subject to the principal''s control. The essential elements are mutual consent, the agent acting for the principal''s benefit, and the principal''s right to control the agent''s conduct. While partnerships involve co-ownership, they are governed by separate statutes and do not inherently create an agency relationship for external transactions in the same manner.'
WHERE id = 2480;

-- ID 2481: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency, Section 2.01, express authority arises when the principal makes an actual, explicit communication — oral or written — granting the agent specific authority to act. The written agreement between Caldwell and Fletcher directly confers this authority. Unlike implied authority, which is inferred from custom or necessity under Section 2.01, express authority requires no inference because the principal''s instructions are stated explicitly.'
WHERE id = 2481;

-- ID 2482: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency, Section 2.02, implied authority includes the power to take actions that are incidental to, customary in, or reasonably necessary for carrying out the agent''s express authority. Arranging shipping as a purchasing agent falls within this scope because it is customary for the role. However, implied authority does not extend to extraordinary acts such as personal guarantees, which would exceed the reasonable scope of the express authorization granted.'
WHERE id = 2482;

-- ID 2483: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency, Section 2.03, apparent authority exists when a third party reasonably believes the agent has authority based on the principal''s manifestations — such as granting a title, providing business cards, and allowing the agent to represent the company at trade shows. The focus is on the principal''s conduct toward the third party, not the agent''s claims. Unlike express authority under Section 2.01, apparent authority does not require actual authorization from the principal to the agent.'
WHERE id = 2483;

-- ID 2484: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency, Section 2.01, a general agent is authorized to conduct a series of transactions involving a continuity of service for the principal — such as managing an entire business operation on an ongoing basis. This broad, continuing authority distinguishes a general agent from a special agent, who under Section 2.01 is appointed only for a specific transaction or limited set of tasks. Although both types can bind the principal, the general agent''s scope is substantially broader.'
WHERE id = 2484;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (1 questions)
-- ============================================================

-- ID 4810: Alternative Minimum Tax
UPDATE questions SET
  explanation = 'Under IRC Sec. 56(b)(3), the bargain element on the exercise of incentive stock options (ISOs) — the excess of fair market value over the exercise price — is an AMT adjustment that must be added to alternative minimum taxable income (AMTI). Although IRC Sec. 421(a) provides that no regular income tax is recognized at ISO exercise (assuming holding period requirements are met), this exclusion does not apply for AMT purposes. Unlike nonqualified stock options taxed at exercise under Sec. 83, ISOs create a timing difference that frequently triggers AMT liability.'
WHERE id = 4810;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (4 questions)
-- ============================================================

-- ID 203: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts, Section 152, a contract is voidable when both parties share a mutual mistake regarding a basic assumption that materially affects the agreed-upon exchange. Here, the incorrect belief about soil conditions is a mutual mistake on a basic assumption, entitling Mercer to rescind. While unequal bargaining power alone does not make a contract voidable unless it rises to unconscionability under UCC Section 2-302, mutual mistake directly undermines the foundation of the parties'' agreement.'
WHERE id = 203;

-- ID 204: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under common law contract principles and the Restatement (Second) of Contracts, Section 14, a minor (a person under the age of majority) lacks full contractual capacity, making contracts with minors voidable at the minor''s option. Ethan may disaffirm the contract either during minority or within a reasonable time after reaching the age of majority. Unlike void contracts that have no legal effect from inception, a voidable contract is enforceable against the adult party and only the minor has the power to avoid it.'
WHERE id = 204;

-- ID 495: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under UCC Section 2-314, the implied warranty of merchantability arises automatically in sales by merchant sellers and requires that goods be fit for the ordinary purposes for which such goods are used. This includes passing without objection in the trade, being adequately packaged, and conforming to label promises. Unlike the implied warranty of fitness for a particular purpose under UCC Section 2-315, which requires the seller to know the buyer''s specific intended use, merchantability is an objective standard based on ordinary commercial expectations.'
WHERE id = 495;

-- ID 2450: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts, Section 24, a valid offer requires (1) a manifestation of present contractual intent, (2) definite and certain terms, and (3) communication to the offeree. Garrett''s proposal fails because "a reasonable price to be determined later" lacks definiteness in a material term. While UCC Section 2-305 permits open price terms in sales of goods, common law requires greater certainty, and the offer need not be in writing unless the Statute of Frauds applies.'
WHERE id = 2450;

-- ============================================================
-- BUSINESS STRUCTURES (4 questions)
-- ============================================================

-- ID 509: Business Structures
UPDATE questions SET
  explanation = 'Under 11 U.S.C. Section 109(e), Chapter 13 eligibility is limited to individuals with regular income whose noncontingent, liquidated unsecured debts and secured debts each fall below statutory limits (adjusted periodically). The debtor must propose a repayment plan of three to five years under Section 1322. Unlike Chapter 7 liquidation, which requires the debtor to surrender nonexempt assets, Chapter 13 allows the debtor to retain property while making plan payments from future income.'
WHERE id = 509;

-- ID 598: Business Structures
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Suretyship and Guaranty, Section 15, a guarantor of collection is secondarily liable, meaning the creditor must first exhaust remedies against the principal debtor — including obtaining and attempting to execute a judgment — before pursuing the guarantor. A surety, by contrast, is primarily liable alongside the debtor and may be pursued immediately upon default. While both provide credit support, the surety''s obligation is concurrent with the debtor''s, whereas the guarantor''s obligation is contingent on the creditor''s inability to collect from the debtor.'
WHERE id = 598;

-- ID 2506: Business Structures
UPDATE questions SET
  explanation = 'Under IRC Sec. 1, a sole proprietorship is not a separate taxable entity; all business income and expenses are reported on Schedule C (Form 1040) as part of the owner''s individual return. This is because the sole proprietor and the business are treated as one taxpayer. Unlike a C corporation filing Form 1120 under IRC Sec. 11 or a partnership filing Form 1065 under IRC Sec. 701, the sole proprietorship has no separate entity-level filing requirement.'
WHERE id = 2506;

-- ID 2507: Business Structures
UPDATE questions SET
  explanation = 'Under IRC Sec. 1401, the self-employment tax rate is 15.3%, consisting of 12.4% for Social Security (OASDI) and 2.9% for Medicare (HI), applied to 92.35% of net self-employment earnings as specified in IRC Sec. 1402(a). The 92.35% factor approximates the employer-equivalent portion of FICA that employees receive as an exclusion. Unlike W-2 employees whose employers pay half of FICA under Sec. 3111, self-employed individuals bear the full 15.3% but may deduct the employer-equivalent half under Sec. 164(f).'
WHERE id = 2507;

-- ============================================================
-- C CORPORATIONS (1 questions)
-- ============================================================

-- ID 2792: C Corporations
UPDATE questions SET
  explanation = 'Under IRC Sec. 531, the accumulated earnings tax is imposed at a flat rate of 20% on accumulated taxable income — earnings retained beyond the reasonable needs of the business. This penalty tax discourages C corporations from accumulating earnings to help shareholders avoid dividend taxation under Sec. 301. Unlike the personal holding company tax under IRC Sec. 541, which applies to passive income corporations meeting specific ownership tests, the accumulated earnings tax targets any C corporation with unreasonable accumulations regardless of income type.'
WHERE id = 2792;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 198: Circular 230
UPDATE questions SET
  explanation = 'Under 31 C.F.R. Part 10 (Circular 230), Section 10.50, the Office of Professional Responsibility (OPR) may impose administrative sanctions including censure, suspension, or disbarment from practice before the IRS. The severity depends on factors such as willfulness of the violation, harm to clients, and disciplinary history. These sanctions are distinct from criminal penalties, which require separate prosecution by the Department of Justice. Unlike state boards of accountancy that control CPA licensure, the OPR''s authority is limited to the practitioner''s right to practice before the IRS.'
WHERE id = 198;

-- ID 199: Circular 230
UPDATE questions SET
  explanation = 'Under Circular 230, Section 10.27, a practitioner may not charge an unconscionable fee for services rendered. The determination uses a multi-factor test evaluating the practitioner''s experience and reputation, the novelty and difficulty of the questions, the skill required, customary charges in the locality, and the time limitations imposed. A $25,000 fee for a simple W-2 return is likely unconscionable because the complexity is minimal and the fee vastly exceeds customary charges. However, unlike a fixed dollar cap, this analysis is context-dependent — the same fee for complex international tax work may be reasonable.'
WHERE id = 199;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 1181: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under 11 U.S.C. Section 362(b)(1), criminal proceedings against the debtor are specifically excepted from the automatic stay imposed by Section 362(a). The government may continue criminal prosecution regardless of the bankruptcy filing because the stay is designed to protect the debtor''s estate from civil collection actions, not to shield debtors from criminal liability. While collection actions, most evictions, and setoffs are generally stayed under Section 362(a), the criminal exception ensures that bankruptcy cannot be used to obstruct law enforcement.'
WHERE id = 1181;

-- ID 1184: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Suretyship and Guaranty, Section 39, if the creditor releases the principal debtor without the surety''s consent, the surety is discharged from liability because the release extinguishes the underlying obligation the surety guaranteed. The surety''s obligation is derivative — it depends on the existence of the principal debtor''s obligation. Unlike a modification that merely changes terms, a full release eliminates the debt entirely, and the surety cannot be held liable for an obligation that no longer exists.'
WHERE id = 1184;

-- ============================================================
-- FEDERAL TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 1161: Federal Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Sec. 6213(a), the U.S. Tax Court has exclusive jurisdiction to hear cases where a taxpayer contests a deficiency without first paying the disputed tax. The taxpayer must file a petition within 90 days of the statutory notice of deficiency. Unlike U.S. District Court and the Court of Federal Claims under 28 U.S.C. Sec. 1346(a)(1), which require full payment of the assessed tax followed by a refund suit, the Tax Court allows prepayment litigation — making it the only forum for taxpayers who cannot afford to pay first.'
WHERE id = 1161;

-- ID 1162: Federal Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Sec. 6213(c), if the taxpayer does not file a Tax Court petition within 90 days (150 days if the taxpayer is outside the U.S.) of the statutory notice of deficiency, the IRS may formally assess the deficiency and begin collection proceedings under Sec. 6303. The 90-day letter is the statutory prerequisite to Tax Court jurisdiction under Sec. 6213(a). Unlike an informal 30-day letter, which invites administrative appeal, the statutory notice of deficiency is a formal legal document that triggers the assessment timeline.'
WHERE id = 1162;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (3 questions)
-- ============================================================

-- ID 4793: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under the Family and Medical Leave Act, 29 U.S.C. Section 2612(a)(1), eligible employees are entitled to up to 12 weeks of unpaid, job-protected leave per 12-month period for qualifying reasons such as the birth or adoption of a child, a serious health condition, or care of an immediate family member with a serious health condition. The employer must maintain the employee''s group health insurance during leave under Section 2614(c)(1). Unlike paid leave mandates, FMLA requires only that the position be preserved, not that wages continue during the leave period.'
WHERE id = 4793;

-- ID 4796: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under the Foreign Corrupt Practices Act, 15 U.S.C. Section 78m(b)(2), publicly traded companies (issuers) must maintain accurate books, records, and accounts and devise a system of adequate internal accounting controls. This books-and-records provision complements the FCPA''s anti-bribery provisions under Section 78dd-1. While the Sherman Act (15 U.S.C. Section 1) addresses antitrust and the Dodd-Frank Act focuses on post-2008 financial regulation reform, only the FCPA specifically mandates internal accounting controls for issuers.'
WHERE id = 4796;

-- ID 4799: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under the Occupational Safety and Health Act, 29 U.S.C. Section 654(a)(1) (the general duty clause), employers must furnish a workplace free from recognized hazards that are causing or likely to cause death or serious physical harm. This obligation applies regardless of specific OSHA standards. Unlike the Affordable Care Act, which addresses health insurance requirements for applicable large employers, OSHA focuses exclusively on workplace safety conditions and does not guarantee zero injuries or require employers to provide health benefits.'
WHERE id = 4799;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (2 questions)
-- ============================================================

-- ID 2678: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Sec. 24(a) as amended by H.R. 1 (One Big Beautiful Bill), the child tax credit is $2,500 per qualifying child under age 17 for 2026. This represents an increase from the $2,000 amount established by the Tax Cuts and Jobs Act. Under Sec. 24(b), the credit begins to phase out at $200,000 of modified AGI for single filers and $400,000 for married filing jointly. Unlike the earned income credit under Sec. 32, the child tax credit is not limited to lower-income taxpayers and remains available at higher income levels.'
WHERE id = 2678;

-- ID 2679: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Sec. 24(a) as amended by H.R. 1, each qualifying child under age 17 generates a $2,500 credit. All three children (ages 5, 10, and 14) qualify, producing a total credit of $7,500 (3 x $2,500). Because the phase-out under Sec. 24(b) for married filing jointly begins at $400,000 MAGI, the Delgados'' $350,000 income falls below the threshold, so the full credit is available. Unlike means-tested credits that phase out at lower income levels, the child tax credit''s high MFJ threshold preserves the full benefit for most families.'
WHERE id = 2679;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 2703: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = 'Under IRC Sec. 55(d)(3), the AMT exemption is phased out by 25 cents for every dollar of AMTI exceeding the threshold ($609,350 for single filers). Porter''s $40,650 excess ($650,000 minus $609,350) triggers a $10,163 reduction ($40,650 x 25%), leaving a $77,937 exemption. Within the phaseout range, each additional dollar of AMTI is taxed at 28% under Sec. 55(b)(1) and simultaneously exposes $0.25 of previously exempt income to the same rate, creating an effective marginal rate of approximately 35%. Unlike a cliff phaseout, this gradual reduction avoids an abrupt jump in tax liability.'
WHERE id = 2703;

-- ID 2707: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = 'Under IRC Sec. 57(a)(5), tax-exempt interest on private activity bonds issued after August 7, 1986, is a tax preference item that must be added back to taxable income when computing alternative minimum taxable income (AMTI). This is because private activity bonds finance projects that primarily benefit private parties rather than the general public. Unlike interest on general obligation municipal bonds, which remains exempt from both regular tax and AMT, private activity bond interest receives less favorable treatment under the AMT regime.'
WHERE id = 2707;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (3 questions)
-- ============================================================

-- ID 1288: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Sec. 24A as enacted by H.R. 1 (One Big Beautiful Bill), cash tips received by qualifying service workers — such as restaurant servers and bartenders — are excluded from gross income for federal income tax purposes. This is an income tax exclusion only; tips remain subject to FICA withholding under IRC Sec. 3121(a). Unlike a complete tax exemption that would eliminate all federal tax obligations on tip income, this provision preserves Social Security and Medicare tax liability while removing the income tax burden.'
WHERE id = 1288;

-- ID 1289: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Sec. 163(h)(2)(F) as enacted by H.R. 1, the auto loan interest deduction is capped at $10,000 per year and applies to interest paid on loans used to purchase vehicles manufactured in the United States. Beck''s $4,200 in interest falls within the annual limit and is fully deductible as an above-the-line deduction. Unlike mortgage interest under Sec. 163(h)(3), which is an itemized deduction, the auto loan interest deduction under H.R. 1 reduces adjusted gross income directly, benefiting taxpayers regardless of whether they itemize.'
WHERE id = 1289;

-- ID 2651: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Sec. 213(a), medical expenses are deductible as an itemized deduction only to the extent they exceed 7.5% of adjusted gross income. Marcus''s AGI floor is $6,000 ($80,000 x 7.5%), producing a deductible amount of $2,200 ($8,200 minus $6,000). Only the amount exceeding the floor is deductible on Schedule A. Unlike above-the-line deductions that reduce AGI directly, medical expenses are subject to this percentage floor, which prevents deductions for routine medical costs that Congress considers ordinary personal expenses.'
WHERE id = 2651;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (3 questions)
-- ============================================================

-- ID 1262: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Sec. 2(b) and Sec. 7703(b), a married taxpayer may qualify for head of household status by meeting four conditions: (1) living apart from the spouse for the last six months of the year, (2) paying more than half the cost of maintaining the home, (3) the home is the principal residence of a qualifying child for more than half the year, and (4) filing a separate return. Janet satisfies all requirements because she lived apart for seven months, exceeding the six-month threshold. Unlike married filing separately, head of household provides wider tax brackets and a higher standard deduction.'
WHERE id = 1262;

-- ID 1263: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Sec. 152(c), a qualifying child must meet relationship, age, residency, and support tests — but no gross income test. Karen satisfies the age test because Sec. 152(c)(3)(A)(ii) extends the age limit from 19 to 24 for full-time students. Her $18,000 of earnings is irrelevant under the qualifying child rules. Alex, at 20 and not a student, fails the qualifying child age test and must be evaluated as a qualifying relative under Sec. 152(d), which imposes a gross income test — his $18,000 exceeds the threshold, disqualifying him. Unlike the qualifying child test, the qualifying relative rules impose an income ceiling that bars higher-earning dependents.'
WHERE id = 1263;

-- ID 2723: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Sec. 1(a), married filing jointly provides the most favorable tax rates, with the widest brackets and the highest standard deduction ($31,400 for 2026 under Sec. 63(c)). The MFJ brackets are approximately double the single filer brackets, which substantially reduces the marriage penalty. Unlike married filing separately under Sec. 1(d), which uses narrower brackets and restricts access to many credits and deductions, MFJ maximizes tax benefits for most married couples.'
WHERE id = 2723;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 541: Individual Taxation: Income
UPDATE questions SET
  explanation = 'Under IRC Sec. 469 and Treasury Reg. Sec. 1.469-5T(a)(1), the most commonly cited material participation test requires the taxpayer to participate in the activity for more than 500 hours during the tax year. Andrea''s 520 hours exceed this threshold, establishing material participation. Unlike the 100-hour test under Reg. Sec. 1.469-5T(a)(3), which also requires that no other individual participated more, the 500-hour test is a standalone bright-line standard that does not depend on the participation levels of other individuals.'
WHERE id = 541;

-- ID 543: Individual Taxation: Income
UPDATE questions SET
  explanation = 'Under IRC Sec. 86(a) and (b), Social Security benefits are included in gross income based on two provisional income thresholds for single filers: $25,000 and $34,000. In 2025, Hargrove''s provisional income of $30,000 falls between these thresholds, triggering up to 50% inclusion under Sec. 86(a)(1). In 2026, IRA withdrawals push provisional income to $48,000, exceeding the $34,000 second threshold and triggering up to 85% inclusion under Sec. 86(a)(2). Unlike Roth IRA distributions that are excluded from provisional income, traditional IRA withdrawals create a cascading tax effect by simultaneously being fully taxable and increasing the taxable portion of Social Security benefits.'
WHERE id = 543;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 2861: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under common law negligence principles as applied in 1136 Tenants'' Corp. v. Max Rothenberg & Co. and the Restatement (Second) of Torts, Section 299A, a CPA owes a duty to exercise the skill and care that a reasonably competent practitioner would exercise under the same or similar circumstances. This is an objective standard based on the profession''s norms, not a guarantee of perfection. Unlike a strict liability standard, which would impose liability for any error regardless of care taken, the negligence standard requires proof that the CPA failed to meet the level of competence expected of a reasonable professional.'
WHERE id = 2861;

-- ID 2862: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under common law, establishing CPA negligence requires proof of four elements: (1) a duty of care existed, (2) the CPA breached that duty by failing to meet the standard of care, (3) the breach proximately caused the plaintiff''s harm, and (4) the plaintiff suffered actual damages. All four elements must be established as articulated in Ultramares Corp. v. Touche and the Restatement (Second) of Torts, Section 552. Unlike fraud, which requires proof of intentional misrepresentation or reckless disregard under Section 526, negligence only requires a failure to exercise due professional care.'
WHERE id = 2862;

-- ============================================================
-- LIKE-KIND EXCHANGES (1 questions)
-- ============================================================

-- ID 2603: Like-Kind Exchanges
UPDATE questions SET
  explanation = 'Under IRC Sec. 1031(b), gain is recognized in a like-kind exchange only to the extent of boot received. When both parties transfer mortgaged properties, the mortgages are netted per Treasury Reg. Sec. 1.1031(b)-1(c): mortgage relief of $150,000 minus the $90,000 mortgage assumed equals $60,000 in net boot received. This net amount determines the gain recognized. Unlike cash boot, which is straightforward, mortgage boot requires netting because assumption of a mortgage by the taxpayer offsets the boot effect of being relieved of a mortgage.'
WHERE id = 2603;

-- ============================================================
-- PARTNERSHIPS (1 questions)
-- ============================================================

-- ID 2843: Partnerships
UPDATE questions SET
  explanation = 'Under IRC Sec. 732(a)(1), in a current (non-liquidating) distribution, the partner''s basis in distributed property is the lesser of the partnership''s inside basis in the property ($25,000) or the partner''s remaining outside basis ($60,000). Since $25,000 is less than $60,000, H takes a $25,000 carryover basis. H''s outside basis is then reduced to $35,000 ($60,000 minus $25,000) under Sec. 733. Unlike a liquidating distribution under Sec. 732(b), where basis may be adjusted to equal the partner''s remaining outside basis, current distributions preserve the carryover basis and cannot reduce outside basis below zero.'
WHERE id = 2843;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (3 questions)
-- ============================================================

-- ID 2404: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under AICPA SSTS No. 1, the realistic possibility standard requires that a tax return position have approximately a one-in-three (33%) likelihood of being sustained on its merits if challenged. This standard establishes the minimum level of confidence needed before a CPA may recommend a position without disclosure. Unlike the "more likely than not" standard (greater than 50%) required under IRC Sec. 6662(d)(2)(B) to avoid substantial understatement penalties, the realistic possibility threshold is lower but still demands meaningful technical support.'
WHERE id = 2404;

-- ID 2405: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under Circular 230, Section 10.21, when a practitioner discovers a client''s noncompliance with tax obligations, the practitioner must promptly advise the client of the noncompliance, its consequences, and the corrective steps available. The practitioner is not required to report the client to the IRS — the client-practitioner relationship and confidentiality are maintained under Section 10.21. Unlike mandatory reporting obligations imposed on certain professionals in other regulatory contexts, Circular 230 places the disclosure obligation on the practitioner to the client, not to the government.'
WHERE id = 2405;

-- ID 2407: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under AICPA SSTS No. 4 (Use of Estimates), a CPA may use estimates on a tax return when it is impracticable to obtain exact data and the CPA determines that the estimates are reasonable based on the known facts and circumstances. The CPA should not present estimates as exact figures, thereby implying greater accuracy than exists. Unlike situations where precise records are available and must be used, SSTS No. 4 recognizes that practical constraints — such as destroyed records — justify reasonable approximations without requiring IRS authorization.'
WHERE id = 2407;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (2 questions)
-- ============================================================

-- ID 512: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Sec. 168(e) and Rev. Proc. 87-56, MACRS classifies depreciable assets by recovery period based on estimated useful lives. Automobiles and light trucks are assigned a 5-year recovery period, while office furniture falls in the 7-year class. Both use the 200% declining balance method switching to straight-line under Sec. 168(b)(1). Under the half-year convention per Sec. 168(d)(1), 5-year property yields a 20% first-year rate versus 14.29% for 7-year property. Unlike straight-line depreciation used for real property under Sec. 168(b)(3), personal property uses accelerated methods that front-load deductions.'
WHERE id = 512;

-- ID 514: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Sec. 168(k), the TCJA set first-year bonus depreciation at 100% for qualified property placed in service from September 28, 2017 through 2022, with a phase-down of 20 percentage points annually: 80% in 2023, 60% in 2024, 40% in 2025, and 20% in 2026. Meridian''s 2025 purchase qualifies for 40% ($200,000), while Atlas''s 2026 purchase qualifies for only 20% ($100,000). Unlike Sec. 179 expensing, which has annual dollar limits and taxable income restrictions, bonus depreciation under Sec. 168(k) applies to the full cost of qualifying property but is temporary by design.'
WHERE id = 514;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (1 questions)
-- ============================================================

-- ID 2567: Property Transactions: Gains/Losses
UPDATE questions SET
  explanation = 'Under IRC Sec. 1211(b), individual taxpayers may deduct up to $3,000 of net capital losses against ordinary income per year ($1,500 if married filing separately). After netting $8,000 in short-term gains against $15,000 in short-term losses, the taxpayer has a $7,000 net short-term capital loss. Only $3,000 may offset ordinary income in the current year. The remaining $4,000 carries forward indefinitely under Sec. 1212(b), retaining its short-term character. Unlike corporate taxpayers under Sec. 1211(a), who cannot deduct capital losses against ordinary income at all, individuals receive a limited annual deduction.'
WHERE id = 2567;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 2812: S Corporations
UPDATE questions SET
  explanation = 'Under IRC Sec. 1361(b)(1)(D), an S corporation may have only one class of stock outstanding. Treasury Reg. Sec. 1.1361-1(l)(1) provides that differences in voting rights among shares of common stock are permitted and do not create a second class of stock. However, any differences in distribution or liquidation rights would violate the single-class requirement and terminate the S election. Unlike C corporations under Sec. 1202, which may freely issue multiple classes of common and preferred stock, S corporations are restricted to ensure proportional pass-through of income and losses.'
WHERE id = 2812;

-- ID 2818: S Corporations
UPDATE questions SET
  explanation = 'Under IRC Sec. 1367(a), S corporation stock basis is adjusted in a specific order: (1) increased by all income items — ordinary income, separately stated income, and tax-exempt income; (2) decreased by distributions under Sec. 1368; (3) decreased by nondeductible, noncapital expenses; and (4) decreased by losses and deductions. P''s basis increases from $40,000 to $70,000 ($25,000 income + $5,000 tax-exempt interest), then decreases by the $35,000 distribution to $35,000. Unlike C corporation shareholders whose basis is unaffected by corporate income, S corporation shareholders adjust basis annually to reflect pass-through items.'
WHERE id = 2818;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 2432: Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Sec. 7803(e) (as amended by the Taxpayer First Act), after receiving a 30-day letter, a taxpayer may request an appeal with the Independent Office of Appeals, which provides an independent administrative review with settlement authority. For deficiencies exceeding $25,000, a formal written protest is required under Rev. Proc. 2016-22. Unlike filing a petition in Tax Court under Sec. 6213(a), which requires a statutory notice of deficiency (90-day letter), the Appeals process is an informal administrative remedy that often resolves disputes without litigation.'
WHERE id = 2432;

-- ID 2433: Tax Procedures
UPDATE questions SET
  explanation = 'Under 28 U.S.C. Sec. 1346(a)(1), the U.S. District Court has jurisdiction over federal tax refund suits, and it is the only court that provides the right to a jury trial in tax disputes under the Seventh Amendment. The taxpayer must first pay the assessed tax and file a refund claim under IRC Sec. 7422(a). Unlike the U.S. Tax Court, which adjudicates deficiency cases before judges without juries, and the Court of Federal Claims under 28 U.S.C. Sec. 1491, which also uses bench trials, only the District Court guarantees the right to a jury.'
WHERE id = 2433;

COMMIT;
