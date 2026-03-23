-- FAR cleanup batch 13 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q1122 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under IRC Section 166 and ASC 326-20-30-1, the tax basis uses the direct write-off method for bad debts, deducting them only when they become wholly or partially worthless. GAAP requires the allowance method under ASC 326 (CECL), estimating expected credit losses at inception. This is one of the most common differences between tax-basis and GAAP financial statements.
Wrong (A): Tax basis uses MACRS accelerated depreciation under IRC Section 168, not straight-line. GAAP permits straight-line or other systematic methods under ASC 360. This choice reverses the actual depreciation difference.
Wrong (C): Tax-basis statements do not require a cash flow statement. Under GAAP, ASC 230 requires a statement of cash flows, making this the opposite of reality.
Wrong (D): Tax-basis financial statements follow the IRC, not ASC 606. Revenue recognition under the IRC differs significantly from the five-step model in ASC 606.$$,
  difficulty = 'medium'
WHERE id = 1122;

-- Q1123 [hard] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under AU-C 800.18-.21, when reporting on regulatory-basis financial statements intended solely for filing with a regulatory agency, the auditor includes an emphasis-of-matter paragraph identifying the applicable special purpose framework and referring to the note describing the basis, plus an other-matter paragraph restricting the distribution and use of the report to the regulatory agency and those within the entity.
Wrong (A): An unmodified opinion without additional paragraphs is insufficient because the auditor must alert readers to the special purpose framework and restrict distribution for limited-use regulatory filings.
Wrong (B): An adverse opinion is appropriate only when regulatory-basis statements are intended for general use and materially depart from GAAP. For restricted-use filings, the emphasis-of-matter and other-matter paragraphs suffice.
Wrong (D): A qualified opinion for GAAP departure is not warranted when the statements comply with the applicable regulatory framework and are restricted to the regulatory agency.$$,
  difficulty = 'hard'
WHERE id = 1123;

-- Q1125 [hard] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under AU-C 800.04, financial statements prepared in accordance with the financial reporting provisions specified in a contract or agreement are classified as the contractual basis, one of four recognized special purpose frameworks (cash, tax, regulatory, and contractual). The loan agreement''s requirements to report assets at appraised value and exclude intangibles are contractual provisions that define this framework.
Wrong (A): Regulatory basis applies to financial statements prepared in compliance with a governmental regulatory agency''s requirements (e.g., state insurance department rules), not a private lender''s loan agreement.
Wrong (B): Tax basis follows IRC provisions for income recognition and expense deduction. A loan agreement''s reporting requirements are unrelated to tax law.
Wrong (C): Modified cash basis is a variant of cash-basis reporting that records certain accruals. It is not defined by contractual reporting provisions in a loan agreement.$$,
  difficulty = 'hard'
WHERE id = 1125;

-- Q1142 [medium] topic: Contingencies
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 450-20-50-3 (formerly SFAS 5), when a loss contingency is reasonably possible (more than remote but less than probable), no accrual is required. However, disclosure is mandated, including the nature of the contingency and an estimate of the possible loss or range of loss. Here, the company must disclose the patent infringement lawsuit and the $1,500,000 to $2,500,000 estimated range.
Wrong (A): Accruing $1,500,000 (the minimum of the range) is appropriate only when the loss is probable and the amount falls within a range with no best estimate under ASC 450-20-30-1. Since the loss is only reasonably possible, no accrual is made.
Wrong (B): Accruing the midpoint of the range is not prescribed by ASC 450. Even for probable losses, the minimum of the range is accrued when no amount within the range is a better estimate.
Wrong (D): When a loss is reasonably possible, ASC 450-20-50-3 requires disclosure. No accrual or disclosure would be appropriate only if the likelihood were remote.$$,
  difficulty = 'medium'
WHERE id = 1142;

-- Q1143 [hard] topic: Contingencies
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 460-10-25-4, a guarantor must initially recognize a financial guarantee at its fair value, representing the stand-ready obligation to perform over the term of the guarantee. This fair value measurement reflects the premium that a market participant would require to issue the same guarantee at inception.
Wrong (A): Recording the guarantee at zero ignores the stand-ready obligation that exists at inception. ASC 460-10-25-4 explicitly requires initial recognition at fair value, not at zero.
Wrong (B): The expected value of future payments represents one component of the guarantee''s value but does not fully capture the fair value of the stand-ready obligation, which also incorporates the time value and risk premium.
Wrong (D): The maximum potential amount of future payments represents the worst-case exposure and is a required disclosure under ASC 460-10-50-4, not the initial measurement basis. Fair value is typically much less than the maximum potential amount.$$,
  difficulty = 'hard'
WHERE id = 1143;

-- Q1145 [hard] topic: Contingencies
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 460-10-50-4, guarantees of the indebtedness of others require disclosure regardless of the probability of loss, even when the likelihood is remote. The disclosure must include the nature and terms of the guarantee, the maximum potential amount of future payments, and any recourse provisions or collateral held.
Wrong (A): A minor customer complaint about product quality with remote likelihood would not require disclosure under ASC 450-20-50-6, as remote contingencies are generally not disclosed.
Wrong (C): A possible change in the corporate tax rate is a general economic condition, not a loss contingency under ASC 450. It does not meet the definition of an existing condition involving uncertainty about future events.
Wrong (D): A potential warranty claim on a low-value item with remote likelihood would fall under the general ASC 450 framework, where remote contingencies do not require disclosure. Unlike guarantees of indebtedness, warranty claims have no special remote-disclosure requirement.$$,
  difficulty = 'hard'
WHERE id = 1145;

-- Q1148 [easy] topic: Fair Value
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 820, when a fair value measurement uses significant inputs from different hierarchy levels, how is the entire measurement classified?$$,
  choices = $$["At the highest level of any significant input used","At the lowest level of any significant input used","At the weighted average of all input levels","At Level 2 by default for mixed-input measurements"]$$::jsonb,
  explanation = $$Correct (B): Under ASC 820-10-35-37, when a fair value measurement uses inputs from multiple hierarchy levels, the entire measurement is classified at the lowest level of any significant input. If a significant unobservable input (Level 3) is used alongside observable inputs (Level 2), the entire measurement is Level 3. This ensures that the classification reflects the greatest degree of estimation uncertainty present.
