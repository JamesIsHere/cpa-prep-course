-- Migration: Citation backfill — REG batch 6 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (5 questions)
-- ============================================================

-- ID 2502: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency Section 8.11, an agent has a duty to use reasonable effort to provide the principal with facts that the agent knows or should know are material to the principal''s interests. Because a third party''s willingness to pay more than the asking price is clearly material, the agent must promptly notify the principal of this information. Unlike the duty of obedience, which concerns following instructions, the duty of notification requires affirmative communication of all relevant facts regardless of whether the principal requested them.$EXPL$
WHERE id = 2502;

-- ID 2504: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency Section 8.14, a principal has a duty to indemnify the agent for expenses and losses reasonably incurred in carrying out authorized duties. Rivera''s $4,200 in travel expenses were incurred within the scope of authorized activity and properly documented, so Beacon must reimburse these costs. However, unlike expenses from authorized acts, the duty of indemnification does not extend to losses caused by the agent''s own negligence or unauthorized conduct.$EXPL$
WHERE id = 2504;

-- ID 2505: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency Section 1.04, a special agent is authorized to conduct a single transaction or a limited series of transactions on the principal''s behalf. The broker''s authority is confined to finding a buyer and negotiating the sale of that specific property, making the broker a special agent. Unlike a general agent who has continuing authority to conduct a range of business activities under Restatement Section 2.01, a special agent''s authority terminates upon completion of the designated transaction.$EXPL$
WHERE id = 2505;

-- ID 11163: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under UCC Section 2-105, goods are defined as all things that are movable at the time of identification to the contract, including specially manufactured goods. UCC Article 2 governs transactions involving the sale of goods, which includes the custom-fabricated steel shelving in this scenario. While real estate transactions are governed by common law contract principles rather than UCC Article 2, tangible personal property — whether standard or custom-made — falls squarely within Article 2''s scope.$EXPL$
WHERE id = 11163;

-- ID 11167: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency Section 1.04(7), a power of attorney is a written authorization that grants an agent (called an attorney-in-fact) authority to act on behalf of the principal in specified transactions. Sullivan''s document granting Carter authority over banking, checks, and securities is a power of attorney. Unlike a revocable trust, which creates a separate legal entity to hold assets, a power of attorney authorizes the agent to act directly on the principal''s behalf without transferring asset ownership.$EXPL$
WHERE id = 11167;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (1 questions)
-- ============================================================

-- ID 4820: Alternative Minimum Tax
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 53(a), the minimum tax credit (MTC) may offset regular tax liability but only to the extent regular tax exceeds the tentative minimum tax. Per IRC Section 38(c), general business credits are applied before the MTC in the credit ordering sequence. With regular tax of $60,000 and TMT of $58,000, the excess is $2,000. After applying $3,000 in general business credits, the MTC can still offset up to $2,000 of regular tax above the TMT floor. Unlike refundable credits, the MTC cannot reduce tax liability below the tentative minimum tax amount.$EXPL$
WHERE id = 4820;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (4 questions)
-- ============================================================

-- ID 11193: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under UCC Section 2-302 and the Restatement (Second) of Contracts Section 208, a court may refuse to enforce a contract or clause that is unconscionable at the time it was made. Procedural unconscionability exists here due to the language barrier, high-pressure tactics, and lack of meaningful choice, while substantive unconscionability exists because of the grossly inflated price ($50,000 for $3,000 of work). Unlike a claim of mutual mistake, which requires both parties to share an erroneous assumption, unconscionability focuses on whether the bargaining process and resulting terms are fundamentally unfair.$EXPL$
WHERE id = 11193;

-- ID 11197: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Second) of Contracts Section 71, consideration requires a bargained-for exchange in which each party incurs a legal detriment. An illusory promise — such as "I will buy goods if I desire" — imposes no actual obligation on the promisor and therefore cannot serve as valid consideration. Unlike a voidable promise made under duress, which is binding until rescinded, an illusory promise fails at formation because the promisor retains complete discretion and no binding commitment exists.$EXPL$
WHERE id = 11197;

