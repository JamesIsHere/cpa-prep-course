-- Migration: Citation backfill — REG batch 5 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (4 questions)
-- ============================================================

-- ID 2496: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency Section 4.01, ratification occurs when a principal affirms a previously unauthorized act by accepting its benefits. By shipping the goods at the contract price, Wilson manifested assent to Martinez''s unauthorized transaction, binding Wilson to the contract terms as if originally authorized. Unlike mere acquiescence, ratification requires an affirmative act such as retaining benefits, whereas simply ignoring the transaction would not create binding authority.$EXPL$
WHERE id = 2496;

-- ID 2497: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency Section 8.12, an agent''s duty of accounting requires maintaining accurate records of all property and funds received or expended on the principal''s behalf. This duty ensures separation of principal and agent assets and enables the principal to verify transactions at any time. Unlike the duty of loyalty, which addresses conflicts of interest, the duty of accounting focuses specifically on financial transparency and the prohibition against commingling funds.$EXPL$
WHERE id = 2497;

-- ID 2498: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency Section 8.09, the duty of obedience requires an agent to follow the principal''s reasonable and lawful instructions. By selling the property below the $200,000 minimum, the agent violated an express directive regardless of personal market opinions. While the duty of care concerns the agent''s competence in performing tasks, the duty of obedience specifically addresses compliance with the principal''s authorized instructions.$EXPL$
WHERE id = 2498;

-- ID 2500: Agency and Regulation
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Third) of Agency Section 3.12, an agency coupled with an interest exists when the agent holds a security interest in the subject matter of the agency. Because the bank''s authority to sell the warehouse secures its $500,000 loan, the principal cannot unilaterally revoke this authority. Unlike an ordinary agency, which terminates upon revocation or the principal''s death, an agency coupled with an interest survives both events because the agent''s independent stake must be protected.$EXPL$
WHERE id = 2500;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (1 questions)
-- ============================================================

-- ID 4815: Alternative Minimum Tax
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 56(a)(1), tangible personal property depreciated using the 200% declining balance method for regular tax purposes must use the 150% declining balance method over the property''s class life for AMT purposes. The difference between the two methods creates a timing adjustment in computing alternative minimum taxable income. However, under IRC Section 168(k), property eligible for 100% bonus depreciation eliminates this adjustment entirely, whereas property placed in service outside the bonus window still requires the 150% recalculation.$EXPL$
WHERE id = 4815;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (4 questions)
-- ============================================================

-- ID 2473: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Second) of Contracts Section 376, rescission cancels the contract and requires mutual restitution to restore both parties to their pre-contract positions. This equitable remedy is available for fraud, material misrepresentation, mutual mistake, duress, or failure of consideration. Unlike an action for damages, which compensates for losses while keeping the contract intact, rescission voids the agreement entirely and does not require proof of criminal fraud—civil misrepresentation is sufficient.$EXPL$
WHERE id = 2473;

-- ID 2477: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under the Restatement (Second) of Contracts Section 253, anticipatory repudiation occurs when one party unequivocally communicates before the performance date that they will not perform their contractual obligations. The non-breaching party may immediately treat the contract as breached and pursue remedies without waiting for the actual performance date. Unlike a present breach, which occurs at the time performance is due, anticipatory repudiation allows the aggrieved party to seek damages or cover before the deadline passes.$EXPL$
WHERE id = 2477;

-- ID 2479: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under the common law pre-existing duty rule, as stated in the Restatement (Second) of Contracts Section 73, a modification to an existing contract requires new consideration from both parties to be enforceable. Performing or promising to perform an existing obligation does not constitute valid consideration for a new promise. While UCC Section 2-209 eliminates this requirement for contracts involving the sale of goods, common law service contracts still require additional consideration or must satisfy an exception such as unforeseen circumstances.$EXPL$
WHERE id = 2479;

