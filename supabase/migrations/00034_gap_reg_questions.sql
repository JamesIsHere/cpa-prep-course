-- =============================================================================
-- Migration: Gap Coverage — REG Questions
-- Section: REG — Taxation and Regulation (section_id = 3)
-- New questions: 40 (2 topics × 20)
-- Purpose: Fill 2 blueprint groups that had empty questionTopics
-- =============================================================================

-- =============================================================================
-- Government Regulation of Business — 20 questions (6 easy, 8 medium, 6 hard)
-- correct_index distribution: 5×0, 5×1, 5×2, 5×3
-- =============================================================================

-- Q1: easy, correct_index=0
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Under the Securities Act of 1933, which of the following is the primary purpose of requiring a registration statement for a public offering of securities?',
 '["To ensure full disclosure of material information to potential investors", "To guarantee that the securities being offered are a sound investment", "To set the price at which the securities may be sold", "To certify that the issuing company will be profitable"]'::jsonb,
 0,
 'The Securities Act of 1933 is a disclosure statute. Its primary purpose is to ensure that investors receive material information about securities being offered for public sale so they can make informed investment decisions. The SEC does not evaluate the merits of an investment, guarantee profitability, or set offering prices.',
 'easy');

-- Q2: medium, correct_index=1
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Which of the following exemptions under the Securities Act of 1933 allows a company to sell securities to an unlimited number of accredited investors but no more than 35 non-accredited investors within a 12-month period?',
 '["Rule 504 (Regulation D)", "Rule 506(b) (Regulation D)", "Regulation A+", "Section 4(a)(2) private placement"]'::jsonb,
 1,
 'Rule 506(b) of Regulation D permits an issuer to sell securities to an unlimited number of accredited investors and up to 35 non-accredited investors (who must be sophisticated) without registering the offering. Rule 504 has a dollar cap and does not distinguish between investor types in the same way. Regulation A+ has its own framework, and Section 4(a)(2) is the statutory exemption from which Regulation D derives.',
 'medium');

-- Q3: hard, correct_index=2
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'A corporate officer purchased shares of the company''s stock based on material, nonpublic information about an upcoming merger. An investor who sold shares during the same period seeks damages. Under which provision would the investor most likely bring a claim?',
 '["Section 11 of the Securities Act of 1933", "Section 12(a)(2) of the Securities Act of 1933", "Section 10(b) and Rule 10b-5 of the Securities Exchange Act of 1934", "Section 16(b) of the Securities Exchange Act of 1934"]'::jsonb,
 2,
 'Section 10(b) and Rule 10b-5 of the Securities Exchange Act of 1934 prohibit fraud in connection with the purchase or sale of securities, including insider trading based on material nonpublic information. Section 11 applies to material misstatements in registration statements. Section 12(a)(2) covers misstatements in prospectuses. Section 16(b) allows recovery of short-swing profits by insiders but does not require scienter or a showing that the insider possessed material nonpublic information.',
 'hard');

-- Q4: easy, correct_index=3
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Under the Fair Labor Standards Act (FLSA), which of the following employee classifications is generally exempt from the overtime pay requirement?',
 '["A factory assembly-line worker earning $18 per hour", "A retail store cashier earning $15 per hour", "A janitorial worker paid on an hourly basis", "A salaried executive who regularly directs two or more employees"]'::jsonb,
 3,
 'Under the FLSA, employees who meet the duties test and salary threshold for the executive, administrative, or professional exemptions are exempt from overtime. An executive must have a primary duty of managing the enterprise or a recognized department, must regularly direct two or more full-time employees, and must be paid on a salary basis at or above the threshold. Hourly production, retail, and janitorial workers are generally nonexempt.',
 'easy');

-- Q5: medium, correct_index=0
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Under the Sarbanes-Oxley Act (SOX), which of the following is a responsibility of the Public Company Accounting Oversight Board (PCAOB)?',
 '["Establishing auditing standards for audits of public companies", "Setting generally accepted accounting principles (GAAP)", "Approving the registration statements of public offerings", "Licensing individual CPAs to practice public accounting"]'::jsonb,
 0,
 'The PCAOB was created by SOX to oversee the audits of public companies. Its responsibilities include registering accounting firms, establishing auditing and quality control standards, conducting inspections, and enforcing compliance. GAAP is set by the FASB, registration statements are reviewed by the SEC, and CPA licensing is handled by state boards of accountancy.',
 'medium');