Wrong (A): Classification is based on the lowest significant input level, not the highest. Using the highest level would understate the estimation uncertainty inherent in the measurement.
Wrong (C): The fair value hierarchy uses discrete levels (1, 2, or 3) and does not permit weighted averages or fractional classifications between levels.
Wrong (D): There is no default classification at Level 2 for mixed-input measurements. The hierarchy requires assessment of each significant input''s level, with classification at the lowest.$$,
  difficulty = 'easy'
WHERE id = 1148;

-- Q1153 [hard] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 825-10-15-5, the fair value option cannot be elected for investments in subsidiaries that are consolidated. Consolidated subsidiaries are eliminated in consolidation, so applying the fair value option would conflict with the consolidation accounting model. Other exclusions include interests in consolidated VIEs, pension and OPEB obligations, and certain lease-related assets and liabilities.
Wrong (A): Notes receivable from customers are eligible for the fair value option under ASC 825-10-15-4, which permits the election for most recognized financial assets.
Wrong (B): Corporate bonds held as investments are eligible for the fair value option. An entity may elect fair value measurement at initial recognition for debt securities that would otherwise be classified under ASC 320.
Wrong (D): Financial guarantees within the scope of ASC 460 are eligible for the fair value option, allowing the guarantor to measure the obligation at fair value through earnings rather than under the ASC 460 measurement model.$$,
  difficulty = 'hard'
WHERE id = 1153;

-- Q1155 [hard] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 820-10-35-5, in the absence of a principal market, the entity must use the most advantageous market — the market that maximizes the amount received for an asset or minimizes the amount paid to transfer a liability, after considering transaction costs. The principal market (the market with the greatest volume and level of activity) takes priority when it exists.
Wrong (A): The market where the entity most frequently transacts is not necessarily the principal market or the most advantageous market. ASC 820 prioritizes volume and activity level for identifying the principal market, not the entity''s transaction frequency.
Wrong (B): Using any active market the entity can access is too broad. ASC 820 requires selecting the specific market that maximizes proceeds (for assets) or minimizes payments (for liabilities), not any available market.
Wrong (C): The market with the lowest transaction costs is not the correct criterion. While transaction costs are considered in identifying the most advantageous market, they are not used to measure fair value itself under ASC 820-10-35-9B.$$,
  difficulty = 'hard'
WHERE id = 1155;

-- Q1282 [hard] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 820-10-20, fair value is defined as the price that would be received to sell an asset or paid to transfer a liability in an orderly transaction between market participants at the measurement date. This is an exit price concept, reflecting the perspective of market participants rather than entity-specific assumptions.
Wrong (A): The amount an entity would pay to acquire an asset describes an entry price (acquisition cost), not an exit price. ASC 820 explicitly distinguishes fair value from entry prices, which may differ due to transaction-specific factors.
Wrong (C): Replacement cost adjusted for physical deterioration describes the cost approach, which is one valuation technique permitted under ASC 820-10-35-24C but is not the definition of fair value itself.
Wrong (D): Present value of expected future cash flows discounted at the risk-free rate describes a specific income approach calculation. The income approach under ASC 820-10-35-24A uses risk-adjusted discount rates or certainty-equivalent cash flows, not necessarily the risk-free rate.$$,
  difficulty = 'hard'
WHERE id = 1282;

-- Q1283 [medium] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 330-10-35-1B, net realizable value for inventory is defined as the estimated selling price in the ordinary course of business less reasonably predictable costs of completion, disposal, and transportation. This is an entity-specific measurement that falls outside the scope of ASC 820. ASC 820-10-15-1A explicitly excludes measurements that use concepts different from fair value, including inventory NRV.
Wrong (A): NRV is not an application of the ASC 820 fair value hierarchy. NRV uses entity-specific selling prices and costs, while ASC 820 fair value uses market-participant assumptions.
Wrong (C): NRV is not required to follow the Level 1, 2, 3 input hierarchy because it is outside the scope of ASC 820. The hierarchy applies only to fair value measurements as defined by that standard.
Wrong (D): NRV is not identical to fair value less costs to sell. Fair value under ASC 820 reflects a market-participant exit price, while NRV reflects an entity-specific selling price less entity-specific costs, producing potentially different amounts.$$,
  difficulty = 'medium'
WHERE id = 1283;

-- Q1857 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 715-20-35-26, net actuarial gains and losses arising during the period are recognized in other comprehensive income (OCI). These amounts are subsequently amortized from accumulated OCI into net periodic pension cost using the corridor approach or another systematic method.
Wrong (A): Service cost for the current period is a component of net periodic pension cost reported in net income under ASC 715-30-35-4, not in OCI.
Wrong (B): Interest cost on the projected benefit obligation is also a component of net periodic pension cost reported in net income under ASC 715-30-35-4, not in OCI.
Wrong (C): Amortization of prior service cost represents a reclassification from accumulated OCI into net periodic pension cost (net income). It reduces the OCI balance rather than being initially recognized there.$$,
  difficulty = 'medium'
WHERE id = 1857;

-- Q1858 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 250-10-45-18, a change in depreciation method (such as from double-declining balance to straight-line) is treated as a change in accounting estimate effected by a change in accounting principle. It is applied prospectively from the date of change, with the new method used for the remaining depreciable base over the remaining useful life.
Wrong (A): A change in depreciation method is not a pure change in accounting principle requiring retrospective application. ASC 250-10-45-18 specifically classifies it as an estimate change effected by a principle change, requiring prospective treatment.
Wrong (C): An error correction requiring restatement applies to mathematical mistakes, misapplication of GAAP, or oversights (ASC 250-10-20). A deliberate change in depreciation method is not an error.
Wrong (D): A change requiring footnote disclosure only is insufficient. While disclosure is required, the change also affects the computation of depreciation expense going forward through prospective application.$$,
  difficulty = 'medium'
WHERE id = 1858;