-- ID 11190: Business Law: Contracts
UPDATE questions SET
  explanation = $EXPL$Under the rule from Hadley v. Baxendale (1854), codified in the Restatement (Second) of Contracts Section 351, consequential damages such as lost profits are recoverable only if they were reasonably foreseeable to the breaching party at contract formation. Because the contract was silent about the downstream retail sale, Baxter must prove Summit knew or had reason to know of the resale arrangement. Unlike direct damages for the spoiled goods, which flow naturally from the breach, consequential damages require this additional foreseeability showing.$EXPL$
WHERE id = 11190;

-- ============================================================
-- BUSINESS STRUCTURES (4 questions)
-- ============================================================

-- ID 2517: Business Structures
UPDATE questions SET
  explanation = $EXPL$Under the Revised Model Business Corporation Act (RMBCA) Section 6.40, the board of directors has exclusive authority to declare dividends. This power rests within the board''s business judgment and is not delegable to officers or shareholders. While shareholders elect directors and approve fundamental changes such as mergers and charter amendments under RMBCA Section 10.03, they have no direct authority to declare or compel dividend distributions.$EXPL$
WHERE id = 2517;

-- ID 2518: Business Structures
UPDATE questions SET
  explanation = $EXPL$Under the business judgment rule as codified in RMBCA Section 8.31, directors are presumed to act on an informed basis, in good faith, and in the honest belief that the action was in the corporation''s best interest. Directors are protected from personal liability for decisions that produce losses, provided they acted with due care and without conflicts of interest. Unlike a standard of strict liability, the business judgment rule shields directors who made reasonable inquiry, even when outcomes are unfavorable.$EXPL$
WHERE id = 2518;

-- ID 2519: Business Structures
UPDATE questions SET
  explanation = $EXPL$Under RMBCA Section 8.31 and SEC Rule 10b-5, trading on material nonpublic information obtained through a fiduciary position violates the duty of loyalty. The duty of loyalty under RMBCA Section 8.61 prohibits self-dealing, usurping corporate opportunities, and using confidential corporate information for personal benefit. Unlike the duty of care, which addresses the quality of decision-making, the duty of loyalty specifically targets conflicts of interest and personal enrichment at the corporation''s expense.$EXPL$
WHERE id = 2519;

-- ID 2520: Business Structures
UPDATE questions SET
  explanation = $EXPL$Under RMBCA Section 6.22 and the alter ego doctrine, commingling personal and corporate funds is a primary factor courts consider when deciding whether to pierce the corporate veil and disregard the corporate entity. Courts examine whether the shareholder observed corporate formalities, maintained separate accounts, and adequately capitalized the corporation. While having few shareholders or operating a single business line is common in closely held corporations, these factors alone are insufficient to pierce the veil—unlike direct commingling of funds, which evidences the corporation as a mere instrumentality.$EXPL$
WHERE id = 2520;

-- ============================================================
-- C CORPORATIONS (1 questions)
-- ============================================================

-- ID 2796: C Corporations
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 172, as amended by the Tax Cuts and Jobs Act, net operating losses arising in tax years after 2017 may only be carried forward indefinitely with no carryback period for most taxpayers. The NOL deduction is limited to 80% of taxable income in any carryforward year under IRC Section 172(a)(2). Unlike pre-TCJA rules that allowed a two-year carryback and twenty-year carryforward, the current law eliminates carrybacks while ensuring corporations always pay some minimum tax.$EXPL$
WHERE id = 2796;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 2387: Circular 230
UPDATE questions SET
  explanation = $EXPL$Under Treasury Circular 230 Section 10.3 and IRS Form 2848, a power of attorney authorizes the designated representative to act on the client''s behalf before the IRS for the specific tax matters, periods, and offices listed on the form. This includes receiving confidential tax information and advocating the client''s position. Unlike a tax information authorization (Form 8821), which only permits inspection of returns, Form 2848 grants representational authority but does not automatically authorize signing returns unless specifically designated.$EXPL$
WHERE id = 2387;