-- ID 11198: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Second) of Contracts Section 175, a contract is voidable if a party''s assent was induced by an improper threat that left no reasonable alternative. Weston''s threat to spread false information constitutes economic duress because it goes beyond legitimate business pressure and left Patterson with no reasonable choice but to agree to the reduced price. Unlike fraud, which requires a material misrepresentation of fact under Restatement Section 164, duress involves coercion that overcomes the victim''s free will through wrongful threats.$EXPL$
WHERE id = 11198;

-- ID 11199: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Second) of Contracts Section 280, a novation occurs when all original parties agree to substitute a new party for an existing one, completely releasing the original party from liability. The three essential elements are a valid existing obligation, agreement by all parties, and full discharge of the original obligor. Unlike a delegation under Restatement Section 318, where the original party remains secondarily liable, a novation requires the obligee''s consent to release the original obligor entirely.$EXPL$
WHERE id = 11199;

-- ============================================================
-- BUSINESS STRUCTURES (3 questions)
-- ============================================================

-- ID 2521: Business Structures
UPDATE questions SET
  explanation = $EXPL$Under RMBCA Section 6.22 and the common law alter ego doctrine, courts will pierce the corporate veil when a shareholder disregards the corporate form by commingling personal and corporate funds, failing to maintain corporate formalities, and treating the corporation as a personal instrumentality. Jackson''s use of corporate funds for personal expenses and absence of board meetings or minutes are classic grounds for piercing under Section 6.22''s shareholder liability provisions. Unlike limited liability protection that shields shareholders who respect the corporate form, the veil is pierced when the corporation is merely the alter ego of its owner.$EXPL$
WHERE id = 2521;

-- ID 2522: Business Structures
UPDATE questions SET
  explanation = $EXPL$Under the Revised Model Business Corporation Act (RMBCA) Section 2.02, articles of incorporation are filed with the state to legally create the corporation and must contain fundamental provisions such as the corporate name, registered agent, and authorized shares. Under RMBCA Section 2.06, bylaws are internal governance documents adopted by the board that detail meeting procedures, officer roles, and voting requirements. Unlike articles of incorporation, bylaws are not filed with the state and may be amended by the board without state approval.$EXPL$
WHERE id = 2522;

-- ID 2524: Business Structures
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1, a sole proprietorship is not a separate tax entity; all business income and deductions are reported on Schedule C of the owner''s Form 1040. The sole proprietorship is a disregarded entity for federal income tax purposes and does not file a separate return. While the owner has unlimited personal liability for business debts and must pay self-employment tax on net earnings under IRC Section 1401, the business itself has no independent legal or tax existence unlike a corporation or LLC.$EXPL$
WHERE id = 2524;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 2800: C Corporations
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 172(a), net operating loss carryforwards arising in tax years beginning after December 31, 2017 are limited to 80% of taxable income computed without the NOL deduction. For Crest Corp, 80% of $2,000,000 equals $1,600,000. Because the $1,500,000 carryforward is less than the $1,600,000 limit, Crest deducts the full $1,500,000. Unlike pre-TCJA rules that allowed a 100% offset with a two-year carryback, post-TCJA NOLs are capped at 80% of taxable income with indefinite carryforward only.$EXPL$
WHERE id = 2800;

-- ID 2801: C Corporations
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 543(a), personal holding company income includes passive income such as dividends, interest, royalties, and certain rents. Dividends received from an unrelated corporation are classified as PHC income because they represent passive investment returns. Unlike active business income from inventory sales or equipment gains, which is excluded from PHC income, rent income is only excluded under IRC Section 543(a)(2) if it equals 50% or more of adjusted ordinary gross income and certain distribution requirements are met.$EXPL$
WHERE id = 2801;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 2389: Circular 230
UPDATE questions SET
  explanation = $EXPL$Under Treasury Circular 230 Section 10.52, the Secretary of the Treasury may disbar a practitioner from practice before the IRS for willful violations or conviction of certain criminal offenses. Conviction of a felony involving dishonesty or breach of trust — such as fraud, embezzlement, or tax evasion — is among the most serious grounds for disbarment under Section 10.51. While minor procedural delays or slow client communication may warrant censure or suspension, they do not rise to the level of conduct warranting the most severe sanction of disbarment.$EXPL$
