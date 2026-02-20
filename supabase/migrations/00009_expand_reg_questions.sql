-- =============================================================================
-- Expand REG question bank: +114 questions (86 → 200)
-- Covers AICPA blueprint gaps: federal tax procedures, statute of limitations,
-- preparer penalties, UCC warranties, securities regulation, bankruptcy,
-- MACRS depreciation, Section 1245/1250 recapture, NIIT, installment sales,
-- involuntary conversions, passive activity losses, at-risk rules, material
-- participation, kiddie tax, FTC, AMT detail, NOLs post-TCJA, Section 382,
-- tax-exempt orgs, UBIT, AAA ordering, S corp loss limitations, Section 751
-- hot assets, Section 754 elections, special allocations
-- Difficulty mix: ~29 easy, ~57 medium, ~28 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

-- =============================================================================
-- Circular 230 — 8 questions (tax procedures, penalties, due diligence)
-- =============================================================================

(3, 'Circular 230',
 'Under Circular 230, a tax return preparer who willfully understates a client''s tax liability is subject to which of the following penalties under IRC Section 6694(b)?',
 '["$1,000 or 50% of income derived from the return, whichever is greater", "The greater of $5,000 or 75% of income derived from the return", "A flat $500 penalty", "$250 per return"]'::jsonb,
 1,
 'Section 6694(b) imposes a penalty on preparers who willfully attempt to understate tax liability or who engage in reckless or intentional disregard of rules. The penalty is the greater of $5,000 or 75% of the income derived from the return. This is more severe than the Section 6694(a) penalty for unreasonable positions, which is the greater of $1,000 or 50% of income.',
 'hard'),

(3, 'Circular 230',
 'The general statute of limitations for the IRS to assess additional tax is three years. Under which circumstance is the statute extended to six years?',
 '["The taxpayer fails to sign the return", "The taxpayer omits gross income in excess of 25% of the amount reported", "The taxpayer files the return one day late", "The taxpayer claims an incorrect filing status"]'::jsonb,
 1,
 'The statute of limitations for assessment is extended to six years when the taxpayer omits from gross income an amount exceeding 25% of the gross income stated on the return. For estate and gift tax returns, the six-year period applies when the taxpayer omits items exceeding 25% of the gross estate or total gifts. There is no statute of limitations for fraud or failure to file.',
 'medium'),

(3, 'Circular 230',
 'A practitioner discovers an error on a client''s previously filed return that resulted in a $500 overpayment of tax. Under Circular 230, the practitioner must:',
 '["File an amended return without the client''s consent", "Promptly notify the client of the error and advise corrective action", "Report the error to the IRS within 30 days", "Take no action because the error favored the government"]'::jsonb,
 1,
 'Under Circular 230 and SSTS No. 6, when a practitioner discovers an error on a filed return, they must promptly notify the client and recommend corrective action, regardless of whether the error resulted in an underpayment or overpayment. The practitioner cannot file an amended return without client authorization and is not required to notify the IRS directly.',
 'medium'),

(3, 'Circular 230',
 'Under IRC Section 6694(a), the penalty for a preparer who takes an unreasonable position on a tax return without adequate disclosure is:',
 '["The greater of $1,000 or 50% of income derived from the return", "The greater of $5,000 or 75% of income derived from the return", "$500 per return", "25% of the understated tax"]'::jsonb,
 0,
 'Section 6694(a) imposes a penalty of the greater of $1,000 or 50% of the income derived from the return for taking an unreasonable position. A position is unreasonable if it does not have substantial authority (or, if disclosed, does not have a reasonable basis). The Section 6694(b) penalty for willful or reckless conduct is more severe at $5,000 or 75%.',
 'medium'),

(3, 'Circular 230',
 'Which of the following statements about IRS audit selection is correct?',
 '["All returns are audited within three years of filing", "The IRS uses the Discriminant Index Function (DIF) score to select returns with high audit potential", "Only returns with income over $200,000 are subject to audit", "Taxpayers who e-file are exempt from audit"]'::jsonb,
 1,
 'The IRS uses the Discriminant Index Function (DIF) scoring system to evaluate returns for audit potential. Returns with high DIF scores — indicating significant deviations from statistical norms for similar returns — are more likely to be selected for examination. Other selection methods include document matching, related examinations, and informant tips.',
 'easy'),

(3, 'Circular 230',
 'A taxpayer receives a 30-day letter from the IRS proposing additional tax. What are the taxpayer''s options?',
 '["The taxpayer must pay immediately or face criminal prosecution", "The taxpayer may agree, request a conference with the IRS Office of Appeals, or take no action and await a statutory notice of deficiency", "The taxpayer must file a petition with the Tax Court within 30 days", "The taxpayer may only dispute the assessment in federal district court"]'::jsonb,
 1,
 'A 30-day letter is a preliminary notice proposing changes to the taxpayer''s return. The taxpayer may: (1) agree and pay, (2) request a conference with the IRS Independent Office of Appeals, or (3) take no action and wait for a 90-day letter (statutory notice of deficiency), which provides the right to petition the Tax Court before paying. The 30-day letter itself is not a legal assessment.',
 'medium'),

(3, 'Circular 230',
 'A tax return preparer is required to sign and include their Preparer Tax Identification Number (PTIN) on all returns they prepare for compensation. Failure to comply with this requirement results in a penalty of:',
 '["$50 per return, up to $27,000 per year", "$500 per return", "$100 per return, up to $50,000 per year", "No penalty — this is only a recommendation"]'::jsonb,
 0,
 'IRC Section 6695(c) imposes a penalty of $50 per failure to sign a return or include a PTIN, with a maximum penalty of $27,000 per calendar year. This applies to all tax return preparers who receive compensation for preparing returns. The requirement helps the IRS track preparer compliance and quality.',
 'easy'),

(3, 'Circular 230',
 'Under the IRS Restructuring and Reform Act of 1998, the burden of proof in a tax case shifts to the IRS when:',
 '["The taxpayer files a timely return", "The taxpayer introduces credible evidence, maintains records, cooperates with reasonable IRS requests, and meets net worth requirements (for individuals)", "The taxpayer hires an enrolled agent", "The case involves less than $10,000 in disputed tax"]'::jsonb,
 1,
 'The burden of proof shifts to the IRS under IRC Section 7491 when the taxpayer introduces credible evidence on the factual issue, complies with substantiation and record-keeping requirements, cooperates with reasonable IRS requests, and (for individuals) has a net worth not exceeding $7 million. For penalties and fraud, the burden is always on the IRS.',
 'hard'),

-- =============================================================================
-- Business Law: Contracts — 5 questions (UCC warranties, breach remedies)
-- =============================================================================

(3, 'Business Law: Contracts',
 'Under UCC Article 2, the implied warranty of merchantability requires that goods must:',
 '["Be the newest model available", "Be fit for the ordinary purposes for which such goods are used", "Come with a written guarantee from the manufacturer", "Be inspected by a government agency before sale"]'::jsonb,
 1,
 'The implied warranty of merchantability under UCC 2-314 arises automatically in sales by merchants and requires that goods be fit for the ordinary purposes for which they are used, pass without objection in the trade, be adequately packaged and labeled, and conform to promises on the label. It does not require newest models, written guarantees, or government inspection.',
 'easy'),

(3, 'Business Law: Contracts',
 'A seller delivers goods that do not conform to the contract specifications. Under UCC Article 2, which of the following remedies is available to the buyer?',
 '["The buyer must accept the goods and sue for damages only", "The buyer may reject the goods, accept the goods and recover damages, or accept part and reject part", "The buyer may only return the goods for a full refund", "The buyer has no remedy unless the defect was disclosed before shipment"]'::jsonb,
 1,
 'Under the UCC perfect tender rule (2-601), if goods fail to conform in any respect, the buyer may: (1) reject the whole shipment, (2) accept the whole shipment and recover damages for nonconformity, or (3) accept any commercial units and reject the rest. The seller may have a right to cure if the time for performance has not expired.',
 'medium'),

(3, 'Business Law: Contracts',
 'Under UCC Article 2, which of the following warranties can be disclaimed by a seller using language such as "as is" or "with all faults"?',
 '["Only the implied warranty of merchantability", "Only the implied warranty of fitness for a particular purpose", "Both implied warranties of merchantability and fitness for a particular purpose", "Neither implied warranty can ever be disclaimed"]'::jsonb,
 2,
 'Under UCC 2-316, a seller may disclaim both implied warranties using expressions like "as is" or "with all faults" that in common understanding call the buyer''s attention to the exclusion. Merchantability can also be disclaimed by conspicuous written language mentioning "merchantability." Fitness for a particular purpose requires a conspicuous writing. Express warranties generally cannot be disclaimed.',
 'medium'),

(3, 'Business Law: Contracts',
 'A seller has breached a contract for the sale of goods and the buyer has accepted the goods. Under UCC Article 2, the buyer''s measure of damages is:',
 '["The full contract price", "The difference between the value of the goods as accepted and the value they would have had if they had been as warranted, plus incidental and consequential damages", "Only the cost of returning the goods", "Punitive damages equal to three times the contract price"]'::jsonb,
 1,
 'Under UCC 2-714, when a buyer has accepted nonconforming goods and given proper notice of breach, the measure of damages is the difference between the value of the goods accepted and the value they would have had if conforming, measured at the time and place of acceptance. The buyer may also recover incidental and consequential damages under 2-715.',
 'hard'),

(3, 'Business Law: Contracts',
 'Under UCC Article 2, the implied warranty of fitness for a particular purpose arises when:',
 '["The buyer purchases goods from any seller", "The seller has reason to know the buyer''s particular purpose and the buyer relies on the seller''s skill or judgment to select suitable goods", "The goods are sold in their original packaging", "The buyer specifically requests a written warranty"]'::jsonb,
 1,
 'The implied warranty of fitness for a particular purpose under UCC 2-315 arises when: (1) the seller has reason to know the particular purpose for which the buyer requires the goods, and (2) the buyer relies on the seller''s skill or judgment to select or furnish suitable goods. Unlike merchantability, this warranty does not require the seller to be a merchant.',
 'medium'),

-- =============================================================================
-- Agency and Regulation — 5 questions (securities regulation, CPA liability)
-- =============================================================================