-- Q6: hard, correct_index=1
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'A CEO of a publicly traded company is required to certify the company''s annual report under Section 302 of the Sarbanes-Oxley Act. Which of the following best describes what the CEO must certify?',
 '["That the financial statements are free of all errors and irregularities", "That the signing officer has reviewed the report, the report does not contain material misstatements or omissions, and the financial statements fairly present the company''s financial condition", "That the company''s auditors have found no material weaknesses in internal controls", "That the company''s stock price will not decline as a result of the reported results"]'::jsonb,
 1,
 'Section 302 of SOX requires the CEO and CFO to personally certify that they have reviewed the report, the report does not contain any untrue statement of material fact or omit material facts, and the financial statements fairly present in all material respects the financial condition and results of operations. The certification does not guarantee error-free statements, does not shift the auditor''s responsibilities, and has no bearing on stock price outcomes.',
 'hard');

-- Q7: medium, correct_index=2
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Title VII of the Civil Rights Act of 1964 prohibits employment discrimination based on which of the following?',
 '["Age over 40", "Disability status", "Race, color, religion, sex, or national origin", "Veteran status"]'::jsonb,
 2,
 'Title VII prohibits employment discrimination based on race, color, religion, sex, or national origin. Age discrimination (over 40) is addressed by the Age Discrimination in Employment Act (ADEA). Disability discrimination is covered by the Americans with Disabilities Act (ADA). Veteran status protections come from the Uniformed Services Employment and Reemployment Rights Act (USERRA) and related laws.',
 'medium');

-- Q8: easy, correct_index=3
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Under the Family and Medical Leave Act (FMLA), an eligible employee is entitled to how many weeks of unpaid, job-protected leave per year for qualifying reasons?',
 '["4 weeks", "8 weeks", "16 weeks", "12 weeks"]'::jsonb,
 3,
 'The FMLA entitles eligible employees to up to 12 weeks of unpaid, job-protected leave per year for qualifying reasons such as the birth or adoption of a child, the employee''s own serious health condition, or the care of an immediate family member with a serious health condition. The employer must maintain the employee''s health insurance during the leave period.',
 'easy');

-- Q9: medium, correct_index=0
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Under the Sherman Antitrust Act, which of the following business practices is treated as a per se violation?',
 '["Price fixing among competitors", "Exclusive dealing contracts between a manufacturer and a retailer", "Tying arrangements involving products with significant market power", "Mergers that may substantially lessen competition"]'::jsonb,
 0,
 'Horizontal price fixing — an agreement among competitors to set prices — is a per se violation of Section 1 of the Sherman Act, meaning it is automatically illegal without any inquiry into its competitive effects. Exclusive dealing, tying arrangements, and mergers are generally analyzed under the rule of reason or under the Clayton Act, considering market power and competitive impact.',
 'medium');

-- Q10: hard, correct_index=1
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'An investor purchased shares in an initial public offering and later discovered that the registration statement contained material misstatements of fact. The investor seeks recovery under Section 11 of the Securities Act of 1933. Which of the following is true regarding the investor''s burden of proof?',
 '["The investor must prove that the defendant acted with scienter (intent to deceive)", "The investor need not prove reliance on the misstatement if the shares were purchased in the initial offering", "The investor must prove that the defendant was aware of the misstatement at the time of the offering", "The investor must prove that the misstatement caused a decline in the market price before filing suit"]'::jsonb,
 1,
 'Section 11 imposes strict liability for material misstatements or omissions in a registration statement. A purchaser in the initial offering is presumed to have relied on the registration statement and need not prove actual reliance or scienter. Defendants (other than the issuer) may assert a due diligence defense. The investor must show a material misstatement existed in the registration statement and that damages were suffered, but loss causation only becomes relevant if the defendant raises it as an affirmative defense.',
 'hard');