WHERE id = 2389;

-- ID 2390: Circular 230
UPDATE questions SET
  explanation = $EXPL$Under Treasury Circular 230 Section 10.2(a)(4), practice before the IRS encompasses all matters connected with presentations to the IRS, including preparing and filing documents, corresponding with the IRS, and representing clients at conferences, hearings, and meetings. This definition is intentionally broad and covers far more than in-person audit representation. Unlike Tax Court practice, which requires separate admission to the U.S. Tax Court bar, practice before the IRS under Circular 230 includes any communication or representation with the agency.$EXPL$
WHERE id = 2390;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 2892: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Suretyship and Guaranty Section 41, a material modification of the underlying obligation without the surety''s consent releases the surety from liability to the extent of any loss caused by the modification. Valid suretyship defenses also include fraud by the creditor, release of collateral, and impairment of subrogation rights. Unlike defenses personal to the debtor (such as the debtor''s minority), a material alteration defense belongs to the surety because the surety''s risk was changed without consent.$EXPL$
WHERE id = 2892;

-- ID 2893: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = $EXPL$Under 11 U.S.C. Section 522, a debtor in Chapter 7 bankruptcy may exempt certain property from the estate. The debtor''s equity is $350,000 minus the $280,000 mortgage, equaling $70,000. The state homestead exemption of $50,000 protects that portion of equity, leaving $20,000 of non-exempt equity available to the trustee for distribution to unsecured creditors. Unlike exempt property that the debtor retains, non-exempt equity is liquidated by the Chapter 7 trustee under 11 U.S.C. Section 704.$EXPL$
WHERE id = 2893;

-- ============================================================
-- FEDERAL TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 12699: Federal Tax Procedures
UPDATE questions SET
  explanation = $EXPL$Under IRS examination procedures described in IRC Section 7605 and IRM 4.10.8, the 30-day letter is a preliminary notice sent after an audit concludes, proposing adjustments and giving the taxpayer 30 days to agree, provide documentation, or request an Appeals conference. It is the first formal step in the assessment process after examination. Unlike the statutory notice of deficiency (90-day letter) required under IRC Section 6212 before the IRS can assess additional tax, the 30-day letter is an administrative notice offering the taxpayer an opportunity to resolve the dispute before formal assessment.$EXPL$
WHERE id = 12699;

-- ID 12701: Federal Tax Procedures
UPDATE questions SET
  explanation = $EXPL$Under IRM 8.6.1 and IRC Section 7803(e), the IRS Independent Office of Appeals settles cases based on the hazards of litigation — the probability of the IRS prevailing in court. With only a 40% chance of winning the primary issue, Appeals would likely offer a settlement conceding a significant portion of the $60,000 disputed amount to reflect the litigation risk. Unlike the examination division, which asserts the full deficiency, Appeals has broad authority under IRC Section 7122 to compromise disputes based on realistic assessment of the government''s litigation position.$EXPL$
WHERE id = 12701;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (3 questions)
-- ============================================================

-- ID 11295: Government Regulation of Business
UPDATE questions SET
  explanation = $EXPL$Under the Securities Exchange Act of 1934 Section 13(a) and SEC Rule 13a-11, publicly traded companies must file a Form 8-K within four business days of specified triggering events, including entry into a material definitive agreement such as a merger. Item 1.01 of Form 8-K specifically covers this disclosure requirement. Unlike Form 10-K, which is an annual report filed after fiscal year end, Form 8-K provides timely disclosure of material current events to ensure investors receive prompt notice of significant corporate developments.$EXPL$
WHERE id = 11295;

-- ID 11299: Government Regulation of Business
UPDATE questions SET
  explanation = $EXPL$Under the Equal Pay Act of 1963, 29 U.S.C. Section 206(d), employers are prohibited from paying different wages to employees of opposite sexes for substantially equal work performed under similar working conditions requiring equal skill, effort, and responsibility. Exceptions exist for seniority systems, merit systems, and productivity-based pay differentials. While discrimination based on race or national origin is prohibited under Title VII of the Civil Rights Act of 1964, the Equal Pay Act specifically addresses sex-based wage disparities in the workplace.$EXPL$