(3, 'Agency and Regulation',
 'Under the Securities Act of 1933, Section 11 imposes liability on auditors who certify financial statements in a registration statement that contain material misstatements. What is the auditor''s primary defense?',
 '["The auditor relied on management representations", "The auditor exercised due diligence and had reasonable grounds to believe the statements were true", "The auditor was not paid for the engagement", "The auditor disclosed the limitation in the audit report"]'::jsonb,
 1,
 'Under Section 11 of the Securities Act of 1933, the auditor''s defense is due diligence — demonstrating that after reasonable investigation, the auditor had reasonable grounds to believe and did believe that the certified statements were true and contained no material omissions. The burden of proof shifts to the auditor to establish this defense. Reliance on management alone is insufficient.',
 'hard'),

(3, 'Agency and Regulation',
 'Under SEC Rule 10b-5, which of the following must a plaintiff prove to recover damages for securities fraud?',
 '["Only that the defendant made a false statement", "A material misrepresentation or omission, scienter (intent to deceive), reliance, connection with the purchase or sale of a security, and damages", "That the defendant was a registered broker-dealer", "That the SEC approved the security before its sale"]'::jsonb,
 1,
 'Rule 10b-5 under the Securities Exchange Act of 1934 requires plaintiffs to prove: (1) a material misrepresentation or omission, (2) scienter (intent to deceive, manipulate, or defraud), (3) a connection with the purchase or sale of a security, (4) reliance on the misrepresentation, (5) economic loss, and (6) loss causation. Unlike Section 11, scienter must be proven.',
 'hard'),

(3, 'Agency and Regulation',
 'Under the Securities Act of 1933, which of the following securities is exempt from registration?',
 '["Common stock of a Fortune 500 company sold in an IPO", "U.S. government securities, municipal bonds, and securities issued by banks", "All securities sold over the internet", "Shares of a foreign corporation sold to U.S. investors"]'::jsonb,
 1,
 'The Securities Act of 1933 exempts certain securities from registration, including U.S. government securities, municipal bonds, securities issued by banks and savings institutions, insurance policies, and securities issued by nonprofit religious, educational, or charitable organizations. The exemption relates to the type of issuer, not the method of sale.',
 'easy'),

(3, 'Agency and Regulation',
 'Under common law, a CPA may be liable to third parties under the Ultramares doctrine for:',
 '["Ordinary negligence to any foreseeable user of the financial statements", "Fraud or gross negligence to third parties, but not ordinary negligence unless the third party was in privity or a known third-party beneficiary", "Any error in the financial statements regardless of intent", "Only criminal violations reported to law enforcement"]'::jsonb,
 1,
 'Under the Ultramares doctrine (the traditional/privity approach), a CPA is liable for ordinary negligence only to clients and intended third-party beneficiaries with whom the CPA is in privity. However, CPAs can be liable for fraud or gross negligence (constructive fraud) to any third party who justifiably relied on the financial statements. The Restatement approach broadens liability to foreseen users.',
 'hard'),

(3, 'Agency and Regulation',
 'The Securities Exchange Act of 1934 requires companies with securities listed on a national exchange to file periodic reports with the SEC. Which of the following is an annual reporting requirement?',
 '["Form S-1 registration statement", "Form 10-K annual report", "Form 8-K current report", "Schedule 13D beneficial ownership report"]'::jsonb,
 1,
 'Form 10-K is the annual report required by Section 13 of the Securities Exchange Act of 1934 for companies with registered securities. It must include audited financial statements and is due within 60 days of fiscal year-end for large accelerated filers, 75 days for accelerated filers, and 90 days for non-accelerated filers. Form 10-Q is the quarterly report.',
 'easy'),

-- =============================================================================
-- Business Structures — 5 questions (surety, bankruptcy, debtor-creditor)
-- =============================================================================

(3, 'Business Structures',
 'In a suretyship arrangement, the surety is primarily liable for the debt along with the principal debtor. Which of the following is a defense available to the surety?',
 '["The creditor extended the time for payment of the debt without the surety''s consent, releasing the surety to the extent of any resulting prejudice", "The principal debtor has sufficient assets to pay", "The surety was not aware of the amount of the debt", "The creditor failed to first demand payment from the principal debtor"]'::jsonb,
 0,
 'A surety may be discharged if the creditor materially modifies the obligation without the surety''s consent — including extending the time for payment — to the extent the surety is prejudiced. Unlike a guarantor, a surety is primarily liable and the creditor need not demand payment from the principal first. The surety''s ignorance of the debt amount is not a valid defense if the surety agreed to the obligation.',
 'hard'),

(3, 'Business Structures',
 'Under Chapter 7 bankruptcy, which of the following claims has the highest priority in the distribution of the debtor''s estate?',
 '["General unsecured creditors", "Administrative expenses and costs of preserving the estate", "Wages earned within 180 days before filing, up to the statutory limit per employee", "Federal tax claims"]'::jsonb,
 1,
 'Under the Bankruptcy Code priority scheme (Section 507), administrative expenses — including trustee fees, attorney fees, and costs of preserving and administering the estate — have the highest priority among unsecured claims. Secured creditors are paid first from their collateral, then priority claims are paid in order: administrative expenses, then wages, then tax claims, then general unsecured creditors.',
 'medium'),

(3, 'Business Structures',
 'Which of the following debts is generally NOT dischargeable in a Chapter 7 bankruptcy?',
 '["Credit card debt", "Medical bills", "Student loans, unless the debtor can demonstrate undue hardship", "Unpaid utility bills"]'::jsonb,
 2,
 'Student loans are generally nondischargeable in bankruptcy under Section 523(a)(8) unless the debtor can demonstrate that repayment would impose an undue hardship, which courts interpret very strictly (often using the Brunner test). Other nondischargeable debts include most tax obligations within three years, alimony and child support, debts obtained by fraud, and criminal fines.',
 'easy'),

(3, 'Business Structures',
 'Under Chapter 11 bankruptcy, which of the following is true about the debtor-in-possession?',
 '["The debtor loses all control of the business immediately upon filing", "The debtor continues to operate the business and has most powers of a trustee unless a trustee is appointed for cause", "The debtor must liquidate all assets within 90 days", "Only corporations may file under Chapter 11"]'::jsonb,
 1,
 'In Chapter 11 reorganization, the debtor-in-possession continues to operate the business and exercises most powers and duties of a trustee, including the ability to use, sell, or lease property, assume or reject executory contracts, and propose a plan of reorganization. A separate trustee is appointed only for cause (fraud, dishonesty, incompetence, or gross mismanagement).',
 'medium'),

(3, 'Business Structures',
 'Under Chapter 13 bankruptcy, which of the following is a requirement for eligibility?',
 '["The debtor must be a corporation or partnership", "The debtor must be an individual with regular income whose unsecured debts are below the statutory limit", "The debtor must have no income", "The debtor must have been denied Chapter 7 discharge"]'::jsonb,
 1,
 'Chapter 13 is available only to individuals (not corporations or partnerships) with regular income whose noncontingent, liquidated unsecured debts and secured debts are each below statutory limits (adjusted periodically). The debtor proposes a 3-to-5-year repayment plan. Chapter 13 allows the debtor to keep property while making plan payments.',
 'easy'),

-- =============================================================================
-- Property Transactions: Basis — 10 questions (MACRS, §179, bonus depreciation)
-- =============================================================================

(3, 'Property Transactions: Basis',
 'Under the Modified Accelerated Cost Recovery System (MACRS), residential rental property is depreciated over what recovery period using what method?',
 '["27.5 years using straight-line", "39 years using straight-line", "15 years using 150% declining balance", "20 years using double declining balance"]'::jsonb,
 0,
 'Residential rental property is classified as 27.5-year property under MACRS and must be depreciated using the straight-line method with the mid-month convention. Nonresidential real property is 39-year property, also straight-line. Personal property uses accelerated methods (200% or 150% declining balance) over shorter recovery periods.',
 'easy'),

(3, 'Property Transactions: Basis',
 'A taxpayer places $3,200,000 of qualifying equipment in service during 2025. The Section 179 expense deduction limit for 2025 is $1,220,000, with a phase-out threshold beginning at $3,050,000. What is the maximum Section 179 deduction available?',
 '["$1,220,000", "$1,070,000", "$0", "$3,200,000"]'::jsonb,
 1,
 'The Section 179 deduction is reduced dollar-for-dollar by the amount the cost of qualifying property placed in service exceeds the phase-out threshold. The excess is $3,200,000 - $3,050,000 = $150,000. The maximum deduction is $1,220,000 - $150,000 = $1,070,000. The deduction is also limited to taxable income from the active conduct of a trade or business.',
 'hard'),

(3, 'Property Transactions: Basis',
 'Under MACRS, 5-year property includes which of the following?',
 '["Office furniture", "Automobiles and light trucks", "Residential rental buildings", "Land improvements"]'::jsonb,
 1,
 'Five-year MACRS property includes automobiles, light trucks, computers and peripheral equipment, office machinery (typewriters, calculators), and certain research and experimentation property. Office furniture is 7-year property. Residential rental buildings are 27.5-year property. Land improvements (fences, parking lots) are 15-year property.',
 'easy'),

(3, 'Property Transactions: Basis',
 'A taxpayer uses an automobile 70% for business and 30% for personal purposes. The automobile cost $60,000. Under the listed property rules, which of the following applies?',
 '["The taxpayer may deduct depreciation based on the full $60,000 cost", "The taxpayer may deduct depreciation only on the business-use portion ($42,000), subject to luxury automobile limits", "The taxpayer cannot claim any depreciation because business use is below 100%", "Listed property rules do not apply to automobiles"]'::jsonb,
 1,
 'Automobiles are listed property subject to special rules. Because business use exceeds 50%, the taxpayer may use MACRS accelerated depreciation (or Section 179) on the business-use portion. However, annual depreciation deductions are subject to luxury automobile limits ($20,200 first year with bonus, lower amounts in subsequent years for 2025). If business use falls to 50% or below, the taxpayer must switch to straight-line.',
 'medium'),

