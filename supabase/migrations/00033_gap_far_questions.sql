-- =============================================================================
-- Migration: Gap Coverage — FAR Questions
-- Section: FAR — Financial Accounting and Reporting (section_id = 2)
-- New questions: 80 (4 topics × 20)
-- Purpose: Fill 4 blueprint groups that had empty questionTopics
-- =============================================================================

-- =============================================================================
-- Topic 1: Conceptual Framework and Standards (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- correct_index distribution: 5×0, 5×1, 5×2, 5×3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'According to the FASB Conceptual Framework, what is the primary objective of general-purpose financial reporting?',
 '["To provide information useful to existing and potential investors, lenders, and other creditors in making resource allocation decisions", "To determine the taxable income of an entity", "To provide information exclusively for management decision-making", "To calculate the liquidation value of an entity"]'::jsonb,
 0,
 'SFAC No. 8 (as amended) states the primary objective of general-purpose financial reporting is to provide financial information about the reporting entity that is useful to existing and potential investors, lenders, and other creditors in making decisions about providing resources to the entity. Tax determination, internal management reporting, and liquidation values are not the primary objective.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'Which qualitative characteristic of financial information ensures that different knowledgeable and independent observers could reach consensus that a particular depiction is a faithful representation?',
 '["Relevance", "Verifiability", "Timeliness", "Comparability"]'::jsonb,
 1,
 'Verifiability means that different knowledgeable and independent observers could reach consensus, although not necessarily complete agreement, that a particular depiction is a faithful representation. It is an enhancing qualitative characteristic that supports the fundamental characteristics of relevance and faithful representation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'Under the FASB Conceptual Framework, which of the following is a fundamental qualitative characteristic of useful financial information?',
 '["Timeliness", "Comparability", "Faithful representation", "Understandability"]'::jsonb,
 2,
 'The two fundamental qualitative characteristics are relevance and faithful representation. Timeliness, comparability, verifiability, and understandability are enhancing qualitative characteristics that improve the usefulness of information that is already relevant and faithfully represented.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'Which element of financial statements is defined as an increase in equity from peripheral or incidental transactions?',
 '["Revenue", "Expense", "Comprehensive income", "Gain"]'::jsonb,
 3,
 'Gains are increases in equity (net assets) from peripheral or incidental transactions and from all other events affecting the entity except those from revenues or investments by owners. Revenues arise from an entity''s ongoing major or central operations, while gains arise from peripheral activities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'The GAAP hierarchy under ASC 105 establishes that the most authoritative source of U.S. GAAP for nongovernmental entities is:',
 '["FASB Accounting Standards Codification (ASC)", "AICPA Accounting Interpretations", "FASB Concepts Statements", "Industry practice widely recognized as generally accepted"]'::jsonb,
 0,
 'The FASB ASC is the single authoritative source of U.S. GAAP for nongovernmental entities (other than SEC guidance for public companies). AICPA interpretations, FASB Concepts Statements, and industry practices are nonauthoritative and may be considered only when the ASC does not address a transaction.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'Which of the following best describes the concept of "relevance" in the FASB Conceptual Framework?',
 '["Information that is free from error and complete", "Information capable of making a difference in the decisions made by users", "Information that can be independently verified", "Information that is presented in a clear and concise manner"]'::jsonb,
 1,
 'Relevance means the information is capable of making a difference in the decisions made by users. Relevant financial information has predictive value, confirmatory value, or both. Freedom from error describes faithful representation, independent verification describes verifiability, and clear presentation describes understandability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'Under the FASB Conceptual Framework, faithful representation requires that financial information possess which three attributes?',
 '["Predictive value, confirmatory value, and materiality", "Relevance, timeliness, and comparability", "Completeness, neutrality, and freedom from error", "Verifiability, timeliness, and understandability"]'::jsonb,
 2,
 'Faithful representation requires that information be complete (includes all necessary information), neutral (free from bias in selection or presentation), and free from error (no errors or omissions in the description and no errors in the process used to produce the reported information). The other options list enhancing characteristics or components of relevance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'FASB Concepts Statement No. 8 identifies two constraints on financial reporting. The cost constraint limits reporting to information where the benefits justify the costs. What is the other constraint?',
 '["Conservatism", "Industry practice", "There is only one constraint — cost", "Materiality"]'::jsonb,
 3,
 'Materiality is an entity-specific aspect of relevance that acts as a filter — information is material if omitting or misstating it could influence decisions. Under the revised Conceptual Framework, materiality is considered a component of relevance rather than a separate constraint, but cost remains the pervasive constraint. Note: some older sources list materiality as a constraint alongside cost; the current framework treats it as entity-specific relevance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'The going concern assumption in financial reporting presumes that:',
 '["The entity will continue in operation long enough to carry out its existing objectives and commitments", "The entity will liquidate its assets within 12 months", "The entity''s financial statements are prepared on a tax basis", "The entity will distribute all earnings to shareholders annually"]'::jsonb,
 0,
 'The going concern assumption presumes that the entity will continue in operation long enough to carry out its existing objectives and commitments. This assumption underlies the use of historical cost, depreciation of assets, and classification of assets and liabilities as current or noncurrent. If going concern is in doubt, disclosures or a change in basis of accounting may be required.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'When a transaction is not specifically addressed by the FASB ASC, which of the following should an entity consider first in selecting an accounting policy?',
 '["International Financial Reporting Standards (IFRS)", "Practices commonly found in the industry", "Internal management preferences", "Guidance from the ASC for similar transactions or events"]'::jsonb,
 3,
 'ASC 105-10-05 states that when the ASC does not address a specific transaction, an entity should first consider guidance within the ASC for similar transactions. If that is insufficient, the entity may consider nonauthoritative guidance such as FASB Concepts Statements, IFRS, and industry practice — but ASC guidance by analogy takes priority.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'Which standard-setting body is responsible for establishing accounting standards for state and local governmental entities in the United States?',
 '["The Governmental Accounting Standards Board (GASB)", "The Financial Accounting Standards Board (FASB)", "The International Accounting Standards Board (IASB)", "The Securities and Exchange Commission (SEC)"]'::jsonb,
 0,
 'GASB is responsible for establishing GAAP for state and local governmental entities. FASB sets standards for nongovernmental entities, IASB sets IFRS for international use, and the SEC has authority over financial reporting for public companies but generally defers standard-setting to FASB.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'A company changes its depreciation method from straight-line to double-declining balance. Under the Conceptual Framework, which enhancing qualitative characteristic is most directly affected when this change reduces comparability with prior periods?',
 '["Verifiability", "Timeliness", "Comparability", "Understandability"]'::jsonb,
 2,
 'Comparability enables users to identify and understand similarities and differences among items. Changing depreciation methods affects comparability because prior-period financial statements were prepared using a different method, making trend analysis more difficult. Disclosure of the change and its effects helps mitigate the loss of comparability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'Under the FASB Conceptual Framework, which of the following is NOT an element of financial statements for a business entity?',
 '["Comprehensive income", "Appropriations", "Distributions to owners", "Investments by owners"]'::jsonb,
 1,
 'The ten elements of financial statements for business entities include assets, liabilities, equity, investments by owners, distributions to owners, comprehensive income, revenues, expenses, gains, and losses. Appropriations are a governmental budgetary concept and not an element of financial statements under FASB''s framework.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'In the context of financial reporting, the concept of "substance over form" means that:',
 '["Legal form always determines accounting treatment", "Transactions should be reported based on their legal structure regardless of economic reality", "Economic substance should take precedence over legal form when the two differ", "Form and substance are always identical in financial reporting"]'::jsonb,
 2,
 'Substance over form is a key concept in faithful representation. When the economic substance of a transaction differs from its legal form, accounting should reflect the economic reality. Examples include capital leases (now finance leases under ASC 842) that are legally leases but economically are purchases, and certain transfers of receivables that may be sales in form but borrowings in substance.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'Which of the following scenarios best illustrates the application of the "predictive value" component of relevance?',
 '["Historical cost of a building provides confirmation of the original purchase price", "An auditor verifies that inventory counts are accurate", "A company discloses accounting policies in the notes to the financial statements", "Prior-year revenue figures help analysts forecast future revenue trends"]'::jsonb,
 3,
 'Predictive value means the information can be used as an input to processes employed by users to predict future outcomes. Prior-year revenue data that helps analysts project future revenue trends demonstrates predictive value. Confirming original cost demonstrates confirmatory value, verifying accuracy relates to verifiability, and disclosing policies relates to understandability.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'The FASB and IASB have conducted a convergence program to reduce differences between U.S. GAAP and IFRS. Which of the following is a key remaining difference between the two frameworks?',
 '["IFRS permits the revaluation model for property, plant, and equipment; U.S. GAAP does not", "U.S. GAAP requires the statement of cash flows; IFRS does not", "IFRS does not have a conceptual framework", "U.S. GAAP does not define assets and liabilities"]'::jsonb,
 0,
 'A significant remaining difference is that IFRS (IAS 16) permits entities to use either the cost model or the revaluation model for PP&E, while U.S. GAAP requires the cost model (with impairment testing). Both frameworks require cash flow statements, both have conceptual frameworks, and both define assets and liabilities.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'Which of the following recognition criteria must BOTH be met before an item is recognized in the financial statements under the FASB Conceptual Framework?',
 '["The item meets the definition of an element and is denominated in a foreign currency", "The item is disclosed in the footnotes and approved by the board of directors", "The item has a relevant attribute measurable with sufficient reliability and meets the definition of an element", "The item is material and has been authorized by the SEC"]'::jsonb,
 2,
 'Under SFAC No. 5 and the revised Conceptual Framework, an item should be recognized when it (1) meets the definition of an element of financial statements and (2) has a relevant attribute that can be measured with sufficient reliability (faithful representation). Both criteria must be satisfied for recognition in the body of the financial statements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'An entity reports investments in equity securities at fair value with changes recognized in net income. Under the Conceptual Framework, this measurement attribute is best described as:',
 '["Historical cost", "Current replacement cost", "Net realizable value", "Fair value"]'::jsonb,
 3,
 'Fair value is the price that would be received to sell an asset or paid to transfer a liability in an orderly transaction between market participants at the measurement date. ASC 321 requires equity investments (with readily determinable fair values) to be measured at fair value with changes in fair value recognized in net income. This differs from historical cost, replacement cost, and NRV.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'The SEC has the statutory authority to establish financial accounting standards for public companies. In practice, the SEC has:',
 '["Rejected all FASB standards and created its own framework", "Delegated the standard-setting role primarily to the FASB while retaining oversight authority", "Transferred all authority to the AICPA", "Delegated authority exclusively to the IASB"]'::jsonb,
 1,
 'While the SEC has statutory authority under the Securities Acts to set accounting standards, it has historically delegated the standard-setting role to private-sector bodies — currently the FASB. The SEC retains oversight and can override or supplement FASB standards (e.g., through Staff Accounting Bulletins and Regulation S-X) but generally accepts FASB ASC as authoritative GAAP.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Conceptual Framework and Standards',
 'Under the Conceptual Framework, which measurement basis best reflects the amount of cash or cash equivalents that would currently be required to acquire an equivalent asset?',
 '["Historical cost", "Current replacement cost", "Present value of future cash flows", "Net realizable value"]'::jsonb,
 1,
 'Current replacement cost is the amount of cash or cash equivalents that would have to be paid if the same or an equivalent asset were acquired currently. Historical cost reflects the original transaction price, present value reflects discounted future cash flows, and net realizable value reflects the amount expected to be received upon sale less costs of disposal.',
 'hard');