-- Q11: easy, correct_index=2
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Which federal statute requires publicly traded companies to maintain accurate books and records and a system of adequate internal accounting controls?',
 '["The Sherman Antitrust Act", "The Fair Labor Standards Act", "The Foreign Corrupt Practices Act (FCPA)", "The Dodd-Frank Act"]'::jsonb,
 2,
 'The Foreign Corrupt Practices Act (FCPA) has two main provisions: the anti-bribery provisions (prohibiting bribes to foreign officials) and the books-and-records provisions (requiring issuers to maintain accurate books, records, and internal controls). The Sherman Act covers antitrust, the FLSA covers wages and hours, and Dodd-Frank focuses on financial regulation reform enacted after the 2008 crisis.',
 'easy');

-- Q12: medium, correct_index=3
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Under Section 404 of the Sarbanes-Oxley Act, which of the following statements is correct regarding internal controls over financial reporting?',
 '["Only the external auditor is responsible for evaluating internal controls", "Internal control assessments are required only during the company''s first year of public trading", "Companies are not required to disclose material weaknesses to the public", "Management must include an internal control report in the annual report, and the external auditor must attest to management''s assessment"]'::jsonb,
 3,
 'Section 404 requires management of public companies to assess the effectiveness of internal controls over financial reporting and include an internal control report in the annual report. For accelerated filers, the external auditor must attest to and report on management''s assessment. Both management and the auditor share responsibility, the requirement is annual (not just the first year), and material weaknesses must be disclosed.',
 'medium');

-- Q13: hard, correct_index=2
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'An accounting firm audits a publicly traded company and also provides internal audit outsourcing services to the same client. Under the Sarbanes-Oxley Act, which of the following best describes the compliance issue?',
 '["There is no compliance issue because internal audit outsourcing is a permitted non-audit service", "The arrangement is permitted provided the audit committee pre-approves the engagement", "The arrangement violates SOX because internal audit outsourcing is a prohibited non-audit service for audit clients", "The arrangement is permitted if the fees for non-audit services do not exceed those for the audit"]'::jsonb,
 2,
 'Section 201 of the Sarbanes-Oxley Act specifically prohibits accounting firms from providing certain non-audit services to their audit clients, including internal audit outsourcing services. Other prohibited services include bookkeeping, financial information system design, appraisal or valuation services, actuarial services, and management functions. Audit committee pre-approval cannot override the statutory prohibition on these enumerated services.',
 'hard');

-- Q14: easy, correct_index=0
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Under the Occupational Safety and Health Act (OSHA), employers are required to:',
 '["Provide a workplace free from recognized hazards that are likely to cause death or serious physical harm", "Purchase personal health insurance for all employees", "Guarantee zero workplace injuries per year", "Allow employees to refuse any task they consider unpleasant"]'::jsonb,
 0,
 'The general duty clause of OSHA requires employers to furnish a workplace free from recognized hazards that are causing or likely to cause death or serious physical harm. OSHA does not require employers to provide health insurance (that falls under the ACA for applicable large employers), guarantee zero injuries, or allow employees to refuse tasks merely because they are unpleasant — though employees may refuse tasks presenting imminent danger.',
 'easy');

-- Q15: medium, correct_index=1
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Which of the following is a requirement for a valid Regulation A+ (Tier 2) offering under the Securities Act of 1933?',
 '["The offering must be limited to accredited investors only", "The offering circular must be filed with and qualified by the SEC before sales begin", "The maximum offering amount is $5 million within a 12-month period", "The securities are automatically listed on a national exchange upon qualification"]'::jsonb,
 1,
 'Under Regulation A+ Tier 2, the issuer must file an offering circular (similar to a simplified registration statement) with the SEC, and the SEC must qualify it before sales can be made. Tier 2 allows offerings up to $75 million in a 12-month period and permits sales to both accredited and non-accredited investors (with investment limits for non-accredited investors). The securities are not automatically exchange-listed.',
 'medium');