-- Q1859 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 250-10-45-23, prior period errors are corrected through retrospective restatement of the financial statements for each prior period presented. The omitted $30,000 of depreciation expense is recorded in the prior year by restating those financial statements and adjusting the opening balance of retained earnings for periods not presented.
Wrong (A): Prospective adjustment only applies to changes in accounting estimates under ASC 250-10-45-17, not to error corrections. An omission of a known expense is an error, not a change in estimate.
Wrong (B): Recording the $30,000 as current-year expense would misstate both the prior and current periods. The error belongs in the period it occurred, and restatement corrects the prior period rather than burdening the current year.
Wrong (C): Disclosure in the footnotes with no adjustment is insufficient for a material error. ASC 250 requires both restatement and disclosure of the nature and effect of the error.$$,
  difficulty = 'medium'
WHERE id = 1859;

-- Q1860 [hard] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 250-10-45-7, a change from FIFO to LIFO is a special exception to retrospective application. Because it is generally impracticable to determine the cumulative effect retrospectively (prior-year LIFO layers cannot be reconstructed), the change is applied prospectively from the beginning of the year of change, using the opening FIFO inventory as the base-year LIFO layer.
Wrong (A): Retrospective restatement of all prior periods is the general rule for changes in accounting principle under ASC 250-10-45-5, but the FIFO-to-LIFO change is a recognized impracticability exception because LIFO layers for prior years cannot be reliably determined.
Wrong (B): Footnote disclosure only, without any financial statement adjustment, is insufficient. While disclosure of the change is required, the entity must also apply LIFO prospectively beginning with the year of change.
Wrong (C): A cumulative-effect adjustment to retained earnings is used when retrospective application is impracticable for all prior periods but the cumulative effect can be determined. For FIFO-to-LIFO changes, even the cumulative effect is typically indeterminable, so full prospective treatment applies.$$,
  difficulty = 'hard'
WHERE id = 1860;

-- Q1861 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 250-10-45-5, a voluntary change in accounting principle (such as from completed-contract to percentage-of-completion for long-term contracts) requires retrospective application. The entity restates prior period financial statements as if the new principle had always been used and discloses the nature and reason for the change.
Wrong (A): Prospective application is used for changes in accounting estimates under ASC 250-10-45-17 and for the FIFO-to-LIFO exception, not for voluntary changes in accounting principle where retrospective application is practicable.
Wrong (B): Footnote disclosure only, without restating prior periods, does not satisfy ASC 250''s requirement for retrospective application. Both restatement and disclosure are required.
Wrong (C): A cumulative catch-up adjustment in the current period only was the approach under the superseded APB Opinion 20. Under current ASC 250, the general requirement is full retrospective restatement of all prior periods presented.$$,
  difficulty = 'medium'
WHERE id = 1861;

-- Q1862 [easy] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 250-10-45-17, a change in accounting estimate is accounted for prospectively. Revising the warranty liability percentage from 3% to 4% based on updated claims experience is a change in estimate. The new 4% rate is applied to current and future periods, with no retroactive adjustment to prior periods.
Wrong (A): A change in accounting principle applied retrospectively involves switching from one acceptable principle to another (e.g., LIFO to FIFO) under ASC 250-10-45-5. Revising a warranty percentage is a change in estimate, not a change in principle.
Wrong (C): An error correction requiring restatement applies to mistakes or oversights under ASC 250-10-45-23. Updating an estimate based on new information is not an error — it reflects the normal revision process as better data becomes available.
Wrong (D): A cumulative catch-up adjustment is not the treatment for a change in estimate. Estimates are applied prospectively, affecting only the current and future periods.$$,
  difficulty = 'easy'
WHERE id = 1862;

-- Q1863 [medium] topic: Financial Statements
-- Issues: no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 210-10-45-1, the current ratio is calculated as current assets divided by current liabilities. After paying $40,000 of a current liability with cash: current assets = $320,000 − $40,000 = $280,000; current liabilities = $200,000 − $40,000 = $160,000. Current ratio = $280,000 / $160,000 = 1.75. When the initial ratio exceeds 1.0, reducing both the numerator and denominator by the same amount increases the ratio.
Wrong (A): A ratio of 1.40 would result from dividing $280,000 by $200,000, incorrectly failing to reduce the current liabilities by the $40,000 payment.
Wrong (B): A ratio of 1.60 is the original current ratio before the payment ($320,000 / $200,000). It does not reflect the impact of the cash payment on both current assets and current liabilities.
Wrong (D): A ratio of 1.56 does not correspond to any correct calculation of the post-payment current assets and current liabilities.$$,
  difficulty = 'medium'
WHERE id = 1863;

-- Q1866 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 855-10-25-1, a Type I (recognized) subsequent event provides additional evidence about conditions that existed at the balance sheet date. Settlement of litigation that confirms a year-end loss estimate existed at the balance sheet date requires adjustment to the financial statements, as the underlying condition (the litigation) was present at year end.
Wrong (A): A fire destroying a warehouse two months after the balance sheet date is a Type II (nonrecognized) subsequent event under ASC 855-10-25-3 because the condition (the fire) did not exist at year end. It requires disclosure only.
Wrong (C): A major customer declaring bankruptcy due to events arising after year end is a Type II event. The post-year-end cause means the bankruptcy does not provide evidence of conditions existing at the balance sheet date.
Wrong (D): Issuance of new debt after the balance sheet date is a Type II event under ASC 855-10-25-3. It represents a new condition arising after year end and requires disclosure, not adjustment.$$,
  difficulty = 'medium'
WHERE id = 1866;

-- Q1867 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 830-10-45-3 (current rate method), revenues and expenses of a foreign subsidiary whose functional currency is the local currency are translated at the weighted-average exchange rate for the period. This approximates translating each transaction at the rate on the date it occurred. The resulting translation adjustment is reported in accumulated other comprehensive income.
Wrong (A): Historical rates at the date of each transaction are used for translating equity accounts (e.g., common stock, additional paid-in capital) under ASC 830-10-45-3, not for revenues and expenses when using the current rate method.
Wrong (C): The current rate at the balance sheet date is used for translating assets and liabilities under the current rate method per ASC 830-10-45-3, not for revenues and expenses.
Wrong (D): A fixed contractual rate is not a valid exchange rate for translation under ASC 830. GAAP requires the use of actual exchange rates prevailing during the period.$$,
  difficulty = 'medium'