WHERE id = 11299;

-- ID 11305: Government Regulation of Business
UPDATE questions SET
  explanation = $EXPL$Under the Clean Air Act, 42 U.S.C. Section 7413, the EPA has authority to enforce National Ambient Air Quality Standards (NAAQS) by imposing civil penalties of up to $37,500 per day per violation, requiring corrective action plans, and seeking injunctive relief. Criminal penalties are also available for knowing violations under Section 7413(c). Unlike some regulatory schemes that require a warning before enforcement, the Clean Air Act does not mandate a preliminary warning; the EPA may impose penalties on the first documented violation of emissions standards.$EXPL$
WHERE id = 11305;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (2 questions)
-- ============================================================

-- ID 2690: Individual Taxation: Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 24(a) as amended by H.R. 1, the child tax credit is $2,500 per qualifying child under age 17. The base credit for four children is $10,000. Under IRC Section 24(b), the credit phases out by $50 for each $1,000 of MAGI exceeding $400,000 for MFJ filers. With $425,000 MAGI, the excess is $25,000, yielding a $1,250 reduction. The credit after phase-out is $8,750. Unlike the earned income credit, which phases out at much lower income levels, the child tax credit''s MFJ phase-out threshold begins at $400,000.$EXPL$
WHERE id = 2690;

-- ID 2691: Individual Taxation: Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 32(b), the earned income credit for a taxpayer with one qualifying child phases out completely at approximately $49,084 of earned income or AGI (whichever is greater) for single or head of household filers in 2026. The credit amount and phase-out thresholds increase with more qualifying children. Unlike the child tax credit, which has a much higher income phase-out starting at $200,000 for single filers under IRC Section 24(b), the EIC targets lower-income working families with substantially lower threshold amounts.$EXPL$
WHERE id = 2691;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 2717: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1411(a)(1), the Net Investment Income Tax is 3.8% of the lesser of net investment income or MAGI exceeding the applicable threshold. For MFJ filers, the threshold is $250,000 under IRC Section 1411(b). Linda and Robert''s MAGI exceeds the threshold by $50,000, and their NII is $120,000. The NIIT applies to the lesser amount ($50,000), resulting in a tax of $1,900. Unlike the additional Medicare tax under IRC Section 3101(b)(2), which applies to wages, the NIIT targets passive investment income.$EXPL$
WHERE id = 2717;

-- ID 2718: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 56(a)(1), personal property that uses the 200% declining balance method under regular MACRS must use the 150% declining balance method for AMT purposes, creating a timing difference that is an AMT adjustment item. This adjustment applies to 7-year MACRS property like the $500,000 asset in this scenario. Unlike a permanent difference that never reverses, this AMT depreciation adjustment is a timing difference that reverses over the asset''s recovery period as the slower AMT depreciation eventually catches up to regular MACRS.$EXPL$
WHERE id = 2718;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (2 questions)
-- ============================================================

-- ID 2670: Individual Taxation: Deductions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 164(b)(5), taxpayers may elect to deduct state and local general sales taxes in lieu of state and local income taxes as an itemized deduction. However, under IRC Section 164(b)(6) as amended by the TCJA, the total state and local tax (SALT) deduction — including property taxes, income taxes, or sales taxes — is capped at $10,000 ($5,000 for MFS). While this election benefits residents of states with no income tax, the $10,000 SALT cap applies regardless of whether the taxpayer chooses to deduct income taxes or sales taxes.$EXPL$
WHERE id = 2670;