-- Q16: hard, correct_index=3
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'A publicly traded company''s proxy statement fails to disclose a material conflict of interest involving a board member who voted on a related-party transaction. Which of the following best describes the legal exposure?',
 '["No liability exists because proxy disclosures are voluntary under the 1934 Act", "Liability arises only if the SEC initiates an enforcement action within one year", "The company is liable only if the stock price declined as a direct result of the proxy vote", "The company and responsible officers may face liability under Section 14(a) of the Securities Exchange Act of 1934 and Rule 14a-9 for materially misleading proxy solicitations"]'::jsonb,
 3,
 'Section 14(a) of the Securities Exchange Act of 1934 and Rule 14a-9 prohibit materially misleading statements or omissions in proxy solicitations. Failure to disclose a material conflict of interest in a proxy statement can give rise to both SEC enforcement actions and private rights of action by shareholders. Proxy disclosures are mandatory (not voluntary), and liability is not limited to stock-price declines or short statutes of limitation.',
 'hard');

-- Q17: medium, correct_index=2
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Under the Securities Exchange Act of 1934, which of the following companies is required to file periodic reports (Form 10-K, 10-Q, 8-K) with the SEC?',
 '["Any company that has issued debt securities, regardless of size", "Only companies listed on the New York Stock Exchange", "A company with a class of equity securities registered under Section 12 or that has made a registered public offering under the Securities Act of 1933", "Only companies with annual revenues exceeding $100 million"]'::jsonb,
 2,
 'Companies must file periodic reports with the SEC if they have a class of securities registered under Section 12 of the 1934 Act (which applies to companies listed on a national exchange or with total assets exceeding $10 million and a class of equity held by 2,000+ holders) or if they have made a registered offering under the 1933 Act and meet the reporting threshold. The requirement is not limited to NYSE-listed companies, all debt issuers, or revenue-based criteria alone.',
 'medium');

-- Q18: hard, correct_index=0
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Under the Clayton Act, which of the following activities is specifically addressed as potentially anticompetitive?',
 '["Mergers and acquisitions that may substantially lessen competition or tend to create a monopoly", "All forms of price competition between rival firms", "Charging different prices to different retail customers for consumer goods", "Entering into exclusive licensing agreements for patented technology"]'::jsonb,
 0,
 'Section 7 of the Clayton Act prohibits mergers and acquisitions where the effect may be to substantially lessen competition or tend to create a monopoly. The Clayton Act also addresses price discrimination (Robinson-Patman Act amendment), tying arrangements, and exclusive dealing, but these are analyzed for anticompetitive effects rather than being per se illegal. General price competition is procompetitive and not addressed, and patent licensing is primarily governed by patent law.',
 'hard');

-- Q19: medium, correct_index=3
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Under workers'' compensation statutes, which of the following best describes the coverage provided to employees?',
 '["Coverage is limited to injuries caused by the employer''s negligence", "Employees must file a lawsuit against the employer to receive benefits", "Benefits are available only to full-time employees who have worked at least one year", "Benefits are provided for work-related injuries regardless of fault, and in exchange the employee generally gives up the right to sue the employer in tort"]'::jsonb,
 3,
 'Workers'' compensation is a no-fault system. Employees who suffer work-related injuries or illnesses receive statutory benefits (medical expenses, disability payments, rehabilitation) regardless of who was at fault. In exchange, the employer is generally immune from tort liability for workplace injuries (the exclusive remedy doctrine). Coverage typically begins on the first day of employment and is not limited by the employee''s work schedule.',
 'medium');

-- Q20: easy, correct_index=1
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Government Regulation of Business',
 'Under the Securities Act of 1933, which document must be provided to investors before or at the time of sale of a registered securities offering?',
 '["A Form 8-K filing", "A prospectus", "An auditor''s management letter", "A Schedule 13D"]'::jsonb,
 1,
 'Section 5 of the Securities Act of 1933 requires that a prospectus — which is part of the registration statement containing material information about the issuer and the securities — be delivered to investors before or at the time of sale. Form 8-K is a current report under the 1934 Act, the management letter is a private communication from the auditor, and Schedule 13D relates to beneficial ownership disclosures.',
 'easy');

-- =============================================================================
-- Alternative Minimum Tax — 20 questions (6 easy, 8 medium, 6 hard)
-- correct_index distribution: 5×0, 5×1, 5×2, 5×3
-- =============================================================================