WHERE id = 1867;

-- Q1870 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 250-10-45-23, failure to record accrued salaries payable is an error — an omission in the prior period financial statements. Errors are corrected by restating the prior period financial statements to include the accrued salaries that should have been recorded, and by adjusting the opening balance of retained earnings.
Wrong (A): Overestimation of useful life of equipment is a change in accounting estimate under ASC 250-10-45-17. Estimates are revised prospectively as new information becomes available, not through restatement.
Wrong (B): Revision of the estimated percentage of uncollectible accounts is a change in accounting estimate applied prospectively under ASC 250-10-45-17. Updating collection estimates based on experience is a normal revision, not an error.
Wrong (C): A change in the estimated residual value of a building is also a change in accounting estimate under ASC 250-10-45-17, applied prospectively. It reflects updated expectations about future salvage value, not a prior-period mistake.$$,
  difficulty = 'medium'
WHERE id = 1870;

-- Q1873 [hard] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 470-10-45-14, a short-term obligation expected to be refinanced on a long-term basis may be classified as noncurrent if the entity demonstrates both the intent and the ability to refinance. The ability is demonstrated by either completing the refinancing before the financial statements are issued or entering into a noncancelable financing agreement with a capable lender.
Wrong (A): Classification as a current liability solely because it is due within 12 months ignores the refinancing exception in ASC 470-10-45-14. The due date alone does not determine classification when refinancing criteria are met.
Wrong (C): Classifying the note as noncurrent regardless of whether refinancing occurs overstates the exception. ASC 470-10-45-14 requires demonstrated ability (completed refinancing or a binding agreement), not merely intent.
Wrong (D): Splitting the obligation between current and noncurrent is not a recognized classification approach under ASC 470. The entire obligation is classified as either current or noncurrent based on whether the refinancing criteria are satisfied.$$,
  difficulty = 'hard'
WHERE id = 1873;

-- Q1874 [hard] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 250-10-50-1, required disclosures for a voluntary change in accounting principle include the nature of and reason for the change, the method of applying the change, and the cumulative effect on retained earnings. The effect on future periods'' income is not required because it is inherently uncertain and forward-looking.
Wrong (A): The nature of and reason for the change is a required disclosure under ASC 250-10-50-1(a). This helps users understand the justification for the change.
Wrong (B): The method of applying the change (typically retrospective application) is a required disclosure under ASC 250-10-50-1(b). This explains how the change was implemented in the financial statements.
Wrong (D): The cumulative effect of the change on retained earnings is a required disclosure under ASC 250-10-50-1(c). This quantifies the total impact on prior-period equity from applying the new principle retrospectively.$$,
  difficulty = 'hard'
WHERE id = 1874;

-- Q1876 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 250-10-45-5, changing from LIFO to FIFO is a change in accounting principle that requires retrospective application. Prior period financial statements are restated as if FIFO had always been used, and the cumulative effect is reflected in the opening balance of retained earnings for the earliest period presented.
Wrong (B): Changing the estimated useful life of machinery is a change in accounting estimate under ASC 250-10-45-17, applied prospectively. Changes in estimates do not require retrospective restatement.
Wrong (C): Adopting a new accounting standard with a prospective transition provision follows the transition guidance specified in that standard. If the standard mandates prospective application, it is not a retrospective change in principle.
Wrong (D): Changing the depreciation method from straight-line to units-of-production is a change in accounting estimate effected by a change in principle under ASC 250-10-45-18, applied prospectively from the date of change.$$,
  difficulty = 'medium'
WHERE id = 1876;

-- Q1877 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 855-10-25-3, a major earthquake occurring after the balance sheet date is a Type II (nonrecognized) subsequent event because the condition causing the loss did not exist at December 31. Type II events are disclosed in the notes to the financial statements, including the nature of the event and an estimate of its financial effect, but no adjustment is made to the financial statements.
Wrong (A): Adjusting the December 31 financial statements to record the loss would be appropriate only for a Type I (recognized) subsequent event under ASC 855-10-25-1, where the condition existed at the balance sheet date. The earthquake is a new event.
Wrong (B): Recording a contingent liability on the balance sheet is incorrect because the earthquake did not create a condition that existed at year end. The loss is recognized in the period the event actually occurred.
Wrong (C): No reporting at all would violate ASC 855-10-50-2, which requires disclosure of Type II subsequent events that are material enough to prevent the financial statements from being misleading.$$,
  difficulty = 'medium'
WHERE id = 1877;

-- Q1878 [easy] topic: Statement of Cash Flows
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 230, how should a company report the acquisition of a building by issuing a long-term mortgage note directly to the seller on its statement of cash flows?$$,
  choices = $$["As a $500,000 operating outflow","As a noncash investing and financing activity disclosed in a supplemental schedule","As a $500,000 investing outflow and a $500,000 financing inflow","As a $500,000 financing outflow"]$$::jsonb,
  explanation = $$Correct (B): Under ASC 230-10-50-3, acquiring an asset by directly issuing debt to the seller is a noncash transaction involving both investing (building acquisition) and financing (mortgage issuance). Because no cash changes hands, it is excluded from the statement of cash flows and instead disclosed in a separate supplemental schedule or in the notes.
Wrong (A): An operating outflow is incorrect because acquiring a building is an investing activity, and no cash was actually paid in this transaction. Operating activities relate to the entity''s primary revenue-generating operations.
Wrong (C): Reporting both a $500,000 investing outflow and a $500,000 financing inflow would overstate actual cash flows. Since no cash was exchanged, neither an investing outflow nor a financing inflow occurred.
Wrong (D): A financing outflow implies a cash payment to retire or reduce financing. No cash was disbursed in this transaction, and acquiring an asset is an investing activity, not a financing activity.$$,
  difficulty = 'easy'
WHERE id = 1878;