-- ID 2388: Circular 230
UPDATE questions SET
  explanation = $EXPL$Under Circular 230 Section 10.21, when a practitioner discovers a client''s deliberate omission of income, the practitioner must advise the client of the error and recommend filing an amended return. If the client refuses, the practitioner should consider withdrawing from the engagement under Section 10.22 and must not sign a current-year return materially affected by the omission. Unlike mandatory reporting obligations in some other professions, Circular 230 generally does not require practitioners to disclose client information to the IRS without consent or a court order.$EXPL$
WHERE id = 2388;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 2890: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = $EXPL$Under UCC Article 9, Section 9-322(a)(1), conflicting perfected security interests in the same collateral rank according to priority in time of filing or perfection, whichever is earlier. Bank A filed its UCC-1 financing statement on January 15, establishing priority over Bank B''s March 1 filing. Unlike purchase money security interests that can achieve superpriority under Section 9-324, ordinary security interests follow the strict first-to-file-or-perfect rule regardless of when the loan was made.$EXPL$
WHERE id = 2890;

-- ID 2891: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = $EXPL$Under UCC Section 9-324(a), a purchase money security interest (PMSI) in equipment achieves superpriority over a prior-perfected security interest if the PMSI holder perfects within 20 days after the debtor receives possession. Seller perfected within the statutory window, so Seller''s PMSI in the refrigerator takes priority over Bank''s earlier-filed blanket lien. Unlike a PMSI in inventory under Section 9-324(b), which requires advance written notification to prior secured parties, a PMSI in equipment needs only timely perfection.$EXPL$
WHERE id = 2891;

-- ============================================================
-- FEDERAL TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 12696: Federal Tax Procedures
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 6213(a), the Tax Court is the only forum where a taxpayer may contest a deficiency without prepaying the disputed tax. Tax Court offers specialized tax judges who travel to the taxpayer''s city, satisfying Hensley''s preferences for expertise and local litigation. However, unlike U.S. District Court under 28 USC Section 1346(a)(1), the Tax Court does not offer jury trials—this is the one preference Hensley must sacrifice, as the Court of Federal Claims also requires prepayment and sits only in Washington, D.C.$EXPL$
WHERE id = 12696;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (3 questions)
-- ============================================================

-- ID 11289: Government Regulation of Business
UPDATE questions SET
  explanation = $EXPL$Under the Age Discrimination in Employment Act of 1967 (29 USC Section 631), employees and job applicants age 40 and older are protected from age-based discrimination in hiring, firing, compensation, and other employment terms. The ADEA applies to employers with 20 or more employees. While age 50 is a common misconception for the protection threshold, the statute sets the floor at 40, providing broader coverage than many candidates expect.$EXPL$
WHERE id = 11289;

-- ID 11291: Government Regulation of Business
UPDATE questions SET
  explanation = $EXPL$Under the Americans with Disabilities Act of 1990 (42 USC Section 12112), employers with 15 or more employees must provide reasonable accommodations to qualified individuals with disabilities unless doing so imposes an undue hardship. Reasonable accommodations include job restructuring, modified schedules, or assistive equipment. Unlike a guarantee of employment, the ADA does not ensure hiring—it prohibits discrimination against qualified individuals who can perform essential job functions with or without accommodation.$EXPL$
WHERE id = 11291;

-- ID 11294: Government Regulation of Business
UPDATE questions SET
  explanation = $EXPL$Under SEC Regulation A as amended by the JOBS Act (17 CFR Section 230.251), Tier 1 offerings are limited to $20 million in a 12-month period and remain subject to state Blue Sky registration, while Tier 2 offerings may raise up to $75 million with federal preemption of state registration. Silverline must use Tier 2 because its $35 million target exceeds Tier 1''s cap. Unlike Tier 1, Tier 2 requires audited financial statements and ongoing reporting, whereas reversing these requirements would be incorrect.$EXPL$
WHERE id = 11294;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (3 questions)
-- ============================================================