-- Q21: easy, correct_index=0
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'What is the purpose of the Alternative Minimum Tax (AMT) for individual taxpayers?',
 '["To ensure that taxpayers who benefit from certain tax preferences pay at least a minimum amount of tax", "To replace the regular income tax for high-income taxpayers", "To provide an additional tax credit to low-income taxpayers", "To impose a flat tax rate on all capital gains"]'::jsonb,
 0,
 'The AMT was enacted to ensure that individuals who benefit significantly from tax preferences, deductions, and exclusions still pay at least a minimum level of federal income tax. It operates as a parallel tax system — taxpayers compute both their regular tax and the tentative minimum tax (TMT) and pay the higher of the two amounts. It does not replace the regular tax, provide credits to low-income taxpayers, or impose a flat rate on capital gains.',
 'easy');

-- Q22: medium, correct_index=1
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'When computing Alternative Minimum Taxable Income (AMTI) for an individual, which of the following is added back as a tax preference item?',
 '["Charitable contribution deductions", "Private activity bond interest that is otherwise excluded from regular taxable income", "Alimony payments made under a pre-2019 divorce agreement", "Standard deduction taken in lieu of itemized deductions"]'::jsonb,
 1,
 'Interest on certain private activity bonds issued after August 7, 1986, is tax-exempt for regular income tax purposes but must be added back as a tax preference item when computing AMTI. Charitable contributions are generally allowed for both regular tax and AMT purposes. Alimony under pre-2019 agreements is deductible for regular tax and is not an AMT adjustment. The standard deduction''s treatment depends on the taxpayer''s filing method.',
 'medium');

-- Q23: hard, correct_index=2
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'In 2026, a single taxpayer has regular taxable income of $200,000 and AMTI of $350,000 before the AMT exemption. The AMT exemption for single filers is $88,100, with a phase-out beginning at $578,150. What is the taxpayer''s AMT exemption amount?',
 '["$0", "$44,050", "$88,100", "$175,000"]'::jsonb,
 2,
 'The AMT exemption for a single filer in 2026 is $88,100, and the phase-out begins when AMTI exceeds $578,150. Since this taxpayer''s AMTI of $350,000 is well below the $578,150 phase-out threshold, the full $88,100 exemption is available. The exemption is reduced by 25 cents for every dollar of AMTI above the threshold, but no reduction applies here.',
 'hard');

-- Q24: easy, correct_index=3
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'A taxpayer computes regular tax liability of $45,000 and a tentative minimum tax (TMT) of $42,000. What is the taxpayer''s AMT liability?',
 '["$42,000", "$45,000", "$87,000", "$0"]'::jsonb,
 3,
 'The AMT is the excess of the tentative minimum tax (TMT) over the regular tax. If the TMT ($42,000) is less than the regular tax ($45,000), the AMT is zero. The taxpayer simply pays the regular tax of $45,000. AMT only applies when the TMT exceeds the regular tax liability.',
 'easy');

-- Q25: medium, correct_index=0
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'An individual exercises incentive stock options (ISOs) during the year but does not sell the underlying shares. For AMT purposes, which of the following is correct?',
 '["The excess of the stock''s fair market value over the exercise price at the date of exercise is an AMT adjustment", "No AMT adjustment is required until the shares are sold", "The full fair market value of the shares is included in AMTI", "The exercise of ISOs is treated the same for both regular tax and AMT purposes"]'::jsonb,
 0,
 'When an employee exercises incentive stock options (ISOs), there is no regular income tax recognition at exercise (assuming holding period requirements are met). However, for AMT purposes, the bargain element — the excess of the stock''s fair market value over the exercise price on the date of exercise — must be included as an adjustment in computing AMTI. This is one of the most common items that triggers AMT liability for individuals.',
 'medium');

