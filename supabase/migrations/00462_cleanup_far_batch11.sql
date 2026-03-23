-- FAR cleanup batch 11 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q2355 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Which of the following best describes a key difference between tax-basis financial statements and GAAP financial statements regarding inventory capitalization?$EXPL$,
  choices = $EXPL$["Tax basis follows IRC Section 263A (UNICAP) rules, which may differ from GAAP capitalization under ASC 330","Tax basis always requires the FIFO cost flow assumption","Tax basis prohibits all inventory valuation methods","Tax basis and GAAP treat inventory identically"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under the income tax basis, inventory capitalization follows IRC Section 263A (UNICAP), which requires capitalization of certain direct and indirect costs that may differ from GAAP requirements under ASC 330-10-30. UNICAP has specific cost allocation methods and exceptions (e.g., the small business exception under IRC 263A(i)) that have no GAAP equivalent.
Wrong (B): Tax basis does not mandate FIFO; entities may use FIFO, LIFO, weighted-average, or specific identification for tax purposes, subject to IRS conformity requirements.
Wrong (C): Tax basis permits multiple inventory methods including cost, lower of cost or market, and retail methods as allowed under IRC Section 471.
Wrong (D): Significant differences exist between tax-basis and GAAP inventory treatment, particularly in cost capitalization rules and the UNICAP requirements.$EXPL$,
  difficulty = 'medium'
WHERE id = 2355;

-- Q2357 [easy] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under AU-C Section 800.A2, a regulatory basis framework is one prescribed by a regulatory agency for filing requirements. Insurance companies must prepare statutory basis financial statements under SAP as prescribed by state insurance departments, making this a regulatory basis framework.
Wrong (A): A cash basis framework records transactions only when cash is received or disbursed, which does not describe a regulatory filing requirement.
Wrong (B): A tax basis framework prepares financial statements using the income tax basis of accounting under the Internal Revenue Code, not a regulatory agency's prescribed principles.
Wrong (D): A contractual basis framework uses accounting principles specified in a contract such as a loan agreement, not principles prescribed by a regulatory body.$EXPL$,
  difficulty = 'easy'
WHERE id = 2357;

-- Q2358 [easy] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under AU-C Section 800.A2, a contractual basis framework uses accounting principles specified in a contract such as a loan agreement, bond indenture, or partnership agreement. The financial statements are prepared using measurement and recognition provisions defined by the contractual terms.
Wrong (A): A cash basis framework recognizes transactions when cash is received or disbursed, not based on contractual specifications in a loan agreement.
Wrong (B): A tax basis framework follows the Internal Revenue Code for recognition and measurement, not the terms of a specific contract between parties.
Wrong (C): A regulatory basis framework follows principles prescribed by a regulatory agency for filing requirements, not the terms of a private loan agreement.$EXPL$,
  difficulty = 'easy'
WHERE id = 2358;

-- Q2359 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Which of the following accurately describes the AICPA's Financial Reporting Framework for Small- and Medium-Sized Entities (FRF for SMEs)?$EXPL$,
  choices = $EXPL$["It is mandatory for all entities with less than $50 million in revenue","It is identical to the IFRS for SMEs framework issued by the IASB","It is a self-contained non-GAAP framework designed as a cost-effective alternative for private companies","It is considered GAAP for purposes of SEC reporting requirements"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): The FRF for SMEs is a self-contained, non-GAAP framework developed by the AICPA as a simplified alternative for owner-managed and small-to-medium-sized private companies. Per the AICPA FRF for SMEs framework, it draws from traditional accounting methods such as historical cost and avoids complex GAAP topics like fair value measurements.
Wrong (A): The FRF for SMEs is entirely optional and voluntary; no revenue threshold mandates its adoption.
Wrong (B): The FRF for SMEs is distinct from IFRS for SMEs issued by the IASB; the AICPA framework is U.S.-focused and draws from different principles and simplifications.
Wrong (D): The FRF for SMEs is explicitly a non-GAAP framework and is not accepted for SEC reporting, which requires U.S. GAAP or IFRS.$EXPL$,
  difficulty = 'medium'
WHERE id = 2359;

-- Q2360 [easy] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under the pure cash basis as described in AU-C Section 800.A2, the $240,000 cash payment for equipment is recorded as a disbursement (expense) in the period of purchase. There is no capitalization or depreciation under the pure cash basis.
Wrong (A): Capitalizing the asset and depreciating it over its useful life is the GAAP treatment under ASC 360-10-30, not the cash basis treatment.
Wrong (B): Recording a prepaid asset with amortization is an accrual-based concept that does not apply under the pure cash basis of accounting.
Wrong (C): The cash basis does recognize the transaction as a cash disbursement; it records cash outflows as expenses in the period paid rather than ignoring them entirely.$EXPL$,
  difficulty = 'easy'
WHERE id = 2360;

-- Q2362 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under AU-C Section 800.A3, the modified cash basis permits acceptable modifications that have substantial support, including recording long-term debt and related interest accruals. Both the $5,000,000 term loan and the $180,000 accrued interest payable are consistent with the modified cash basis because they represent modifications that are logical and consistently applied.
Wrong (B): Recording only the loan while excluding accrued interest would be inconsistent; if long-term debt is recognized as a modification, the related interest accrual is also a supportable modification.
Wrong (C): The modified cash basis explicitly permits recognition of certain liabilities as acceptable modifications; it is not identical to the pure cash basis, which would not recognize liabilities.
Wrong (D): Recording only the accrued interest without the underlying debt would be illogical; the modification must be applied consistently to related items.$EXPL$,
  difficulty = 'medium'
WHERE id = 2362;

-- Q2363 [hard] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): On a tax-basis income statement for a partnership, total income includes all economic income items per IRC Section 703. Taxable income of $900,000 plus tax-exempt interest of $45,000 equals $945,000 in total income. Tax-exempt interest is a separately stated item under IRC Section 702(a)(4) but is still reported as income on tax-basis financial statements.
Wrong (A): $900,000 excludes the $45,000 in tax-exempt interest, which is an economic income item that must be reported on tax-basis financial statements even though it is not taxable.
Wrong (B): $600,000 incorrectly deducts guaranteed payments again; guaranteed payments to partners under IRC Section 707(c) are already deducted in arriving at the $900,000 taxable income figure.
Wrong (D): $555,000 incorrectly deducts both the guaranteed payments and some other amount, failing to account for the proper treatment of guaranteed payments already embedded in taxable income.$EXPL$,
  difficulty = 'hard'