-- ID 2671: Individual Taxation: Deductions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 199A(a), the qualified business income deduction equals 20% of QBI, subject to limitations for higher-income taxpayers. Since Rachel''s AGI of $400,000 exceeds the $247,300 single-filer threshold under IRC Section 199A(d)(3), the W-2 wage/UBIA limitation fully applies for her non-SSTB. The deduction is the lesser of 20% of QBI ($50,000) or the greater of 50% of W-2 wages ($150,000) or 25% of wages plus 2.5% of UBIA ($77,500). The lesser amount is $50,000. Unlike an SSTB above the threshold, a non-SSTB is not phased out entirely.$EXPL$
WHERE id = 2671;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (3 questions)
-- ============================================================

-- ID 2741: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 24(a) as amended by H.R. 1, the child tax credit is $2,500 per qualifying child under age 17. The two children ages 4 and 8 each qualify, totaling $5,000. Under IRC Section 24(h)(4), the 18-year-old full-time college student does not qualify for the child tax credit (must be under 17) but is eligible for the $500 credit for other dependents. The total credit is $5,500. Unlike qualifying children under 17, dependents aged 17 and older receive only the smaller $500 other dependent credit.$EXPL$
WHERE id = 2741;

-- ID 2742: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 86(a), Social Security benefits are taxable only when provisional income exceeds specified thresholds. Provisional income equals modified AGI plus 50% of Social Security benefits. With only $22,000 in Social Security income, Ellen''s provisional income is $11,000 (50% of $22,000), which is below the $25,000 threshold for single filers under IRC Section 86(c)(1). Because none of her benefits are taxable, her gross income is zero and she is not required to file. Unlike taxpayers with additional income sources, those with only Social Security often fall below filing thresholds.$EXPL$
WHERE id = 2742;

-- ID 2743: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 2(b), head of household status requires the taxpayer to be unmarried or "considered unmarried" at the close of the tax year and maintain a household for a qualifying person. Under IRC Section 7703(b), a married taxpayer may be considered unmarried only if they lived apart from their spouse for the last six months of the year and maintained a home for a qualifying child for more than half the year. Without meeting these conditions, Tom must file as married filing separately. Unlike head of household, which offers more favorable tax brackets, MFS generally results in higher tax liability.$EXPL$
WHERE id = 2743;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 2631: Individual Taxation: Income
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 62(a)(23) as added by H.R. 1 (2025 legislation), qualifying tip income received by service workers in eligible occupations remains includable in gross income under IRC Section 61 but is eligible for a new above-the-line deduction that effectively offsets the income tax on tips, reducing the taxpayer''s AGI. The tips remain subject to FICA taxes under IRC Section 3121. Unlike a full exclusion from gross income, this provision creates a deduction that applies only to workers earning below specified income thresholds in qualifying service occupations.$EXPL$
WHERE id = 2631;

-- ID 2638: Individual Taxation: Income
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 86(b), provisional income equals modified AGI plus tax-exempt interest plus 50% of Social Security benefits. Howard''s AGI is $0 (municipal bond interest is excluded from gross income under IRC Section 103), but his $10,000 in tax-exempt interest is added back for this calculation. Provisional income equals $0 + $10,000 + $6,000 (50% of $12,000) = $16,000. Because this falls below the $25,000 first-tier threshold for single filers under IRC Section 86(c)(1), none of his Social Security benefits are taxable. Unlike regular AGI, provisional income captures tax-exempt interest to test Social Security taxability.$EXPL$
WHERE id = 2638;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 2875: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Second) of Torts Section 552, constructive fraud does not require proof of scienter (intent to deceive or knowledge of falsity). Instead, it involves a misrepresentation made with reckless disregard for the truth or a breach of duty owed to the plaintiff. The other elements — material misrepresentation, justifiable reliance, and damages — must still be proven. Unlike actual fraud, which requires the plaintiff to demonstrate the defendant''s intent to deceive under Restatement Section 525, constructive fraud imposes liability for gross negligence in making representations.$EXPL$
WHERE id = 2875;

-- ID 2876: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = $EXPL$Under the reasonably foreseeable user standard established in Rosenblum v. Adler and recognized in the Restatement (Second) of Torts Section 552, a CPA may be liable for negligence to any person whom the CPA could reasonably foresee would rely on the work product. Investors are reasonably foreseeable users of audited financial statements, making them eligible to sue the CPA. Unlike the more restrictive Ultramares privity doctrine, which limits liability to parties in a direct contractual relationship, the reasonably foreseeable user standard is the broadest and most plaintiff-friendly approach.$EXPL$
WHERE id = 2876;