-- Q1883 [medium] topic: Statement of Cash Flows
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 230-10-50-3, acquiring a building by issuing a mortgage note directly to the seller is a noncash transaction involving both investing (asset acquisition) and financing (debt issuance). Because no cash changes hands, this transaction is excluded from the body of the statement of cash flows and must be disclosed in a supplemental schedule or in the notes to the financial statements.
Wrong (A): Reporting a $500,000 investing outflow and a $500,000 financing inflow would overstate actual cash activity. ASC 230 requires that only transactions involving cash (or cash equivalents) appear on the face of the statement of cash flows.
Wrong (B): Reporting only a $500,000 investing outflow implies cash was paid for the building, which is incorrect. The building was acquired entirely through the issuance of the mortgage note with no cash exchanged.
Wrong (D): Reporting only a $500,000 financing inflow implies cash was received from the note, which is incorrect. The note proceeds went directly to the seller as consideration for the building, not to the company as cash.$$,
  difficulty = 'medium'
WHERE id = 1883;

-- Q1886 [medium] topic: Statement of Cash Flows
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Greystone Distributors reports COGS of $2,400,000, beginning inventory of $310,000, ending inventory of $425,000, beginning accounts payable of $180,000, and ending accounts payable of $145,000. What is the cash paid to suppliers?$$,
  choices = $$["$2,285,000","$2,400,000","$2,515,000","$2,550,000"]$$::jsonb,
  explanation = $$Correct (D): Under ASC 230-10-45-25, cash paid to suppliers is derived by adjusting COGS for changes in inventory and accounts payable. Purchases = COGS + ending inventory − beginning inventory = $2,400,000 + $425,000 − $310,000 = $2,515,000. Cash paid = purchases + decrease in AP = $2,515,000 + ($180,000 − $145,000) = $2,550,000. The inventory increase means the company bought more than it sold, and the AP decrease means the company paid suppliers faster than it incurred new payables.
Wrong (A): $2,285,000 incorrectly subtracts both the inventory increase and the AP decrease from COGS, reversing the direction of both adjustments.
Wrong (B): $2,400,000 equals COGS unadjusted, ignoring the working capital changes in inventory and accounts payable that are essential to converting accrual COGS to cash paid.
Wrong (C): $2,515,000 represents purchases (COGS adjusted for inventory change) but fails to add the $35,000 AP decrease, understating the actual cash paid to suppliers.$$,
  difficulty = 'medium'
WHERE id = 1886;

-- Q1891 [easy] topic: Statement of Cash Flows
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 230-10-50-3, issuing common stock in exchange for land is a noncash transaction involving both investing (land acquisition) and financing (stock issuance). Because no cash changes hands, the transaction is excluded from the body of the statement of cash flows and disclosed in a supplemental schedule or in the notes.
Wrong (A): Reporting a $300,000 financing inflow and a $300,000 investing outflow implies that cash was received from the stock issuance and then paid for the land. No cash was involved in this exchange.
Wrong (B): Reporting a $300,000 investing outflow only implies cash was paid for the land, which is incorrect. The consideration was common stock, not cash.
Wrong (C): A $300,000 net zero effect within financing activities mischaracterizes the transaction. The exchange involves both investing (land) and financing (stock) components, and no cash flow occurred in either category.$$,
  difficulty = 'easy'
WHERE id = 1891;

-- Q1893 [medium] topic: Statement of Cash Flows
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 230-10-50-3, converting bonds into common stock is a noncash financing activity because no cash is exchanged. The elimination of the bond liability and the issuance of common stock occur simultaneously through a noncash exchange. This transaction must be disclosed in a supplemental schedule or in the notes to the financial statements.
Wrong (A): A $200,000 financing outflow for bond retirement implies cash was paid to retire the bonds. In a conversion, the bonds are exchanged for stock, and no cash changes hands.
Wrong (B): A $200,000 financing inflow for stock issuance implies cash was received from issuing stock. In a conversion, the stock is issued directly to bondholders in exchange for their bonds, not for cash.
Wrong (D): A $200,000 net zero within financing activities incorrectly implies two offsetting cash flows occurred. No cash flows exist to offset — the entire transaction is noncash.$$,
  difficulty = 'medium'
WHERE id = 1893;

-- Q1911 [medium] topic: Earnings Per Share
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 260, how is convertible preferred stock tested for dilution using the if-converted method?$$,
  choices = $$["All convertible preferred stock is automatically dilutive","By comparing its per-share impact (dividend savings divided by additional shares) to basic EPS","By comparing the preferred coupon rate to the company''s cost of equity","By testing all convertible securities simultaneously without individual ranking"]$$::jsonb,
  explanation = $$Correct (B): Under ASC 260-10-45-40, the if-converted method tests each convertible preferred security by calculating its per-share impact: preferred dividends that would be saved if converted, divided by the additional common shares that would be issued upon conversion. If the per-share impact is less than basic EPS, the security is dilutive and included in diluted EPS. If it exceeds basic EPS, it is antidilutive and excluded.
Wrong (A): Convertible preferred stock is not automatically dilutive under ASC 260. Each security must be individually tested by comparing its per-share impact to basic EPS; a high-dividend preferred with a low conversion ratio can be antidilutive.
Wrong (C): Comparing the coupon rate to the cost of equity is not the dilution test under ASC 260. The test depends on the ratio of dividends saved to additional shares issued, not on a comparison of rates.
Wrong (D): ASC 260-10-45-29 requires convertible securities to be individually ranked by per-share impact from most dilutive to least dilutive, not tested simultaneously. This ranking prevents a less dilutive security from incorrectly appearing dilutive.$$,
  difficulty = 'medium'
WHERE id = 1911;

-- Q1920 [hard] topic: Earnings Per Share
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Cascade Industries has basic EPS of $4.00 (net income $600,000, 150,000 shares). It has two convertible bonds: Security 1 ($500,000 face, 10%, converts to 25 shares per $1,000 bond, 25% tax rate) and Security 2 ($400,000 face, 6%, converts to 30 shares per $1,000 bond, 25% tax rate). In what order should these be tested for diluted EPS?$$,
  choices = $$["Security 2 first ($1.50 per-share impact), then Security 1 ($3.00 per-share impact)","Security 1 first because it has higher interest expense","Both simultaneously because ranking is not required","Security 2 excluded because its 6% coupon is below cost of equity"]$$::jsonb,
  explanation = $$Correct (A): Under ASC 260-10-45-29, potentially dilutive securities are ranked by per-share impact from lowest (most dilutive) to highest (least dilutive). Security 1: after-tax interest = $500,000 × 10% × (1 − 0.25) = $37,500; additional shares = 500 × 25 = 12,500; per-share impact = $3.00. Security 2: after-tax interest = $400,000 × 6% × (1 − 0.25) = $18,000; additional shares = 400 × 30 = 12,000; per-share impact = $1.50. Security 2 ($1.50) is more dilutive and must be tested first. Both are below basic EPS of $4.00, so both are dilutive.