WHERE id = 2363;

-- Q2364 [easy] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under AU-C Section 800.A14, when financial statements are prepared on the cash basis, the titles should clearly indicate the basis of accounting. The appropriate title is "Statement of Cash Receipts and Disbursements" or similar wording that avoids implying GAAP compliance.
Wrong (A): "Income Statement" implies GAAP-basis accrual accounting and should not be used for cash-basis financial statements per AU-C Section 800 guidance on appropriate titling.
Wrong (B): "Statement of Revenues and Expenses" uses accrual-based terminology that implies GAAP measurement and recognition principles rather than cash-basis accounting.
Wrong (D): "Statement of Operations" is a GAAP-oriented title that does not communicate the cash basis of accounting to financial statement users.$EXPL$,
  difficulty = 'easy'
WHERE id = 2364;

-- Q2366 [easy] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under the pure cash basis as described in AU-C Section 800.A2, revenue is recognized when cash is received regardless of when the service is performed. The $60,000 advance payment is recorded as revenue in December when the cash is received.
Wrong (A): Recording a liability for the advance payment is an accrual-basis concept under ASC 606-10-25, not applicable under the pure cash basis where no deferred obligations are recognized.
Wrong (B): Deferring recognition until services are performed follows the accrual-basis matching principle; under the pure cash basis, the cash receipt triggers immediate revenue recognition.
Wrong (C): Deferred revenue is an accrual-basis liability concept that has no place in pure cash-basis financial statements, which do not recognize unearned obligations.$EXPL$,
  difficulty = 'easy'
WHERE id = 2366;

