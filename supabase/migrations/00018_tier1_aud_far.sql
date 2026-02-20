-- =============================================================================
-- Tier 1 Gap Fill: AUD + FAR (Session 2)
-- AUD: 1 lesson (Government Auditing Standards), 10 questions
-- FAR: 2 lessons (Contingencies, Fair Value), 20 questions
-- =============================================================================

-- Insert new lessons
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (1, 'Government Auditing Standards', '13-government-auditing', 'aud/13-government-auditing', 13, false),
  (2, 'Contingencies and Commitments', '17-contingencies', 'far/17-contingencies', 17, false),
  (2, 'Fair Value Measurements', '18-fair-value', 'far/18-fair-value', 18, false);

-- =============================================================================
-- AUD: Government Auditing Standards (10 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(1, 'Government Auditing Standards',
 'Government Auditing Standards (the Yellow Book) are issued by which organization?',
 '["The AICPA Auditing Standards Board", "The U.S. Government Accountability Office (GAO)", "The Securities and Exchange Commission (SEC)", "The Public Company Accounting Oversight Board (PCAOB)"]'::jsonb,
 1,
 'Government Auditing Standards (also called the Yellow Book or GAGAS) are issued by the U.S. Government Accountability Office (GAO). The AICPA issues GAAS, the SEC oversees securities regulation, and the PCAOB sets standards for public company audits.',
 'easy'),

(1, 'Government Auditing Standards',
 'Under the Uniform Guidance, a non-federal entity is required to have a single audit when it expends federal awards of at least:',
 '["$500,000", "$750,000", "$1,000,000", "$250,000"]'::jsonb,
 1,
 'The Single Audit Act, as implemented by the Uniform Guidance (2 CFR Part 200), requires a single audit when a non-federal entity expends $750,000 or more in federal awards during its fiscal year.',
 'easy'),

(1, 'Government Auditing Standards',
 'Which of the following is a type of engagement that exists under GAGAS but has no equivalent under AICPA GAAS?',
 '["Financial statement audit", "Agreed-upon procedures engagement", "Performance audit", "Review engagement"]'::jsonb,
 2,
 'Performance audits are unique to GAGAS. They evaluate program effectiveness, economy, and efficiency. Financial audits, agreed-upon procedures, and reviews all exist under AICPA standards as well.',
 'easy'),

(1, 'Government Auditing Standards',
 'Under GAGAS, auditors must complete how many hours of continuing professional education every two years?',
 '["40 hours total", "80 hours total, with 24 hours related to government auditing", "120 hours total", "60 hours total, with 20 hours in government topics"]'::jsonb,
 1,
 'GAGAS requires 80 hours of CPE every two years, with at least 24 hours directly related to the government environment or government auditing. At least 20 hours must be completed in each year of the two-year period.',
 'medium'),

(1, 'Government Auditing Standards',
 'A GAGAS financial audit requires the auditor to issue reports in addition to the opinion on the financial statements. Which of the following additional reports is required?',
 '["A report on the entity''s operating efficiency", "A report on internal control over financial reporting and on compliance with laws and regulations", "A management letter with recommendations for business improvements", "A report comparing the entity''s performance to industry benchmarks"]'::jsonb,
 1,
 'GAGAS requires additional reports on internal control over financial reporting (including significant deficiencies and material weaknesses) and on compliance with laws, regulations, contracts, and grant agreements. These go beyond the standard GAAS opinion.',
 'medium'),

(1, 'Government Auditing Standards',
 'In a single audit, the auditor selects major programs for compliance testing using a risk-based approach. Which of the following correctly describes the major program determination process?',
 '["All federal programs must be tested regardless of size", "Only programs exceeding $1,000,000 are tested", "Programs are classified as Type A or Type B based on expenditure thresholds, and risk assessment determines which are major programs", "The entity selects which programs the auditor will test"]'::jsonb,
 2,
 'The major program determination uses a risk-based approach: programs are first classified as Type A (above the threshold) or Type B (below). Risk assessment is applied to determine which programs become major programs. The entity does not select its own major programs.',
 'medium'),

(1, 'Government Auditing Standards',
 'A performance audit finding under GAGAS should include which of the following elements?',
 '["Only the condition and the auditor''s recommendation", "Condition, criteria, cause, and effect", "A materiality assessment and sampling methodology", "The audit opinion and basis for conclusions"]'::jsonb,
 1,
 'Performance audit findings include four elements: condition (what exists), criteria (what should exist), cause (why the condition differs from criteria), and effect (the consequence or impact). This structure is specific to GAGAS performance audits.',
 'medium'),

(1, 'Government Auditing Standards',
 'Which of the following nonaudit services is generally PROHIBITED under GAGAS independence requirements but may be permissible under AICPA standards for non-issuers?',
 '["Providing tax return preparation services", "Preparing financial statements from the entity''s trial balance", "Providing advisory services on accounting standards", "Assisting with recruitment of non-management personnel"]'::jsonb,
 1,
 'GAGAS independence requirements are more restrictive than AICPA standards. Under GAGAS, preparing financial statements from a client''s trial balance is considered a management function and is prohibited. The AICPA permits this service for non-issuers under certain conditions with appropriate safeguards.',
 'hard'),

(1, 'Government Auditing Standards',
 'The single audit reporting package must be submitted to the Federal Audit Clearinghouse within:',
 '["60 days after the end of the fiscal year", "The earlier of 30 days after receiving the auditor''s report or 9 months after fiscal year-end", "6 months after the end of the fiscal year", "12 months after the end of the fiscal year"]'::jsonb,
 1,
 'The Uniform Guidance requires the reporting package to be submitted to the Federal Audit Clearinghouse within the earlier of 30 days after receipt of the auditor''s report or 9 months after the end of the fiscal year.',
 'hard'),

(1, 'Government Auditing Standards',
 'In a single audit, the Schedule of Expenditures of Federal Awards (SEFA) serves which purpose?',
 '["It replaces the entity''s financial statements for federal reporting purposes", "It lists all federal awards expended during the audit period and supports the major program determination", "It provides a reconciliation between GAAP and budgetary basis accounting", "It documents the auditor''s compliance testing procedures and results"]'::jsonb,
 1,
 'The SEFA is a supplementary schedule that lists all federal awards expended during the audit period. It provides the basis for determining major programs and is a required component of the single audit reporting package. It does not replace financial statements or document audit procedures.',
 'hard');

-- =============================================================================
-- FAR: Contingencies (10 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(2, 'Contingencies',
 'Under ASC 450, a loss contingency should be accrued when the loss is:',
 '["Reasonably possible and the amount can be estimated", "Probable and the amount can be reasonably estimated", "Remote but the amount is known with certainty", "Probable regardless of whether the amount can be estimated"]'::jsonb,
 1,
 'ASC 450-20 requires accrual of a loss contingency when two conditions are met: (1) it is probable that a loss has been incurred and (2) the amount can be reasonably estimated. If the loss is probable but not estimable, disclosure is required but no accrual is made.',
 'easy'),

(2, 'Contingencies',
 'A company estimates that a probable loss contingency will result in a loss between $200,000 and $500,000. No amount within the range is a better estimate than any other. What amount should be accrued?',
 '["$200,000", "$350,000", "$500,000", "No accrual — disclose only"]'::jsonb,
 0,
 'When a range of loss is probable and no single amount is a better estimate than any other, ASC 450 requires accrual of the minimum amount of the range ($200,000). The entity must also disclose that the loss could be as high as $500,000.',
 'easy'),

(2, 'Contingencies',
 'How should a gain contingency be reported when the gain is considered probable?',
 '["Accrue the gain and recognize it in income", "Disclose in the notes but do not accrue", "Report as other comprehensive income", "No reporting is required for gain contingencies"]'::jsonb,
 1,
 'Gain contingencies are not recognized until the gain is realized or virtually certain. When a gain is probable (but not yet realized), disclosure in the notes is appropriate, but accrual is not permitted. This asymmetric treatment reflects the conservatism principle.',
 'easy'),

(2, 'Contingencies',
 'A lawsuit was filed against a company on January 15, 2026, for events that occurred on November 10, 2025. The company''s fiscal year ends December 31, 2025. How should this be evaluated?',
 '["Ignore it because the lawsuit was filed after the balance sheet date", "Evaluate as a contingency as of December 31, 2025, because the underlying event occurred before the balance sheet date", "Disclose as a Type II subsequent event only", "Record as a 2026 event only"]'::jsonb,
 1,
 'The date that determines the reporting period for a contingency is the date of the underlying event, not the date the lawsuit is filed. Since the cause of action occurred on November 10, 2025 (before year-end), the contingency must be evaluated as of December 31, 2025.',
 'medium'),

(2, 'Contingencies',
 'A company has a purchase commitment to buy inventory at $80 per unit when the current market price has declined to $65 per unit. The commitment is for 5,000 units and the decline is other-than-temporary. What is the appropriate journal entry?',
 '["No entry required until the inventory is received", "Debit Inventory $325,000; Credit Accounts Payable $325,000", "Debit Loss on Purchase Commitment $75,000; Credit Accrued Loss on Purchase Commitment $75,000", "Debit Cost of Goods Sold $75,000; Credit Inventory $75,000"]'::jsonb,
 2,
 'When a purchase commitment price exceeds current market value and the decline is other-than-temporary, the loss must be recognized: ($80 − $65) × 5,000 = $75,000. The entry debits Loss on Purchase Commitment and credits Accrued Loss on Purchase Commitment.',
 'medium'),

(2, 'Contingencies',
 'An entity is identified as a potentially responsible party (PRP) for environmental contamination. The entity estimates cleanup costs of $3,000,000 and expects to recover $1,000,000 from its insurance carrier (recovery is probable). How should this be reported on the balance sheet?',
 '["Environmental liability of $2,000,000 (net of insurance)", "Environmental liability of $3,000,000 and insurance receivable of $1,000,000 (reported gross)", "Environmental liability of $3,000,000 only — insurance recovery is not recognized until received", "No liability until cleanup actually begins"]'::jsonb,
 1,
 'Environmental remediation liabilities and expected insurance recoveries are reported gross. The liability of $3,000,000 is recorded in full, and the probable insurance recovery of $1,000,000 is recorded as a separate receivable. Netting is not permitted.',
 'medium'),

(2, 'Contingencies',
 'A company is defending against a patent infringement lawsuit. Legal counsel advises that an unfavorable outcome is reasonably possible, with an estimated loss of $1,500,000 to $2,500,000. What is the proper accounting treatment?',
 '["Accrue $1,500,000 as the minimum of the range", "Accrue $2,000,000 as the midpoint of the range", "Disclose the nature of the contingency and the range of possible loss in the notes", "No accrual or disclosure is required"]'::jsonb,
 2,
 'When a loss is reasonably possible (not probable), no accrual is made. However, disclosure is required, including the nature of the contingency and an estimate of the possible loss or range of loss. Here, the company discloses the $1,500,000 to $2,500,000 range.',
 'medium'),

(2, 'Contingencies',
 'Under ASC 460, how should a financial guarantee be initially measured?',
 '["At zero because no payment has been made", "At the expected value of payments the guarantor expects to make", "At the fair value of the guarantee obligation (stand-ready obligation)", "At the maximum potential amount of future payments"]'::jsonb,
 2,
 'ASC 460 requires initial recognition of a guarantee at its fair value (the stand-ready obligation). This represents the fair value of undertaking the obligation to stand ready to perform over the term of the guarantee, not the expected or maximum payment amount.',
 'hard'),

(2, 'Contingencies',
 'A company accrued a litigation liability of $800,000 (the minimum of an estimated range of $800,000 to $1,200,000). At the next reporting date, the company''s attorneys now believe the most likely outcome is a settlement of $1,000,000. What adjustment should be made?',
 '["No adjustment — the original estimate was reasonable", "Increase the accrual by $200,000 to reflect the best estimate of $1,000,000", "Increase the accrual by $400,000 to the maximum of the range", "Reverse the entire accrual and reclassify as disclosure only"]'::jsonb,
 1,
 'When a specific amount within a range becomes a better estimate, the accrual should be adjusted to that best estimate. The company should increase the accrued liability from $800,000 to $1,000,000, recording an additional $200,000 in litigation loss.',
 'hard'),

(2, 'Contingencies',
 'Which of the following contingencies would most likely require disclosure even though the likelihood is considered remote?',
 '["A minor customer complaint about product quality", "A guarantee of the indebtedness of another entity", "A possible change in the corporate tax rate", "A potential warranty claim on a low-value item"]'::jsonb,
 1,
 'Guarantees of the indebtedness of others require disclosure regardless of the probability of loss. ASC 460 mandates disclosure of the nature and terms of the guarantee, the maximum potential amount of future payments, and any recourse provisions, even when the likelihood of payment is remote.',
 'hard');

-- =============================================================================
-- FAR: Fair Value (10 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(2, 'Fair Value',
 'Under ASC 820, fair value is defined as:',
 '["The cost to acquire an asset in the current market", "The price that would be received to sell an asset or paid to transfer a liability in an orderly transaction between market participants", "The replacement cost of an asset adjusted for depreciation", "The net present value of expected future cash flows from an asset"]'::jsonb,
 1,
 'ASC 820 defines fair value as an exit price — the price received to sell an asset or paid to transfer a liability in an orderly transaction between market participants at the measurement date. It is not an entry price, replacement cost, or NPV calculation.',
 'easy'),

(2, 'Fair Value',
 'Which of the following is an example of a Level 1 input in the fair value hierarchy?',
 '["A quoted price for a similar corporate bond in an active market", "The closing stock price for an exchange-traded equity security", "A discounted cash flow model using projected revenue growth", "An internal model for a complex derivative"]'::jsonb,
 1,
 'Level 1 inputs are quoted prices (unadjusted) in active markets for identical assets or liabilities. The closing stock price on an exchange for a publicly traded equity security is the most common example of a Level 1 input.',
 'easy'),

(2, 'Fair Value',
 'A fair value measurement uses both observable yield curves (Level 2) and significant unobservable projected cash flows (Level 3). How is this measurement classified?',
 '["Level 1", "Level 2", "Level 3", "Level 2.5 (blended)"]'::jsonb,
 2,
 'A fair value measurement is categorized at the lowest level of the hierarchy for which any significant input falls. Since the unobservable projected cash flows are a significant Level 3 input, the entire measurement is classified as Level 3.',
 'easy'),

(2, 'Fair Value',
 'Which valuation approach converts expected future cash flows into a single present value?',
 '["Market approach", "Income approach", "Cost approach", "Comparable transaction approach"]'::jsonb,
 1,
 'The income approach converts future amounts (cash flows or earnings) to a single present value using discounting techniques. The market approach uses prices from comparable transactions, and the cost approach uses replacement cost adjusted for obsolescence.',
 'medium'),

(2, 'Fair Value',
 'Under ASC 825 (the fair value option), when a company elects to measure a financial liability at fair value, how is the change in fair value attributable to the entity''s own credit risk reported?',
 '["In net income along with all other fair value changes", "In other comprehensive income (OCI)", "As a direct adjustment to retained earnings", "It is not recognized until the liability is settled"]'::jsonb,
 1,
 'For liabilities measured under the fair value option, changes attributable to instrument-specific credit risk are reported in OCI. All other fair value changes (e.g., from market interest rate movements) are reported in net income. This prevents entities from recognizing income gains when their creditworthiness deteriorates.',
 'medium'),

(2, 'Fair Value',
 'A company measures its investment portfolio at fair value. Trading securities that were previously valued using Level 1 inputs are now valued using Level 2 inputs because the market for those securities has become inactive. This transfer must be:',
 '["Disclosed, including the reason for the transfer", "Recorded retroactively by restating prior period financial statements", "Reported as an error correction", "Ignored since the inputs changed but the measurement is the same"]'::jsonb,
 0,
 'ASC 820 requires disclosure of transfers between Level 1 and Level 2, including the amounts and reasons for the transfers. A market becoming inactive is a common reason for a transfer from Level 1 to Level 2. Prior periods are not restated.',
 'medium'),

(2, 'Fair Value',
 'A company values a building using the cost approach. The replacement cost of the building is $5,000,000, physical deterioration is estimated at $800,000, and functional obsolescence is $200,000. What is the fair value?',
 '["$5,000,000", "$4,200,000", "$4,000,000", "$4,800,000"]'::jsonb,
 2,
 'Under the cost approach, fair value equals replacement cost minus physical deterioration and all forms of obsolescence: $5,000,000 − $800,000 − $200,000 = $4,000,000.',
 'medium'),

(2, 'Fair Value',
 'Which of the following financial instruments is NOT eligible for the fair value option under ASC 825?',
 '["A note receivable from a customer", "A corporate bond held as an investment", "An investment in a consolidated subsidiary", "A financial guarantee"]'::jsonb,
 2,
 'The fair value option cannot be elected for investments in subsidiaries that are consolidated. Other exclusions include interests in consolidated VIEs, pension/OPEB obligations, and financial assets/liabilities under lease accounting.',
 'hard'),

(2, 'Fair Value',
 'For Level 3 fair value measurements, ASC 820 requires which of the following disclosures that is NOT required for Level 1 or Level 2 measurements?',
 '["The fair value at the reporting date", "The valuation technique used", "A reconciliation (roll-forward) of beginning and ending balances", "The level in the fair value hierarchy"]'::jsonb,
 2,
 'Level 3 measurements require a roll-forward reconciliation showing beginning balance, purchases, sales, gains/losses in earnings, gains/losses in OCI, and transfers in/out. This disclosure is specific to Level 3 due to the reliance on unobservable inputs.',
 'hard'),

(2, 'Fair Value',
 'When determining fair value, an entity should measure fair value using the assumptions that market participants would use. In the absence of a principal market, the entity should use:',
 '["The market where the entity most frequently transacts", "The most advantageous market", "The market with the lowest transaction costs", "Any active market the entity can access"]'::jsonb,
 1,
 'ASC 820 requires the entity to determine the principal market (greatest volume and activity) first. If no principal market exists, the entity uses the most advantageous market — the one that maximizes the amount received for an asset or minimizes the amount paid to transfer a liability, after considering transaction costs.',
 'hard');