-- ID 2685: Individual Taxation: Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 25A(i), the American Opportunity Tax Credit is 40% refundable, meaning up to $1,000 (40% of the $2,500 maximum) can be received as a refund even when the taxpayer has no remaining tax liability. The remaining 60% ($1,500) is nonrefundable and can only offset existing tax. Unlike the Lifetime Learning Credit under IRC Section 25A(c), which is entirely nonrefundable, the AOTC''s partial refundability makes it more valuable for lower-income taxpayers.$EXPL$
WHERE id = 2685;

-- ID 2686: Individual Taxation: Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 25A(b)(1), the American Opportunity Tax Credit equals 100% of the first $2,000 in qualified education expenses plus 25% of the next $2,000, producing a maximum credit of $2,500 per eligible student. Sarah''s $6,000 in qualified expenses exceeds the $4,000 cap, so her credit is $2,000 + ($2,000 x 25%) = $2,500. Unlike the Lifetime Learning Credit, which uses a flat 20% rate on up to $10,000 of expenses, the AOTC''s two-tier structure rewards the first dollars of spending more heavily.$EXPL$
WHERE id = 2686;

-- ID 2687: Individual Taxation: Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 25A(c), the Lifetime Learning Credit equals 20% of up to $10,000 in qualified tuition and fees, yielding a maximum credit of $2,000 per tax return. This credit is available for an unlimited number of years and covers graduate-level courses. Unlike the AOTC under IRC Section 25A(b), which provides up to $2,500 per student and is limited to four years of undergraduate education, the Lifetime Learning Credit applies per return rather than per student and is entirely nonrefundable.$EXPL$
WHERE id = 2687;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (1 questions)
-- ============================================================

-- ID 2715: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 55(d), the AMT exemption for single filers is $88,100 (2026), and it begins to phase out when alternative minimum taxable income exceeds approximately $609,350. Since Karen''s AMTI of $500,000 is below the phase-out threshold, her full $88,100 exemption is available with no reduction. Unlike taxpayers whose AMTI exceeds the threshold, who lose 25 cents of exemption for each excess dollar under IRC Section 55(d)(3), Karen retains the entire exemption amount.$EXPL$
WHERE id = 2715;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (3 questions)
-- ============================================================

-- ID 2663: Individual Taxation: Deductions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 170(b)(1)(D), donations of long-term capital gain property to private non-operating foundations are limited to 20% of AGI. This is the most restrictive charitable contribution ceiling in the Code. While the taxpayer may elect under IRC Section 170(b)(1)(C)(iii) to reduce the contribution to basis and use the higher 50% AGI limit, claiming fair market value on appreciated property donated to a private foundation triggers the 20% cap rather than the 30% limit that applies to public charities.$EXPL$
WHERE id = 2663;

-- ID 2668: Individual Taxation: Deductions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 219(g), an active participant in an employer-sponsored retirement plan who is single faces a phase-out of the traditional IRA deduction based on modified adjusted gross income. At $89,000 MAGI, Tom falls within the phase-out range for single filers under the applicable thresholds. The deduction is reduced proportionally across the range. Unlike a non-active participant, who faces no income-based phase-out for IRA deductibility, active participants must calculate partial deductions when MAGI falls within the statutory window.$EXPL$
WHERE id = 2668;

-- ID 2669: Individual Taxation: Deductions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 164(b)(6) as enacted by the TCJA, the combined deduction for state and local taxes is capped at $10,000. The couple''s itemized deductions total $10,000 (SALT cap) + $6,000 (mortgage interest under IRC Section 163(h)) + $2,000 (charitable) = $18,000, since personal auto loan interest is not deductible under IRC Section 163(h)(1). The 2026 standard deduction of $31,400 for MFJ exceeds this total, so they should take the standard deduction. Unlike mortgage interest, consumer interest on auto loans has been nondeductible since 1991.$EXPL$
WHERE id = 2669;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (4 questions)
-- ============================================================