-- Q26: hard, correct_index=1
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'In 2026, a married couple filing jointly has AMTI of $850,000 before the exemption. The MFJ AMT exemption is $137,000 with a phase-out threshold of $1,156,300. What is the couple''s available AMT exemption?',
 '["$0", "$137,000", "$68,500", "$60,250"]'::jsonb,
 1,
 'The AMT exemption phase-out for married filing jointly begins when AMTI exceeds $1,156,300 in 2026. Since this couple''s AMTI of $850,000 is below the phase-out threshold, the full exemption of $137,000 is available. The exemption would be reduced by 25% of the amount by which AMTI exceeds the threshold, but no phase-out applies at this income level.',
 'hard');

-- Q27: medium, correct_index=2
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'Which of the following deductions allowed for regular tax purposes must be added back when computing AMTI for an individual?',
 '["Home mortgage interest on acquisition indebtedness for a primary residence", "Investment interest expense to the extent of net investment income", "State and local tax (SALT) deductions", "Deductible contributions to a traditional IRA"]'::jsonb,
 2,
 'State and local tax (SALT) deductions — including state income taxes and property taxes — are not allowed when computing AMTI and must be added back. Under TCJA, SALT is already capped at $10,000 for regular tax purposes, which reduces but does not eliminate the AMT impact. Home mortgage interest on acquisition debt (up to limits) and investment interest expense are generally allowed for both regular tax and AMT. Traditional IRA deductions are not an AMT adjustment item.',
 'medium');

-- Q28: easy, correct_index=3
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'The AMT uses a two-tier rate structure for individual taxpayers. What are the two AMT tax rates?',
 '["10% and 25%", "15% and 35%", "22% and 37%", "26% and 28%"]'::jsonb,
 3,
 'The individual AMT uses two rates: 26% on the first portion of AMTI above the exemption amount (up to a specified threshold) and 28% on AMTI exceeding that threshold. These rates are significantly simpler than the regular tax''s seven-bracket structure. For 2026, the 28% rate applies to AMTI (above the exemption) exceeding $232,600 for single filers and $232,600 for married filing jointly.',
 'easy');

-- Q29: medium, correct_index=0
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'A taxpayer paid AMT of $12,000 in a prior year due to the exercise of incentive stock options. In the current year, the taxpayer''s regular tax exceeds the tentative minimum tax by $8,000. How much of the minimum tax credit can the taxpayer use in the current year?',
 '["$8,000", "$12,000", "$0", "$4,000"]'::jsonb,
 0,
 'The minimum tax credit (MTC) allows taxpayers who paid AMT in a prior year due to deferral items (such as ISO exercises) to use that credit in future years when their regular tax exceeds the tentative minimum tax. The credit is limited to the excess of the regular tax over the TMT. Here, the excess is $8,000, so the taxpayer can use $8,000 of the $12,000 credit. The remaining $4,000 carries forward to future years.',
 'medium');

-- Q30: hard, correct_index=2
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'A taxpayer placed depreciable personal property in service during the year and elected to use the 200% declining balance method for regular tax purposes. For AMT purposes, which depreciation method must generally be used for property placed in service before bonus depreciation applies?',
 '["Straight-line over the regular tax recovery period", "Units-of-production method", "150% declining balance method over the class life of the asset", "No depreciation deduction is allowed for AMT purposes"]'::jsonb,
 2,
 'For AMT purposes, tangible personal property that uses the 200% declining balance method for regular tax must generally be depreciated using the 150% declining balance method over the property''s class life (which may differ from the regular tax recovery period). The difference between regular tax depreciation and AMT depreciation is an adjustment item added back (or subtracted) in computing AMTI. However, under current law, 100% bonus depreciation eliminates this adjustment for most assets placed in service during the bonus depreciation window.',
 'hard');

-- Q31: easy, correct_index=1
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'For purposes of the AMT, which of the following best distinguishes a "preference item" from an "adjustment"?',
 '["Preference items reduce AMTI while adjustments increase it", "Preference items are always added to taxable income, while adjustments can be either positive or negative", "Preference items are deductible for AMT purposes, while adjustments are not", "There is no practical difference; the terms are interchangeable"]'::jsonb,
 1,
 'Tax preference items are always added to regular taxable income when computing AMTI — they only increase AMTI. Adjustments, by contrast, can be either positive (increasing AMTI) or negative (decreasing AMTI), depending on whether the AMT treatment results in a larger or smaller amount than the regular tax treatment. Examples of preferences include private activity bond interest and the percentage depletion excess. Adjustments include depreciation differences and ISO exercise spreads.',
 'easy');