-- =============================================================================
-- Topic 2: Payables and Accrued Liabilities (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- correct_index distribution: 5×0, 5×1, 5×2, 5×3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'At December 31, Year 1, a company has received goods from a supplier but has not yet received the invoice. The goods cost $45,000. How should this transaction be reported on the December 31 balance sheet?',
 '["Record accounts payable of $45,000 and the related inventory or expense", "Do not record anything until the invoice is received", "Record a prepaid asset of $45,000", "Record a contingent liability of $45,000"]'::jsonb,
 0,
 'Under accrual accounting, a liability is recorded when goods are received and an obligation exists, regardless of whether the invoice has arrived. The company should accrue a payable (often called an "accrued liability" or "accounts payable — accrued") and recognize the corresponding asset or expense at year-end.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'Under ASC 710, an employer must accrue a liability for employees'' compensated absences (e.g., vacation pay) when all of the following conditions are met EXCEPT:',
 '["The obligation relates to services already rendered", "The rights vest or accumulate", "Payment is probable", "The employee has submitted a formal written request for the absence"]'::jsonb,
 3,
 'ASC 710-10-25-1 requires accrual of compensated absences when: (1) the obligation is attributable to services already rendered, (2) the rights vest or accumulate, (3) payment is probable, and (4) the amount can be reasonably estimated. A formal written request from the employee is not required for the accrual — the liability exists once the conditions are met.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'A company has a $100,000 note payable due on March 1 of the following year. It is classified on the December 31 balance sheet as a:',
 '["Noncurrent liability because it was originally a long-term obligation", "Contingent liability", "Current liability because it is due within 12 months of the balance sheet date", "Contra asset"]'::jsonb,
 2,
 'A liability that is expected to be settled within 12 months after the balance sheet date (or within the normal operating cycle, if longer) is classified as current. Since the note is due on March 1 of the following year — within 12 months of December 31 — it is a current liability regardless of its original term.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'A company provides a one-year warranty on products sold. During Year 1, the company sold 5,000 units and estimates warranty costs at $8 per unit. Actual warranty claims paid in Year 1 totaled $12,000. What is the warranty liability at December 31, Year 1?',
 '["$40,000", "$28,000", "$12,000", "$52,000"]'::jsonb,
 1,
 'Total estimated warranty expense = 5,000 units × $8 = $40,000. Actual claims paid reduce the liability: $40,000 - $12,000 = $28,000 remaining warranty liability. The full estimated cost is recognized as expense in the period of sale (matching principle), and payments against the liability reduce it over time.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'A company receives $60,000 in advance for services to be performed evenly over the next 12 months beginning January 1, Year 2. On the December 31, Year 1 balance sheet, how should this amount be reported?',
 '["Revenue of $60,000", "Accounts receivable of $60,000", "Deferred revenue (unearned revenue) of $60,000", "Accrued expense of $60,000"]'::jsonb,
 2,
 'Cash received before services are performed creates an obligation to deliver services in the future. This is reported as deferred (unearned) revenue, a current liability, on the balance sheet. Revenue is recognized as the services are performed, not when cash is received. It is not an expense or a receivable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'An entity has a legal obligation to dismantle a drilling platform at the end of its useful life. The estimated cost of removal in 15 years is $2,000,000 and the credit-adjusted risk-free rate is 5%. Under ASC 410, the entity should recognize an asset retirement obligation (ARO) at:',
 '["$2,000,000 (undiscounted)", "The present value of $2,000,000 discounted at 5% over 15 years", "Zero, until the platform is actually dismantled", "The fair value of the platform on the date of installation"]'::jsonb,
 1,
 'ASC 410-20 requires an ARO to be recognized at fair value (approximated by the present value of the estimated future cash flows discounted at the credit-adjusted risk-free rate) in the period in which the obligation is incurred. The corresponding amount is added to the carrying amount of the related long-lived asset. Recording at the undiscounted amount or deferring recognition until dismantlement is incorrect.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'A company''s employees earn vacation time at a rate of 10 days per year. Unused vacation days accumulate but do not vest (they are forfeited upon termination). Under ASC 710, should the company accrue a liability for the unused vacation days?',
 '["Yes, because the rights accumulate even though they do not vest", "No, because accrual is only required when rights vest", "Yes, but only at the minimum wage rate", "No, because vacation days can never be accrued"]'::jsonb,
 0,
 'ASC 710-10-25-1 requires accrual when rights either vest OR accumulate (among other conditions). Accumulation means unused rights can be carried forward to future periods. Even though the rights do not vest (are forfeited upon termination), the accumulation feature and the probability of future use require accrual of the liability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'At year-end, a company has unpaid salaries of $85,000 for work performed by employees during the last week of December. The payment will be made on January 5. What adjusting entry is required at December 31?',
 '["Debit Cash, Credit Salaries Payable", "Debit Salaries Expense $85,000, Credit Salaries Payable $85,000", "No entry required until payment is made on January 5", "Debit Salaries Payable $85,000, Credit Cash $85,000"]'::jsonb,
 1,
 'Under accrual accounting, expenses are recognized in the period in which they are incurred, not when cash is paid. Since employees performed work in December, the company must accrue the expense: debit Salaries Expense and credit Salaries Payable for $85,000. The payable is settled when cash is disbursed on January 5.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'A company issues a $500,000 note payable on October 1, Year 1, with 6% annual interest, payable semiannually on April 1 and October 1. What amount of accrued interest payable should be reported on the December 31, Year 1 balance sheet?',
 '["$30,000", "$15,000", "$7,500", "$0"]'::jsonb,
 2,
 'Interest accrues from October 1 to December 31 = 3 months. Annual interest = $500,000 × 6% = $30,000. Three months of accrued interest = $30,000 × 3/12 = $7,500. This amount is reported as accrued interest payable (a current liability) at year-end, with the offsetting debit to interest expense.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'Under ASC 450 (formerly SFAS 5), a contingent liability should be accrued (recognized as a liability) when:',
 '["The loss is reasonably possible and the amount can be estimated", "The loss is remote", "The amount is immaterial", "The loss is probable and the amount can be reasonably estimated"]'::jsonb,
 3,
 'ASC 450-20-25 requires accrual of a contingent loss when two conditions are met: (1) it is probable that a liability has been incurred at the balance sheet date, and (2) the amount can be reasonably estimated. If the loss is only reasonably possible, disclosure is required but no accrual. Remote contingencies generally require neither accrual nor disclosure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'A company has a $200,000 line of credit, of which $120,000 has been drawn down. The drawn balance is due on demand. How should the $120,000 be classified on the balance sheet?',
 '["Current liability", "Noncurrent liability", "Equity", "Off-balance-sheet item"]'::jsonb,
 0,
 'A demand obligation (one that is callable by the creditor at any time) must be classified as a current liability, regardless of the entity''s expectation of whether the creditor will actually demand payment. The undrawn $80,000 is not recognized as a liability but may be disclosed. Demand notes cannot be classified as noncurrent.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'A manufacturing company is subject to environmental cleanup regulations. The company estimates remediation costs of $3,000,000 to $5,000,000, with no amount in the range more likely than any other. Under ASC 450, what amount should be accrued?',
 '["$5,000,000", "$3,000,000", "$4,000,000", "$0"]'::jsonb,
 1,
 'ASC 450-20-30 states that when a range of loss is estimated and no amount within the range is a better estimate than any other, the minimum amount in the range ($3,000,000) should be accrued. The additional exposure up to $5,000,000 should be disclosed in the notes. This is a key difference from IFRS, which would require accrual of the midpoint.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'Which of the following is the correct treatment of sick pay under ASC 710 when unused sick days do NOT accumulate and do NOT vest?',
 '["Recognize expense only when sick leave is actually taken", "Accrue a liability at each balance sheet date", "Capitalize the cost as an intangible asset", "Report as a contingent liability in the notes"]'::jsonb,
 0,
 'When sick pay benefits do not vest or accumulate (i.e., employees lose unused days at the end of each period and receive no payment for unused days upon termination), no accrual is required. The cost is recognized as an expense only in the period when employees actually take sick leave.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'A retailer sells gift cards to customers. At year-end, $150,000 of gift cards remain unredeemed. How should the unredeemed amount be reported?',
 '["Revenue of $150,000", "Contra revenue of $150,000", "Deferred revenue (contract liability) of $150,000", "No reporting is required for unredeemed gift cards"]'::jsonb,
 2,
 'Unredeemed gift cards represent a performance obligation — the entity has received cash but has not yet transferred goods or services. Under ASC 606, this is reported as deferred revenue (a contract liability) until the cards are redeemed or the entity recognizes breakage revenue based on expected non-redemption patterns.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'A company reclassifies a short-term note payable of $300,000 to noncurrent because it intends to refinance the note and demonstrates the ability to do so. Under ASC 470-10, which of the following is required to support noncurrent classification?',
 '["A board resolution expressing intent to refinance", "Either a post-balance-sheet refinancing with long-term debt or an existing noncancelable financing agreement", "Verbal confirmation from the lender", "The note must already be past due"]'::jsonb,
 1,
 'ASC 470-10-45 allows reclassification of a short-term obligation as noncurrent only if the entity has both the intent and the demonstrated ability to refinance on a long-term basis. Ability is demonstrated by either (a) actually refinancing with long-term debt after the balance sheet date but before issuance, or (b) entering into a noncancelable financing agreement with a capable lender.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'A company has property taxes assessed annually at $48,000 for the calendar year. The tax is due on September 30. Under monthly accrual, what is the balance of accrued property tax payable at March 31?',
 '["$4,000", "$12,000", "$48,000", "$16,000"]'::jsonb,
 3,
 'Property taxes of $48,000 per year = $4,000 per month. By March 31, four months have elapsed (January through March, plus the accrual often begins January 1 for calendar-year assessments). However, many entities accrue ratably from the lien date. Assuming a January 1 assessment date and monthly accrual: 4 months × $4,000 = $16,000 accrued but unpaid as of March 31 (payment not due until September 30).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'On December 31, Year 1, a defendant company''s attorney estimates that a pending lawsuit will probably result in a loss between $800,000 and $1,200,000, with $1,000,000 being the most likely outcome. What amount should be accrued?',
 '["$800,000", "$1,200,000", "$0", "$1,000,000"]'::jsonb,
 3,
 'Under ASC 450-20-30, when a range of loss exists and a specific amount within that range appears to be a better estimate than any other amount, that amount ($1,000,000) should be accrued. The "most likely" or "best estimate" takes precedence over the minimum of the range. If no single amount were the best estimate, the minimum ($800,000) would be accrued.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'Which of the following distinguishes an accrued liability from a contingent liability?',
 '["Accrued liabilities represent definite obligations with estimated amounts; contingent liabilities depend on the outcome of uncertain future events", "Accrued liabilities arise from uncertain future events; contingent liabilities arise from past transactions", "Accrued liabilities involve uncertainty about the existence of the obligation; contingent liabilities involve definite obligations", "There is no distinction — the terms are interchangeable"]'::jsonb,
 0,
 'Accrued liabilities are recognized obligations where the timing or amount may be estimated (e.g., accrued wages, warranty obligations). Contingent liabilities depend on the outcome of future uncertain events to confirm the existence, amount, or timing of the liability (e.g., pending lawsuits). The key distinction is whether the obligation itself is certain (accrued) or uncertain (contingent).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'A company has trade payables with terms 2/10, net 30. If the company pays within the discount period, what is the approximate annualized cost of NOT taking the discount?',
 '["2%", "12%", "24%", "36.7%"]'::jsonb,
 3,
 'The annualized cost of not taking a discount is calculated as: [Discount% / (100% - Discount%)] × [365 / (Full payment period - Discount period)]. Here: (2/98) × (365/20) = 0.0204 × 18.25 ≈ 37.2% (approximately 36.7%). This high annualized rate demonstrates why companies generally should take early payment discounts.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Payables and Accrued Liabilities',
 'Under ASC 420, a liability for one-time employee termination benefits (severance associated with a restructuring) should be recognized when:',
 '["The employee accepts the offer voluntarily", "The termination plan is approved by the board", "The plan is communicated to employees and meets specific criteria including identification of affected employees, their expected termination dates, and the benefits to be received", "The employees are actually terminated"]'::jsonb,
 2,
 'ASC 420-10-25 requires that a liability for one-time termination benefits be recognized at the communication date when the plan of termination meets all of the following criteria: (1) management commits to the plan, (2) the plan identifies the number of employees, their job classifications, locations, and expected termination dates, (3) the benefits are established in sufficient detail, and (4) the plan is communicated to employees. Actual termination is not required.',
 'hard');