(3, 'Property Transactions: Basis',
 'A taxpayer purchases new manufacturing equipment for $500,000 in 2025. Under the TCJA phase-down schedule, what is the first-year bonus depreciation deduction (ignoring Section 179 and regular MACRS)?',
 '["$100,000", "$200,000", "$500,000", "$300,000"]'::jsonb,
 1,
 'Under the TCJA, bonus depreciation phases down by 20% per year: 100% (2022), 80% (2023), 60% (2024), 40% (2025), 20% (2026), and 0% after 2026. For equipment placed in service in 2025, the bonus depreciation deduction is 40% x $500,000 = $200,000. The taxpayer would also claim regular MACRS depreciation on the remaining $300,000 basis.',
 'medium'),

(3, 'Property Transactions: Basis',
 'Under MACRS, nonresidential real property placed in service after May 13, 1993, is depreciated over what recovery period?',
 '["27.5 years", "31.5 years", "39 years", "40 years"]'::jsonb,
 2,
 'Nonresidential real property (office buildings, stores, warehouses) placed in service after May 13, 1993, is depreciated over 39 years using the straight-line method with the mid-month convention. Property placed in service before that date used 31.5 years. Residential rental property uses 27.5 years. The ADS recovery period for nonresidential real property is 40 years.',
 'easy'),

(3, 'Property Transactions: Basis',
 'A taxpayer acquires 7-year MACRS property for $100,000. Under the half-year convention with 200% declining balance, what is the first-year depreciation rate?',
 '["7.14%", "10.00%", "14.29%", "28.57%"]'::jsonb,
 2,
 'For 7-year property using 200% declining balance, the annual rate is 200% ÷ 7 = 28.57%. Applying the half-year convention (which treats property as placed in service at the midpoint of the year), the first-year rate is 28.57% × 50% = 14.29%, yielding $14,290 in depreciation. This matches the MACRS percentage table for 7-year property, year 1.',
 'medium'),

(3, 'Property Transactions: Basis',
 'The mid-quarter convention under MACRS must be used instead of the half-year convention when:',
 '["All property is placed in service in the first quarter", "More than 40% of the aggregate bases of all personal property placed in service during the year is placed in service in the last quarter", "The taxpayer elects ADS depreciation", "The property is listed property with less than 50% business use"]'::jsonb,
 1,
 'The mid-quarter convention applies when more than 40% of the total depreciable basis of MACRS personal property placed in service during the year is placed in service in the last quarter of the tax year. This prevents taxpayers from bunching purchases in December to claim a half-year of depreciation for minimal use. Real property always uses the mid-month convention.',
 'hard'),

(3, 'Property Transactions: Basis',
 'A taxpayer places a $40,000 asset in service and elects to use the Alternative Depreciation System (ADS). Which depreciation method must be used under ADS?',
 '["200% declining balance", "150% declining balance", "Straight-line over the ADS recovery period", "Units of production"]'::jsonb,
 2,
 'The Alternative Depreciation System requires the straight-line method over ADS recovery periods, which are generally longer than GDS (General Depreciation System) recovery periods. ADS is mandatory for certain property (tangible property used predominantly outside the U.S., tax-exempt use property, tax-exempt bond-financed property) and may be elected for any property.',
 'medium'),

(3, 'Property Transactions: Basis',
 'Section 179 expensing is limited to the taxpayer''s taxable income from the active conduct of any trade or business. If the Section 179 deduction exceeds this limit, the excess is:',
 '["Lost permanently", "Carried forward to the next taxable year indefinitely", "Carried back to the prior year", "Converted to a capital loss"]'::jsonb,
 1,
 'If the Section 179 deduction exceeds the taxpayer''s taxable income from the active conduct of a trade or business, the excess is carried forward to the next year and treated as a Section 179 deduction in that year (still subject to the income limitation). The carryforward is indefinite — it does not expire. W-2 wages from employment count as active business income for this purpose.',
 'medium'),

-- =============================================================================
-- Property Transactions: Gains/Losses — 10 questions (§1245/1250, NIIT)
-- =============================================================================

(3, 'Property Transactions: Gains/Losses',
 'Section 1245 depreciation recapture applies to personal property used in a trade or business. When section 1245 property is sold at a gain, what portion of the gain is treated as ordinary income?',
 '["Only the gain exceeding accumulated depreciation", "The lesser of the gain realized or the accumulated depreciation", "The entire gain regardless of depreciation", "25% of the accumulated depreciation"]'::jsonb,
 1,
 'Under Section 1245, the gain on disposition of personal property is recaptured as ordinary income to the extent of all depreciation previously allowed or allowable. The ordinary income portion equals the lesser of: (1) the gain realized, or (2) the total accumulated depreciation. Any remaining gain is treated as Section 1231 gain (potentially long-term capital gain).',
 'medium'),

(3, 'Property Transactions: Gains/Losses',
 'A taxpayer sells a commercial building for $800,000. The building was purchased for $600,000 and has an adjusted basis of $400,000 after $200,000 of straight-line depreciation. What is the unrecaptured Section 1250 gain?',
 '["$400,000", "$200,000", "$0", "$100,000"]'::jsonb,
 1,
 'Unrecaptured Section 1250 gain equals the depreciation claimed on real property, taxed at a maximum rate of 25%. The total gain is $800,000 - $400,000 = $400,000. Of this, $200,000 represents straight-line depreciation (the unrecaptured Section 1250 gain, taxed at max 25%), and the remaining $200,000 is Section 1231 gain taxed at regular capital gains rates (0%/15%/20%).',
 'medium'),

(3, 'Property Transactions: Gains/Losses',
 'The Net Investment Income Tax (NIIT) under IRC Section 1411 imposes a 3.8% surtax on the lesser of:',
 '["All gross income above $200,000", "Net investment income or the excess of MAGI over the threshold amount ($200,000 single, $250,000 MFJ)", "Only dividend and interest income", "Capital gains above $50,000"]'::jsonb,
 1,
 'The NIIT is 3.8% of the lesser of: (1) net investment income (interest, dividends, capital gains, rents, royalties, passive activity income, minus allocable deductions), or (2) the excess of modified adjusted gross income over the threshold ($200,000 for single filers, $250,000 for married filing jointly, $125,000 for married filing separately). These thresholds are not indexed for inflation.',
 'medium'),

(3, 'Property Transactions: Gains/Losses',
 'A taxpayer sells equipment (Section 1245 property) for $120,000. The original cost was $150,000 and accumulated depreciation is $80,000. What is the amount and character of the gain?',
 '["$50,000 — all Section 1245 ordinary income", "$50,000 — all Section 1231 gain", "$50,000 — $30,000 ordinary and $20,000 Section 1231", "$80,000 — all ordinary income"]'::jsonb,
 0,
 'Adjusted basis = $150,000 - $80,000 = $70,000. Gain = $120,000 - $70,000 = $50,000. Under Section 1245, ordinary income = lesser of gain ($50,000) or accumulated depreciation ($80,000) = $50,000. The entire $50,000 gain is ordinary income because it does not exceed the depreciation taken. There is no Section 1231 gain in this case.',
 'medium'),

(3, 'Property Transactions: Gains/Losses',
 'Which of the following types of income is subject to the 3.8% Net Investment Income Tax?',
 '["Wages and salaries", "Self-employment income from a business in which the taxpayer materially participates", "Rental income from a rental activity in which the taxpayer does not materially participate", "Distributions from a qualified retirement plan"]'::jsonb,
 2,
 'Net investment income includes interest, dividends, capital gains, rents, royalties, and income from passive activities (including rental activities where the taxpayer does not materially participate). Wages, self-employment income from active businesses, and retirement plan distributions are excluded. Real estate professionals who materially participate may also exclude rental income.',
 'medium'),

(3, 'Property Transactions: Gains/Losses',
 'Collectibles held for more than one year and sold at a gain are taxed at a maximum capital gains rate of:',
 '["15%", "20%", "25%", "28%"]'::jsonb,
 3,
 'Long-term capital gains on collectibles (art, antiques, gems, stamps, coins, and precious metals) are taxed at a maximum rate of 28%, higher than the standard 0%/15%/20% rates for other long-term capital gains. This applies to gains on collectibles held for more than one year. Short-term gains on collectibles are taxed at ordinary income rates.',
 'easy'),

(3, 'Property Transactions: Gains/Losses',
 'A taxpayer has the following capital gains and losses: $10,000 STCG, $15,000 STCL, $20,000 LTCG, and $5,000 LTCL. What is the net capital gain or loss?',
 '["$10,000 net long-term capital gain", "$10,000 net capital gain ($15,000 net LTCG netted with $5,000 net STCL)", "$5,000 net capital loss", "$30,000 net gain"]'::jsonb,
 1,
 'First, net within each category: STCG $10,000 - STCL $15,000 = ($5,000) net STCL. LTCG $20,000 - LTCL $5,000 = $15,000 net LTCG. Then combine: $15,000 net LTCG - $5,000 net STCL = $10,000 net capital gain. Since the net LTCG exceeds the net STCL, the result is taxed at preferential LTCG rates.',
 'medium'),

(3, 'Property Transactions: Gains/Losses',
 'A taxpayer sells Section 1250 property (a building) at a loss. How is the loss treated?',
 '["As an ordinary loss under Section 1250 recapture", "As a Section 1231 loss (ordinary loss if net Section 1231 losses exceed gains)", "As a capital loss subject to the $3,000 annual deduction limit", "The loss is not deductible"]'::jsonb,
 1,
 'Section 1250 recapture applies only to gains — there is no depreciation recapture on losses. A loss on the sale of Section 1250 property (real property used in a trade or business held over one year) is treated as a Section 1231 loss. If net Section 1231 results are a loss for the year, the loss is treated as an ordinary loss, fully deductible against other income.',
 'medium'),

(3, 'Property Transactions: Gains/Losses',
 'The Section 1231 five-year lookback rule requires that net Section 1231 gains be recharacterized as ordinary income to the extent of:',
 '["All prior Section 1231 gains in the past five years", "Unrecaptured net Section 1231 losses from the prior five tax years", "Accumulated depreciation on the property sold", "The taxpayer''s marginal tax rate"]'::jsonb,
 1,
 'The Section 1231 lookback rule prevents taxpayers from claiming ordinary loss treatment in loss years and capital gain treatment in gain years. Net Section 1231 gains must be recharacterized as ordinary income to the extent of any unrecaptured net Section 1231 losses from the five preceding tax years. Once recaptured, those losses are no longer available for future lookback.',
 'hard'),