-- ID 2737: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 152(c)(3), a qualifying child must be under age 19 at the end of the tax year to meet the age test for dependency purposes. If the child is a full-time student, the age limit extends to under 24 under IRC Section 152(c)(3)(A)(ii), and there is no age limit if the child is permanently and totally disabled. Unlike the child tax credit age requirement under IRC Section 24(c), which requires the child to be under 17, the dependency age test uses the higher threshold of 19.$EXPL$
WHERE id = 2737;

-- ID 2738: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 152(c)(1)(D), a qualifying child must not provide more than half of their own support to be claimed as a dependent. Although Dave meets the full-time student age test under IRC Section 152(c)(3)(A)(ii) (enrolled for at least 5 calendar months), his $42,000 in earnings with parents providing only 30% of his support means Dave likely provides more than half his own support. Unlike the qualifying relative test, which uses a gross income threshold under IRC Section 152(d)(1)(B), the qualifying child test focuses on self-support rather than income level.$EXPL$
WHERE id = 2738;

-- ID 2739: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 152(c)(4)(A), when a child qualifies under both parents'' households, the child is treated as the qualifying child of the parent with whom the child resided for the greater portion of the year. Since the son lived with the ex-husband 60% of the year, the ex-husband is the custodial parent and may claim the dependency. Unlike an automatic 50/50 split, the tiebreaker rule assigns the claim to the custodial parent, although Form 8332 under IRC Section 152(e) allows the custodial parent to release the exemption.$EXPL$
WHERE id = 2739;

-- ID 2740: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 6654(c)(2), estimated tax payments for individuals are due on April 15, June 15, September 15, and January 15 of the following year. These quarterly deadlines apply to all taxpayers with insufficient withholding, including self-employed individuals. Unlike the other quarters, the second-quarter payment is due June 15 rather than July 15, making the second payment period shorter, whereas the fourth quarter spans October through January.$EXPL$
WHERE id = 2740;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 2625: Individual Taxation: Income
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 71 as amended by the Tax Cuts and Jobs Act (Section 11051), alimony payments under divorce agreements executed after December 31, 2018 are not deductible by the payor and are not included in the recipient''s gross income. The 2026 divorce falls under this post-TCJA rule. Unlike pre-2019 agreements where alimony was deductible by the payor under former IRC Section 215 and includible by the recipient, the current law eliminates the income-shifting benefit entirely.$EXPL$
WHERE id = 2625;

-- ID 2626: Individual Taxation: Income
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 61(a), gambling winnings of $10,000 are fully includible in gross income. Under IRC Section 165(d), gambling losses are deductible only as an itemized deduction on Schedule A, limited to the amount of gambling winnings. Patricia must report $10,000 in gross income and may deduct up to $4,000 if she itemizes. Unlike business losses that can offset other income, gambling losses cannot be netted against winnings on the income side and provide no benefit if the taxpayer takes the standard deduction.$EXPL$
WHERE id = 2626;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (3 questions)
-- ============================================================

-- ID 2871: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = $EXPL$Under AU-C Section 200 and common law negligence principles, having work reviewed by another CPA is not a recognized defense to a negligence claim. Valid defenses include contributory negligence, lack of privity or duty, compliance with GAAS/GAAP under AU-C standards, and lack of causation between the alleged negligence and the client''s loss. Unlike contributory negligence, which shifts blame to the plaintiff''s own conduct, peer review addresses quality control but does not excuse the individual CPA''s professional responsibility.$EXPL$
WHERE id = 2871;

-- ID 2872: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 7525 and Federal Rule of Civil Procedure 26(b)(3), the work product doctrine protects documents prepared in anticipation of litigation by or for a party. Thornton''s legal exposure memorandum analyzing arguments for anticipated Tax Court proceedings qualifies as protected work product under this privilege. Unlike regular audit workpapers, engagement letters, and general ledger records—which are prepared in the ordinary course of business and are generally discoverable—documents created specifically because litigation was anticipated receive qualified protection from disclosure.$EXPL$
WHERE id = 2872;