-- =============================================================================
-- Topic 3: Accounting Changes and Error Corrections (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- correct_index distribution: 5×0, 5×1, 5×2, 5×3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'Under ASC 250, a change in accounting principle is generally reported by:',
 '["Retrospective application to all prior periods presented", "Prospective application beginning in the current period", "A cumulative catch-up adjustment to retained earnings in the current period only", "Restating only the immediately preceding period"]'::jsonb,
 0,
 'ASC 250-10-45-5 requires that a change in accounting principle be reported through retrospective application. This means adjusting the financial statements of each prior period presented to reflect the new principle, as if it had always been used, and adjusting the opening balance of retained earnings for the earliest period presented for the cumulative effect on periods not shown.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'A company changes the estimated useful life of its equipment from 10 years to 7 years. Under ASC 250, how should this change be accounted for?',
 '["Retrospectively, adjusting all prior periods", "Prospectively, beginning in the period of the change and future periods", "By restating prior-period financial statements", "By recording a cumulative effect adjustment to retained earnings"]'::jsonb,
 1,
 'A change in accounting estimate is accounted for prospectively. Under ASC 250-10-45-17, the effect of a change in estimate is accounted for in the period of change (if the change affects only that period) or in the period of change and future periods (if the change affects both). No retrospective adjustment or restatement is made for estimate changes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'Which of the following is classified as a change in accounting principle under ASC 250?',
 '["Changing from FIFO to weighted-average for inventory costing", "Revising the estimated residual value of a machine", "Correcting a mathematical error in prior-year depreciation", "Changing the estimated percentage of uncollectible accounts"]'::jsonb,
 0,
 'A change from FIFO to weighted-average is a change in accounting principle because it involves adopting a different generally accepted accounting method for the same type of transaction. Revising a residual value or bad debt percentage are changes in estimate, and correcting a mathematical error is an error correction — all are treated differently under ASC 250.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'A company discovers that it failed to record $50,000 of depreciation expense in Year 1. The error is discovered in Year 3. Under ASC 250, the correction of this error requires:',
 '["Prospective treatment — record $50,000 of depreciation expense in Year 3", "Restatement of prior-period financial statements when presented comparatively", "A change in accounting estimate reported in the current period", "Disclosure only, with no adjustment to any financial statements"]'::jsonb,
 1,
 'ASC 250-10-45-23 requires that an error in previously issued financial statements be corrected by restating the prior-period financial statements. When comparative statements are presented, the error should be corrected in the period(s) affected. If Year 1 is presented comparatively, it should be restated. The opening retained earnings of the earliest period presented should be adjusted if the error period is not presented.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'When retrospective application of a new accounting principle is impracticable because the entity cannot determine the cumulative effect on prior periods, ASC 250 requires:',
 '["The entity to continue using the old principle", "No change is permitted", "Application of the new principle to the earliest period for which retrospective application is practicable", "Current-period disclosure only with no financial statement adjustment"]'::jsonb,
 2,
 'ASC 250-10-45-9 provides an impracticability exception: if it is impracticable to determine the cumulative effect of applying the change retrospectively to all prior periods, the entity should apply the new principle to the balances of assets and liabilities as of the beginning of the earliest period for which retrospective application is practicable, with a corresponding adjustment to retained earnings.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'A company changes its depreciation method from double-declining balance to straight-line. Under current U.S. GAAP, this change is treated as:',
 '["A change in accounting principle accounted for retrospectively", "A change in accounting estimate effected by a change in accounting principle, accounted for prospectively", "An error correction requiring restatement", "A change in reporting entity requiring retrospective application"]'::jsonb,
 1,
 'ASC 250-10-45-18 classifies a change in depreciation method as a change in accounting estimate effected by a change in accounting principle. Because depreciation method reflects the pattern in which the asset''s economic benefits are consumed, changing the method is inseparable from a revision in estimates. It is therefore accounted for prospectively, not retrospectively.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'Which of the following qualifies as a change in reporting entity under ASC 250?',
 '["A company changes its inventory costing method from LIFO to FIFO", "A company revises its bad debt estimate from 3% to 5% of receivables", "A company discovers it failed to capitalize a patent in a prior year", "A parent company begins consolidating a previously unconsolidated subsidiary"]'::jsonb,
 3,
 'A change in reporting entity occurs when the financial statements are effectively those of a different entity than in prior periods. Examples include consolidating a subsidiary not previously consolidated, changing the entities included in combined financial statements, or presenting consolidated statements instead of individual statements. ASC 250 requires retrospective application for changes in reporting entity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'Under ASC 250, what disclosures are required in the period that a change in accounting principle is made using retrospective application?',
 '["No disclosures are required", "Only the name of the new principle", "Only the cumulative effect on retained earnings", "The nature and reason for the change, the method of applying the change, a description of the prior-period information adjusted, and the effect on income and EPS for each period presented"]'::jsonb,
 3,
 'ASC 250-10-50-1 requires extensive disclosures for a change in accounting principle, including: (a) the nature of and reason for the change, (b) the method of applying the change, (c) a description of the prior-period information that has been retrospectively adjusted, (d) the effect of the change on income from continuing operations, net income, and related per-share amounts for each period presented, and (e) the cumulative effect on retained earnings at the beginning of the earliest period presented.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'In Year 3, a company discovers that it overstated ending inventory by $30,000 in Year 1 (Year 1 statements are not presented comparatively). Assuming a 25% tax rate, the correcting entry in Year 3 includes a debit to:',
 '["Retained earnings for $22,500", "Inventory for $30,000", "Cost of goods sold for $30,000", "Retained earnings for $30,000"]'::jsonb,
 0,
 'The overstatement of ending inventory in Year 1 understated COGS and overstated Year 1 net income by $30,000 pre-tax. Since Year 1 is a closed period and not presented, the correction goes to opening retained earnings. After-tax effect = $30,000 × (1 - 0.25) = $22,500. The entry debits Retained Earnings $22,500 and Deferred Tax Asset $7,500, and credits Inventory $30,000 (assuming inventory was still overstated).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'A company changes from the completed-contract method to the percentage-of-completion method for long-term construction contracts. Under ASC 250, this change should be accounted for:',
 '["Prospectively for new contracts only", "As an error correction through restatement", "As a change in estimate, prospectively", "Retrospectively, adjusting prior-period financial statements"]'::jsonb,
 3,
 'Changing from the completed-contract method to the percentage-of-completion method is a change in accounting principle. Under ASC 250, changes in accounting principle are accounted for retrospectively by adjusting prior-period financial statements to reflect the new method as if it had always been used, unless retrospective application is impracticable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'Which of the following errors, if discovered after the financial statements have been issued, would require restatement of prior-period financial statements?',
 '["An understatement of accrued wages of $500 that is clearly immaterial", "A change in the estimated useful life of equipment", "An error in applying the revenue recognition criteria that materially overstated revenue in the prior year", "A correction of a projection used in a press release"]'::jsonb,
 2,
 'ASC 250-10-45-23 requires restatement for material errors in previously issued financial statements. A material error in applying revenue recognition criteria requires restatement. An immaterial error would not require restatement, a change in estimate is not an error, and press release corrections are not governed by ASC 250.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'A company that reports on a calendar year discovers on March 1, Year 3, that it failed to accrue $200,000 of warranty expense in Year 2. The Year 2 financial statements have already been issued. This is an example of:',
 '["A change in accounting principle", "A change in accounting estimate", "An error correction requiring prior-period restatement", "A change in reporting entity"]'::jsonb,
 2,
 'Failure to accrue a known warranty obligation is an error in previously issued financial statements, not a change in estimate or principle. Under ASC 250, this requires restatement of the Year 2 financial statements (if presented comparatively) and adjustment to opening retained earnings of Year 3.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'Under ASC 250, a change in reporting entity requires:',
 '["Retrospective application by recasting prior-period financial statements as if the new entity had existed in those periods", "Prospective application only", "No restatement of prior periods", "A cumulative effect adjustment in the current period"]'::jsonb,
 0,
 'ASC 250-10-45-21 requires a change in reporting entity to be reported by retrospective application. This means recasting all prior-period financial statements presented to show what the statements would have looked like had the new reporting entity structure existed in those prior periods. Prospective treatment or a cumulative adjustment is not appropriate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'When a change in accounting estimate arises partly from new information and partly from better insight into existing information, the change should be:',
 '["Split between retrospective and prospective application", "Applied entirely retrospectively", "Applied entirely prospectively", "Treated as an error correction"]'::jsonb,
 2,
 'ASC 250-10-45-17 clearly states that all changes in accounting estimate are accounted for prospectively, regardless of the source of the new information. It does not matter whether the revised estimate arises from new information, additional experience, or subsequent developments — the change is always applied prospectively.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'A company has been using an accounting method that is not in conformity with GAAP. The company switches to a GAAP-compliant method. Under ASC 250, this transition is classified as:',
 '["A change in accounting principle", "A change in accounting estimate", "An error correction", "A change in reporting entity"]'::jsonb,
 2,
 'Switching from a non-GAAP method to a GAAP method is treated as an error correction, not a change in accounting principle. ASC 250-10-20 defines an error as the use of an accounting method that is not in conformity with GAAP. The correction is reported through restatement of prior-period financial statements, not through retrospective application as a voluntary principle change.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'In Year 2, a company discovers that it recorded $75,000 of capital expenditures as repairs expense in Year 1. The asset has a 5-year life with no salvage value and straight-line depreciation. Ignoring taxes, what is the cumulative effect of the error on Year 1 retained earnings?',
 '["Understated by $60,000", "Understated by $75,000", "Overstated by $75,000", "Overstated by $60,000"]'::jsonb,
 0,
 'The error caused: (1) Expense overstatement of $75,000 (the asset was expensed instead of capitalized), but (2) depreciation of $75,000/5 = $15,000 should have been recorded. Net effect on Year 1 income: overstated expense by $75,000 - $15,000 = $60,000. Therefore, Year 1 net income was understated by $60,000, causing retained earnings to be understated by $60,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'ASC 250 establishes a preference hierarchy for accounting changes. Which of the following would NOT constitute an acceptable justification for a voluntary change in accounting principle?',
 '["A new FASB standard requires the change", "The entity can demonstrate that the new method is preferable", "A new accounting standard permits an alternative method that better reflects the entity''s economics", "The entity''s auditor prefers the new method for the purpose of achieving lower reported expenses"]'::jsonb,
 3,
 'A voluntary change in accounting principle must be justified by demonstrating that the new method is preferable. Changes required by new standards are mandatory. However, changing a method solely because the auditor prefers it for the purpose of reducing reported expenses would be considered a manipulation and is not an acceptable justification. The preferability assessment must be grounded in improved financial reporting, not earnings management.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'A counterbalancing (self-correcting) error, such as an understatement of ending inventory in Year 1, will:',
 '["Never require correction because it automatically reverses", "Require restatement of Year 1 if Year 1 financial statements are presented comparatively, even though the error self-corrects over two periods", "Only require disclosure but no restatement", "Require restating all periods from inception"]'::jsonb,
 1,
 'Even though counterbalancing errors self-correct over two periods (understating Year 1 ending inventory overstates Year 1 COGS and understates Year 2 COGS), the individual period financial statements are still misstated. If comparative statements are presented, each affected period must be restated to its correct amounts. Self-correction does not eliminate the need for restatement of individual periods.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'Which of the following correctly distinguishes a change in accounting principle from a change in accounting estimate?',
 '["A change in principle affects only future periods; a change in estimate requires retrospective application", "A change in principle involves adopting a different acceptable method; a change in estimate involves revising an assumption or prediction used in applying an existing method", "Both are treated identically under ASC 250 — prospectively", "A change in estimate always requires prior-period restatement"]'::jsonb,
 1,
 'A change in accounting principle involves adopting a different acceptable accounting method (e.g., FIFO to LIFO) and is generally applied retrospectively. A change in accounting estimate involves revising an assumption or prediction (e.g., useful life, salvage value, bad debt percentage) and is applied prospectively. The two receive different accounting treatments under ASC 250.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Accounting Changes and Error Corrections',
 'Under ASC 250, which of the following is NOT one of the required disclosures when an error correction is reported through restatement?',
 '["The nature of the error", "The effect on each financial statement line item and earnings per share for each prior period presented", "The cumulative effect on retained earnings at the beginning of the earliest period presented", "The name of the individual responsible for the error"]'::jsonb,
 3,
 'ASC 250-10-50-7 through 50-10 require disclosure of: the nature of the error, the effect on each financial statement line item and EPS for each prior period, and the cumulative effect on retained earnings at the beginning of the earliest period presented. Identification of the individual responsible for the error is not required and would not be appropriate in financial statement disclosures.',
 'medium');