Wrong (B): Ranking by absolute interest expense is incorrect. ASC 260 ranks by per-share impact (interest savings divided by additional shares), not by the total dollar amount of interest.
Wrong (C): ASC 260-10-45-29 explicitly requires ranking of potentially dilutive securities. Testing simultaneously without ranking can produce an incorrect diluted EPS when a security appears dilutive individually but becomes antidilutive after more dilutive securities are included.
Wrong (D): The dilution test compares per-share impact to basic EPS, not the coupon rate to cost of equity. Security 2''s $1.50 per-share impact is well below $4.00 basic EPS, confirming it is dilutive.$$,
  difficulty = 'hard'
WHERE id = 1920;

-- Q1921 [easy] topic: Earnings Per Share
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 260-10-45-2, public entities must present both basic and diluted EPS on the face of the income statement for income from continuing operations and for net income. This dual presentation is mandatory and must appear for each class of common stock with different participation rights.
Wrong (A): Presenting only basic EPS is insufficient for public companies. ASC 260-10-45-2 requires both basic and diluted EPS to give investors information about both the current ownership structure and the potential dilution from convertible securities, options, and other dilutive instruments.
Wrong (C): EPS may not be disclosed solely in the notes under ASC 260. The standard explicitly requires presentation on the face of the income statement, where it is most prominent for financial statement users.
Wrong (D): EPS presentation is not optional for public companies. ASC 260-10-45-2 makes it a mandatory requirement. Only nonpublic entities are exempt from the EPS presentation requirement.$$,
  difficulty = 'easy'
WHERE id = 1921;

-- Q1925 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 606-10-32-31, the transaction price is allocated to each performance obligation based on relative standalone selling prices. License allocation = ($100,000 / $140,000) × $120,000 = $85,714. The total standalone selling prices are $140,000 ($100,000 license + $40,000 PCS), and the $120,000 transaction price is allocated proportionally.
Wrong (A): Allocating the entire $120,000 to the license ignores the PCS performance obligation. ASC 606 requires allocation to all distinct performance obligations, not just the primary deliverable.
Wrong (C): Allocating $100,000 (the standalone selling price) to the license ignores that the transaction price of $120,000 is less than the combined standalone selling prices of $140,000. The relative allocation method proportionally reduces each allocation.
Wrong (D): $80,000 does not result from the relative standalone selling price calculation. The correct proportional allocation yields $85,714 for the license.$$,
  difficulty = 'medium'
WHERE id = 1925;

-- Q1926 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 606-10-32-8, variable consideration is estimated using either the expected value or the most likely amount method. Using the most likely amount, the company estimates the customer will purchase all 1,000 units, triggering the 5% volume discount. Transaction price = 1,000 × $50 × 0.95 = $47,500. The variable consideration is constrained only to the extent a significant revenue reversal is probable.
Wrong (A): $50,000 represents the gross amount without applying the volume discount. Since the company estimates it is highly probable the 800-unit threshold will be exceeded, the 5% discount must be reflected in the transaction price.
Wrong (B): $52,500 does not correspond to any correct application of the discount. It may result from a miscalculation of the discount percentage or unit count.
Wrong (C): $40,000 may result from incorrectly applying a 20% discount or miscalculating the number of discounted units. The contract specifies a 5% volume discount on all units when the threshold is met.$$,
  difficulty = 'medium'
WHERE id = 1926;

-- Q1927 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 606-10-32-5, variable consideration includes amounts that may vary due to discounts, rebates, refunds, credits, incentives, performance bonuses, penalties, or similar items. A performance bonus contingent on early completion is variable because the amount depends on a future event (whether the project is completed ahead of schedule).
Wrong (B): A fixed fee of $10,000 is not variable consideration because its amount does not depend on any future event or performance condition. Fixed fees are included in the transaction price at their stated amount.
Wrong (C): The standalone selling price of a distinct good is used for allocating the transaction price under ASC 606-10-32-31, not as a type of variable consideration. Standalone selling price is a measurement concept, not a form of consideration.
Wrong (D): Noncash consideration measured at fair value under ASC 606-10-32-23 is a form of consideration but is not inherently variable. Its fair value is determined at contract inception and included in the transaction price unless the form of consideration itself varies.$$,
  difficulty = 'easy'
WHERE id = 1927;

-- Q1929 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 606-10-25-27, the three criteria for over-time revenue recognition are: (1) the customer simultaneously receives and consumes benefits, (2) the entity''s performance creates or enhances a customer-controlled asset, or (3) the asset has no alternative use and the entity has an enforceable right to payment for performance completed to date. Transferring physical possession is an indicator for point-in-time recognition under ASC 606-10-25-30, not an over-time criterion.
Wrong (A): Simultaneous receipt and consumption of benefits is the first over-time criterion under ASC 606-10-25-27(a). This applies to routine services like cleaning or security where the customer benefits as the entity performs.
Wrong (B): Creating or enhancing a customer-controlled asset is the second over-time criterion under ASC 606-10-25-27(b). This applies when the entity builds an asset on the customer''s property or specification.
Wrong (C): No alternative use with an enforceable right to payment is the third over-time criterion under ASC 606-10-25-27(c). This applies to customized goods that cannot be redirected to another customer.$$,
  difficulty = 'medium'
WHERE id = 1929;

-- Q1930 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 606-10-55-22, when a right of return exists, revenue is recognized only for the amount of consideration to which the entity expects to be entitled. Revenue = $500 × 95% = $475. The $25 expected refund is recorded as a refund liability, and the entity also records a right-of-return asset for the expected cost of inventory to be returned.
Wrong (A): Recognizing the full $500 ignores the expected 5% return rate. ASC 606 requires revenue to be reduced by the estimated returns, which represent variable consideration subject to constraint.
Wrong (B): $25 represents only the expected refund amount (the portion of the sale expected to be returned), not the amount of revenue to be recognized. Revenue is the portion the entity expects to retain.
Wrong (C): Recognizing $0 is overly conservative. ASC 606 does not defer all revenue when a return right exists; instead, revenue is recognized net of expected returns when it is probable a significant reversal will not occur.$$,
  difficulty = 'easy'