-- ID 2873: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = $EXPL$Under Treasury Circular 230 Section 10.50, a practitioner who engages in disreputable conduct, including knowingly making false statements on tax returns, may be censured, suspended, or disbarred from practice before the IRS. These are administrative sanctions imposed by the Office of Professional Responsibility, separate from criminal penalties under IRC Section 7206. Unlike state licensing actions that affect the CPA''s ability to practice accounting generally, Circular 230 sanctions specifically restrict the right to represent taxpayers before the IRS.$EXPL$
WHERE id = 2873;

-- ============================================================
-- LIKE-KIND EXCHANGES (1 questions)
-- ============================================================

-- ID 2611: Like-Kind Exchanges
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1031(d), in a like-kind exchange with no boot received, the replacement property takes a substituted basis equal to the relinquished property''s adjusted basis of $120,000. Under IRC Section 1223(1), the holding period of the relinquished property tacks onto the replacement property, so Ed''s holding period includes the original 3 years. Unlike a taxable sale and repurchase, which would establish a new cost basis of $200,000, the like-kind exchange preserves the $80,000 deferred gain in the lower carryover basis.$EXPL$
WHERE id = 2611;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (4 questions)
-- ============================================================

-- ID 2415: Professional Ethics in Tax
UPDATE questions SET
  explanation = $EXPL$Under AICPA Statement on Standards for Tax Services (SSTS) No. 4, a CPA may use client estimates when exact data is unavailable, provided the CPA exercises professional judgment about the estimate''s reasonableness. The CPA should inquire about the basis for the estimate and consider whether it is consistent with the client''s occupation and income level. Unlike blindly accepting round-number estimates, which fails to meet the standard of professional care, SSTS No. 4 requires reasonable inquiry rather than categorical refusal of all estimates lacking receipts.$EXPL$
WHERE id = 2415;

-- ID 2417: Professional Ethics in Tax
UPDATE questions SET
  explanation = $EXPL$Under AICPA SSTS No. 7, the decision to provide written versus oral tax advice depends on the CPA''s professional judgment considering the complexity and significance of the matter. Written advice is particularly important when the matter involves significant legal uncertainty, substantial dollar amounts, or potential penalties. Unlike routine tax questions where oral advice suffices, complex multi-entity planning strategies warrant written documentation to protect both the client''s understanding and the CPA''s professional interests.$EXPL$
WHERE id = 2417;

-- ID 2418: Professional Ethics in Tax
UPDATE questions SET
  explanation = $EXPL$Under Circular 230 Section 10.21 and AICPA SSTS No. 6, when a CPA discovers a client used fraudulent information on a return, the CPA must withdraw from the engagement and advise the client to take corrective action. The CPA must not sign any future returns affected by the fraud. Unlike mandatory reporting obligations in some regulated professions, Circular 230 does not require the practitioner to report the client directly to law enforcement or the IRS absent a court order, although the CPA cannot continue the representation.$EXPL$
WHERE id = 2418;

-- ID 2419: Professional Ethics in Tax
UPDATE questions SET
  explanation = $EXPL$Under AICPA SSTS No. 3, when a discrepancy exists between a third-party information return and the client''s claim, the CPA must make reasonable inquiries and evaluate the evidence before determining the correct amount. The CPA should request supporting documentation and assess the credibility of the client''s position. Unlike blindly accepting either the 1099 amount or the client''s unsupported assertion, SSTS No. 3 requires professional judgment and investigation, whereas splitting the difference has no basis in professional standards.$EXPL$
WHERE id = 2419;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (3 questions)
-- ============================================================

-- ID 2543: Property Transactions: Basis
UPDATE questions SET
  explanation = $EXPL$Under Treasury Regulation Section 1.1012-1(a), when multiple assets are acquired in a lump-sum purchase, the total cost must be allocated among the individual assets in proportion to their relative fair market values at the acquisition date. This ensures each asset receives an appropriate depreciable or amortizable basis for tax purposes. Unlike allocating the entire cost to a single asset or dividing equally, the FMV-based allocation reflects economic reality, whereas using the seller''s book values would not represent current market conditions.$EXPL$