-- Q2374 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$A company uses the income tax basis and elects to expense all equipment purchases under IRC Section 179, taking an immediate $500,000 deduction for new equipment. Under GAAP, the equipment would be depreciated over 7 years using straight-line. What is the equipment-related expense on the tax-basis financial statements for year one?$EXPL$,
  choices = $EXPL$["$71,429 using straight-line depreciation over 7 years","$0 because the asset must be capitalized first","$250,000 using the half-year convention","$500,000 as the full Section 179 deduction"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (D): Under the income tax basis, the IRC Section 179 election allows the company to deduct the full $500,000 cost in the year of purchase. Tax-basis financial statements follow the tax return treatment per AU-C Section 800.A2, so the entire $500,000 is expensed in year one.
Wrong (A): $71,429 straight-line depreciation over 7 years is the GAAP treatment under ASC 360-10-35, not the tax-basis treatment when Section 179 is elected.
Wrong (B): Section 179 specifically permits immediate expensing rather than capitalization, so a $0 expense is incorrect when the election is made.
Wrong (C): The half-year convention applies to MACRS depreciation under IRC Section 168, not to Section 179 immediate expensing which allows the full deduction in year one.$EXPL$,
  difficulty = 'medium'
WHERE id = 2374;

-- Q4707 [easy] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under FASB Concepts Statement No. 8 (CON 8), Chapter 3, QC26, verifiability means that different knowledgeable and independent observers could reach consensus, although not necessarily complete agreement, that a particular depiction is a faithful representation. It is an enhancing qualitative characteristic.
Wrong (A): Relevance is a fundamental qualitative characteristic meaning information is capable of making a difference in decisions, not about consensus among observers.
Wrong (C): Timeliness is an enhancing characteristic meaning information is available to decision-makers in time to influence decisions, not about observer agreement.
Wrong (D): Comparability enables users to identify similarities and differences between items, but it does not address consensus among independent observers about faithful representation.$EXPL$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4707;

-- Q4710 [medium] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 105-10-05-1, the FASB Accounting Standards Codification is the single authoritative source of U.S. GAAP for nongovernmental entities (other than SEC guidance for public companies). All other sources are nonauthoritative.
Wrong (B): AICPA Accounting Interpretations are nonauthoritative under the GAAP hierarchy established by ASC 105 and may only be considered when the ASC does not address a transaction.
Wrong (C): FASB Concepts Statements are nonauthoritative guidance that provides the conceptual underpinning for standards but do not themselves constitute GAAP under ASC 105.
Wrong (D): Industry practice widely recognized as generally accepted is nonauthoritative and ranks below the ASC in the hierarchy; it may only be considered when the ASC is silent.$EXPL$,
  cognitive_level = 1,
  difficulty = 'medium'
WHERE id = 4710;

-- Q4715 [medium] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 105-10-05-2, when the ASC does not address a specific transaction, an entity should first consider guidance within the ASC for similar transactions or events by analogy. This takes priority over all nonauthoritative sources.
Wrong (A): IFRS is a nonauthoritative source under the U.S. GAAP hierarchy and should be considered only after ASC guidance by analogy has been exhausted per ASC 105-10-05-3.
Wrong (B): Industry practices are nonauthoritative and rank below ASC analogical guidance in the hierarchy established by ASC 105.
Wrong (C): Internal management preferences are not a recognized source of accounting guidance under any level of the GAAP hierarchy and cannot justify an accounting policy choice.$EXPL$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4715;

-- Q4716 [easy] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB's authoritative literature and the AICPA Code of Professional Conduct, GASB is responsible for establishing GAAP for state and local governmental entities in the United States.
Wrong (B): FASB sets accounting standards for nongovernmental entities under ASC 105, not for state and local governments which fall under GASB's jurisdiction.
Wrong (C): The IASB sets International Financial Reporting Standards (IFRS) for international use and has no authority over U.S. state and local government accounting.
Wrong (D): The SEC has authority over financial reporting for public companies but generally defers standard-setting to FASB and does not set standards for governmental entities.$EXPL$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4716;

-- Q4718 [hard] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under FASB Concepts Statement No. 6 (CON 6), paragraphs 25-89, the ten elements of financial statements for business entities are assets, liabilities, equity, investments by owners, distributions to owners, comprehensive income, revenues, expenses, gains, and losses. Appropriations are a governmental budgetary concept under GASB standards, not a CON 6 element.
Wrong (A): Comprehensive income is explicitly one of the ten elements defined in CON 6, paragraph 70, as the change in equity from non-owner sources.
Wrong (C): Distributions to owners is defined in CON 6, paragraph 67, as decreases in equity resulting from transferring assets or incurring liabilities to owners.
Wrong (D): Investments by owners is defined in CON 6, paragraph 66, as increases in equity resulting from transfers of something of value to the entity by owners.$EXPL$,
  cognitive_level = 1,
  difficulty = 'hard'
WHERE id = 4718;

-- Q4719 [hard] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under FASB Concepts Statement No. 8 (CON 8), Chapter 3, QC12, faithful representation requires that financial information represent the substance of an economic phenomenon rather than merely its legal form. When economic substance differs from legal form, accounting should reflect the economic reality.
Wrong (A): Legal form does not always determine accounting treatment; the conceptual framework explicitly prioritizes economic substance when the two conflict, as with finance leases under ASC 842.
Wrong (B): Reporting based solely on legal structure regardless of economic reality directly contradicts the faithful representation objective in CON 8, which requires substance over form.
Wrong (D): Form and substance frequently differ in financial reporting, as demonstrated by finance leases, certain transfers of receivables, and variable interest entities where legal and economic characteristics diverge.$EXPL$,
  cognitive_level = 2,
  difficulty = 'hard'
WHERE id = 4719;

-- Q4721 [hard] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under IAS 16.29, IFRS permits entities to use either the cost model or the revaluation model for property, plant, and equipment. U.S. GAAP under ASC 360-10-35 requires the cost model with impairment testing and does not permit upward revaluation. This remains a significant convergence gap between the two frameworks.
Wrong (B): Both U.S. GAAP (ASC 230) and IFRS (IAS 7) require a statement of cash flows as a primary financial statement; this is not a difference between the frameworks.
Wrong (C): IFRS has a well-established conceptual framework (the IASB Conceptual Framework, revised 2018), so claiming it lacks one is incorrect.
Wrong (D): Both U.S. GAAP (CON 6) and IFRS (Conceptual Framework) define assets and liabilities as fundamental elements of financial statements.$EXPL$,
  cognitive_level = 1,
  difficulty = 'hard'
WHERE id = 4721;

-- Q4723 [medium] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 321-10-35-1 and ASC 820-10-35, equity investments with readily determinable fair values are measured at fair value, defined as the price that would be received to sell an asset in an orderly transaction between market participants at the measurement date. Changes in fair value are recognized in net income.
Wrong (A): Historical cost records assets at their original acquisition cost and does not adjust for subsequent market price changes, which is inconsistent with recognizing fair value changes in net income.
Wrong (B): Current replacement cost measures what it would cost to replace an asset with an equivalent asset, which differs from fair value's exit-price concept under ASC 820.
Wrong (C): Net realizable value is the estimated selling price less costs to complete and sell, commonly used for inventory under ASC 330, not for equity investments measured at fair value.$EXPL$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4723;

-- Q4731 [hard] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 410-20-25-4, an entity must recognize an asset retirement obligation at fair value in the period in which the obligation is incurred. Fair value is approximated by the present value of estimated future cash flows discounted at the credit-adjusted risk-free rate. The corresponding amount is capitalized as an increase to the related long-lived asset.
Wrong (A): Recording the ARO at the undiscounted amount of $2,000,000 ignores the time value of money, which is a fundamental requirement of ASC 410-20-30-1 for measuring the obligation at fair value.
Wrong (C): Deferring recognition until actual dismantlement violates ASC 410-20-25, which requires recognition when the legal obligation is incurred, not when it is settled.
Wrong (D): The fair value of the platform itself is irrelevant to the ARO measurement; the obligation is measured based on the present value of the estimated removal costs, not the asset's market value.$EXPL$,
  cognitive_level = 3,
  difficulty = 'hard'
WHERE id = 4731;

-- Q4732 [medium] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 710-10-25-1, a liability for compensated absences must be accrued when the rights either vest or accumulate, payment is probable, and the amount can be reasonably estimated. Even though the vacation rights do not vest (are forfeited upon termination), the accumulation feature requires accrual.
Wrong (B): ASC 710-10-25-1 does not require vesting as a prerequisite for accrual; accumulation alone is sufficient to trigger the accrual obligation when the other conditions are met.
Wrong (C): The accrual is calculated at the employees' current compensation rates, not at minimum wage; ASC 710-10-35 addresses measurement at the rate expected to be paid.
Wrong (D): Vacation days can and must be accrued when the criteria in ASC 710-10-25 are satisfied, including accumulation, probability of payment, and reasonable estimability.$EXPL$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4732;

-- Q4739 [medium] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 606-10-25-27, unredeemed gift cards represent a contract liability because the entity has received cash but has not yet transferred goods or services to satisfy the performance obligation. The $150,000 is reported as deferred revenue until redemption or breakage recognition under ASC 606-10-55-49.
Wrong (A): Recognizing $150,000 as revenue before the performance obligation is satisfied violates ASC 606-10-25-23, which requires revenue recognition only when control of the promised goods or services transfers to the customer.
Wrong (B): Contra revenue would reduce reported revenue, but unredeemed gift cards are not a reduction of revenue; they represent an unfulfilled performance obligation reported as a liability.
Wrong (D): Unredeemed gift cards create a legal and accounting obligation that must be reported; ignoring them would understate liabilities and potentially overstate income.$EXPL$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4739;

-- Q4741 [easy] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 720-30-25 (or the property tax accrual guidance in ASC 450), property taxes of $48,000 per year equal $4,000 per month. Assuming a January 1 assessment date with monthly accrual, four months (January through April, with March 31 representing the end of the accrual period through March) yields 4 months x $4,000 = $16,000 accrued but unpaid as of March 31.
Wrong (A): $4,000 represents only one month of property tax accrual and understates the obligation by three months.
Wrong (B): $12,000 represents only three months of accrual and would apply only through the end of February, not March 31.
Wrong (C): $48,000 represents the full annual assessment and would only be appropriate as an accrual at December 31, not March 31.$EXPL$,
  cognitive_level = 3,
  difficulty = 'easy'
WHERE id = 4741;

-- Q4746 [easy] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 250-10-45-5, a change in accounting principle is generally reported through retrospective application to all prior periods presented, adjusting the financial statements as if the new principle had always been used. The opening balance of retained earnings for the earliest period presented is adjusted for the cumulative effect.
Wrong (B): Prospective application is the treatment for changes in accounting estimates under ASC 250-10-45-17, not for changes in accounting principles.
Wrong (C): A cumulative catch-up adjustment to current-period retained earnings only was the treatment under the previous APB Opinion No. 20 framework, which was superseded by ASC 250's retrospective approach.
Wrong (D): Restating only the immediately preceding period is insufficient; ASC 250-10-45-5 requires adjustment of all prior periods presented in the comparative financial statements.$EXPL$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4746;

-- Q4747 [easy] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 250-10-45-17, a change in accounting estimate is accounted for prospectively, beginning in the period of the change and future periods if the change affects both. No retrospective adjustment or restatement is made for estimate changes. Changing the useful life from 10 to 7 years is a change in estimate.
Wrong (A): Retrospective adjustment of all prior periods is the treatment for changes in accounting principle under ASC 250-10-45-5, not for changes in estimates.
Wrong (C): Restating prior-period financial statements is the treatment for error corrections under ASC 250-10-45-23, not for changes in accounting estimates.
Wrong (D): A cumulative effect adjustment to retained earnings is not required for estimate changes; the revised estimate is simply applied to current and future depreciation calculations.$EXPL$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4747;

-- Q4748 [easy] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 250-10-20, a change in accounting principle involves adopting a different generally accepted accounting method for the same type of transaction. Changing from FIFO to weighted-average for inventory costing is a voluntary change in accounting principle because both methods are acceptable under ASC 330-10-30.
Wrong (B): Revising the estimated residual value of a machine is a change in accounting estimate under ASC 250-10-20, not a change in principle, because it involves updating an assumption used in applying the existing depreciation method.
Wrong (C): Correcting a mathematical error in prior-year depreciation is an error correction under ASC 250-10-20, not a change in principle, because it involves fixing an incorrect application of an existing method.
Wrong (D): Changing the estimated percentage of uncollectible accounts is a change in accounting estimate under ASC 250-10-20, involving a revised prediction of future events rather than a different accounting method.$EXPL$,
  cognitive_level = 2,
  difficulty = 'easy'
WHERE id = 4748;

-- Q4749 [medium] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 250-10-45-23, an error in previously issued financial statements must be corrected by restating the prior-period financial statements when presented comparatively. The $50,000 of unrecorded depreciation in Year 1 is corrected in the Year 1 column when comparative statements are presented, and opening retained earnings of the earliest period is adjusted if necessary.
Wrong (A): Prospective treatment by recording the expense in Year 3 would misstate both Year 1 (understated expense) and Year 3 (overstated expense), violating ASC 250-10-45-23's restatement requirement.
Wrong (C): A change in accounting estimate is a different category under ASC 250; the failure to record known depreciation is an error, not a revised estimate, because the information was available and the calculation was simply omitted.
Wrong (D): Disclosure only without adjustment is insufficient for material errors; ASC 250-10-45-23 requires restatement of prior periods, not merely footnote disclosure.$EXPL$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4749;

-- Q4751 [medium] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 250-10-45-18, a change in depreciation method is classified as a change in accounting estimate effected by a change in accounting principle. Because the depreciation method reflects the pattern in which economic benefits are consumed, changing it is inseparable from revising estimates and is accounted for prospectively.
Wrong (A): Although changing a depreciation method involves a change in principle, ASC 250-10-45-18 specifically classifies it as estimate-effected-by-principle, requiring prospective treatment rather than the retrospective application normally used for principle changes.
Wrong (C): An error correction requires restatement and applies when GAAP was incorrectly applied; changing between two acceptable depreciation methods is a voluntary change, not an error under ASC 250-10-20.
Wrong (D): A change in reporting entity involves presenting financial statements for a different entity or combination of entities and requires retrospective application; changing a depreciation method does not alter the reporting entity.$EXPL$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4751;

-- Q4755 [medium] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 250-10-45-5, changing from the completed-contract method to the percentage-of-completion method is a change in accounting principle that must be accounted for retrospectively by adjusting prior-period financial statements to reflect the new method as if it had always been used.
Wrong (A): Prospective application for new contracts only is incorrect; ASC 250 requires retrospective application to existing contracts in prior periods unless impracticable.
Wrong (B): An error correction applies when a non-GAAP method was used; both completed-contract and percentage-of-completion were acceptable methods under prior GAAP (pre-ASC 606), making this a voluntary principle change, not an error.
Wrong (C): A change in estimate is accounted for prospectively but involves revising an assumption, not switching between two different accounting methods for the same type of transaction.$EXPL$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4755;

-- Q4756 [medium] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 250-10-45-23, a material error in applying the revenue recognition criteria that overstated revenue in the prior year requires restatement of prior-period financial statements. Material errors in previously issued financial statements must be corrected through restatement.
Wrong (A): An immaterial error of $500 in accrued wages would not require restatement because ASC 250-10-45-27 permits immaterial errors to be corrected in the current period without prior-period adjustment.
Wrong (B): A change in the estimated useful life of equipment is a change in accounting estimate under ASC 250-10-45-17, accounted for prospectively, not an error requiring restatement.
Wrong (D): A press release correction is not governed by ASC 250 financial statement restatement requirements; press releases are not part of the audited financial statements.$EXPL$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4756;

-- Q4757 [easy] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 250-10-20, failure to accrue a known warranty obligation is an error in previously issued financial statements because the information was available and the accrual should have been recorded. Under ASC 250-10-45-23, this requires restatement of Year 2 financial statements when presented comparatively.
Wrong (A): A change in accounting principle involves voluntarily adopting a different acceptable method under ASC 250-10-20; failing to record a known obligation is not a voluntary method change.
Wrong (B): A change in accounting estimate involves revising an assumption under ASC 250-10-45-17; the failure to record a known accrual is an omission error, not a revised estimate of an uncertain amount.
Wrong (D): A change in reporting entity involves presenting financial statements for a different entity or combination under ASC 250-10-45-21; it has no relation to omitting an accrual.$EXPL$,
  cognitive_level = 2,
  difficulty = 'easy'
WHERE id = 4757;

-- Q4759 [easy] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 250-10-45-17, all changes in accounting estimate are accounted for prospectively, regardless of the source of the new information. It does not matter whether the revised estimate arises from new information, additional experience, or subsequent developments.
Wrong (A): Splitting between retrospective and prospective application is not permitted under ASC 250; estimate changes receive uniform prospective treatment regardless of their source.
Wrong (B): Entirely retrospective application is the treatment for changes in accounting principle under ASC 250-10-45-5, not for changes in estimates, even when new information contributes to the revision.
Wrong (D): Error corrections require restatement under ASC 250-10-45-23 and apply when GAAP was misapplied; revising an estimate based on new information or better insight is explicitly a change in estimate, not an error.$EXPL$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4759;

-- Q4760 [hard] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 250-10-20, the use of an accounting method that is not in conformity with GAAP is defined as an error. Switching from a non-GAAP method to a GAAP-compliant method is therefore treated as an error correction requiring restatement of prior-period financial statements under ASC 250-10-45-23.
Wrong (A): A change in accounting principle involves switching between two acceptable GAAP methods; switching from a non-GAAP method is classified as an error correction because the prior method was never acceptable.
Wrong (B): A change in accounting estimate involves revising an assumption used in applying an existing acceptable method, not correcting the use of a method that violates GAAP.
Wrong (D): A change in reporting entity involves presenting financial statements for a different entity or combination of entities under ASC 250-10-45-21 and has no relation to correcting non-GAAP accounting methods.$EXPL$,
  cognitive_level = 4,
  difficulty = 'hard'
WHERE id = 4760;

-- Q4761 [hard] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_citation, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 250-10-45-23, the error overstated Year 1 expense by $75,000 (full expensing instead of capitalization), but depreciation of $75,000 / 5 years = $15,000 should have been recorded. Net overstatement of expenses is $75,000 - $15,000 = $60,000, causing Year 1 net income and retained earnings to be understated by $60,000.
Wrong (B): $75,000 represents the gross expense overstatement but fails to account for the $15,000 depreciation that should have been recorded in Year 1, overstating the impact by $15,000.
Wrong (C): Retained earnings is understated, not overstated, because the error caused expenses to be too high and net income to be too low by $60,000.
Wrong (D): The direction is wrong; retained earnings was understated by the error. While $60,000 is the correct magnitude, the overstated characterization is incorrect because excessive expense reduced net income.$EXPL$,
  cognitive_level = 3,
  difficulty = 'hard'
WHERE id = 4761;

-- Q4762 [hard] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_citation, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 250-10-45-2, a voluntary change in accounting principle must be justified by demonstrating that the new method is preferable for financial reporting purposes. Changing a method solely because the auditor prefers it for the purpose of reducing reported expenses constitutes earnings management, not an acceptable justification under ASC 250.
Wrong (A): A new FASB standard requiring the change is a mandatory adoption, not a voluntary change, and is always an acceptable basis for changing methods under ASC 250-10-45-7.
Wrong (B): Demonstrating that the new method is preferable is the explicit standard set by ASC 250-10-45-2 for justifying voluntary principle changes.
Wrong (C): A new accounting standard that permits an alternative method better reflecting the entity's economics provides a valid basis for a voluntary change when the entity can demonstrate preferability.$EXPL$,
  cognitive_level = 4,
  difficulty = 'hard'
WHERE id = 4762;

-- Q4764 [easy] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 250-10-20, a change in accounting principle involves adopting a different acceptable accounting method (e.g., FIFO to LIFO), while a change in accounting estimate involves revising an assumption or prediction used in applying an existing method (e.g., useful life, salvage value). The two receive different accounting treatments.
Wrong (A): This reverses the treatments; a change in principle is applied retrospectively under ASC 250-10-45-5, while a change in estimate is applied prospectively under ASC 250-10-45-17.
Wrong (C): Principle changes and estimate changes are not treated identically; ASC 250 prescribes retrospective application for principles and prospective application for estimates, reflecting their different natures.
Wrong (D): A change in estimate never requires prior-period restatement; ASC 250-10-45-17 explicitly requires prospective treatment for all estimate changes.$EXPL$,
  cognitive_level = 2,
  difficulty = 'easy'
WHERE id = 4764;

-- Q4769 [medium] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 54, paragraph 5, the five fund balance classifications are nonspendable, restricted, committed, assigned, and unassigned. "Unrestricted" is not one of the GASB 54 classifications; it is a term used in the net position categories for government-wide and proprietary fund statements under GASB 34.
Wrong (A): Nonspendable is one of the five GASB 54 fund balance classifications, representing amounts that are not in spendable form or are legally or contractually required to be maintained intact.
Wrong (B): Restricted is one of the five GASB 54 classifications, representing amounts constrained by external parties such as grantors, creditors, or laws of other governments.
Wrong (D): Committed is one of the five GASB 54 classifications, representing amounts constrained by formal action of the government's highest level of decision-making authority.$EXPL$,
  cognitive_level = 1,
  difficulty = 'medium'
WHERE id = 4769;

-- Q4775 [easy] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 84, paragraph 4, fiduciary fund types include pension trust funds, investment trust funds, private-purpose trust funds, and custodial funds. The custodial fund replaced the former agency fund classification.
Wrong (B): Enterprise funds are proprietary fund types under GASB 34, used for business-type activities that charge fees for services, not fiduciary activities.
Wrong (C): Capital projects funds are governmental fund types under GASB 34, used to account for financial resources restricted for the acquisition or construction of major capital facilities.
Wrong (D): Permanent funds are governmental fund types under GASB 34, used to report resources legally restricted so that only earnings may be used for a specified purpose.$EXPL$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4775;

-- Q4780 [hard] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_contrast, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 54, paragraph 8, restricted fund balance represents amounts constrained by external parties such as the federal government, grantors, or creditors for specific purposes. Since the $1,000,000 federal grant must be spent on road improvements (an externally imposed constraint), the unspent balance is classified as restricted.
Wrong (A): Nonspendable fund balance under GASB 54, paragraph 6, represents amounts not in spendable form (e.g., inventory, prepaid items) or legally required to be maintained intact; cash from a federal grant is in spendable form.
Wrong (B): Committed fund balance under GASB 54, paragraph 10, requires a formal action by the government's own highest level of decision-making authority; the constraint here is from an external party (federal government), not the government's own action.
Wrong (C): Unassigned fund balance under GASB 54, paragraph 17, is the residual classification for the general fund not constrained by any purpose; the federal grant has an explicit external restriction.$EXPL$,
  cognitive_level = 2,
  difficulty = 'hard'
WHERE id = 4780;

-- Q32 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 205-40-50-1, management must evaluate whether conditions or events raise substantial doubt about the entity's ability to continue as a going concern within one year after the date the financial statements are issued (or available to be issued). This forward-looking assessment uses the issuance date as the starting point.
Wrong (A): A six-month evaluation period is too short; ASC 205-40 explicitly requires a one-year look-forward period, not six months.
Wrong (C): A two-year evaluation period from the balance sheet date exceeds the requirement; ASC 205-40 specifies one year from the issuance date, not two years from the balance sheet date.
Wrong (D): The evaluation period is not limited to the period covered by the financial statements; ASC 205-40 requires a forward-looking assessment extending one year from the issuance date, which extends beyond the reporting period.$EXPL$,
  difficulty = 'medium'
WHERE id = 32;

-- Q36 [medium] topic: Revenue Recognition
-- Issues: unstructured, choice_cuing
UPDATE questions SET
  stem = $EXPL$Clearwater Construction has a $10 million bridge contract with original estimated costs of $8 million. At year-end, $3 million in costs have been incurred. The engineer reports unexpected soil conditions increasing total estimated costs to $9.5 million. Under ASC 606, how does this cost revision affect revenue recognized to date using the cost-to-cost input method?$EXPL$,
  choices = $EXPL$["Revenue increases because higher total costs accelerate the completion percentage","Revenue remains at $3,750,000 because ASC 606 locks in the original estimate","Revenue decreases from $3,750,000 to approximately $3,157,895 due to the lower completion percentage","Revenue drops to $3,000,000 because revenue must equal costs incurred"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 606-10-55-20, the cost-to-cost method measures progress as costs incurred divided by total estimated costs. Originally: $3M / $8M = 37.5%, yielding $3,750,000. After revision: $3M / $9.5M = 31.6%, yielding approximately $3,157,895. The cumulative catch-up adjustment under ASC 606-10-32-14 reduces recognized revenue.
Wrong (A): Higher total costs reduce the completion percentage (denominator increases while numerator stays the same), decreasing recognized revenue rather than increasing it.
Wrong (B): ASC 606 requires estimates to be updated each reporting period under ASC 606-10-32-14, with changes recognized as cumulative adjustments; original estimates are not locked in.
Wrong (D): Revenue is not limited to costs incurred; the cost-to-cost method applies the completion percentage to total transaction price, which can produce revenue above or below costs incurred depending on the profit margin.$EXPL$,
  difficulty = 'medium'
WHERE id = 36;

-- Q42 [hard] topic: Intangible Assets
-- Issues: unstructured, choice_cuing
UPDATE questions SET
  stem = $EXPL$Pemberton Media holds a $3.5 million indefinite-lived broadcast license (fair value $2.9 million) and a $1.6 million finite-lived customer list (undiscounted cash flows $1.7 million, fair value $1.3 million). Why is the broadcast license impaired but the customer list is not?$EXPL$,
  choices = $EXPL$["The broadcast license is older and more likely to have lost value over time","Both assets should be impaired because fair value is below carrying amount","The customer list is tested only when triggering events occur, which have not happened","The impairment tests differ: indefinite-lived assets compare to fair value directly, while finite-lived assets must first fail a recoverability screen using undiscounted cash flows"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (D): Under ASC 350-30-35-18, indefinite-lived intangible assets are impaired when carrying amount exceeds fair value: $3.5M - $2.9M = $600,000 loss. Under ASC 360-10-35-17, finite-lived assets use a two-step test: Step 1 compares carrying amount to undiscounted future cash flows. Since $1.7M > $1.6M, the customer list passes the recoverability screen and no impairment is recognized.
Wrong (A): Asset age is not a factor in impairment testing under either ASC 350 or ASC 360; the tests use fair value and recoverability metrics, not the age of the asset.
Wrong (B): Applying a single fair-value test to both assets ignores the different frameworks; ASC 360's undiscounted cash flow screen intentionally prevents impairment where operational value exceeds carrying amount even when fair value is lower.
Wrong (C): While triggering events prompt the test for finite-lived assets, the question states the necessary data is already available; the reason the customer list is not impaired is that it passes the recoverability screen, not that no test was performed.$EXPL$,
  difficulty = 'hard'
WHERE id = 42;

-- Q43 [medium] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 842-10-25-2, a lessee classifies a lease as a finance lease if the present value of lease payments and any residual value guarantee equals or exceeds substantially all of the fair value of the underlying asset. The 75% (lease term) and 90% (present value) thresholds from legacy ASC 840 remain common bright-line benchmarks.
Wrong (B): A lease term of less than 12 months qualifies for the short-term lease exemption under ASC 842-20-25-2, which allows the lessee to avoid recognizing a right-of-use asset and liability entirely; it is not a finance lease classification criterion.
Wrong (C): A lease that does not transfer ownership lacks one of the finance lease criteria, but ownership transfer is just one of five possible classification criteria under ASC 842-10-25-2; this answer describes a characteristic that would weigh against finance classification.
Wrong (D): The lessor retaining all risks and rewards is an operating lease characteristic from the lessor's perspective; under ASC 842, lessee classification focuses on specific criteria such as transfer of ownership, purchase option, lease term, present value, and asset specialization.$EXPL$,
  difficulty = 'medium'
WHERE id = 43;

-- Q47 [medium] topic: Equity
-- Issues: unstructured, choice_cuing
UPDATE questions SET
  stem = $EXPL$Waverly Corp. has 100,000 shares of $5 par common stock outstanding at a $40 market price. The board considers a 10% stock dividend versus a 30% stock dividend. How does the size affect the amount transferred from retained earnings?$EXPL$,
  choices = $EXPL$["Both dividends transfer the same total amount from retained earnings","The 10% dividend transfers $400,000 at market value; the 30% dividend transfers $150,000 at par value","The 30% dividend transfers $1,200,000 at market value for all shares issued","Both dividends use par value, transferring $50,000 and $150,000 respectively"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 505-20-30-3, small stock dividends (below 20-25%) are recorded at fair market value: 10,000 shares x $40 = $400,000. Under ASC 505-20-30-6, large stock dividends (above 20-25%) use par value: 30,000 shares x $5 = $150,000. Small dividends are viewed as income distributions justifying market-value capitalization, while large dividends resemble stock splits.
Wrong (A): The two dividends transfer different amounts because the accounting treatment depends on whether the dividend is classified as small or large under ASC 505-20.
Wrong (C): Market value is applied only to small stock dividends; large dividends above the 20-25% threshold use par value under ASC 505-20-30-6, so $1,200,000 overstates the transfer.
Wrong (D): Par value applies only to large stock dividends; small dividends below the 20-25% threshold must use market value under ASC 505-20-30-3, so $50,000 understates the transfer for the 10% dividend.$EXPL$,
  difficulty = 'medium'
WHERE id = 47;

-- Q53 [medium] topic: Not-for-Profit Accounting
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$The Thornfield Community Foundation adopted ASU 2016-14, reporting net assets without donor restrictions of $2.8 million and net assets with donor restrictions of $4.5 million. The restricted amount includes time-restricted grants, purpose-restricted capital campaign funds, and perpetual endowments. What is a key analytical trade-off of the two-category system compared to the old three-category model?$EXPL$,
  choices = $EXPL$["The two-category system provides identical information because the three old categories map directly to the two new ones","The system improves transparency by eliminating the temporary/permanent distinction but requires enhanced note disclosures to distinguish near-term restrictions from perpetual endowments","The system reduces transparency in all respects by providing less information than the prior model","The system eliminates the need for note disclosures because all restrictions are aggregated into one line item"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASU 2016-14 (ASC 958-210-45), the three-category model (unrestricted, temporarily restricted, permanently restricted) was replaced with two categories: with and without donor restrictions. This simplification eliminates preparer confusion but aggregates near-term and perpetual restrictions into one line. The standard compensates by requiring enhanced note disclosures about the nature, amount, and timing of restrictions.
Wrong (A): The two-category system does not preserve identical detail; aggregating time-restricted and perpetually restricted amounts into one category loses face-of-statement granularity that the three-category model provided.
Wrong (C): The two-category system is not inferior in all respects; it simplifies face presentation and reduces preparer confusion while relying on enhanced notes to maintain transparency.
Wrong (D): ASU 2016-14 increased note disclosure requirements under ASC 958-310-50 rather than eliminating them; notes are essential for users to assess the composition and timing of donor restrictions.$EXPL$,
  difficulty = 'medium'
WHERE id = 53;

-- Q54 [hard] topic: Not-for-Profit Accounting
-- Issues: unstructured, choice_cuing
UPDATE questions SET
  stem = $EXPL$A donor contributes $500,000 to a not-for-profit hospital, stipulating that the principal must be maintained in perpetuity with only investment income available for general operations. The endowment earns $25,000 in Year 1. How are the contribution and investment income classified?$EXPL$,
  choices = $EXPL$["Both amounts are classified as net assets without donor restrictions","The $500,000 is classified as a liability until the perpetuity condition is met","The $500,000 is with donor restrictions due to the perpetual restriction; the $25,000 is reclassified to without donor restrictions when earned","Both amounts remain permanently in net assets with donor restrictions"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 958-205-45-10, contributions with perpetual donor restrictions are classified as net assets with donor restrictions. The $500,000 principal carries a perpetual restriction. Under ASC 958-205-45-11, the $25,000 investment income is released to net assets without donor restrictions when earned because the donor restricted only the principal, not the earnings.
Wrong (A): The $500,000 principal cannot be classified without donor restrictions because the donor explicitly imposed a perpetual restriction requiring the principal to be maintained intact under ASC 958-605-25.
Wrong (B): Endowment contributions are not liabilities; they are recognized as revenue with donor restrictions under ASC 958-605-25 because the hospital receives an unconditional transfer of assets with a use restriction.
Wrong (D): Only the $500,000 principal carries a perpetual restriction; the $25,000 in earnings is unrestricted by the donor and must be reclassified to net assets without donor restrictions when earned.$EXPL$,
  difficulty = 'hard'
WHERE id = 54;

-- Q60 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 14, paragraph 21, a component unit is a legally separate organization for which the primary government is financially accountable. Fiscal dependence (the entity cannot adopt its own budget, set rates, or issue debt without the primary government's approval) is one of the key criteria for financial accountability under GASB 14, paragraph 21(b).
Wrong (B): A federal agency providing grants is an external funding source, not a legally separate entity for which the government is financially accountable; grant relationships do not establish component unit status under GASB 14.
Wrong (C): A private business operating within the jurisdiction is a separate economic entity not subject to the primary government's financial accountability; geographic proximity does not create a component unit relationship.
Wrong (D): A neighboring government with shared boundaries is an independent primary government with its own financial accountability and reporting obligations, not a component unit of another government.$EXPL$,
  difficulty = 'hard'
WHERE id = 60;

-- Q154 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 606-10-55-36, the primary indicator of whether an entity is a principal is whether it controls the specified good or service before transfer to the customer. Control means the ability to direct the use of and obtain substantially all the remaining benefits from the asset.
Wrong (A): Exposure to credit risk only after customer payment suggests limited risk, which is more consistent with an agent's role; a principal typically bears credit risk before and during the transaction under ASC 606-10-55-39.
Wrong (C): Earning a fixed percentage commission on each transaction is an indicator of an agent relationship under ASC 606-10-55-39, not a principal relationship, because it suggests the entity facilitates rather than controls the transaction.
Wrong (D): Not bearing inventory risk is an indicator that the entity is an agent rather than a principal under ASC 606-10-55-38; principals typically obtain control of goods (including bearing inventory risk) before transferring them to customers.$EXPL$,
  difficulty = 'medium'
WHERE id = 154;

-- Q158 [medium] topic: Fixed Assets
-- Issues: unstructured, choice_cuing
UPDATE questions SET
  stem = $EXPL$Thornfield Properties constructs a warehouse incurring $85,000 in architect fees, $12,000 in building permits, $340,000 in excavation, $45,000 in construction-period loan interest, and $22,000 in routine maintenance after the building was placed in service. What determines whether the $22,000 maintenance cost is capitalized or expensed?$EXPL$,
  choices = $EXPL$["Whether the maintenance was scheduled before or after the building was placed in service","Whether the maintenance cost exceeds the entity's capitalization threshold","Whether the cost was incurred before or after the asset reached its intended use","Whether the maintenance contractor is an employee or an independent vendor"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 360-10-30-1, costs necessary to bring an asset to its intended use are capitalized. Architect fees ($85,000), permits ($12,000), excavation ($340,000), and construction-period interest under ASC 835-20 ($45,000) total $482,000 in capitalizable costs. The $22,000 post-completion routine maintenance is expensed because it does not extend the asset's useful life or add future economic benefit under ASC 360-10-25.
Wrong (A): The scheduling of maintenance is irrelevant; the determining factor under ASC 360 is whether the cost was incurred to achieve the asset's intended use, not when it was planned.
Wrong (B): A capitalization threshold determines whether small-dollar items are expensed for practicality, but the $22,000 is expensed because routine maintenance does not meet the capitalization criteria under ASC 360, regardless of threshold.
Wrong (D): The contractor's employment status (employee vs. vendor) does not affect capitalization; the nature of the expenditure and whether it brings the asset to intended use or merely maintains it determines the accounting treatment.$EXPL$,
  difficulty = 'medium'
WHERE id = 158;

-- Q163 [medium] topic: Intangible Assets
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Clearwater Logistics leases a fleet of trucks for 5 years at $200,000 per year with a present value of lease payments of $850,000. How does finance lease versus operating lease classification affect the income statement expense pattern over the lease term?$EXPL$,
  choices = $EXPL$["Both classifications produce identical expense patterns and balance sheet effects","A finance lease front-loads expense while an operating lease recognizes level expense each year","A finance lease produces lower total expense over the lease term due to interest deductibility","An operating lease produces higher total expense because of an implicit accounting premium"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 842-20-25, a finance lease records amortization of the ROU asset (straight-line) and interest on the lease liability (front-loaded based on declining balance), producing higher combined expense in early years. An operating lease under ASC 842-20-25-6 recognizes a single straight-line lease cost each year. Total expense over 5 years is identical ($1,000,000) but the timing differs.
Wrong (A): Although both classifications recognize the same ROU asset and lease liability at commencement, the expense patterns differ meaningfully; finance leases front-load expense while operating leases produce level expense.
Wrong (C): Total pre-tax expense is identical under both classifications ($1,000,000 = $200,000 x 5 years in cash payments); the finance lease does not reduce total expense, only its timing pattern.
Wrong (D): No implicit premium exists under ASC 842; both lease types produce the same total cost over the lease term, and the operating lease simply allocates expense evenly rather than front-loading it.$EXPL$,
  difficulty = 'medium'
WHERE id = 163;

-- Q169 [medium] topic: Bonds and Debt
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Greystone Corp. issued $2 million of 8% bonds at 105 with a current carrying amount of $2,048,000. It repurchases the bonds at 98 ($1,960,000). Ashford Industries retires its own $2 million bonds (originally issued at 95, carrying amount $1,970,000) at 101 ($2,020,000). What gain or loss does each company recognize?$EXPL$,
  choices = $EXPL$["Both companies recognize a loss because early extinguishment always incurs a penalty","Greystone recognizes an $88,000 gain and Ashford recognizes a $50,000 loss","Both companies recognize a gain from eliminating future interest obligations","Greystone recognizes a $40,000 gain and Ashford a $20,000 loss, measured against face value"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 470-50-40-2, the gain or loss on early extinguishment equals the difference between the carrying amount and the reacquisition price. Greystone: $2,048,000 carrying - $1,960,000 reacquisition = $88,000 gain. Ashford: $2,020,000 reacquisition - $1,970,000 carrying = $50,000 loss. The gain or loss depends on whether the entity paid more or less than its book obligation.
Wrong (A): Early extinguishment can produce either gains or losses depending on the relationship between carrying amount and reacquisition price; there is no automatic penalty under ASC 470-50.
Wrong (C): Eliminating future interest obligations does not generate an accounting gain; the gain or loss under ASC 470-50-40-2 is a current-period measurement of carrying amount versus cash paid, not a projection of future interest savings.
Wrong (D): Face value is irrelevant to the gain/loss calculation; ASC 470-50-40-2 measures the difference between carrying amount (after premium or discount amortization) and reacquisition price, not the difference from par value.$EXPL$,
  difficulty = 'medium'
WHERE id = 169;