-- ============================================================
-- LIKE-KIND EXCHANGES (2 questions)
-- ============================================================

-- ID 2612: Like-Kind Exchanges
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1031(a), no gain or loss is recognized when property held for productive use or investment is exchanged solely for like-kind property. In this improvement exchange, Sandra''s realized gain is $400,000 FMV minus $250,000 basis, equaling $150,000. Because the full value was reinvested in like-kind property plus qualified improvements through the QI structure under Treas. Reg. Section 1.1031(k)-1, no boot was received and recognized gain is $0. The replacement basis equals the $250,000 old basis. Unlike a partial exchange where boot triggers recognition, a fully reinvested improvement exchange defers all gain.$EXPL$
WHERE id = 2612;

-- ID 2614: Like-Kind Exchanges
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1031(a)(3)(A), replacement property must be identified in writing within 45 calendar days after the date the relinquished property is transferred. The 45-day period is a strict calendar-day deadline: March 1 plus 45 days equals April 15. The identification must be in writing, signed by the taxpayer, and delivered to the qualified intermediary per Treas. Reg. Section 1.1031(k)-1(c)(2). Unlike the 180-day exchange period, the 45-day identification deadline is not extended for weekends or holidays and cannot be waived.$EXPL$
WHERE id = 2614;

-- ============================================================
-- PARTNERSHIPS (1 questions)
-- ============================================================

-- ID 2847: Partnerships
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 707(c), guaranteed payments to a partner for services are deducted from partnership ordinary income before computing each partner''s distributive share. The partnership''s $200,000 ordinary income minus the $120,000 guaranteed payment leaves $80,000, which is split equally: $80,000 divided by 3 equals $26,667 per partner. Partner A''s total income is the $120,000 guaranteed payment plus the $26,667 distributive share, totaling $146,667. Unlike distributive shares that depend on profit-sharing ratios under IRC Section 704(a), guaranteed payments are determined without regard to partnership income.$EXPL$
WHERE id = 2847;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (3 questions)
-- ============================================================

-- ID 2420: Professional Ethics in Tax
UPDATE questions SET
  explanation = $EXPL$Under SSTS No. 1 (Tax Return Positions) and Circular 230 Section 10.34, a CPA may recommend a return position that is contrary to an IRS regulation if the CPA has a good-faith belief, supported by substantial authority such as case law or statutory language, that the regulation does not accurately reflect the law. Regulations are not immune from challenge, and the CPA should consider disclosure requirements under IRC Section 6662. Unlike positions lacking any reasonable basis, positions with substantial authority are permissible even when contrary to existing regulations.$EXPL$
WHERE id = 2420;

-- ID 2422: Professional Ethics in Tax
UPDATE questions SET
  explanation = $EXPL$Under SSTS No. 1 and IRC Section 61(a), all income from whatever source derived is includable in gross income, regardless of whether the underlying activity is legally licensed. The CPA''s obligation is to report the income accurately on the return and advise the client to obtain proper licensing. Unlike a situation involving fraud or illegal tax evasion that may trigger disclosure obligations, an unlicensed but otherwise legal business simply requires accurate income reporting — the CPA is not required to notify a licensing authority or the IRS about the licensing status.$EXPL$
WHERE id = 2422;

-- ID 2423: Professional Ethics in Tax
UPDATE questions SET
  explanation = $EXPL$Under SSTS No. 1 and IRC Section 280A(c), a home office deduction requires the space to be used exclusively and regularly for business. When the taxpayer has another office available at the employer''s location, the home office must be for the convenience of the employer under IRC Section 280A(c)(1) to qualify. The CPA should analyze whether these statutory requirements are met before recommending or refusing the deduction. Unlike automatically claiming any deduction a client requests, SSTS No. 1 requires the CPA to evaluate whether there is a reasonable basis for the position.$EXPL$
WHERE id = 2423;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (2 questions)
-- ============================================================