WHERE id = 1930;

-- Q1933 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 606-10-25-12, a contract modification is treated as a separate contract when two conditions are met: (1) the additional goods or services are distinct, and (2) the price reflects the standalone selling price of those additional goods or services. Since Product C is priced at its $25,000 standalone selling price and is distinct, the modification is accounted for as a separate contract independent of the original.
Wrong (A): A cumulative catch-up adjustment applies under ASC 606-10-25-13(b) when the modification is not a separate contract and the remaining goods are not distinct from those already transferred. It does not apply when the separate-contract criteria are met.
Wrong (B): Restating all prior revenue is not a treatment under ASC 606 for contract modifications. Even when modifications require adjustment, they are applied prospectively or as a cumulative catch-up, not through retrospective restatement.
Wrong (C): Prospective combination with the original contract applies under ASC 606-10-25-13(a) when the modification is not a separate contract and the remaining goods are distinct. It does not apply when the separate-contract criteria are met.$$,
  difficulty = 'medium'
WHERE id = 1933;

-- Q1935 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 606-10-25-19, a promised good or service is distinct if it meets two criteria: (1) the customer can benefit from it on its own or together with readily available resources (capable of being distinct), and (2) the promise to transfer the good or service is separately identifiable from other promises in the contract (distinct within the context of the contract).
Wrong (B): Having the highest standalone selling price among performance obligations is irrelevant to the distinctness assessment. A good or service can be distinct regardless of whether its standalone selling price is high or low relative to other deliverables.
Wrong (C): Prior standalone sales to other customers may provide evidence that the good is capable of being distinct, but it is not a requirement. A good can be distinct even if the entity has never sold it on a standalone basis, as long as the customer could benefit from it independently.
Wrong (D): Requiring specialized installation or integration services from the entity actually suggests the good or service may not be distinct within the context of the contract under ASC 606-10-25-21(b), because the entity is providing a significant integration service that combines the deliverables.$$,
  difficulty = 'easy'
WHERE id = 1935;

-- Q1938 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 606-10-55-36, a key indicator that an entity is an agent (rather than a principal) is that another party is primarily responsible for fulfilling the promise to the customer. When the seller fulfills the order and bears primary responsibility, the marketplace acts as an intermediary and recognizes revenue only for its commission or fee ($1,500), not the gross amount.
Wrong (A): Setting the selling price is an indicator that the entity is a principal under ASC 606-10-55-39, not an agent. Agents typically lack the ability to establish prices for the goods or services being sold.
Wrong (B): Bearing inventory risk is an indicator that the entity is a principal under ASC 606-10-55-38. Agents do not take ownership of or assume risk for the goods before they are transferred to the customer.
Wrong (D): Providing a warranty on the goods is an indicator of being a principal because it suggests the entity has taken responsibility for the goods'' quality and performance, which is inconsistent with an agency relationship.$$,
  difficulty = 'medium'
WHERE id = 1938;

-- Q1939 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 606-10-25-3 and ASC 606-10-32-24, when total estimated costs exceed the transaction price, the contract is onerous and the entire expected loss of $50,000 ($500,000 revenue − $550,000 estimated costs) must be recognized immediately in the period the loss is first identified. This applies regardless of the percentage of completion and ensures that foreseeable losses are not deferred.
Wrong (A): Deferring the loss until contract completion violates the immediate loss recognition principle. ASC 606 and related guidance (ASC 605-35 legacy, codified in ASC 606) require that expected losses on contracts be recognized as soon as they become evident.
Wrong (B): Waiting until costs actually exceed revenue would delay recognition of a loss that is already estimable and probable. The accounting standard requires recognition based on estimated total costs, not on a cash-basis comparison.
Wrong (C): Recognizing only the loss incurred to date understates the total expected loss. The entire anticipated loss must be recognized immediately to prevent misleading financial statements about the contract''s profitability.$$,
  difficulty = 'medium'
WHERE id = 1939;

-- Q1940 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 606-10-32-34, the residual approach is one of three methods for estimating standalone selling prices when they are not directly observable. The three methods are: (1) adjusted market assessment approach, (2) expected cost plus a margin approach, and (3) the residual approach, which is permitted only when the standalone selling price is highly variable or uncertain.
Wrong (B): The treasury stock method is used in EPS calculations under ASC 260-10-45-22 to estimate the dilutive effect of stock options and warrants. It is unrelated to revenue recognition or standalone selling price estimation.
Wrong (C): The percentage of completion method is a revenue recognition approach for long-term contracts under ASC 606-10-25-27, used to measure progress toward satisfying a performance obligation over time. It is not a method for estimating standalone selling prices.
Wrong (D): The equity method is used to account for investments in entities over which the investor has significant influence under ASC 323. It is an investment accounting method, not a standalone selling price estimation technique.$$,
  difficulty = 'easy'
WHERE id = 1940;

-- Q1941 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 606-10-32-5, early payment discounts (such as 2/10, net 30) are a form of variable consideration. When the entity estimates all customers will take the 2% discount, the transaction price is reduced accordingly: 500 units × $100 × (1 − 0.02) = $49,000. The discount is included in the transaction price estimate subject to the constraint in ASC 606-10-32-11.
Wrong (A): $50,000 represents the gross amount before considering the expected discount. Since the entity estimates all customers will take the discount, the transaction price must reflect this variable consideration.
Wrong (C): $48,000 would imply a 4% discount ($50,000 × 0.96), which exceeds the stated 2% early payment discount in the contract terms.
Wrong (D): $51,000 exceeds the gross sales amount and does not correspond to any correct application of the 2/10, net 30 discount terms.$$,
  difficulty = 'medium'
WHERE id = 1941;