-- Q32: easy, correct_index=3
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'Which of the following individual taxpayers is MOST likely to be subject to AMT in 2026?',
 '["A retiree with only Social Security income and a small pension", "A single taxpayer earning $50,000 in wages with no itemized deductions", "A married couple with two children earning $80,000 with only the standard deduction", "A high-income taxpayer who exercised a large block of incentive stock options during the year"]'::jsonb,
 3,
 'The AMT most commonly affects taxpayers with large AMT preference items or adjustments. The exercise of incentive stock options (ISOs) creates a significant AMT adjustment equal to the bargain element, which can push a high-income taxpayer''s AMTI well above the exemption threshold. Taxpayers with only wages, the standard deduction, or modest income are unlikely to trigger AMT because their regular tax typically exceeds the tentative minimum tax.',
 'easy');

-- Q33: hard, correct_index=0
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'A single taxpayer''s AMTI is $700,000 before the exemption in 2026. The AMT exemption for single filers is $88,100 and begins phasing out at $578,150. The phase-out rate is 25% of AMTI in excess of the threshold. What is the reduced AMT exemption?',
 '["$57,637", "$88,100", "$30,463", "$0"]'::jsonb,
 0,
 'The phase-out reduces the exemption by 25% of the amount AMTI exceeds the threshold. AMTI excess = $700,000 - $578,150 = $121,850. Reduction = $121,850 x 25% = $30,462.50, rounded to $30,463. Reduced exemption = $88,100 - $30,463 = $57,637. Since the reduction ($30,463) is less than the full exemption ($88,100), the taxpayer retains a partial exemption of $57,637.',
 'hard');

-- Q34: medium, correct_index=1
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'Under current law, which of the following statements about the corporate AMT is correct?',
 '["Corporations compute AMT using the same 26%/28% rate structure as individuals", "The traditional corporate AMT was repealed by the Tax Cuts and Jobs Act of 2017, but a new 15% corporate alternative minimum tax on book income was enacted by the Inflation Reduction Act for very large corporations", "All C corporations must compute and pay AMT annually", "The corporate AMT rate is a flat 20% applied to adjusted current earnings"]'::jsonb,
 1,
 'The Tax Cuts and Jobs Act of 2017 repealed the traditional corporate AMT (which used a 20% rate applied to AMTI with adjustments for adjusted current earnings). The Inflation Reduction Act of 2022 introduced a new 15% corporate alternative minimum tax (CAMT) on adjusted financial statement income, but it applies only to corporations with average annual adjusted financial statement income exceeding $1 billion over a three-year period. Most C corporations are no longer subject to any form of AMT.',
 'medium');

-- Q35: hard, correct_index=2
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'A taxpayer has a $15,000 minimum tax credit carryforward from prior years. In the current year, the taxpayer''s regular tax is $60,000 and the tentative minimum tax is $58,000. The taxpayer also has $3,000 in general business credits available. In what order are these credits applied, and how much minimum tax credit can be used?',
 '["MTC is applied first; the full $15,000 can be used", "General business credits are applied first; the full $15,000 MTC can be used", "General business credits are applied first; the MTC is limited to $2,000 (the excess of regular tax over TMT after other credits)", "No credits can be used because the TMT nearly equals the regular tax"]'::jsonb,
 2,
 'General business credits are applied before the minimum tax credit in the ordering of nonrefundable credits. The MTC is limited to the excess of regular tax liability over the tentative minimum tax. Starting with regular tax of $60,000 and TMT of $58,000, the gross excess is $2,000. General business credits of $3,000 reduce the regular tax to $57,000, which is now below the TMT. However, the MTC limitation is computed based on the pre-credit excess: regular tax ($60,000) minus TMT ($58,000) = $2,000. The general business credits reduce the available room, but the MTC can still offset up to $2,000 of regular tax above the TMT floor.',
 'hard');