-- ID 2549: Property Transactions: Basis
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1012 and Treas. Reg. Section 1.263(a)-2(d), costs of acquiring title to property — including title search fees, title insurance, recording fees, surveys, and transfer taxes — are capitalized into the property''s basis. These are costs directly related to the acquisition. Unlike prepaid property taxes, which are deductible as taxes under IRC Section 164(a), or mortgage interest paid at closing, which is deductible as interest expense under IRC Section 163(a), title-related costs increase the depreciable basis of the property.$EXPL$
WHERE id = 2549;

-- ID 2550: Property Transactions: Basis
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1016(a), adjusted basis is computed by increasing basis for capital improvements and decreasing it for depreciation, casualty losses, and other items. Starting at $275,000, add the $15,000 capital improvement (IRC Section 1016(a)(1)), subtract $8,500 depreciation (IRC Section 1016(a)(2)), then subtract the $12,000 casualty loss deduction (IRC Section 1016(a)(1)), yielding $269,500. Unlike repairs that are currently expensed and do not affect basis, capital improvements that extend the useful life or adapt the property to a new use permanently increase the depreciable basis.$EXPL$
WHERE id = 2550;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (1 questions)
-- ============================================================

-- ID 2580: Property Transactions: Gains/Losses
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1222, capital gains and losses follow a specific netting process: first, net short-term gains against short-term losses; second, net long-term gains against long-term losses; then combine the net short-term and net long-term results. This ordering is required because short-term capital gains are taxed at ordinary rates under IRC Section 1(h), while net long-term capital gains receive preferential rates. Unlike ordinary income and loss, which are netted together without distinction, capital gains and losses must be categorized by holding period before netting.$EXPL$
WHERE id = 2580;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 2829: S Corporations
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1363(a), an S corporation generally is not subject to entity-level tax; instead, items of income, deduction, and credit pass through to shareholders. Under IRC Section 1366(a)(1)(A), charitable contributions are separately stated items reported on Schedule K-1, allowing each shareholder to apply their own individual limitations under IRC Section 170(b). Unlike C corporations, which deduct contributions at the entity level subject to a 10% taxable income limit under IRC Section 170(b)(2), S corporation shareholders claim the deduction on their personal returns.$EXPL$
WHERE id = 2829;

-- ID 2832: S Corporations
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1368(e)(1)(A), the accumulated adjustments account (AAA) is adjusted for all items of income and deduction that affect stock basis, similar to the basis adjustments under IRC Section 1367. The $90,000 ordinary loss reduces AAA from $60,000 to negative $30,000. Unlike shareholder stock basis, which cannot go below zero under IRC Section 1367(a)(2), AAA may be reduced below zero by losses and deductions. This distinction is important because a negative AAA affects the tax treatment of future distributions.$EXPL$
WHERE id = 2832;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 12852: Tax Procedures
UPDATE questions SET
  explanation = $EXPL$Under IRS procedures described in IRM 8.6.1.4 and IRC Section 7605, for proposed deficiencies exceeding $25,000, the taxpayer must submit a formal written protest to request an Appeals conference. The written protest must include the taxpayer''s name, address, tax periods, itemized adjustments, and a statement of facts and law supporting the taxpayer''s position. Unlike a small case request available under IRM 8.6.1.4.1 for amounts of $25,000 or less per period, the formal written protest is required for larger deficiencies to ensure a complete record for Appeals review.$EXPL$
WHERE id = 12852;

-- ID 12853: Tax Procedures
UPDATE questions SET
  explanation = $EXPL$Under IRM 4.10.1 and IRC Section 7602, a correspondence audit is the simplest form of IRS examination, conducted entirely through the mail. The IRS sends a letter requesting documentation to support a specific item on the return, and the taxpayer responds by mail with no in-person meeting. Unlike a field audit conducted at the taxpayer''s location under IRM 4.10.2 or an office audit conducted at an IRS office with an in-person meeting, a correspondence audit addresses straightforward issues that can be resolved through documentary evidence alone.$EXPL$
WHERE id = 12853;

COMMIT;
