-- =============================================================================
-- 2026 AICPA Blueprint Updates: New Quiz Questions
-- 32 questions covering 2026 Blueprint changes across all 6 sections
-- Topics: H.R. 1 tax provisions, ASC 820 fair value scope, entity-level
-- controls, accounting estimates, HIPAA/privacy, emergency change mgmt,
-- SOC standards, estate/gift exemption extensions, GILTI deduction changes
-- =============================================================================

-- =============================================================================
-- AUD — Internal Controls & Audit Evidence (5 questions: 1 easy, 3 medium, 1 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(1, 'Internal Controls',
 'Which of the following is an example of an entity-level control?',
 '["Board of directors oversight of financial reporting", "An application edit check that validates data entry", "Monthly bank reconciliation performed by accounting staff", "Segregation of duties over cash receipts processing"]'::jsonb,
 0,
 'Entity-level controls operate at a broad organizational level and set the tone for the entire control environment. Board oversight of financial reporting is a classic entity-level control because it reflects governance and monitoring at the highest level. Application edit checks, bank reconciliations, and segregation of duties over cash receipts are transaction-level or process-level controls that operate within specific business processes.',
 'medium'),

(1, 'Internal Controls',
 'If an auditor determines that entity-level controls are weak, what is the most likely impact on the auditor''s assessment of IT general controls (ITGCs)?',
 '["ITGCs are unaffected because they operate independently of entity-level controls", "The auditor cannot rely on ITGCs functioning effectively", "ITGCs must be tested twice to compensate for the weakness", "The auditor should issue an adverse opinion on internal controls"]'::jsonb,
 1,
 'Entity-level controls establish the governance framework within which all other controls — including ITGCs — operate. When entity-level controls are weak (e.g., lack of management oversight, poor tone at the top, or ineffective monitoring), the auditor cannot presume that ITGCs are functioning effectively because the environment that supports and enforces those controls is compromised. The auditor would need to expand substantive testing rather than relying on controls.',
 'hard'),

(1, 'Audit Evidence',
 'SAS No. 143 identifies three components of accounting estimates that the auditor must evaluate. Which answer correctly describes the auditor''s responsibility?',
 '["Evaluate the method only, since data and assumptions are management''s responsibility", "Evaluate data and assumptions but not the method, which is prescribed by GAAP", "Evaluate all three: methods, data, and assumptions", "Evaluate only the assumptions because they involve the most judgment"]'::jsonb,
 2,
 'Under SAS No. 143 (AU-C 540), the auditor must evaluate all three components of an accounting estimate: (1) the method or model used, (2) the data (both financial and non-financial inputs), and (3) the significant assumptions applied. All three components can introduce estimation uncertainty and potential management bias, so the auditor cannot limit evaluation to just one or two components.',
 'medium'),

(1, 'Audit Evidence',
 'In the context of accounting estimates under SAS No. 143, the "data" component refers to:',
 '["Only historical financial data from the general ledger", "Financial and non-financial inputs used in the estimation method", "Published market data from independent third-party sources only", "The final calculated amount of the estimate"]'::jsonb,
 1,
 'The data component of an accounting estimate encompasses all financial and non-financial inputs used in the estimation method. This includes internal accounting data, external market data, industry statistics, demographic information, and other inputs that feed into the model. It is not limited to general ledger data, third-party sources, or the final estimate itself.',
 'easy'),

(1, 'Audit Evidence',
 'When an auditor uses electronic confirmations instead of paper confirmations, what is the PRIMARY risk the auditor should consider?',
 '["Electronic confirmations are always less reliable than paper confirmations", "The inability to adequately verify the identity of the respondent", "Electronic confirmations cannot be used for bank balance confirmations", "Email confirmations are inadmissible as audit evidence under GAAS"]'::jsonb,
 1,
 'The primary risk with electronic confirmations is the inability to verify the identity and authority of the respondent. Unlike paper confirmations sent to verified physical addresses, electronic responses can be intercepted, spoofed, or sent by unauthorized individuals. Auditors must implement procedures to mitigate this risk, such as using secure confirmation platforms. Electronic confirmations are not inherently less reliable or inadmissible — they simply require additional identity verification controls.',
 'medium');

-- AUD total: 5 questions

-- =============================================================================
-- FAR — Fair Value (3 questions: 0 easy, 2 medium, 1 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(2, 'Fair Value',
 'Which of the following measurements is NOT within the scope of ASC 820, Fair Value Measurement?',
 '["Investment property measured at fair value under IAS 40", "Share-based payment transactions measured under ASC 718", "Financial instruments measured at fair value through earnings", "Nonfinancial assets acquired in a business combination"]'::jsonb,
 1,
 'ASC 718 (Compensation — Stock Compensation) has its own measurement framework for share-based payments. While ASC 718 uses fair value concepts, share-based payment transactions measured under ASC 718 are explicitly scoped out of ASC 820. Investment property at fair value, financial instruments at fair value, and assets acquired in business combinations all fall within or reference ASC 820.',
 'medium'),

(2, 'Fair Value',
 'ASC 820 defines fair value as:',
 '["The amount an entity would pay to acquire an asset in a current transaction", "The price received to sell an asset or paid to transfer a liability in an orderly transaction between market participants", "The replacement cost of an asset adjusted for physical deterioration", "The present value of expected future cash flows discounted at the risk-free rate"]'::jsonb,
 1,
 'ASC 820 defines fair value as the exit price — the price that would be received to sell an asset or paid to transfer a liability in an orderly transaction between market participants at the measurement date. This is not an entry price (acquisition cost), replacement cost, or a specific present value calculation. The exit price concept is fundamental to the ASC 820 framework and distinguishes it from other measurement bases.',
 'hard'),

(2, 'Fair Value',
 'Net realizable value (NRV) used for inventory measurement under ASC 330 is:',
 '["A specific application of the ASC 820 fair value hierarchy", "Outside the scope of ASC 820 because NRV uses a different measurement concept", "Required to follow the Level 1, 2, 3 input hierarchy of ASC 820", "Identical to fair value less costs to sell under ASC 820"]'::jsonb,
 1,
 'Net realizable value for inventory under ASC 330 is outside the scope of ASC 820. NRV represents the estimated selling price in the ordinary course of business less reasonably predictable costs of completion, disposal, and transportation. This is an entity-specific measurement that differs from the market-participant-based exit price concept in ASC 820. ASC 820 explicitly excludes certain measurements that use different concepts, including inventory NRV.',
 'medium');

-- FAR total: 3 questions

-- =============================================================================
-- REG — Property Transactions, Individual Taxation (8 questions: 2 easy, 4 medium, 2 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(3, 'Property Transactions: Basis',
 'Under the One Big Beautiful Bill Act (H.R. 1), what is the bonus depreciation rate for qualified property placed in service in 2026?',
 '["60%", "80%", "100%", "120%"]'::jsonb,
 2,
 'H.R. 1 (the One Big Beautiful Bill Act) restored 100% bonus depreciation for qualified property. Under the original TCJA phase-down schedule, bonus depreciation had dropped to 60% for 2024 and 40% for 2025. H.R. 1 retroactively reinstated the full 100% first-year deduction for qualified property placed in service after January 19, 2025.',
 'medium'),

(3, 'Property Transactions: Basis',
 'H.R. 1 restored 100% bonus depreciation effective for property placed in service after:',
 '["December 31, 2024", "January 19, 2025", "January 1, 2026", "The date the bill was signed into law"]'::jsonb,
 1,
 'H.R. 1 retroactively restored 100% bonus depreciation for qualified property placed in service after January 19, 2025. This date was chosen to align with the start of the new administration. Property placed in service between January 1 and January 19, 2025 remains subject to the prior phase-down rate.',
 'hard'),

(3, 'Property Transactions: Basis',
 'What is a key advantage of 100% bonus depreciation over a Section 179 deduction?',
 '["Bonus depreciation applies to used property while Section 179 does not", "There is no taxable income limitation for bonus depreciation", "Bonus depreciation has a higher annual dollar cap than Section 179", "Bonus depreciation is available only for real property"]'::jsonb,
 1,
 'A key advantage of bonus depreciation is that there is no taxable income limitation. Section 179 can only reduce taxable income to zero — any excess is carried forward. Bonus depreciation can create or increase a net operating loss (NOL) because it has no income limitation. Both provisions apply to new and used property (since TCJA), and bonus depreciation has no dollar cap at all (making it more favorable than the Section 179 dollar limit).',
 'medium'),

(3, 'Individual Taxation: Deductions',
 'Under H.R. 1, a taxpayer may deduct interest on auto loans for vehicles that are:',
 '["Any vehicle regardless of origin", "Manufactured in the United States", "Electric or hybrid vehicles only", "Leased rather than purchased"]'::jsonb,
 1,
 'H.R. 1 introduced a new above-the-line deduction for interest paid on auto loans, but it applies only to vehicles that are manufactured in the United States. This provision is designed to incentivize the purchase of domestically produced automobiles. The deduction is not limited to electric or hybrid vehicles and does not apply to leased vehicles or vehicles manufactured abroad.',
 'medium'),

(3, 'Individual Taxation: Deductions',
 'Under H.R. 1, cash tips received by qualifying service workers are:',
 '["Fully taxable as ordinary income for all purposes", "Not included in gross income for income tax purposes", "Exempt from both income tax and FICA tax", "Taxable only if they exceed $10,000 per year"]'::jsonb,
 1,
 'H.R. 1 provides that cash tips received by qualifying service workers (such as restaurant servers, bartenders, and similar tipped employees) are not included in gross income for federal income tax purposes. However, tips remain subject to FICA (Social Security and Medicare) withholding. This is an income tax exclusion only — not a complete exemption from all federal taxes.',
 'easy'),

(3, 'Individual Taxation: Deductions',
 'The auto loan interest deduction introduced by H.R. 1 is limited to:',
 '["$5,000 of interest per year", "$10,000 of interest per year", "$15,000 of interest per year", "No annual dollar limit"]'::jsonb,
 1,
 'H.R. 1 caps the auto loan interest deduction at $10,000 per year. The deduction applies to interest paid on loans used to purchase vehicles manufactured in the United States. Any interest paid above the $10,000 annual limit is not deductible under this provision.',
 'medium'),

(3, 'Individual Taxation: Income',
 'Which of the following is an above-the-line deduction under H.R. 1?',
 '["Mortgage interest on a primary residence", "Auto loan interest on a U.S.-manufactured vehicle", "State and local income taxes", "Charitable contributions to qualified organizations"]'::jsonb,
 1,
 'H.R. 1 introduced a new above-the-line (for AGI) deduction for interest on auto loans used to purchase vehicles manufactured in the United States. Mortgage interest and state/local taxes are itemized (below-the-line) deductions. Charitable contributions are also itemized deductions for most taxpayers. Being above-the-line means the auto loan interest deduction is available regardless of whether the taxpayer itemizes.',
 'easy'),

(3, 'Individual Taxation: Income',
 'Under H.R. 1''s tip income provisions, tips excluded from income tax are still subject to:',
 '["No additional federal taxes", "FICA and Medicare withholding", "Alternative minimum tax only", "Self-employment tax only"]'::jsonb,
 1,
 'While H.R. 1 excludes qualifying cash tips from gross income for income tax purposes, tips remain subject to FICA (Social Security) and Medicare withholding. The exclusion is specifically an income tax provision — it does not eliminate payroll tax obligations. Employers must still withhold and report FICA/Medicare taxes on tip income.',
 'medium');

-- REG total: 8 questions

-- =============================================================================
-- ISC — Change Management, Privacy/HIPAA, SOC Engagements (8 questions: 3 easy, 4 medium, 1 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(5, 'System Availability and Change Management',
 'In IT operations, an emergency change is best defined as:',
 '["Any change requested by senior management", "A change addressing a critical issue requiring immediate action outside normal procedures", "A routine patch applied during a maintenance window", "A planned upgrade that has been expedited"]'::jsonb,
 1,
 'An emergency change is a change that must be implemented immediately to address a critical issue — such as a security breach, system outage, or data loss risk — that cannot wait for the normal change management approval process. Emergency changes bypass standard procedures due to urgency but require additional post-implementation controls to maintain governance.',
 'easy'),

(5, 'System Availability and Change Management',
 'After implementing an emergency change in a production environment, the MOST important control is:',
 '["Immediately reverting the change to the prior state", "Mandatory post-implementation review and documentation", "Waiting for the next scheduled change advisory board meeting", "Notifying all end users of the change via email"]'::jsonb,
 1,
 'The most important control after an emergency change is mandatory post-implementation review and documentation. Because emergency changes bypass normal approval and testing processes, they carry elevated risk. A post-implementation review ensures the change is properly documented, tested retroactively, approved after the fact, and assessed for any unintended consequences. Simply reverting, waiting, or notifying users does not address the governance gap.',
 'medium'),

(5, 'System Availability and Change Management',
 'An organization''s metrics show that emergency changes represent 40% of all production changes. This high ratio most likely indicates:',
 '["The organization has excellent incident response capabilities", "The standard change management process is too slow or is being circumvented", "Emergency changes are properly classified and well-controlled", "The production environment is unusually stable"]'::jsonb,
 1,
 'A high ratio of emergency changes to total changes (such as 40%) is a red flag indicating that the standard change management process may be too cumbersome, too slow, or is being circumvented. Organizations with effective change management typically see emergency changes at 5-10% of total changes. A high ratio suggests process improvement is needed, not that the organization is responding well.',
 'hard'),

(5, 'System Availability and Change Management',
 'A Configuration Management Database (CMDB) maintains:',
 '["Only software license keys and expiration dates", "Records of all IT assets and their configurations and relationships", "Backup schedules and disaster recovery procedures only", "User access permissions and password policies"]'::jsonb,
 1,
 'A CMDB maintains records of all IT assets (called configuration items or CIs) along with their configurations, attributes, and relationships to other CIs. This includes hardware, software, network devices, and their interdependencies. The CMDB is a foundational element of IT service management that supports change management, incident response, and impact analysis.',
 'medium'),

(5, 'Privacy Requirements and Data Protection',
 'Under HIPAA, PHI stands for:',
 '["Private Health Indicators", "Protected Health Information", "Personal HIPAA Identifiers", "Public Health Infrastructure"]'::jsonb,
 1,
 'PHI stands for Protected Health Information. Under HIPAA, PHI includes any individually identifiable health information that is created, received, maintained, or transmitted by a covered entity or business associate. This includes medical records, billing information, and any data that can identify a patient and relates to their health condition, treatment, or payment.',
 'easy'),

(5, 'Privacy Requirements and Data Protection',
 'The HIPAA minimum necessary standard requires covered entities to:',
 '["Encrypt all patient data using AES-256 encryption", "Limit PHI access to the minimum needed for the specific job function", "Delete all PHI after 30 days of inactivity", "Share PHI only with government agencies"]'::jsonb,
 1,
 'The HIPAA minimum necessary standard requires covered entities to limit the use, disclosure, and request of PHI to the minimum amount necessary to accomplish the intended purpose. This means employees should only have access to the PHI they need for their specific job function — not all patient records. This principle of least privilege is a core privacy protection under HIPAA.',
 'medium'),

(5, 'Privacy Requirements and Data Protection',
 'Which of the following entities would be classified as a HIPAA business associate?',
 '["A patient who requests their own medical records", "A cloud hosting provider that stores patient records for a hospital", "A hospital employee who handles patient intake", "A pharmacist who dispenses medication to patients"]'::jsonb,
 1,
 'A business associate is a person or entity that performs functions or activities on behalf of a covered entity that involve the use or disclosure of PHI. A cloud hosting provider storing patient records for a hospital is a classic business associate — it handles PHI on behalf of the covered entity but is not itself a covered entity. Hospital employees are part of the covered entity''s workforce, and patients are not business associates.',
 'easy'),

(5, 'SOC Engagements',
 'SOC 1 engagements examining controls at a service organization relevant to user entities'' financial reporting are now performed under which standard?',
 '["AT-C 105, Concepts Common to All Attestation Engagements", "AT-C 205, Examination Engagements", "AT-C 320, Reporting on an Examination of Controls at a Service Organization", "SSAE 18, Attestation Standards: Clarification and Recodification"]'::jsonb,
 2,
 'SOC 1 engagements are performed under AT-C Section 320, Reporting on an Examination of Controls at a Service Organization Relevant to User Entities'' Internal Control Over Financial Reporting. This standard replaced the earlier SSAE 16 guidance and is part of the AICPA''s clarified attestation standards framework. AT-C 320 specifically addresses the SOC 1 engagement, while AT-C 205 covers general examination engagements.',
 'medium');

-- ISC total: 8 questions

-- =============================================================================
-- TCP — Wealth Transfer, Entity Planning, International Tax (5 questions: 1 easy, 2 medium, 2 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(6, 'Wealth Transfer and Gifting Strategies',
 'H.R. 1 extended the elevated estate and gift tax lifetime exemption through:',
 '["2026", "2027", "2029", "Permanently — no sunset date"]'::jsonb,
 2,
 'H.R. 1 extended the elevated estate and gift tax lifetime exemption (originally set to sunset after 2025 under TCJA) through 2029. Without this extension, the exemption would have reverted to approximately $7 million (indexed for inflation) starting in 2026. The extension gives high-net-worth individuals additional years to utilize the higher exemption amount in estate and gift tax planning.',
 'medium'),

(6, 'Wealth Transfer and Gifting Strategies',
 'Without the extension provided by H.R. 1, the estate and gift tax lifetime exemption would have sunset after 2025 to approximately:',
 '["$3.5 million", "$5 million indexed for inflation", "$7 million indexed for inflation", "$10 million with no inflation adjustment"]'::jsonb,
 2,
 'The TCJA roughly doubled the estate and gift tax lifetime exemption from approximately $5.49 million to $11.18 million (2018). This increase was scheduled to sunset after December 31, 2025, reverting to the pre-TCJA level of approximately $5 million indexed for inflation from 2011 — which by 2026 would have been approximately $7 million. H.R. 1 extended the higher exemption through 2029, preventing this reversion.',
 'hard'),

(6, 'Entity Choice and Planning',
 'H.R. 1 extended the TCJA individual tax provisions, which include:',
 '["A flat 25% tax rate for all individual taxpayers", "The 37% top marginal rate and wider tax brackets", "Elimination of the standard deduction", "Repeal of the alternative minimum tax for individuals"]'::jsonb,
 1,
 'H.R. 1 extended the TCJA individual income tax provisions that were set to sunset after 2025. Key provisions include the 37% top marginal rate (down from 39.6% pre-TCJA), wider tax brackets, the nearly doubled standard deduction, and the $10,000 SALT deduction cap. The AMT was not repealed — it was retained with higher exemption amounts.',
 'medium'),

(6, 'International Tax',
 'For tax years beginning after December 31, 2025, the Section 250 deduction for Global Intangible Low-Taxed Income (GILTI) is:',
 '["50%", "37.5%", "25%", "21%"]'::jsonb,
 1,
 'Under the TCJA, the Section 250 GILTI deduction was 50% for tax years beginning before 2026, then scheduled to drop to 37.5% for tax years beginning after December 31, 2025. This reduction means the effective tax rate on GILTI increases. The 37.5% deduction applied to a 21% corporate rate yields an effective GILTI rate of approximately 13.125%.',
 'medium'),

(6, 'International Tax',
 'After the Section 250 deduction is reduced to 37.5% for tax years beginning after 2025, GILTI is effectively taxed at what rate (assuming a 21% corporate rate)?',
 '["10.5%", "13.125%", "15.75%", "21%"]'::jsonb,
 1,
 'With a 37.5% Section 250 deduction, the taxable portion of GILTI is 62.5% (100% - 37.5%). Applying the 21% corporate rate: 21% x 62.5% = 13.125% effective rate. This is an increase from the prior effective rate of 10.5% (when the deduction was 50%: 21% x 50% = 10.5%). The increased rate is designed to keep GILTI taxation closer to the OECD Pillar Two global minimum tax framework.',
 'easy');

-- TCP total: 5 questions

-- =============================================================================
-- BAR — Financial Valuation Methods / Fair Value (3 questions: 1 easy, 1 medium, 1 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(4, 'Financial Valuation Methods',
 'ASC 820 fair value measurement and business valuation discounted cash flow (DCF) analysis:',
 '["Are identical methods governed by the same standards", "Use similar techniques but operate in different contexts — GAAP measurement versus investment analysis", "Cannot both use the income approach", "Are mutually exclusive and should never be compared"]'::jsonb,
 1,
 'Both ASC 820 fair value measurement and business valuation DCF analysis use income-approach techniques (discounting expected cash flows), but they operate in fundamentally different contexts. ASC 820 measures fair value for financial reporting purposes using market-participant assumptions, while business valuation DCF analysis is used for investment decisions, M&A, and litigation. The techniques overlap, but the standards, assumptions, and purposes differ.',
 'medium'),

(4, 'Financial Valuation Methods',
 'Which of the following measurements is scoped OUT of ASC 820, Fair Value Measurement?',
 '["Goodwill impairment testing under ASC 350", "Net realizable value of inventory under ASC 330", "Fair value of plan assets under ASC 715 for pension accounting", "Fair value of contingent consideration in a business combination"]'::jsonb,
 1,
 'Net realizable value (NRV) of inventory under ASC 330 is not a fair value measurement and is therefore outside the scope of ASC 820. NRV is an entity-specific measure (estimated selling price less costs to complete, dispose, and transport), whereas ASC 820 fair value is based on market-participant assumptions. Goodwill impairment, pension plan assets, and contingent consideration all reference ASC 820 for fair value measurement.',
 'easy'),

(4, 'Financial Valuation Methods',
 'In a business combination under ASC 805, acquired identifiable intangible assets such as customer relationships and trade names are measured at:',
 '["Historical cost to the acquiree", "Fair value under ASC 820 at the acquisition date", "Book value on the acquiree''s balance sheet", "Replacement cost with no depreciation adjustment"]'::jsonb,
 1,
 'ASC 805 requires that all identifiable assets acquired and liabilities assumed in a business combination be measured at fair value as of the acquisition date, using the ASC 820 framework. This includes intangible assets such as customer relationships, trade names, patents, and technology — even if they were not previously recognized on the acquiree''s balance sheet. Historical cost, book value, and unadjusted replacement cost are not appropriate measurement bases for acquisition accounting.',
 'hard');

-- BAR total: 3 questions

-- =============================================================================
-- Grand total: 5 (AUD) + 3 (FAR) + 8 (REG) + 8 (ISC) + 5 (TCP) + 3 (BAR) = 32 questions
-- =============================================================================