(3, 'Property Transactions: Gains/Losses',
 'A married couple filing jointly has MAGI of $300,000 and net investment income of $80,000. What is their Net Investment Income Tax liability?',
 '["$3,040", "$1,900", "$8,000", "$11,400"]'::jsonb,
 1,
 'The NIIT is 3.8% of the lesser of net investment income ($80,000) or the excess of MAGI over the threshold ($300,000 - $250,000 = $50,000). The lesser amount is $50,000. NIIT = $50,000 × 3.8% = $1,900. The couple pays NIIT only on the $50,000 exceeding the MFJ threshold, not on the full $80,000 of net investment income.',
 'hard'),

-- =============================================================================
-- Like-Kind Exchanges — 8 questions (installment sales, involuntary conversions)
-- =============================================================================

(3, 'Like-Kind Exchanges',
 'Under the installment method of IRC Section 453, a taxpayer who sells property and receives payments over multiple years recognizes gain:',
 '["Entirely in the year of sale", "As payments are received, based on the gross profit percentage", "Only when the final payment is received", "In equal annual installments regardless of payment amounts"]'::jsonb,
 1,
 'The installment method allows gain to be recognized proportionally as payments are received. The gross profit percentage = gross profit ÷ contract price. Each payment includes a return of basis, recognized gain, and interest (taxed separately). The installment method is automatic for qualifying sales unless the taxpayer elects out on a timely filed return.',
 'medium'),

(3, 'Like-Kind Exchanges',
 'A taxpayer sells property for $200,000 with an adjusted basis of $120,000. The buyer pays $50,000 down and the balance of $150,000 in equal annual installments over 3 years plus interest. What is the gross profit percentage?',
 '["60%", "40%", "25%", "80%"]'::jsonb,
 1,
 'Gross profit = selling price - adjusted basis = $200,000 - $120,000 = $80,000. Contract price = $200,000 (total selling price). Gross profit percentage = $80,000 ÷ $200,000 = 40%. Each payment received ($50,000 down payment plus each $50,000 installment) is 40% gain and 60% return of basis. The interest portion is taxed separately as ordinary income.',
 'medium'),

(3, 'Like-Kind Exchanges',
 'Under IRC Section 1033, gain from an involuntary conversion (such as a casualty or condemnation) may be deferred if the taxpayer:',
 '["Reports the gain on Schedule D in the year of conversion", "Reinvests the proceeds in property similar or related in service or use within the replacement period", "Donates the insurance proceeds to charity", "Elects installment sale treatment"]'::jsonb,
 1,
 'Section 1033 allows taxpayers to defer gain from involuntary conversions (destruction, theft, seizure, condemnation) if they purchase qualified replacement property within the replacement period. For condemnations, the replacement property must be similar or related in service or use (or like-kind for real property). The replacement period is generally 2 years after the end of the tax year of the conversion (3 years for condemned real property).',
 'medium'),

(3, 'Like-Kind Exchanges',
 'A taxpayer''s warehouse is destroyed by fire. The insurance proceeds are $500,000 and the adjusted basis of the warehouse was $350,000. The taxpayer purchases a new warehouse for $480,000 within the replacement period. What is the recognized gain?',
 '["$0", "$20,000", "$150,000", "$130,000"]'::jsonb,
 1,
 'Realized gain = $500,000 - $350,000 = $150,000. Under Section 1033, gain is recognized only to the extent that the amount realized exceeds the cost of the replacement property. Recognized gain = $500,000 - $480,000 = $20,000. The remaining $130,000 gain is deferred. The basis of the new warehouse = $480,000 - $130,000 (deferred gain) = $350,000.',
 'hard'),

(3, 'Like-Kind Exchanges',
 'Under Section 121, a taxpayer may exclude gain from the sale of a primary residence if they have owned and used the home as their principal residence for at least:',
 '["1 of the last 3 years", "2 of the last 5 years", "3 of the last 5 years", "5 continuous years"]'::jsonb,
 1,
 'Section 121 requires the taxpayer to have owned AND used the property as their principal residence for at least 2 of the 5 years preceding the sale. The ownership and use periods need not be concurrent. The exclusion is $250,000 for single filers and $500,000 for married filing jointly (if both spouses meet the use test). The exclusion can generally be used once every two years.',
 'easy'),

(3, 'Like-Kind Exchanges',
 'Under Section 267, losses on sales between related parties are:',
 '["Fully deductible by the seller", "Disallowed to the seller; the buyer may use the disallowed loss to reduce gain on a subsequent sale", "Deductible only up to $3,000 per year", "Reported as a capital loss carryforward by the seller"]'::jsonb,
 1,
 'Section 267 disallows the recognition of losses on sales or exchanges between related parties (family members, controlled entities, etc.). The buyer''s basis is the cost paid (not the seller''s basis). However, if the buyer later sells the property at a gain, the gain is reduced (but not below zero) by the previously disallowed loss. The loss itself is never deductible by the original seller.',
 'medium'),

(3, 'Like-Kind Exchanges',
 'A taxpayer sells their home on installment and the sale qualifies for the Section 121 exclusion. The total gain is $400,000 and the taxpayer is single. How is the exclusion applied under the installment method?',
 '["The exclusion reduces the gross profit before calculating the installment gain percentage", "The exclusion is applied only against the first payments received", "The exclusion is prorated equally over all installment payments", "The exclusion is not available with installment sales"]'::jsonb,
 0,
 'When Section 121 and the installment method both apply, the exclusion is applied first to reduce the gross profit. For a single taxpayer with $400,000 gain, the $250,000 exclusion reduces gross profit to $150,000. The installment gross profit percentage is then calculated using the reduced gain, so a smaller portion of each payment is taxable.',
 'hard'),

(3, 'Like-Kind Exchanges',
 'The installment method under Section 453 may NOT be used for which of the following sales?',
 '["Sale of a rental property to an unrelated buyer", "Sale of publicly traded stock on a stock exchange", "Sale of farmland with payments over 10 years", "Sale of a commercial building to a qualified intermediary"]'::jsonb,
 1,
 'The installment method cannot be used for: (1) sales of inventory in the ordinary course of business, (2) sales of publicly traded securities (stocks, bonds), (3) dealer dispositions, and (4) depreciation recapture (which must be recognized in full in the year of sale regardless of payment timing). Sales of real property and non-publicly-traded assets to unrelated parties generally qualify.',
 'easy'),

-- =============================================================================
-- Individual Taxation: Income — 14 questions (passive loss, at-risk, material
-- participation, SS taxability, K-1 reporting)
-- =============================================================================

(3, 'Individual Taxation: Income',
 'Under the at-risk rules of IRC Section 465, a taxpayer''s deductible loss from an activity is limited to:',
 '["The amount the taxpayer has at risk in the activity", "The taxpayer''s adjusted gross income", "The fair market value of the taxpayer''s investment", "50% of the activity''s total losses"]'::jsonb,
 0,
 'Under Section 465, losses from a business or investment activity are deductible only to the extent the taxpayer is at risk. The amount at risk includes: cash contributed, the adjusted basis of property contributed, amounts borrowed for which the taxpayer is personally liable, and amounts borrowed secured by property not used in the activity. Nonrecourse loans (except qualified real estate financing) are not included.',
 'easy'),

(3, 'Individual Taxation: Income',
 'Under the passive activity loss rules of IRC Section 469, losses from passive activities may only be deducted against:',
 '["Any type of income", "Passive activity income only (with limited exceptions)", "Portfolio income such as dividends and interest", "Wages and salary income"]'::jsonb,
 1,
 'Section 469 provides that passive activity losses can only offset passive activity income. They cannot offset active income (wages, salaries, active business income) or portfolio income (interest, dividends, capital gains from non-passive sources). Suspended passive losses are carried forward and can be used against future passive income or fully deducted upon complete disposition of the activity.',
 'easy'),

(3, 'Individual Taxation: Income',
 'A taxpayer who is NOT a real estate professional has $40,000 of losses from actively managing a rental property and has modified AGI of $90,000. How much of the rental loss can the taxpayer deduct under the $25,000 rental allowance?',
 '["$0", "$25,000", "$40,000", "$15,000"]'::jsonb,
 1,
 'The $25,000 special rental allowance under Section 469(i) allows individuals who actively participate in rental real estate activities to deduct up to $25,000 of rental losses against nonpassive income. The allowance phases out by 50% of MAGI over $100,000 (fully phased out at $150,000). At $90,000 MAGI, no phase-out applies, but the deduction is capped at $25,000. The remaining $15,000 loss is suspended.',
 'medium'),

(3, 'Individual Taxation: Income',
 'Which of the following is one of the seven material participation tests under the Treasury Regulations?',
 '["The taxpayer invested at least $50,000 in the activity", "The taxpayer participated in the activity for more than 500 hours during the tax year", "The taxpayer owned more than 50% of the activity", "The taxpayer hired a professional manager for the activity"]'::jsonb,
 1,
 'The most commonly cited material participation test is the 500-hour test — the taxpayer participated in the activity for more than 500 hours during the tax year. Other tests include: 100 hours if no one else participated more, substantially all participation, material participation in 5 of the prior 10 years, or personal service activity with 3 prior years of participation.',
 'easy'),

(3, 'Individual Taxation: Income',
 'A taxpayer qualifies as a real estate professional under IRC Section 469(c)(7). Which of the following is required?',
 '["The taxpayer must own at least 10 rental properties", "The taxpayer must perform more than 750 hours of services in real property trades or businesses in which they materially participate, and more than half of total personal services must be in such activities", "The taxpayer must have a real estate license", "The taxpayer must earn more than $150,000 from real estate"]'::jsonb,
 1,
 'To qualify as a real estate professional, the taxpayer must: (1) perform more than 750 hours of services during the year in real property trades or businesses in which they materially participate, and (2) spend more than half of total personal services performed in all trades or businesses in real property activities. If met, rental activities are not automatically passive (material participation still required per activity).',
 'hard'),

(3, 'Individual Taxation: Income',
 'Under Social Security taxability rules, what is the maximum percentage of Social Security benefits that may be included in gross income?',
 '["0%", "50%", "85%", "100%"]'::jsonb,
 2,
 'Up to 85% of Social Security benefits may be included in gross income based on provisional income (AGI + tax-exempt interest + 50% of SS benefits). For single filers: below $25,000 = 0% taxable; $25,000-$34,000 = up to 50% taxable; above $34,000 = up to 85% taxable. For MFJ: below $32,000 = 0%; $32,000-$44,000 = up to 50%; above $44,000 = up to 85%.',
 'medium'),