-- Q1944 [hard] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 606-10-55-58, a franchise license that provides a right to access the franchisor''s intellectual property (where the franchisor continues to support, develop, and protect the brand) is a performance obligation satisfied over time. The franchisor''s ongoing activities (training, marketing, brand development) significantly affect the intellectual property to which the franchisee has rights, so revenue is recognized over the life of the franchise agreement.
Wrong (A): Recognizing the entire fee when the franchise opens treats the license as a point-in-time obligation, which is incorrect when the franchisor provides ongoing support and brand development that significantly affects the IP. A right-to-access license requires over-time recognition.
Wrong (B): Recognizing revenue at the date the agreement is signed is premature. No performance obligations have been satisfied at signing, and the franchisor must perform over the franchise period to provide the ongoing benefits.
Wrong (C): Recognizing revenue when cash is collected follows the cash basis, which is not consistent with ASC 606. Revenue is recognized as performance obligations are satisfied, not when cash is received (unless the collection method is used under specific constraints).$$,
  difficulty = 'hard'
WHERE id = 1944;

-- Q1949 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 606-10-25-12, a contract modification is treated as a separate contract when the additional goods or services are distinct and the price reflects their standalone selling price. The 3,000 additional units at $9.50 each reflect the standalone selling price, so the modification is a separate contract. The original contract continues unchanged for the remaining 6,000 units at $10 each.
Wrong (A): A cumulative catch-up adjustment applies under ASC 606-10-25-13(b) when the modification is not a separate contract and the remaining goods are not distinct from those already transferred. Here, the separate-contract criteria are met, so no catch-up is needed.
Wrong (B): Blending the rates for remaining deliveries applies under ASC 606-10-25-13(a) when the modification is not a separate contract but the remaining goods are distinct. Since this modification qualifies as a separate contract, blending is inappropriate.
Wrong (D): Deferring all revenue until all units are delivered is not a treatment under ASC 606 for modifications. Revenue continues to be recognized as units are delivered under the respective contracts.$$,
  difficulty = 'medium'
WHERE id = 1949;

-- Q1950 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 606-10-32-11, variable consideration is included in the transaction price only to the extent that it is probable that a significant reversal of cumulative revenue recognized will not occur when the uncertainty is subsequently resolved. This constraint prevents premature recognition of uncertain amounts that could lead to material revenue reversals.
Wrong (A): Customer agreement to pay the amount is not the threshold for including variable consideration. The constraint focuses on the probability of a significant reversal, not on the customer''s contractual obligation to pay a specific amount.
Wrong (B): A 10% threshold relative to the fixed price is not part of the ASC 606 constraint on variable consideration. The standard uses a qualitative/quantitative assessment of reversal probability, not a percentage-based bright line.
Wrong (C): Having three years of historical data is not a requirement. While historical experience is relevant to estimating variable consideration and assessing the constraint, ASC 606 does not mandate any specific minimum period of historical data.$$,
  difficulty = 'medium'
WHERE id = 1950;

-- Q1961 [easy] topic: Inventory
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 330-10-35-1B, inventory (other than inventory measured using LIFO or the retail inventory method) must be measured at the lower of cost or net realizable value (LCNRV). Net realizable value is the estimated selling price in the ordinary course of business less reasonably predictable costs of completion, disposal, and transportation.
Wrong (A): Historical cost alone is insufficient because ASC 330 requires a write-down when the net realizable value falls below cost. Reporting at historical cost without the lower-of-cost-or-NRV test could overstate inventory on the balance sheet.
Wrong (C): Reporting at net realizable value without comparison to cost would violate ASC 330''s lower-of test. NRV is used as the ceiling — inventory is written down to NRV only when NRV is below cost, not written up.
Wrong (D): Fair value less costs to sell is the measurement basis for certain biological assets under IAS 41, not for inventory under U.S. GAAP. ASC 330 uses the NRV concept, which is entity-specific rather than market-participant-based.$$,
  difficulty = 'easy'
WHERE id = 1961;

-- Q1974 [hard] topic: Inventory
-- Issues: no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 330-10-35-7A (dollar-value LIFO), ending inventory at current-year cost must be deflated to base-year cost to determine whether a real quantity increase occurred. Deflated ending inventory = $99,000 / 1.10 = $90,000. Since $90,000 exceeds the beginning base-year inventory of $80,000, a real increase of $10,000 (at base-year cost) has occurred, creating a new LIFO layer. The new layer is restated at the current price index: $10,000 × 1.10 = $11,000. Ending LIFO inventory = $80,000 + $11,000 = $91,000.
Wrong (A): This choice incorrectly concludes that the entire increase is due to price changes. The deflation step ($99,000 / 1.10 = $90,000) proves that a real quantity increase of $10,000 at base-year cost occurred beyond the price effect.
Wrong (B): Comparing ending inventory at current cost to beginning inventory at base-year cost is an apples-to-oranges comparison. Dollar-value LIFO requires deflating ending inventory to base-year cost before comparing to beginning base-year inventory.
Wrong (D): A LIFO liquidation occurs when ending base-year inventory is less than beginning base-year inventory, meaning quantities decreased. Here, base-year inventory increased from $80,000 to $90,000, so a new layer was added, not liquidated.$$,
  difficulty = 'hard'
WHERE id = 1974;

-- Q1986 [medium] topic: Inventory
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under IRC Section 472(c) and Treas. Reg. 1.472-2(e), the LIFO conformity rule requires that a taxpayer using LIFO for federal income tax purposes must also use LIFO as the primary method of inventory valuation for financial reporting (credit and other reports to shareholders, partners, or proprietors). This is one of the few instances where tax rules dictate financial reporting choices.
Wrong (A): The matching principle under GAAP requires expenses to be recognized in the same period as the related revenues. It is a general accounting principle, not the specific tax-conformity requirement that mandates LIFO for financial reporting when used for tax.
Wrong (B): The LIFO reserve is the difference between LIFO inventory and what inventory would be under FIFO. It is a disclosure item, not a rule requiring conformity between tax and financial reporting methods.
Wrong (C): The revenue recognition principle (ASC 606) governs when revenue is recognized from customer contracts. It is unrelated to inventory valuation method conformity between tax and financial reporting.$$,
  difficulty = 'medium'
WHERE id = 1986;