-- =============================================================================
-- Topic 4: Governmental Accounting Fundamentals (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- correct_index distribution: 5×0, 5×1, 5×2, 5×3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'Which accounting basis is used for governmental fund financial statements?',
 '["Modified accrual basis", "Full accrual basis", "Cash basis", "Income tax basis"]'::jsonb,
 0,
 'Governmental fund financial statements (general fund, special revenue, capital projects, debt service, and permanent funds) use the modified accrual basis of accounting. Under this basis, revenues are recognized when measurable and available, and expenditures are recognized when the fund liability is incurred, with certain exceptions. Full accrual is used for government-wide statements and proprietary/fiduciary funds.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'Under modified accrual accounting, revenue is considered "available" when it is:',
 '["Earned and realizable", "Collectible within the current period or soon enough thereafter to be used to pay liabilities of the current period", "Received in cash", "Appropriated by the governing body"]'::jsonb,
 1,
 'Under modified accrual accounting (GASB standards), revenue is recognized when it is both measurable and available. "Available" means collectible within the current period or soon enough thereafter to pay liabilities of the current period. GASB defines this availability period as typically not exceeding 60 days after year-end, though some governments use 30 or 90 days as their policy.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'Which of the following is a proprietary fund type used by state and local governments?',
 '["General fund", "Capital projects fund", "Enterprise fund", "Debt service fund"]'::jsonb,
 2,
 'Enterprise funds and internal service funds are the two proprietary fund types. Enterprise funds account for activities that provide goods or services to the general public for a fee (e.g., utilities, airports, toll roads). The general fund, capital projects fund, and debt service fund are governmental fund types, not proprietary.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'In governmental accounting, fund balance classifications under GASB Statement No. 54 include all of the following EXCEPT:',
 '["Nonspendable", "Restricted", "Unrestricted", "Committed"]'::jsonb,
 2,
 'GASB 54 establishes five fund balance classifications: nonspendable, restricted, committed, assigned, and unassigned. "Unrestricted" is not one of the GASB 54 classifications — it is a term used in net position for government-wide and proprietary fund statements. The GASB 54 categories replaced the previous reserved/unreserved/designated framework.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'Which of the following fund types uses full accrual accounting and the economic resources measurement focus?',
 '["Internal service fund", "General fund", "Debt service fund", "Special revenue fund"]'::jsonb,
 0,
 'Internal service funds are proprietary funds and use full accrual accounting with the economic resources measurement focus, the same as for-profit entities. They account for goods or services provided by one department to other departments on a cost-reimbursement basis (e.g., a central motor pool, IT services). Governmental funds (general, debt service, special revenue) use modified accrual with the current financial resources measurement focus.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'A city government records the following entry: Debit Encumbrances $500,000, Credit Budgetary Fund Balance — Reserved for Encumbrances $500,000. This entry is recorded when:',
 '["The goods are received and the invoice is paid", "A purchase order or contract is issued for goods or services", "The annual budget is adopted", "The fiscal year ends"]'::jsonb,
 1,
 'Encumbrances represent commitments related to unperformed contracts for goods or services. The entry to record an encumbrance is made when a purchase order or contract is issued, not when goods are received or payment is made. This budgetary accounting mechanism helps prevent overspending by reserving a portion of the appropriation for outstanding commitments.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'In the government-wide statement of net position, net position is classified into three categories. Which of the following is NOT one of them?',
 '["Net investment in capital assets", "Restricted", "Committed", "Unrestricted"]'::jsonb,
 2,
 'The three categories of net position in government-wide statements are: (1) net investment in capital assets, (2) restricted, and (3) unrestricted. "Committed" is a fund balance classification under GASB 54 for governmental fund financial statements, not a category of net position in government-wide statements. These are two different classification systems.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'The measurement focus of governmental fund financial statements is the:',
 '["Economic resources measurement focus", "Cash measurement focus", "Income determination measurement focus", "Current financial resources measurement focus"]'::jsonb,
 3,
 'Governmental funds use the current financial resources measurement focus, which measures the flow of current financial resources (cash and items expected to be converted to cash) in and out. This is why governmental funds report expenditures (not expenses) and do not report long-term assets or long-term liabilities. The economic resources measurement focus is used in government-wide statements and proprietary funds.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'A city adopts its annual budget. The journal entry to record the budget in the general fund includes:',
 '["Debit Estimated Revenues, Credit Appropriations, and either Debit or Credit Budgetary Fund Balance for the difference", "Debit Cash, Credit Revenue", "Debit Expenditures, Credit Accounts Payable", "No entry — budgets are disclosed in notes only"]'::jsonb,
 0,
 'When a governmental fund formally adopts a budget, the budgetary entry debits Estimated Revenues (the expected inflows), credits Appropriations (the authorized spending limits), and debits or credits Budgetary Fund Balance for the difference. If estimated revenues exceed appropriations, budgetary fund balance is credited (anticipated surplus); if appropriations exceed estimated revenues, it is debited (anticipated deficit).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'Which of the following is a fiduciary fund type under GASB standards?',
 '["Custodial fund", "Enterprise fund", "Capital projects fund", "Permanent fund"]'::jsonb,
 0,
 'Under GASB Statement No. 84, fiduciary fund types include pension (and other employee benefit) trust funds, investment trust funds, private-purpose trust funds, and custodial funds. The custodial fund replaced the former agency fund classification. Enterprise funds are proprietary, capital projects funds are governmental, and permanent funds are governmental fund types.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'Under GASB 54, which fund balance classification represents amounts constrained by the government''s highest level of decision-making authority (e.g., a city council ordinance) that require formal action to remove the constraint?',
 '["Restricted", "Committed", "Assigned", "Nonspendable"]'::jsonb,
 1,
 'Committed fund balance represents amounts constrained for specific purposes by the government''s highest level of decision-making authority (e.g., a city council ordinance or board resolution). The constraint can only be removed or changed by the same level of authority through formal action. Restricted amounts are constrained by external sources (grantors, laws). Assigned amounts are intended for specific purposes but lack the formal constraint.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'A state government collects income taxes. $5,000,000 is collected in Year 1, with an additional $800,000 collected within 60 days after the Year 1 fiscal year-end that relates to Year 1 income. Under modified accrual, how much revenue should the general fund recognize in Year 1?',
 '["$5,000,000", "$5,800,000", "$4,200,000", "$800,000"]'::jsonb,
 1,
 'Under modified accrual accounting, revenue is recognized when measurable and available. The $5,000,000 collected in Year 1 is clearly available. The $800,000 collected within 60 days after year-end also meets the "available" criterion (assuming the government''s availability period is at least 60 days) and relates to Year 1 income. Total Year 1 revenue = $5,800,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'An interfund transfer from the general fund to a capital projects fund should be reported in the general fund as a/an:',
 '["Other financing use — transfers out", "Expenditure", "Expense", "Reduction of fund balance — assigned"]'::jsonb,
 0,
 'Under GASB standards, interfund transfers are not revenues or expenditures. They are reported separately as "other financing sources" (for the receiving fund) and "other financing uses" (for the transferring fund) in the governmental fund financial statements. The general fund reports the transfer as "Other Financing Uses — Transfers Out" below the excess (deficiency) of revenues over expenditures.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'In the government-wide financial statements, which of the following long-term items is reported that would NOT appear in governmental fund financial statements?',
 '["Accounts payable", "Due to other funds", "General obligation bonds payable", "Deferred revenue — unavailable"]'::jsonb,
 2,
 'Governmental fund financial statements use the current financial resources measurement focus, so long-term liabilities such as general obligation bonds payable are not reported in the fund statements. They are reported only in the government-wide statement of net position, which uses the economic resources measurement focus and full accrual accounting. Accounts payable and due to other funds are current items reported in both.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'A city receives a $1,000,000 federal grant that must be spent on road improvements. This grant money has been received but not yet spent. In the general fund, the grant proceeds are classified in fund balance as:',
 '["Nonspendable", "Committed", "Unassigned", "Restricted"]'::jsonb,
 3,
 'Under GASB 54, restricted fund balance represents amounts constrained by external parties (federal government, state laws, grantors, creditors) for specific purposes. Since the federal grant must be spent on road improvements (an externally imposed constraint), the unspent balance is classified as restricted. Committed requires the government''s own highest authority to impose the constraint; here the constraint is external.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'Under GASB standards, which financial statements are required for proprietary funds?',
 '["Statement of net position, statement of revenues expenditures and changes in fund balance, and budgetary comparison", "Balance sheet and income statement only", "Statement of net position, statement of revenues expenses and changes in fund net position, and statement of cash flows", "Statement of fiduciary net position and statement of changes in fiduciary net position"]'::jsonb,
 2,
 'Proprietary funds (enterprise and internal service) require three financial statements: (1) statement of net position (or balance sheet), (2) statement of revenues, expenses, and changes in fund net position, and (3) statement of cash flows using the direct method. These mirror business-type financial reporting. The budgetary comparison is required for the general fund and major special revenue funds with legally adopted budgets.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'A permanent fund is a governmental fund type used to report resources that are:',
 '["Available to finance general government operations", "Set aside for debt repayment", "Held in trust for pension beneficiaries", "Legally restricted so that only earnings, not principal, may be used to support programs"]'::jsonb,
 3,
 'Permanent funds report resources that are legally restricted so that only the earnings (not the principal) may be used to support programs benefiting the government or its citizens (e.g., a cemetery perpetual care fund). The general fund handles general operations, debt service funds handle debt repayment, and pension trust funds (fiduciary) handle pension beneficiaries.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'When converting from governmental fund financial statements to government-wide financial statements, which of the following reconciling items would INCREASE net position?',
 '["Accrual of long-term debt proceeds", "Recognition of bond proceeds as a long-term liability", "Elimination of interfund receivables", "Reclassification of capital outlay expenditures as capital assets"]'::jsonb,
 3,
 'In governmental fund statements, capital outlays are reported as expenditures (reducing fund balance). In government-wide statements, these are capitalized as assets. Reclassifying capital outlay expenditures as capital assets increases total assets without a corresponding liability, thereby increasing net position. Recognizing bond proceeds as long-term liabilities decreases net position, and eliminating interfund items is neutral.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'Under GASB 54, "nonspendable" fund balance includes amounts that are:',
 '["Constrained by the government''s highest authority for a specific purpose", "Intended for a specific purpose but not formally constrained", "Available for any purpose", "Not in spendable form or legally or contractually required to be maintained intact"]'::jsonb,
 3,
 'Nonspendable fund balance includes amounts that cannot be spent because they are either (a) not in spendable form (e.g., inventory, prepaid items, long-term receivables) or (b) legally or contractually required to be maintained intact (e.g., the corpus of a permanent fund). Amounts constrained by the government''s highest authority are committed; amounts intended but not constrained are assigned; amounts available for any purpose are unassigned.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting Fundamentals',
 'A school district issues $10,000,000 in general obligation bonds to finance construction of a new school. In the capital projects fund, the bond proceeds are reported as:',
 '["Revenue", "Other financing sources — bond proceeds", "A long-term liability", "An addition to fund balance — committed"]'::jsonb,
 1,
 'In governmental fund accounting, bond proceeds are not reported as revenue or as a long-term liability. They are reported as "Other Financing Sources — Bond Proceeds" in the fund financial statements. The corresponding long-term liability (bonds payable) is reported only in the government-wide financial statements. This distinction arises because governmental funds use the current financial resources measurement focus, which excludes long-term liabilities.',
 'hard');