(3, 'Individual Taxation: Income',
 'A partner receives a Schedule K-1 from a partnership showing $50,000 of ordinary business income and $10,000 of tax-exempt interest. What amount is included in the partner''s gross income?',
 '["$60,000", "$50,000", "$10,000", "$0"]'::jsonb,
 1,
 'The partner includes $50,000 of ordinary business income in gross income. The $10,000 of tax-exempt interest retains its character as it flows through from the partnership to the partner and is excluded from gross income (though it increases the partner''s basis). Separately stated items maintain their character on the partner''s individual return.',
 'easy'),

(3, 'Individual Taxation: Income',
 'A taxpayer has passive income of $30,000 from Activity A and passive losses of $50,000 from Activity B. The taxpayer also has $200,000 in wages. How much of the passive loss can the taxpayer deduct?',
 '["$50,000 against wages", "$30,000 against passive income only", "$25,000 under the rental allowance", "$0"]'::jsonb,
 1,
 'The $50,000 passive loss from Activity B can offset the $30,000 passive income from Activity A. The remaining $20,000 passive loss is suspended and carried forward. Passive losses cannot offset wages ($200,000) or other active/portfolio income. The $25,000 rental allowance applies only to rental real estate with active participation, which is not indicated here.',
 'medium'),

(3, 'Individual Taxation: Income',
 'When a taxpayer completely disposes of their entire interest in a passive activity in a fully taxable transaction, what happens to any suspended passive losses?',
 '["They are permanently lost", "They may be deducted in full against any type of income", "They are converted to capital losses", "They continue to be suspended until offset by future passive income"]'::jsonb,
 1,
 'Upon a complete disposition of a passive activity in a fully taxable transaction to an unrelated party, all suspended passive losses from that activity are released and may be deducted in full against any type of income (active, portfolio, or passive). This is the primary way suspended passive losses become fully deductible.',
 'medium'),

(3, 'Individual Taxation: Income',
 'A taxpayer receives a K-1 from an S corporation showing a $40,000 ordinary business loss. The taxpayer''s stock basis is $25,000 and they have a direct loan to the corporation of $10,000. Under the four-tier loss limitation, how much loss is deductible before considering at-risk and passive activity rules?',
 '["$25,000", "$35,000", "$40,000", "$10,000"]'::jsonb,
 1,
 'The first tier of the S corporation loss limitation is basis. The taxpayer''s deductible loss is limited to stock basis ($25,000) plus direct loan basis ($10,000) = $35,000. The remaining $5,000 is suspended at the basis level. After passing the basis test, the $35,000 must also pass the at-risk test (tier 2), passive activity test (tier 3), and excess business loss test (tier 4).',
 'medium'),

(3, 'Individual Taxation: Income',
 'Under the passive activity rules, which of the following is classified as portfolio income (not passive income)?',
 '["Rental income from a residential property", "Income from a limited partnership in which the taxpayer does not materially participate", "Dividends from publicly traded stocks", "Income from a business in which the taxpayer works 100 hours per year and no one else works more"]'::jsonb,
 2,
 'Portfolio income includes interest, dividends, annuities, and gains from the sale of property held for investment (stocks, bonds). Portfolio income is not passive income and cannot be offset by passive losses. Rental income is generally passive regardless of participation, and limited partnership income without material participation is passive.',
 'easy'),

(3, 'Individual Taxation: Income',
 'A limited partner in a partnership generally is treated as NOT materially participating unless which of the following applies?',
 '["The limited partner contributed more than $100,000", "The limited partner participated for more than 500 hours during the year", "The limited partner attended the annual partnership meeting", "The limited partner reviewed the quarterly financial statements"]'::jsonb,
 1,
 'Limited partners are presumed to not materially participate due to their passive investor status. However, a limited partner can establish material participation by meeting one of three tests: (1) participating more than 500 hours during the year, (2) materially participating in 5 of the prior 10 years, or (3) materially participating in a personal service activity for 3 prior years.',
 'medium'),

(3, 'Individual Taxation: Income',
 'MAGI phase-outs affect many tax benefits. For the $25,000 rental real estate loss allowance, the phase-out begins at what MAGI level for all filing statuses?',
 '["$75,000", "$100,000", "$150,000", "$200,000"]'::jsonb,
 1,
 'The $25,000 rental real estate loss allowance phases out by 50 cents for every dollar of MAGI over $100,000. The allowance is completely phased out at $150,000 MAGI. For married filing separately taxpayers who lived together, the allowance is reduced to $12,500 and phases out starting at $0 MAGI (fully phased out at $25,000).',
 'medium'),

(3, 'Individual Taxation: Income',
 'A taxpayer participates in Activity X for 450 hours during the year. No other individual participated in Activity X for more hours than the taxpayer. Under the material participation tests, does the taxpayer materially participate?',
 '["No — the taxpayer did not meet the 500-hour test", "Yes — the taxpayer participated more than 100 hours and no other individual participated more", "Yes — any participation over 400 hours qualifies", "No — the taxpayer must own more than 50% of the activity"]'::jsonb,
 1,
 'Although the taxpayer did not meet the 500-hour test, they meet the 100-hour/no-one-else-more test. Under this test, the taxpayer materially participates if they participated for more than 100 hours during the year and no other individual participated more hours. This is one of the seven tests — meeting any single test establishes material participation.',
 'medium'),

-- =============================================================================
-- Individual Taxation: Credits — 12 questions (kiddie tax, AOTC/LLC, FTC, AMT)
-- =============================================================================

(3, 'Individual Taxation: Credits',
 'The kiddie tax applies to unearned income of a child under age 19 (or under 24 if a full-time student). For 2025, the first threshold amount of unearned income is:',
 '["Tax-free (covered by the child''s standard deduction for dependents)", "Taxed at the child''s rate", "Taxed at the parents'' marginal rate", "Subject to AMT"]'::jsonb,
 0,
 'Under the kiddie tax rules, the child''s unearned income is divided into tiers. The first portion (equal to the standard deduction for a dependent with only unearned income, approximately $1,300 for 2025) is tax-free. The next portion (another $1,300 approximately) is taxed at the child''s rate. Unearned income above the combined threshold ($2,600 approximately) is taxed at the parents'' marginal rate.',
 'medium'),

(3, 'Individual Taxation: Credits',
 'Which of the following correctly distinguishes the American Opportunity Tax Credit (AOTC) from the Lifetime Learning Credit (LLC)?',
 '["The AOTC is available for unlimited years of education while the LLC is limited to four years", "The AOTC is available for the first four years of postsecondary education and is partially refundable, while the LLC has no year limit and is nonrefundable", "Both credits are refundable and have the same income phase-out thresholds", "The LLC provides a larger maximum credit per student than the AOTC"]'::jsonb,
 1,
 'The AOTC provides up to $2,500 per student (40% refundable = $1,000) for the first four years of postsecondary education. The LLC provides up to $2,000 per taxpayer (not per student) with no limit on years of education and is entirely nonrefundable. The AOTC requires at least half-time enrollment; the LLC does not. Their MAGI phase-out thresholds differ.',
 'easy'),

(3, 'Individual Taxation: Credits',
 'A taxpayer has $50,000 of foreign source income and $200,000 of worldwide taxable income. Their U.S. tax liability before credits is $44,000. What is the maximum foreign tax credit limitation?',
 '["$44,000", "$22,000", "$11,000", "$50,000"]'::jsonb,
 2,
 'The foreign tax credit is limited to: (Foreign source taxable income ÷ Worldwide taxable income) × U.S. tax liability. Limitation = ($50,000 ÷ $200,000) × $44,000 = $11,000. The taxpayer can claim the lesser of foreign taxes actually paid or $11,000. Excess credits can be carried back 1 year or carried forward 10 years.',
 'hard'),

(3, 'Individual Taxation: Credits',
 'For AMT purposes, which of the following is a common tax preference item that must be added back to regular taxable income?',
 '["State and local tax deduction", "Tax-exempt interest on private activity bonds issued after August 7, 1986", "Charitable contribution deduction", "Mortgage interest on acquisition indebtedness"]'::jsonb,
 1,
 'Tax-exempt interest on private activity bonds (other than certain housing bonds) is a tax preference item that must be added back when computing AMTI. Note: SALT deductions are an AMT adjustment (not a preference item) — they are added back because SALT is not deductible for AMT purposes. Charitable deductions and mortgage interest on acquisition debt are allowed for AMT.',
 'medium'),

(3, 'Individual Taxation: Credits',
 'A taxpayer who is required to make quarterly estimated tax payments and has prior-year tax liability of $180,000 must pay at least what percentage of their current-year or prior-year tax to avoid the estimated tax penalty?',
 '["90% of current year or 100% of prior year", "90% of current year or 110% of prior year (since prior-year AGI exceeded $150,000)", "100% of current year only", "80% of current year"]'::jsonb,
 1,
 'To avoid the estimated tax underpayment penalty, taxpayers must pay at least 90% of the current year''s tax liability or 100% of the prior year''s tax liability, whichever is less. However, if the prior year''s AGI exceeded $150,000 ($75,000 MFS), the safe harbor increases to 110% of the prior year''s tax liability. Since the prior-year tax was $180,000 (suggesting high AGI), the 110% safe harbor likely applies.',
 'medium'),

(3, 'Individual Taxation: Credits',
 'Which of the following is an adjustment (not a preference item) when computing Alternative Minimum Taxable Income (AMTI)?',
 '["Tax-exempt interest on private activity bonds", "State and local tax deduction (added back because SALT is not deductible for AMT)", "Percentage depletion in excess of basis", "Intangible drilling costs in excess of amortization"]'::jsonb,
 1,
 'AMT adjustments differ from preferences. Adjustments include items where the AMT calculation differs from regular tax: SALT deductions (disallowed for AMT), certain depreciation differences (AMT uses 150% DB for personal property), medical expenses (different threshold historically), and incentive stock option exercises. Preference items (private activity bond interest, excess depletion, excess IDC) are always added.',
 'hard'),