WHERE id = 2543;

-- ID 2546: Property Transactions: Basis
UPDATE questions SET
  explanation = $EXPL$Under Treasury Regulation Section 1.165-9(b)(2), when property is converted from personal to business use, the basis for determining a loss is the lower of adjusted basis or fair market value at the date of conversion. This rule prevents taxpayers from deducting losses attributable to personal-use decline in value. Unlike the basis for determining gain, which uses the original adjusted basis regardless of FMV at conversion, the loss basis is capped at FMV to ensure only business-period losses are recognized.$EXPL$
WHERE id = 2546;

-- ID 2547: Property Transactions: Basis
UPDATE questions SET
  explanation = $EXPL$Under Treasury Regulation Section 1.165-9(b)(2), when property is converted from personal to business use, the basis for determining gain is the adjusted basis at the date of conversion—the original cost plus capital improvements, reduced by any post-conversion depreciation. The FMV at conversion is irrelevant for gain purposes; the taxpayer''s cost basis carries over. Unlike the loss basis, which uses the lower of adjusted basis or FMV at conversion, the gain basis always uses the full adjusted basis to prevent taxpayers from inflating gains or losses through the conversion.$EXPL$
WHERE id = 2547;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (1 questions)
-- ============================================================

-- ID 2577: Property Transactions: Gains/Losses
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 165(h), the casualty loss on personal-use property is computed as the lesser of the decline in fair market value ($18,000) or the adjusted basis ($30,000), minus insurance proceeds ($15,000), yielding $3,000 before the $100 per-event floor and 10% AGI limitation. The decline in FMV controls because it is lower than basis. Unlike business property where the full adjusted basis is used regardless of FMV, personal-use casualty losses are further restricted and, post-TCJA, deductible only in federally declared disaster areas.$EXPL$
WHERE id = 2577;

-- ============================================================
-- S CORPORATIONS (1 questions)
-- ============================================================

-- ID 2828: S Corporations
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1372(a) and IRS Notice 2008-1, health insurance premiums paid by an S corporation for a shareholder-employee owning more than 2% of the stock must be included in the shareholder''s W-2 wages as compensation. The corporation deducts the premiums as wages paid. The shareholder may then claim the self-employed health insurance deduction on their personal return under IRC Section 162(l). Unlike regular employees whose employer-paid premiums are excluded from income under IRC Section 106, greater-than-2% S corporation shareholders receive different treatment.$EXPL$
WHERE id = 2828;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 2449: Tax Procedures
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 6662(d)(1)(A), a substantial understatement for individuals exists when the understatement exceeds the greater of $5,000 or 10% of the tax required to be shown on the return. Here, 10% of $50,000 equals $5,000, and the greater of $5,000 or $5,000 is $5,000. Since the $6,000 understatement exceeds this threshold, the 20% accuracy-related penalty under IRC Section 6662(a) applies. Unlike the negligence penalty, which requires a showing of careless disregard, the substantial understatement penalty is triggered by the dollar threshold alone unless reasonable cause is demonstrated.$EXPL$
WHERE id = 2449;

-- ID 12850: Tax Procedures
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 6213(a), Tax Court is the only forum that does not require prepayment of the disputed tax, making it the sole viable option for Rivera who cannot afford the $85,000 prepayment. Although Tax Court decisions appeal to the taxpayer''s geographic circuit rather than the Federal Circuit, Rivera''s financial constraint is determinative. Unlike U.S. District Court under 28 USC Section 1346(a)(1) and the Court of Federal Claims under 28 USC Section 1491, both of which require full prepayment, Tax Court permits litigation while the deficiency remains unpaid.$EXPL$
WHERE id = 12850;

COMMIT;