-- Q36: easy, correct_index=3
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'Which of the following items is NOT a common AMT preference item or adjustment for individual taxpayers?',
 '["Excess of accelerated depreciation over AMT depreciation", "Interest on private activity bonds", "Excess of percentage depletion over the adjusted basis of the property", "Wages and salary income"]'::jsonb,
 3,
 'Wages and salary income are included in both regular taxable income and AMTI with no adjustment — they are not a preference item or adjustment. Common AMT items include the depreciation difference between regular tax and AMT methods, tax-exempt interest on private activity bonds, the excess of percentage depletion over adjusted basis, and the bargain element on ISO exercises.',
 'easy');

-- Q37: medium, correct_index=3
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'A taxpayer exercised incentive stock options in Year 1, triggering $50,000 of AMT. The taxpayer sold the ISO shares in Year 2 at a gain. How does the prior AMT payment affect the taxpayer''s Year 2 tax computation?',
 '["The AMT paid in Year 1 is lost and provides no future benefit", "The taxpayer may amend the Year 1 return to eliminate the AMT", "The gain in Year 2 is exempt from regular tax due to the prior AMT payment", "The taxpayer may claim a minimum tax credit in Year 2 to the extent the regular tax exceeds the tentative minimum tax"]'::jsonb,
 3,
 'When a taxpayer pays AMT due to timing (deferral) items like ISO exercises, the AMT paid generates a minimum tax credit (MTC) that can be carried forward indefinitely. In Year 2, when the taxpayer recognizes the gain for regular tax purposes (but not for AMT, since AMT already recognized it at exercise), the regular tax will likely exceed the TMT, allowing the MTC to be used. The credit is not lost, and the taxpayer does not need to amend prior returns.',
 'medium');

-- Q38: hard, correct_index=0
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'A married couple filing jointly has AMTI of $1,704,300 before the AMT exemption in 2026. The MFJ AMT exemption is $137,000 and phases out at 25 cents per dollar of AMTI above $1,156,300. What is their AMT exemption?',
 '["$0", "$68,500", "$137,000", "$34,000"]'::jsonb,
 0,
 'The phase-out reduces the exemption by 25% of the excess of AMTI over the threshold. Excess = $1,704,300 - $1,156,300 = $548,000. Reduction = $548,000 x 25% = $137,000. Since the reduction ($137,000) equals the full exemption ($137,000), the exemption is completely phased out to $0. The exemption is fully eliminated when AMTI reaches $1,156,300 + ($137,000 / 0.25) = $1,156,300 + $548,000 = $1,704,300.',
 'hard');

-- Q39: medium, correct_index=1
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'Under the Tax Cuts and Jobs Act (TCJA), which of the following changes reduced the number of individual taxpayers subject to AMT?',
 '["The elimination of the AMT entirely for individual taxpayers", "The increased AMT exemption amount and higher phase-out threshold, combined with the $10,000 SALT deduction cap that limited a major AMT adjustment", "The reduction of the AMT rate from 28% to 15%", "The repeal of all tax preference items from the AMT computation"]'::jsonb,
 1,
 'The TCJA significantly increased the AMT exemption amounts and raised the phase-out thresholds, which shielded more taxpayers from AMT. Additionally, the $10,000 cap on SALT deductions for regular tax purposes meant that the SALT add-back for AMT was much smaller (limited to $10,000 rather than unlimited amounts). Together, these changes dramatically reduced the number of individual taxpayers affected by AMT. The TCJA did not eliminate individual AMT, reduce the rates, or repeal preference items.',
 'medium');

-- Q40: medium, correct_index=2
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Alternative Minimum Tax',
 'A single taxpayer''s AMTI (after exemption) is $250,000 in 2026. The 26% AMT rate applies to the first $232,600 of AMTI above the exemption, and the 28% rate applies to the excess. What is the taxpayer''s tentative minimum tax (before credits)?',
 '["$65,000", "$70,000", "$65,348", "$67,200"]'::jsonb,
 2,
 'TMT = (26% x $232,600) + (28% x ($250,000 - $232,600)) = $60,476 + (28% x $17,400) = $60,476 + $4,872 = $65,348. The 26% rate applies to the first $232,600 of AMTI above the exemption, and the 28% rate applies to the remaining $17,400.',
 'medium');