(3, 'Individual Taxation: Credits',
 'The Lifetime Learning Credit provides a maximum credit of:',
 '["$2,500 per eligible student", "$2,000 per tax return, regardless of number of students", "$1,000 per student", "$4,000 per student"]'::jsonb,
 1,
 'The Lifetime Learning Credit is 20% of up to $10,000 in qualified education expenses, for a maximum credit of $2,000 per tax return (not per student). It is available for any year of postsecondary education and for courses to acquire or improve job skills. It is nonrefundable and cannot be claimed in the same year as the AOTC for the same student.',
 'easy'),

(3, 'Individual Taxation: Credits',
 'The AMT exemption amount for married filing jointly in 2025 is approximately $133,300. At what AMTI level does the exemption begin to phase out?',
 '["$200,000", "$578,150 (approximately)", "$1,218,700 (approximately)", "The exemption never phases out"]'::jsonb,
 2,
 'The AMT exemption phases out at 25 cents for each dollar of AMTI above the phase-out threshold. For 2025 MFJ, the phase-out begins at approximately $1,218,700 (indexed annually for inflation). The $578,150 figure is the MFS phase-out threshold, not MFJ. The exemption is fully phased out when AMTI exceeds the threshold plus four times the exemption amount ($1,218,700 + 4 x $133,300 = $1,751,900).',
 'hard'),

(3, 'Individual Taxation: Credits',
 'The annualized income installment method allows a taxpayer to:',
 '["Defer all estimated tax payments to the fourth quarter", "Compute required estimated tax payments based on income earned in each quarter, reducing earlier payments if income is concentrated later in the year", "Pay estimated taxes only if annual income exceeds $100,000", "Avoid estimated tax penalties entirely"]'::jsonb,
 1,
 'The annualized income installment method (Form 2210, Schedule AI) allows taxpayers with uneven income throughout the year to base each quarterly estimated payment on income actually earned during that period. This benefits taxpayers who receive most of their income later in the year (e.g., from a year-end bonus or seasonal business), reducing required earlier-quarter payments.',
 'medium'),

(3, 'Individual Taxation: Credits',
 'A dependent child who is 15 years old has $5,000 in unearned income and no earned income. Under the kiddie tax rules, approximately how much of the unearned income is taxed at the parents'' rate?',
 '["$5,000", "$2,400 (amount exceeding the kiddie tax threshold)", "$1,300", "$0"]'::jsonb,
 1,
 'Under the kiddie tax, the first $1,300 (approximately) of unearned income is offset by the child''s standard deduction (tax-free). The next $1,300 is taxed at the child''s rate. Unearned income above $2,600 is taxed at the parents'' marginal rate. So $5,000 - $2,600 = $2,400 is taxed at the parents'' rate. The exact thresholds are indexed annually.',
 'medium'),

(3, 'Individual Taxation: Credits',
 'The foreign tax credit is computed separately for each "basket" or category of income. Which of the following are the two main baskets under current law?',
 '["Active income and passive income", "General category income and passive category income", "Earned income and unearned income", "Domestic source income and foreign source income"]'::jsonb,
 1,
 'Under current law, the two main foreign tax credit baskets are: (1) general category income (most active business income, wages, and other income) and (2) passive category income (passive income such as dividends, interest, rents, royalties). The limitation is computed separately for each basket, preventing taxpayers from using excess credits from high-tax passive income to offset low-tax active income.',
 'medium'),

(3, 'Individual Taxation: Credits',
 'A taxpayer exercises incentive stock options (ISOs) and holds the stock. For regular tax purposes, the exercise of ISOs results in:',
 '["Ordinary income equal to the bargain element", "No taxable income at the time of exercise", "Capital gain at the time of exercise", "A deduction equal to the option premium paid"]'::jsonb,
 1,
 'For regular tax purposes, no income is recognized when ISOs are exercised (unlike nonqualified stock options). However, the bargain element (FMV minus exercise price) is an AMT adjustment that increases AMTI. When the stock is eventually sold (if holding period requirements are met), the gain is treated as long-term capital gain for regular tax purposes.',
 'medium'),

-- =============================================================================
-- Estate and Gift Tax — 6 questions
-- =============================================================================

(3, 'Estate and Gift Tax',
 'A married couple wishes to give $100,000 to their grandchild. Using gift splitting, what is the maximum they can give without using any of their lifetime exemption in 2025?',
 '["$18,000", "$36,000", "$100,000", "$50,000"]'::jsonb,
 1,
 'With gift splitting under Section 2513, each spouse is treated as making half the gift. The annual exclusion for 2025 is $18,000 per donor per donee. With gift splitting: $18,000 × 2 spouses = $36,000 excluded from taxable gifts. The remaining $64,000 ($100,000 - $36,000) would require using their lifetime exemption or incurring gift tax.',
 'medium'),

(3, 'Estate and Gift Tax',
 'The generation-skipping transfer tax (GSTT) is designed to prevent taxpayers from:',
 '["Making gifts to their children", "Avoiding transfer taxes by skipping one or more generations in the transfer of wealth", "Transferring property to a spouse tax-free", "Contributing to 529 education savings plans"]'::jsonb,
 1,
 'The GSTT imposes an additional tax on transfers that skip a generation (e.g., grandparent to grandchild), preventing families from avoiding one layer of estate/gift tax. The GSTT applies to direct skips, taxable distributions from trusts, and taxable terminations. Each person has a GSTT exemption (equal to the estate tax exemption, approximately $13.61 million for 2025).',
 'easy'),

(3, 'Estate and Gift Tax',
 'Which of the following deductions is available when computing the taxable estate?',
 '["A deduction for charitable bequests made from the estate", "A deduction for the decedent''s income taxes paid during their lifetime", "A deduction for the decedent''s personal living expenses", "A deduction for the decedent''s Social Security taxes"]'::jsonb,
 0,
 'When computing the taxable estate, deductions include: funeral expenses, administration expenses, debts of the decedent, casualty losses during estate administration, the marital deduction (unlimited transfers to a surviving spouse), and the charitable deduction (bequests to qualified charities). Personal expenses and lifetime income taxes are not estate deductions.',
 'easy'),

(3, 'Estate and Gift Tax',
 'Portability of the estate tax exemption allows a surviving spouse to:',
 '["Transfer the deceased spouse''s unused exemption (DSUE) to their own estate, effectively doubling the exemption", "Avoid filing an estate tax return for the deceased spouse", "Claim the deceased spouse''s annual gift tax exclusion", "Transfer assets to the deceased spouse''s estate retroactively"]'::jsonb,
 0,
 'Portability under Section 2010(c)(4) allows the surviving spouse to use the deceased spouse''s unused exemption (DSUE) amount, effectively doubling the combined exemption. To elect portability, the executor must file a timely estate tax return (Form 706), even if no tax is due. The DSUE amount is the lesser of the basic exclusion amount minus the deceased spouse''s taxable estate.',
 'medium'),

(3, 'Estate and Gift Tax',
 'A taxpayer makes a present interest gift of $25,000 to a friend in 2025. What is the taxable gift amount (before applying the lifetime exemption)?',
 '["$25,000", "$7,000", "$0", "$18,000"]'::jsonb,
 1,
 'The taxable gift equals the total gift minus the annual exclusion. For 2025, the annual exclusion is $18,000. Taxable gift = $25,000 - $18,000 = $7,000. This $7,000 reduces the taxpayer''s lifetime exemption ($13.61 million for 2025). No gift tax is actually owed unless the cumulative taxable gifts exceed the lifetime exemption.',
 'easy'),

(3, 'Estate and Gift Tax',
 'Under the unlimited marital deduction, which of the following transfers between spouses is NOT eligible for the deduction?',
 '["A gift of cash from one spouse to another", "A bequest of a residence to the surviving spouse outright", "A transfer to a trust for the surviving spouse where the spouse receives income for life with a general power of appointment", "A transfer to a trust for the surviving spouse that terminates and passes to a third party without the spouse having a general power of appointment (and no QTIP election is made)"]'::jsonb,
 3,
 'The marital deduction requires the surviving spouse to receive a qualifying interest. A terminable interest (one that may terminate and pass to another person) does not qualify unless it meets specific exceptions: QTIP trust (with proper election), general power of appointment trust, or estate trust. A trust that terminates and passes to a third party without a QTIP election fails the terminable interest rule.',
 'hard'),

-- =============================================================================
-- C Corporations — 8 questions (NOLs, §382, tax-exempt orgs, UBIT)
-- =============================================================================

(3, 'C Corporations',
 'Under the Tax Cuts and Jobs Act, a C corporation''s net operating loss (NOL) arising in tax years beginning after December 31, 2017, may offset what percentage of taxable income in a carryforward year?',
 '["100% of taxable income", "80% of taxable income", "50% of taxable income", "90% of taxable income"]'::jsonb,
 1,
 'Post-TCJA NOLs (arising in tax years beginning after 2017) are limited to 80% of taxable income in the carryforward year. Pre-TCJA NOLs had a 2-year carryback and 20-year carryforward with 100% offset. Post-TCJA NOLs can be carried forward indefinitely but cannot be carried back (with limited exceptions for certain farming losses).',
 'easy'),

(3, 'C Corporations',
 'Section 382 limits the use of a corporation''s NOL carryforwards after an ownership change. The annual Section 382 limitation is calculated as:',
 '["The total NOL divided by 5 years", "The value of the loss corporation''s stock immediately before the ownership change multiplied by the long-term tax-exempt rate", "50% of the corporation''s annual taxable income", "The lesser of the NOL or $10 million"]'::jsonb,
 1,
 'The Section 382 annual limitation = FMV of the loss corporation''s stock immediately before the ownership change × the long-term tax-exempt rate (published monthly by the IRS). An ownership change occurs when one or more 5% shareholders increase their ownership by more than 50 percentage points over a 3-year testing period. This prevents trafficking in NOLs.',
 'hard'),

(3, 'C Corporations',
 'To qualify for tax-exempt status under Section 501(c)(3), an organization must:',
 '["Distribute its earnings to members annually", "Be organized and operated exclusively for religious, charitable, scientific, educational, or similar purposes, with no private inurement", "File Form 1120 as a C corporation", "Limit annual revenue to $500,000"]'::jsonb,
 1,
 'Section 501(c)(3) organizations must be organized and operated exclusively for exempt purposes (religious, charitable, scientific, educational, literary, prevention of cruelty, etc.). No part of net earnings may inure to the benefit of any private shareholder or individual. The organization may not participate in political campaigns and lobbying activity must be insubstantial.',
 'easy'),

(3, 'C Corporations',
 'A 501(c)(3) organization regularly operates an unrelated business — a gift shop selling items manufactured by a for-profit vendor. Under the Unrelated Business Income Tax (UBIT), the income from this activity is:',
 '["Tax-exempt because all income of a 501(c)(3) is exempt", "Subject to UBIT because it is a trade or business regularly carried on that is not substantially related to the organization''s exempt purpose", "Tax-exempt if the revenue is under $1,000", "Taxable only if the organization has no volunteers"]'::jsonb,
 1,
 'UBIT applies when a tax-exempt organization regularly carries on a trade or business not substantially related to its exempt purpose. The three-part test requires: (1) a trade or business, (2) regularly carried on, and (3) not substantially related to the exempt purpose. Income from a gift shop selling unrelated manufactured goods meets all three criteria and is subject to UBIT.',
 'medium'),

(3, 'C Corporations',
 'Which of the following is excluded from Unrelated Business Taxable Income (UBTI)?',
 '["Income from a regularly operated commercial parking lot", "Dividends, interest, and royalties (passive investment income)", "Revenue from advertising in the organization''s magazine", "Income from a fitness center open to the general public"]'::jsonb,
 1,
 'Section 512(b) excludes certain passive income from UBTI, including dividends, interest, annuities, royalties, and rents from real property (with exceptions for debt-financed property). Capital gains from the sale of property are also excluded. These modifications recognize that investment income, even from unrelated sources, is a traditional form of support for exempt organizations.',
 'medium'),

(3, 'C Corporations',
 'Which of the following correctly distinguishes the accumulated earnings tax (AET) from the personal holding company (PHC) tax?',
 '["The AET applies to publicly traded corporations while the PHC tax applies to private companies", "The AET is based on accumulating earnings beyond reasonable business needs, while the PHC tax targets companies where 5 or fewer individuals own more than 50% of stock and at least 60% of income is PHC income", "Both taxes apply only to S corporations", "The AET rate is 75% while the PHC rate is 20%"]'::jsonb,
 1,
 'The AET (20% rate) penalizes corporations that accumulate earnings beyond the reasonable needs of the business to help shareholders avoid dividend taxes. The PHC tax (20% rate) targets corporations meeting two tests: (1) more than 50% stock ownership by 5 or fewer individuals, and (2) at least 60% of adjusted ordinary gross income is PHC income (dividends, interest, rents, royalties). Both taxes are 20%.',
 'hard'),

(3, 'C Corporations',
 'A Section 501(c)(3) organization''s tax exemption may be revoked if the organization:',
 '["Earns more than $1 million in annual revenue", "Participates in or intervenes in a political campaign on behalf of or in opposition to any candidate for public office", "Has more than 100 employees", "Invests its endowment in publicly traded securities"]'::jsonb,
 1,
 'The absolute prohibition on political campaign intervention is one of the strictest rules for 501(c)(3) organizations. Any participation in political campaigns — including endorsing or opposing candidates, distributing campaign literature, or making political contributions — can result in loss of tax-exempt status. Lobbying is allowed but must be insubstantial.',
 'easy'),

(3, 'C Corporations',
 'A C corporation has an NOL from 2024 of $500,000. In 2025, the corporation has taxable income of $400,000 (before the NOL deduction). What is the maximum NOL deduction in 2025?',
 '["$400,000", "$320,000", "$500,000", "$250,000"]'::jsonb,
 1,
 'Post-TCJA NOLs are limited to 80% of taxable income in the carryforward year. Maximum NOL deduction = $400,000 × 80% = $320,000. The corporation pays tax on the remaining $80,000 of taxable income ($400,000 - $320,000). The unused $180,000 ($500,000 - $320,000) carries forward to future years indefinitely.',
 'medium'),

-- =============================================================================
-- S Corporations — 8 questions (reasonable comp, AAA, ENPI, loss tiers)
-- =============================================================================

(3, 'S Corporations',
 'An S corporation shareholder-employee who owns 100% of the stock takes no salary and instead receives $200,000 in distributions. The IRS may reclassify a portion of the distributions as:',
 '["Capital gains", "Reasonable compensation subject to employment taxes", "Tax-exempt income", "Return of capital"]'::jsonb,
 1,
 'The IRS requires S corporation shareholder-employees to receive reasonable compensation for services rendered. If a shareholder takes distributions instead of salary to avoid payroll taxes (FICA, Medicare), the IRS can reclassify distributions as wages. Factors include comparable salaries, duties performed, hours worked, and industry norms. Penalties and back taxes apply to reclassified amounts.',
 'easy'),

(3, 'S Corporations',
 'The Accumulated Adjustments Account (AAA) of an S corporation tracks:',
 '["The total contributions by all shareholders since incorporation", "The cumulative net income, losses, and deductions of the S corporation during the S election period, reduced by distributions", "The fair market value of corporate assets", "The amount of retained earnings from C corporation years"]'::jsonb,
 1,
 'The AAA tracks the cumulative taxable income, losses, and deductions from the S election period, reduced by distributions. It represents income already taxed to shareholders that can be distributed tax-free. AAA differs from shareholder basis — it is a corporate-level account, can go negative, and does not include tax-exempt income (which is tracked in the Other Adjustments Account).',
 'medium'),

(3, 'S Corporations',
 'An S corporation with accumulated E&P from prior C corporation years has the following: AAA of $50,000 and AE&P of $30,000. The corporation distributes $70,000 to its sole shareholder (stock basis of $80,000). How is the distribution treated?',
 '["$70,000 tax-free return of S corp income", "$50,000 tax-free from AAA, $20,000 dividend from AE&P", "$50,000 tax-free from AAA, $20,000 return of capital", "$70,000 dividend"]'::jsonb,
 1,
 'For S corps with accumulated E&P, distributions follow a specific ordering: (1) tax-free from AAA ($50,000), (2) taxable dividend from AE&P ($20,000, since remaining distribution exceeds AAA). The $20,000 from AE&P is a taxable dividend because AE&P is $30,000 (only $20,000 needed). If distribution exceeded AAA + AE&P, the excess would reduce stock basis, then be capital gain.',
 'hard'),

(3, 'S Corporations',
 'The excess net passive income tax under Section 1375 applies to an S corporation when:',
 '["The corporation has any passive income", "The corporation has accumulated E&P from C corporation years AND passive investment income exceeds 25% of gross receipts", "The corporation has more than 100 shareholders", "The corporation reports a net operating loss"]'::jsonb,
 1,
 'The Section 1375 tax applies when two conditions are met: (1) the S corporation has accumulated earnings and profits from prior C corporation years, and (2) passive investment income (dividends, interest, rents, royalties, annuities) exceeds 25% of gross receipts. If this condition persists for three consecutive years, the S election is automatically terminated.',
 'medium'),

(3, 'S Corporations',
 'An S corporation shareholder has the following: stock basis of $20,000, direct loan basis of $10,000, and a K-1 loss of $35,000. After applying the basis limitation, how is the loss allocated?',
 '["$20,000 against stock basis, then $10,000 against loan basis, with $5,000 suspended", "$30,000 deductible, $5,000 suspended", "$35,000 fully deductible", "$20,000 deductible, $15,000 suspended"]'::jsonb,
 0,
 'The S corp loss deduction first reduces stock basis to zero ($20,000), then reduces loan basis ($10,000). Total deductible = $30,000 (stock $20,000 + loan $10,000). The remaining $5,000 is suspended at the basis level and carries forward indefinitely. When basis is restored (from future income or additional contributions), the suspended loss becomes deductible. Stock basis is reduced before loan basis.',
 'medium'),

(3, 'S Corporations',
 'The four-tier loss limitation for S corporation shareholders is applied in which order?',
 '["Passive activity, at-risk, basis, excess business loss", "Basis, at-risk, passive activity, excess business loss", "At-risk, basis, passive activity, excess business loss", "Excess business loss, passive activity, at-risk, basis"]'::jsonb,
 1,
 'The four-tier loss limitation is applied in order: (1) basis limitation (stock + direct loan basis), (2) at-risk limitation (Section 465), (3) passive activity limitation (Section 469), and (4) excess business loss limitation (Section 461(l), $305,000 single / $610,000 MFJ for 2025). Losses that pass one tier must still satisfy the next. Suspended losses at each tier carry forward separately.',
 'easy'),

(3, 'S Corporations',
 'An S corporation''s tax-exempt interest income is:',
 '["Reported on the corporate tax return as taxable income", "Passed through to shareholders, increasing their stock basis but not included in their taxable income", "Subject to UBIT", "Not reported anywhere"]'::jsonb,
 1,
 'Tax-exempt income retains its character as it passes through to S corporation shareholders. It increases the shareholder''s stock basis (ensuring tax-free distributions up to that amount) but is not included in the shareholder''s taxable income. Tax-exempt income increases the Other Adjustments Account (OAA), not the AAA.',
 'medium'),

(3, 'S Corporations',
 'When an S corporation''s built-in gains tax applies (under Section 1374), it is imposed on:',
 '["All gains recognized after the S election", "Net recognized built-in gain attributable to assets held at the time of conversion from C to S status, during the recognition period", "Only inventory gains", "Gains from assets acquired after the S election"]'::jsonb,
 1,
 'The Section 1374 built-in gains tax applies to S corporations that converted from C corporation status. It taxes net recognized built-in gains (gains inherent in assets at the time of conversion) at the corporate rate (21%) during a 5-year recognition period. This prevents C corporations from converting to S status solely to avoid corporate-level tax on appreciated assets.',
 'hard'),

-- =============================================================================
-- Partnerships — 8 questions (special allocations, §704(c), §751, §754)
-- =============================================================================

(3, 'Partnerships',
 'Under Section 704(b), a partnership''s allocation of income, gain, loss, or deduction will be respected for tax purposes only if:',
 '["All partners agree to the allocation", "The allocation has substantial economic effect", "The allocation is proportional to capital contributions", "The allocation is approved by the IRS in advance"]'::jsonb,
 1,
 'Section 704(b) requires that allocations have substantial economic effect to be respected. This means: (1) the allocation must have economic effect (partner who receives the allocation bears the economic benefit or burden through capital accounts, deficit restoration obligations, and qualified income offset), and (2) the economic effect must be substantial (reasonable possibility the allocation will affect the dollar amounts received).',
 'medium'),

(3, 'Partnerships',
 'Partner A contributes land with a basis of $30,000 and FMV of $100,000 to a partnership. Under Section 704(c), when the partnership sells the land for $120,000, how is the gain allocated?',
 '["$90,000 to Partner A, remainder split among all partners per their agreement", "The $70,000 built-in gain ($100,000 - $30,000) is allocated to Partner A, plus their share of the $20,000 post-contribution gain", "All $90,000 gain split equally among partners", "The gain is allocated entirely to the non-contributing partners"]'::jsonb,
 1,
 'Under Section 704(c), the built-in gain at contribution ($100,000 FMV - $30,000 basis = $70,000) must be allocated to the contributing partner (Partner A). The post-contribution appreciation ($120,000 - $100,000 = $20,000) is allocated among all partners per the partnership agreement. This prevents shifting pre-contribution gains to non-contributing partners.',
 'hard'),

(3, 'Partnerships',
 'Under Section 751, "hot assets" in a partnership include:',
 '["Cash and marketable securities", "Unrealized receivables (including Section 1245 recapture) and substantially appreciated inventory", "Real property held for investment", "Goodwill and intangible assets"]'::jsonb,
 1,
 'Section 751 hot assets include: (1) unrealized receivables (including the right to recapture depreciation under Sections 1245 and 1250), and (2) inventory items that are substantially appreciated (FMV exceeds 120% of adjusted basis). These assets would generate ordinary income if sold by the partnership, so Section 751 ensures the selling partner recognizes ordinary income rather than capital gain.',
 'medium'),

(3, 'Partnerships',
 'Partner B sells their 25% partnership interest for $200,000. Partner B''s outside basis is $140,000. The partnership''s hot assets allocable to Partner B have a built-in ordinary income of $40,000. What is Partner B''s capital gain on the sale?',
 '["$60,000", "$20,000", "$100,000", "$0"]'::jsonb,
 1,
 'Total gain = $200,000 - $140,000 = $60,000. Under Section 751, $40,000 of the gain is recharacterized as ordinary income (attributable to hot assets). The remaining gain = $60,000 - $40,000 = $20,000 is capital gain. Section 751 ensures that the portion of gain attributable to hot assets is taxed as ordinary income, regardless of how the selling partner characterizes the transaction.',
 'medium'),

(3, 'Partnerships',
 'A Section 754 election, once made by a partnership, allows for adjustments to the basis of partnership property under:',
 '["Only Section 743(b) upon transfer of a partnership interest", "Only Section 734(b) upon distribution of partnership property", "Both Section 743(b) (transfers) and Section 734(b) (distributions)", "Section 704(c) upon contribution of property"]'::jsonb,
 2,
 'A Section 754 election allows the partnership to adjust the basis of its property under both Section 743(b) and Section 734(b). Section 743(b) adjusts basis upon a sale or exchange of a partnership interest (or on death of a partner). Section 734(b) adjusts basis upon certain distributions. The election is binding for all future years unless revoked with IRS consent.',
 'medium'),

(3, 'Partnerships',
 'Under Section 743(b), when a partner purchases a partnership interest, the basis adjustment is:',
 '["Applied to all partners'' shares of partnership assets", "A special adjustment to the transferee partner''s share of partnership property equal to the difference between their outside basis and their share of the partnership''s inside basis", "Applied only to cash and cash equivalents", "Equal to the purchase price paid for the interest"]'::jsonb,
 1,
 'The Section 743(b) adjustment equals the transferee partner''s outside basis minus their proportionate share of the partnership''s adjusted basis of its assets (inside basis). This adjustment is personal to the transferee partner and ensures they are not taxed on gain that was economically borne by the selling partner. The adjustment is allocated among partnership assets under Section 755.',
 'hard'),

(3, 'Partnerships',
 'Under Section 751(b), when a partnership distributes hot assets to a partner in exchange for their interest in non-hot assets (or vice versa), the transaction is treated as:',
 '["A tax-free distribution", "A deemed sale or exchange between the distributee partner and the partnership, with ordinary income recognized on the hot asset portion", "A capital gain transaction", "A nontaxable like-kind exchange"]'::jsonb,
 1,
 'Section 751(b) treats a disproportionate distribution of hot assets as a deemed sale or exchange. If a partner receives more or less than their proportionate share of hot assets, the excess or shortfall is treated as if the partner sold their interest in the hot assets (or non-hot assets) to the partnership. The partner recognizes ordinary income on the hot asset portion.',
 'hard'),

(3, 'Partnerships',
 'A Section 754 election is mandatory (not elective) in which of the following situations?',
 '["When a partner contributes appreciated property", "When the partnership has a substantial built-in loss (the partnership''s adjusted basis in its assets exceeds their FMV by more than $250,000) at the time of a transfer", "When the partnership earns more than $1 million in revenue", "A Section 754 election is never mandatory"]'::jsonb,
 1,
 'After the American Jobs Creation Act of 2004, a Section 743(b) basis adjustment is mandatory (even without a Section 754 election) when a partnership has a substantial built-in loss — meaning the partnership''s adjusted basis of its property exceeds FMV by more than $250,000 at the time of a transfer. Similarly, Section 734(b) adjustments are mandatory when a substantial basis reduction occurs on a distribution.',
 'hard'),

-- =============================================================================
-- Additional questions — 7 questions to reach 114 total
-- =============================================================================

(3, 'Circular 230',
 'A taxpayer files a return but omits $200,000 of gross income on a return reporting $600,000. What statute of limitations applies to IRS assessment?',
 '["Three years because the omission is less than 50%", "Six years because the omission exceeds 25% of reported gross income", "No statute of limitations because this constitutes fraud", "One year from the date of filing"]'::jsonb,
 1,
 'The six-year statute applies because the omitted amount ($200,000) exceeds 25% of the gross income reported ($600,000 × 25% = $150,000). Since $200,000 > $150,000, the extended six-year assessment period applies under Section 6501(e). The three-year statute is the general rule, and the unlimited period applies only for fraud or failure to file.',
 'medium'),

(3, 'Business Law: Contracts',
 'Under UCC Article 2, an express warranty is created when:',
 '["The seller makes an affirmation of fact or promise, provides a description, or shows a sample/model that becomes part of the basis of the bargain", "The buyer demands a warranty in writing", "The goods are sold for more than $500", "The seller is a merchant"]'::jsonb,
 0,
 'Express warranties under UCC 2-313 are created by: (1) an affirmation of fact or promise made by the seller to the buyer relating to the goods, (2) a description of the goods, or (3) a sample or model. The affirmation must become part of the basis of the bargain. No formal words like "warranty" are required, and the seller need not intend to create a warranty.',
 'easy'),

(3, 'Individual Taxation: Income',
 'A taxpayer has $10,000 of net passive losses from rental activities carried forward from the prior year. In the current year, the taxpayer has $6,000 of passive income from a different activity. What happens to the suspended loss?',
 '["$10,000 is deductible against any income", "$6,000 is offset, $4,000 remains suspended", "$10,000 remains suspended because it cannot offset income from a different activity", "$4,000 is converted to a capital loss"]'::jsonb,
 1,
 'Suspended passive losses from one activity can offset passive income from any passive activity. The $6,000 of current-year passive income absorbs $6,000 of the suspended passive loss. The remaining $4,000 continues to be suspended and carries forward to future years until offset by passive income or released upon complete disposition of the activity that generated the loss.',
 'easy'),

(3, 'Individual Taxation: Credits',
 'The Earned Income Tax Credit (EITC) is unique among major tax credits because:',
 '["It can only offset self-employment tax", "It is fully refundable — eligible taxpayers receive the credit even if they owe no tax", "It is available only to taxpayers with no children", "It phases in based on unearned income"]'::jsonb,
 1,
 'The EITC is a fully refundable credit designed to benefit low-to-moderate income working individuals and families. It phases in with earned income, reaches a maximum, plateaus, and then phases out. Because it is refundable, taxpayers receive the credit amount even if their tax liability is zero. The credit amount varies by filing status and number of qualifying children.',
 'easy'),

(3, 'Business Structures',
 'A guarantor differs from a surety in that a guarantor:',
 '["Is primarily liable along with the debtor", "Is secondarily liable — the creditor must first attempt to collect from the principal debtor before pursuing the guarantor", "Has no liability at all", "Must be a financial institution"]'::jsonb,
 1,
 'A guarantor of collection is secondarily liable, meaning the creditor must first exhaust remedies against the principal debtor (such as obtaining a judgment and attempting execution) before pursuing the guarantor. A surety, by contrast, is primarily liable along with the debtor, and the creditor can proceed against the surety immediately upon default without first pursuing the debtor.',
 'medium'),

(3, 'Property Transactions: Basis',
 'A taxpayer converts a personal automobile (cost $35,000, FMV $22,000) to business use. What is the depreciable basis?',
 '["$35,000", "$22,000", "$28,500", "$0 — personal automobiles cannot be converted to business use"]'::jsonb,
 1,
 'When personal-use property is converted to business use, the depreciable basis is the lower of the adjusted basis (cost minus any adjustments) or the FMV at the date of conversion. Since FMV ($22,000) is less than cost ($35,000), the depreciable basis is $22,000. This prevents deducting the personal decline in value. Luxury auto limits also apply.',
 'medium'),

(3, 'C Corporations',
 'An organization exempt under Section 501(c)(3) operates a thrift store staffed entirely by volunteers, selling donated merchandise. Is the thrift store income subject to UBIT?',
 '["Yes — all commercial activity is subject to UBIT", "No — the volunteer exclusion and donated goods exclusion both apply", "Yes — but only if revenue exceeds $1,000", "No — because thrift stores are specifically listed as exempt activities"]'::jsonb,
 1,
 'The thrift store income is excluded from UBIT under two statutory exclusions: (1) the volunteer exclusion (Section 513(a)(1)) — substantially all work is performed by unpaid volunteers, and (2) the donated goods exclusion (Section 513(a)(3)) — the goods sold were donated. Either exclusion alone would be sufficient. These exclusions are common in nonprofit thrift store operations.',
 'medium');
