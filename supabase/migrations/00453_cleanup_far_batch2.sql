-- FAR cleanup batch 2 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q4706 [easy] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$According to the FASB Conceptual Framework, what is the primary objective of general-purpose financial reporting?$$,
  choices = $$["To provide information useful for investor and creditor resource allocation decisions","To determine the taxable income of a reporting entity","To provide information exclusively for internal management decisions","To calculate the liquidation value of a reporting entity"]$$::jsonb,
  explanation = $$Correct (A): SFAC No. 8, Chapter 1 (OB2) states the primary objective of general-purpose financial reporting is to provide financial information about the reporting entity that is useful to existing and potential investors, lenders, and other creditors in making decisions about providing resources to the entity. This objective drives all other aspects of the conceptual framework.
Wrong (B): Tax determination is governed by the Internal Revenue Code and is not the objective of general-purpose financial reporting under GAAP.
Wrong (C): General-purpose financial reports are directed at external users, not exclusively at management, which uses internal managerial accounting.
Wrong (D): Liquidation value applies only in going-concern doubt situations and is not the primary objective of financial reporting.$$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4706;

-- Q4728 [easy] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$A company has a $100,000 note payable due on March 1 of the following year. How should this note be classified on the December 31 balance sheet?$$,
  choices = $$["As a noncurrent liability based on its original term","As a contingent liability pending settlement","As a current liability due within twelve months","As a contra asset offsetting related receivables"]$$::jsonb,
  explanation = $$Correct (C): ASC 210-10-45-6 requires classification of obligations expected to be liquidated within one year (or the operating cycle, if longer) as current liabilities. The note is due March 1, which is within twelve months of the December 31 balance sheet date, making it a current liability regardless of its original term.
Wrong (A): The original term of the obligation is irrelevant once the remaining maturity falls within twelve months of the balance sheet date.
Wrong (B): A contingent liability depends on the outcome of an uncertain future event, whereas this note is a definite obligation with a fixed due date.
Wrong (D): Notes payable are liabilities, not contra assets, and are not offset against receivables unless a legal right of offset exists under ASC 210-20.$$,
  cognitive_level = 2,
  difficulty = 'easy'
WHERE id = 4728;

-- Q4734 [easy] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$A company issues a $500,000 note payable on October 1, Year 1, with 6% annual interest payable semiannually on April 1 and October 1. What amount of accrued interest payable should be reported on the December 31, Year 1 balance sheet?$$,
  choices = $$["$30,000","$15,000","$7,500","$0"]$$::jsonb,
  explanation = $$Correct (C): ASC 835-30-25-2 requires interest to be accrued over the period the obligation is outstanding. Interest accrues from October 1 to December 31 (3 months): $500,000 x 6% x 3/12 = $7,500. This accrued interest is reported as a current liability at year-end.
Wrong (A): $30,000 represents a full year of interest ($500,000 x 6%), but only three months have elapsed since issuance.
Wrong (B): $15,000 represents six months of interest, which would be the amount at the April 1 payment date, not at December 31.
Wrong (D): Zero is incorrect because interest accrues with the passage of time regardless of when cash is paid.$$,
  cognitive_level = 3,
  difficulty = 'easy'
WHERE id = 4734;

-- Q4736 [medium] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$A company has a $200,000 line of credit, of which $120,000 has been drawn down. The drawn balance is due on demand. How should the $120,000 be classified on the balance sheet?$$,
  choices = $$["As a current liability because it is callable on demand","As a noncurrent liability based on expected repayment timing","As an equity instrument representing contributed capital","As an off-balance-sheet disclosure item only"]$$::jsonb,
  explanation = $$Correct (A): ASC 470-10-45-2 requires demand obligations to be classified as current liabilities because the creditor can require payment at any time. The entity''s expectation about whether the creditor will actually demand payment is irrelevant to classification.
Wrong (B): Noncurrent classification is prohibited for demand obligations regardless of the entity''s expectation that the creditor will not call the debt in the near term.
Wrong (C): A drawn line of credit creates a liability, not an equity instrument, because it represents an obligation to repay borrowed funds.
Wrong (D): The drawn balance is a recognized liability on the balance sheet; only the undrawn $80,000 commitment may be disclosed off-balance-sheet.$$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4736;

-- Q4763 [hard] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$A counterbalancing error, such as an understatement of ending inventory in Year 1, is discovered in Year 2 when comparative financial statements are presented. What is the required accounting treatment?$$,
  choices = $$["No correction is needed because the error self-corrects over two periods","Restatement of Year 1 is required even though the error self-corrects","Disclosure in the notes is sufficient without restatement","Restatement of all periods from inception is required"]$$::jsonb,
  explanation = $$Correct (B): ASC 250-10-45-23 requires retrospective restatement of prior-period financial statements for material errors. Even though counterbalancing errors self-correct over two periods, each individual period''s financial statements are misstated and must be restated when presented comparatively.
Wrong (A): Self-correction does not eliminate the need for restatement because each period''s financial statements are individually misstated and misleading as presented.
Wrong (C): Disclosure alone is insufficient for prior-period errors; ASC 250-10-45-23 mandates restatement of the affected periods, not merely note disclosure.
Wrong (D): Restatement from inception applies to changes in accounting principle with retrospective application, not to counterbalancing errors that affect only two periods.$$,
  cognitive_level = 4,
  difficulty = 'hard'
WHERE id = 4763;

-- Q4774 [medium] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$A city adopts its annual budget. What accounts are included in the journal entry to record the budget in the general fund?$$,
  choices = $$["Estimated Revenues, Appropriations, and Budgetary Fund Balance","Cash and Revenue for anticipated inflows","Expenditures and Accounts Payable for authorized spending","No entry is recorded because budgets are note disclosures only"]$$::jsonb,
  explanation = $$Correct (A): GASB Codification Section 1700.113 requires the budgetary entry to debit Estimated Revenues for expected inflows, credit Appropriations for authorized spending limits, and debit or credit Budgetary Fund Balance for the difference. This entry integrates budgetary control into the accounting system.
Wrong (B): Cash and Revenue are not debited at budget adoption because no resources have been received; Estimated Revenues is a budgetary account, not a revenue recognition entry.
Wrong (C): Expenditures and Accounts Payable are recorded when goods or services are received during the year, not at budget adoption.
Wrong (D): Governmental funds formally record the adopted budget through budgetary journal entries to provide legal compliance and spending control.$$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4774;

-- Q4781 [hard] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$Under GASB standards, which set of financial statements is required for proprietary funds?$$,
  choices = $$["Statement of net position, statement of revenues expenditures and changes in fund balance, and budgetary comparison","Balance sheet and income statement prepared on the accrual basis","Statement of net position, statement of revenues expenses and changes in fund net position, and statement of cash flows","Statement of fiduciary net position and statement of changes in fiduciary net position"]$$::jsonb,
  explanation = $$Correct (C): GASB Statement No. 34, paragraphs 91-105, requires proprietary funds to present three financial statements: (1) statement of net position, (2) statement of revenues, expenses, and changes in fund net position, and (3) statement of cash flows using the direct method. These reflect full accrual, business-type reporting.
Wrong (A): The statement of revenues, expenditures, and changes in fund balance is used for governmental funds, not proprietary funds, and the budgetary comparison is required only for the general fund and major special revenue funds.
Wrong (B): While proprietary funds use accrual accounting, GASB prescribes specific statement titles that differ from commercial balance sheet and income statement formats.
Wrong (D): These statements are required for fiduciary funds under GASB 84, not for proprietary funds.$$,
  cognitive_level = 1,
  difficulty = 'hard'
WHERE id = 4781;

-- Q4782 [medium] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$A permanent fund is a governmental fund type used to report resources that are:$$,
  choices = $$["Available to finance general government operations without restriction","Legally set aside for the repayment of general long-term debt","Held in trust for the benefit of pension plan beneficiaries","Legally restricted so only earnings may be spent on government programs"]$$::jsonb,
  explanation = $$Correct (D): GASB Statement No. 34, paragraph 65, defines permanent funds as governmental funds used to report resources that are legally restricted so that only earnings, not principal, may be used to support programs benefiting the government or its citizenry, such as a cemetery perpetual care fund.
Wrong (A): Resources available for general operations without restriction are reported in the general fund, not a permanent fund.
Wrong (B): Resources set aside for debt repayment are reported in debt service funds, which are a separate governmental fund type.
Wrong (C): Pension beneficiary resources are reported in pension trust funds, which are fiduciary funds, not governmental funds.$$,
  cognitive_level = 1,
  difficulty = 'medium'
WHERE id = 4782;

-- Q4784 [hard] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$Under GASB 54, which description best defines the nonspendable category of fund balance?$$,
  choices = $$["Amounts constrained by the government''s highest level of authority","Amounts intended for a specific purpose but without formal constraint","Amounts available for any governmental purpose without restriction","Amounts not in spendable form or required to be maintained intact"]$$::jsonb,
  explanation = $$Correct (D): GASB Statement No. 54, paragraph 6, defines nonspendable fund balance as amounts that cannot be spent because they are either not in spendable form (e.g., inventory, prepaid items, long-term receivables) or legally or contractually required to be maintained intact (e.g., the corpus of a permanent fund).
Wrong (A): Amounts constrained by the government''s highest level of decision-making authority are classified as committed fund balance under GASB 54, paragraph 10.
Wrong (B): Amounts intended for a specific purpose but not formally constrained are classified as assigned fund balance under GASB 54, paragraph 13.
Wrong (C): Amounts available for any purpose without restriction are classified as unassigned fund balance, which may only exist in the general fund.$$,
  cognitive_level = 2,
  difficulty = 'hard'
WHERE id = 4784;

-- Q4785 [hard] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$A school district issues $10,000,000 in general obligation bonds to finance construction of a new school. How are the bond proceeds reported in the capital projects fund?$$,
  choices = $$["As revenue from bond issuance activities","As other financing sources from bond proceeds","As a long-term liability on the fund balance sheet","As an addition to committed fund balance"]$$::jsonb,
  explanation = $$Correct (B): GASB Statement No. 34, paragraph 82, requires bond proceeds in governmental funds to be reported as other financing sources, not as revenue or long-term liabilities. The corresponding bonds payable are reported only in the government-wide financial statements because governmental funds use the current financial resources measurement focus.
Wrong (A): Bond proceeds are not classified as revenue in governmental funds; revenue represents ongoing resource inflows such as taxes and fees, not financing transactions.
Wrong (C): Governmental funds exclude long-term liabilities from their financial statements under the current financial resources measurement focus per GASB 34, paragraph 79.
Wrong (D): Bond proceeds are an other financing source, not a direct addition to fund balance; they increase fund balance only indirectly through the closing process.$$,
  cognitive_level = 2,
  difficulty = 'hard'
WHERE id = 4785;

-- Q377 [easy] topic: Financial Statements
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 220, which of the following is NOT a component of accumulated other comprehensive income (AOCI)?$$,
  choices = $$["Unrealized gains on available-for-sale debt securities","Pension prior service costs not yet recognized in net periodic cost","Retained earnings from net income","Gains and losses on cash flow hedging instruments"]$$::jsonb,
  explanation = $$Correct (C): ASC 220-10-45-10A lists the components of accumulated other comprehensive income. Retained earnings is a separate component of stockholders'' equity and is not part of AOCI. Retained earnings accumulates net income less dividends, while AOCI captures items that bypass net income.
Wrong (A): Unrealized gains and losses on available-for-sale debt securities are included in OCI under ASC 320-10-35-1 until realized through sale or credit loss recognition.
Wrong (B): Pension prior service costs not yet recognized in net periodic pension cost are a component of OCI under ASC 715-20-35-3.
Wrong (D): The effective portion of gains and losses on cash flow hedges is reported in OCI under ASC 815-30-35-3 until reclassified to earnings.$$,
  difficulty = 'easy'
WHERE id = 377;

-- Q380 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 606, when a contract modification adds distinct goods or services at their standalone selling prices, how should the modification be accounted for?$$,
  choices = $$["As a termination of the existing contract and creation of a new one","As a separate contract independent of the original","As a cumulative catch-up adjustment to the existing contract","As a prospective adjustment to remaining performance obligations"]$$::jsonb,
  explanation = $$Correct (B): ASC 606-10-25-13 requires a contract modification to be accounted for as a separate contract when the modification adds distinct goods or services and the price increase reflects their standalone selling prices. The existing contract continues unchanged, and the added goods or services are accounted for independently.
Wrong (A): Termination and re-creation of the contract applies when the remaining goods or services are distinct from those already transferred but the pricing does not reflect standalone selling prices, per ASC 606-10-25-13(a).
Wrong (C): A cumulative catch-up adjustment applies when the remaining goods or services are not distinct from those already transferred, per ASC 606-10-25-13(b).
Wrong (D): A prospective adjustment applies when the modification creates a mixture of distinct and not-distinct performance obligations, not when all added goods are distinct at standalone prices.$$,
  difficulty = 'medium'
WHERE id = 380;

-- Q385 [hard] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 606, a contract modification removes some promised goods and adds others that are NOT distinct from the goods already transferred. How should this modification be accounted for?$$,
  choices = $$["As a separate contract with independent accounting","As a terminated contract replaced by a newly created one","As a cumulative catch-up adjustment updating the measure of progress","As a reversal of revenue for removed goods with separate recognition of new goods"]$$::jsonb,
  explanation = $$Correct (C): ASC 606-10-25-13(b) requires that when remaining goods or services are not distinct from those already transferred, the modification is treated as part of the existing contract. The entity updates the transaction price and measure of progress, recognizing a cumulative catch-up adjustment to revenue as of the modification date.
Wrong (A): Separate contract treatment requires both that the added goods or services are distinct and that the price reflects standalone selling prices, which is not the case here.
Wrong (B): Contract termination and re-creation applies when remaining goods are distinct but not priced at standalone selling prices, not when they are inseparable from goods already transferred.
Wrong (D): ASC 606 does not permit piecemeal reversal and re-recognition when goods are not distinct from those already transferred; instead, the entire contract is treated as a single performance obligation.$$,
  difficulty = 'hard'
WHERE id = 385;

-- Q396 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company has a noncancelable purchase commitment for 10,000 units at $20 per unit. At year-end, the market price is $18 per unit. Before delivery, the market price recovers to $19 per unit. What amount of loss should be recognized at the balance sheet date?$$,
  choices = $$["$0 because delivery has not yet occurred","$10,000 based on the subsequent recovery price","$20,000 based on the year-end market price","$30,000 based on the full commitment amount"]$$::jsonb,
  explanation = $$Correct (C): ASC 330-10-35-17 requires recognition of a loss on firm, noncancelable purchase commitments when the market price drops below the commitment price. At the balance sheet date, the loss is ($20 - $18) x 10,000 = $20,000. The subsequent recovery to $19 occurs after the measurement date and does not affect the year-end accrual.
Wrong (A): Losses on firm purchase commitments must be recognized when the market decline occurs, not deferred until delivery takes place.
Wrong (B): The loss is measured based on conditions at the balance sheet date ($18 market price), not subsequent events that occur before delivery.
Wrong (D): $30,000 does not correspond to any valid calculation; the loss is measured as the difference between the commitment price and year-end market price times the number of units.$$,
  difficulty = 'medium'
WHERE id = 396;

-- Q399 [hard] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A LIFO liquidation results in an additional tax liability that management considers temporary. Some companies establish a LIFO liquidation reserve to mitigate this effect. Under U.S. GAAP, this reserve is:$$,
  choices = $$["Required to be recognized as a current liability","Not recognized as a liability because no third-party obligation exists","Recognized as a contra-inventory account reducing reported inventory","Recognized as a deferred tax asset offsetting future tax payments"]$$::jsonb,
  explanation = $$Correct (B): ASC 330-10-50-2 addresses LIFO liquidation disclosures but does not provide for recognition of a separate reserve liability. A LIFO liquidation reserve fails to meet the liability definition in SFAC No. 8 because there is no present obligation to transfer assets to a third party. The additional tax from LIFO liquidation is simply included in income tax expense.
Wrong (A): No authoritative guidance requires recognition of a LIFO liquidation reserve as a liability because the entity does not owe resources to an external party for the liquidation itself.
Wrong (C): A contra-inventory account would reduce reported inventory, but LIFO liquidation does not create a valuation contra; the inventory is measured at its existing LIFO layers.
Wrong (D): A deferred tax asset arises from deductible temporary differences, not from a voluntary reserve for LIFO liquidation effects.$$,
  difficulty = 'hard'
WHERE id = 399;

-- Q402 [medium] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Two companies exchange dissimilar equipment in a transaction with commercial substance. Company A gives up equipment with a book value of $50,000 and fair value of $70,000, receiving equipment with a fair value of $65,000 plus $5,000 cash. What gain should Company A recognize?$$,
  choices = $$["$0 because nonmonetary exchanges defer gains","$5,000 limited to the cash boot received","$15,000 as the difference in equipment fair values","$20,000 as the full excess of consideration over book value"]$$::jsonb,
  explanation = $$Correct (D): ASC 845-10-30-1 requires that when a nonmonetary exchange has commercial substance, gains and losses are recognized in full. Company A received total consideration of $70,000 ($65,000 equipment + $5,000 cash) and gave up an asset with a book value of $50,000, resulting in a $20,000 gain.
Wrong (A): Gain deferral applies only when the exchange lacks commercial substance under ASC 845-10-30-3, which is not the case here.
Wrong (B): Limiting the gain to cash boot received was required under the old APB 29 guidance for exchanges lacking commercial substance, not for exchanges with commercial substance.
Wrong (C): The gain is measured as total consideration received minus book value of the asset surrendered, not as the difference between the two equipment fair values.$$,
  difficulty = 'medium'
WHERE id = 402;

-- Q413 [easy] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under the qualitative assessment for goodwill impairment under ASC 350, an entity may skip the quantitative test if it concludes that:$$,
  choices = $$["Goodwill is less than 10% of the reporting unit''s total assets","An independent appraisal was performed within the last five years","The reporting unit has reported net income for three consecutive years","The fair value of the reporting unit more likely than not exceeds its carrying amount"]$$::jsonb,
  explanation = $$Correct (D): ASC 350-20-35-3A permits an entity to perform a qualitative assessment (Step 0) to evaluate whether it is more likely than not (greater than 50% likelihood) that the fair value of a reporting unit exceeds its carrying amount. If so, the quantitative impairment test is unnecessary, reducing cost and complexity.
Wrong (A): No percentage-of-total-assets threshold exists in ASC 350 for bypassing the quantitative test; the assessment is based on qualitative factors affecting fair value.
Wrong (B): The timing of a prior appraisal is not a criterion under ASC 350; the qualitative assessment considers current economic, industry, and entity-specific factors.
Wrong (C): Consecutive years of net income may be one qualitative factor but is not alone sufficient to skip the quantitative test under the standard.$$,
  difficulty = 'easy'
WHERE id = 413;

-- Q417 [hard] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company performs its annual goodwill impairment test and determines the fair value of the reporting unit is $5,000,000. The carrying amount, including goodwill of $800,000, is $5,500,000. Under the current quantitative test, what impairment loss is recognized?$$,
  choices = $$["$0 because fair value exceeds carrying amount net of goodwill","$300,000 measured as the implied goodwill shortfall","$500,000 measured as carrying amount minus fair value","$800,000 representing a full write-off of goodwill"]$$::jsonb,
  explanation = $$Correct (C): ASC 350-20-35-3C (as amended by ASU 2017-04) requires the impairment loss to equal the amount by which the carrying amount of the reporting unit exceeds its fair value, limited to the carrying amount of goodwill. Here, $5,500,000 - $5,000,000 = $500,000. Since $500,000 is less than the $800,000 of goodwill, the full $500,000 is recognized.
Wrong (A): Fair value ($5,000,000) is less than total carrying amount ($5,500,000), so impairment exists; comparing fair value to carrying amount net of goodwill is not the correct test.
Wrong (B): The old two-step test computed implied goodwill fair value, but ASU 2017-04 eliminated Step 2, simplifying the calculation to the excess of carrying amount over fair value.
Wrong (D): A full write-off of goodwill occurs only when the excess of carrying amount over fair value equals or exceeds the total goodwill balance, which is not the case here.$$,
  difficulty = 'hard'
WHERE id = 417;

-- Q424 [hard] topic: Leases
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 842, what distinguishes a direct financing lease from a sales-type lease for a lessor?$$,
  choices = $$["A direct financing lease never transfers ownership to the lessee at termination","The lessor retains the underlying asset on its balance sheet throughout the term","A direct financing lease is limited to real estate transactions","The lessor defers selling profit at commencement and recognizes it over the term"]$$::jsonb,
  explanation = $$Correct (D): ASC 842-30-25-7 provides that in a direct financing lease, any selling profit is deferred at commencement and recognized over the lease term as part of the interest income pattern. In contrast, a sales-type lease recognizes selling profit or loss at commencement. This deferred profit recognition is the key distinguishing feature.
Wrong (A): Both sales-type and direct financing leases may involve ownership transfer; the classification depends on whether a third-party residual value guarantee makes the arrangement qualify as direct financing.
Wrong (B): In both sales-type and direct financing leases, the lessor derecognizes the underlying asset and recognizes a net investment in the lease at commencement under ASC 842-30-25.
Wrong (C): Direct financing lease classification is not limited by asset type; it applies to any asset class when the criteria in ASC 842-30-25-2 through 25-7 are met.$$,
  difficulty = 'hard'
WHERE id = 424;

-- Q435 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company issues convertible bonds with a conversion feature that is NOT required to be bifurcated under ASC 815. Under ASU 2020-06, how are the convertible bonds accounted for?$$,
  choices = $$["As separate liability and equity components with a residual equity allocation","As a single equity instrument measured at fair value","As a derivative liability remeasured at fair value each period","As a single liability at the full proceeds amount with no equity component"]$$::jsonb,
  explanation = $$Correct (D): ASU 2020-06 (codified in ASC 470-20-25-2) eliminated the beneficial conversion feature and cash conversion models that previously required bifurcation. Convertible debt that does not require derivative bifurcation under ASC 815 is now accounted for as a single liability at the full proceeds amount, simplifying the accounting and eliminating non-cash interest expense from discount amortization.
Wrong (A): The separate liability and equity component model was eliminated by ASU 2020-06; the previous cash conversion and beneficial conversion feature guidance no longer applies.
Wrong (B): Convertible bonds create a liability obligation to repay principal and interest, not a pure equity instrument.
Wrong (C): Derivative liability treatment applies only when the conversion feature meets the definition of a derivative that must be bifurcated under ASC 815-15, which the stem excludes.$$,
  difficulty = 'easy'
WHERE id = 435;

-- Q442 [easy] topic: Equity
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 220, which of the following is a component of other comprehensive income (OCI)?$$,
  choices = $$["Depreciation expense on buildings","Gain on sale of equipment","Unrealized holding gain on an available-for-sale debt security","Bad debt expense recognized under CECL"]$$::jsonb,
  explanation = $$Correct (C): ASC 320-10-35-1 requires unrealized holding gains and losses on available-for-sale debt securities to be reported in other comprehensive income until the security is sold or a credit loss is recognized. OCI captures gains and losses that bypass the income statement.
Wrong (A): Depreciation expense is a component of net income reported on the income statement, not OCI.
Wrong (B): Gains on sale of equipment are recognized in net income as part of operating or non-operating income, not in OCI.
Wrong (D): Bad debt expense under the CECL model (ASC 326) is recognized in net income as a provision for credit losses, not in OCI.$$,
  difficulty = 'easy'
WHERE id = 442;

-- Q462 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under governmental fund accounting, when is an encumbrance recorded?$$,
  choices = $$["When goods or services are received by the government","When a purchase order or contract is issued committing budgetary resources","When cash is disbursed to the vendor for delivered goods","When the annual budget is formally adopted at the start of the fiscal year"]$$::jsonb,
  explanation = $$Correct (B): GASB Codification Section 1700.128 provides that encumbrances are recorded when purchase orders or contracts are issued, representing commitments of appropriated budgetary resources for future expenditures. The entry debits Encumbrances and credits Budgetary Fund Balance Reserved for Encumbrances.
Wrong (A): Receipt of goods triggers reversal of the encumbrance and recognition of an expenditure, not the initial recording of the encumbrance.
Wrong (C): Cash disbursement records a reduction in cash and accounts payable but is not the event that creates an encumbrance.
Wrong (D): Budget adoption creates the budgetary entry (Estimated Revenues, Appropriations, Budgetary Fund Balance), not an encumbrance, which arises from specific purchasing commitments during the year.$$,
  difficulty = 'easy'
WHERE id = 462;

-- Q471 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 958, a not-for-profit receives a government grant requiring meals to be served to 10,000 individuals, with unspent funds returned if fewer meals are served. How should this grant be classified?$$,
  choices = $$["As an unconditional contribution with a donor-imposed purpose restriction","As a conditional contribution due to the performance barrier and right of return","As an exchange transaction generating earned revenue","As a conditional contribution recognized in full upon signing the agreement"]$$::jsonb,
  explanation = $$Correct (B): ASU 2018-08 (codified in ASC 958-605-25-5A) clarifies that a contribution is conditional when it includes both a barrier (a measurable performance requirement such as serving 10,000 meals) and a right of return or release (unspent funds must be returned). Revenue is recognized only as the barrier is overcome, which in this case is as meals are served.
Wrong (A): An unconditional contribution lacks barriers and rights of return; the meal-count requirement and return clause make this contribution conditional, not merely restricted.
Wrong (C): An exchange transaction requires commensurate value flowing to the resource provider; a government grant for public benefit is typically a contribution, not an exchange, under ASU 2018-08.
Wrong (D): Conditional contributions cannot be recognized upon signing because revenue recognition is deferred until the barrier is substantially met.$$,
  difficulty = 'medium'
WHERE id = 471;

-- Q480 [hard] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$In an upstream intercompany transaction where the subsidiary sells inventory to the parent at a profit, how is the elimination of unrealized intercompany profit attributed?$$,
  choices = $$["Entirely to the parent company''s controlling interest","Entirely to the noncontrolling interest holders","Proportionally between controlling and noncontrolling interests","No elimination is required for upstream transactions"]$$::jsonb,
  explanation = $$Correct (C): ASC 810-10-45-18 requires that in upstream transactions (subsidiary sells to parent), the elimination of unrealized intercompany profit be allocated between controlling and noncontrolling interests based on their respective ownership percentages. For example, if the parent owns 80%, the 20% noncontrolling interest absorbs its proportionate share of the eliminated profit.
Wrong (A): Attributing the entire elimination to the parent applies to downstream transactions (parent sells to subsidiary), not upstream transactions where the subsidiary is the selling entity.
Wrong (B): The noncontrolling interest absorbs only its proportionate share, not the entire amount of the unrealized profit elimination.
Wrong (D): All unrealized intercompany profits must be eliminated in consolidation regardless of transaction direction under ASC 810-10-45-1.$$,
  difficulty = 'hard'
WHERE id = 480;

-- Q1913 [medium] topic: Earnings Per Share
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company has basic EPS of $4.00. It has stock options that would add 5,000 incremental shares and convertible bonds that would add $15,000 to the numerator and 10,000 shares to the denominator. Which securities should be included in diluted EPS?$$,
  choices = $$["Stock options only because bonds are antidilutive","Convertible bonds only because options have no numerator effect","Both options and bonds because each is individually dilutive","Neither security because both are antidilutive"]$$::jsonb,
  explanation = $$Correct (C): ASC 260-10-45-21 requires inclusion of all potentially dilutive securities in diluted EPS. Stock options add shares with no numerator effect, which always reduces EPS and is dilutive. Convertible bonds have a per-share effect of $15,000 / 10,000 = $1.50, which is below the basic EPS of $4.00, confirming dilution. Both securities are included.
Wrong (A): The convertible bonds are dilutive because their per-share income effect ($1.50) is less than basic EPS ($4.00), so they must be included.
Wrong (B): Stock options are also dilutive because they add incremental shares to the denominator without increasing the numerator, reducing EPS.
Wrong (D): A security is antidilutive only when its inclusion would increase EPS or decrease a loss per share, which does not apply to either security here.$$,
  difficulty = 'medium'
WHERE id = 1913;

-- Q1917 [medium] topic: Earnings Per Share
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company reports a net loss of $200,000 with 100,000 weighted-average shares outstanding. It has 5,000 dilutive stock options. What is diluted EPS?$$,
  choices = $$["($2.00) because all potentially dilutive securities are excluded","($1.90) including the effect of stock options","($1.80) using treasury stock method for the options","($2.50) after adjusting the numerator for option costs"]$$::jsonb,
  explanation = $$Correct (A): ASC 260-10-45-17 states that when a company reports a net loss from continuing operations, all potentially dilutive securities are antidilutive because adding shares to the denominator would reduce the loss per share. Therefore, diluted EPS equals basic EPS: ($200,000) / 100,000 = ($2.00).
Wrong (B): Including the stock options would reduce the loss per share (make it less negative), which is antidilutive and prohibited under ASC 260-10-45-17.
Wrong (C): The treasury stock method cannot be applied when there is a net loss because inclusion of incremental shares would always be antidilutive.
Wrong (D): Stock options do not create a numerator adjustment; and in any case, no potentially dilutive securities are included when there is a net loss.$$,
  difficulty = 'medium'
WHERE id = 1917;

-- Q1934 [hard] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 606, a company modifies a contract by adding services that are not distinct from those already provided. How should the modification be accounted for?$$,
  choices = $$["As a separate contract with independent revenue recognition","As a prospective adjustment recognized only in future periods","As a cumulative catch-up adjustment to the existing contract","As a current-period gain or loss on contract modification"]$$::jsonb,
  explanation = $$Correct (C): ASC 606-10-25-13(b) requires that when a modification adds goods or services that are not distinct from those already transferred, it is treated as part of the existing contract. The entity updates the transaction price and measure of progress, recognizing a cumulative catch-up adjustment to revenue as of the modification date.
Wrong (A): Separate contract treatment requires the added goods or services to be both distinct and priced at standalone selling prices, which this modification does not meet.
Wrong (B): Prospective adjustment applies when remaining goods are distinct from those already transferred but not priced at standalone selling prices, not when they are inseparable from prior deliverables.
Wrong (D): ASC 606 does not recognize a discrete gain or loss on modification; instead, the revenue is adjusted through the cumulative catch-up mechanism reflecting updated progress.$$,
  difficulty = 'hard'
WHERE id = 1934;

-- Q1971 [easy] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Which of the following inventory cost flow methods is NOT permitted under IFRS?$$,
  choices = $$["First-in, first-out (FIFO)","Specific identification","Weighted average cost","Last-in, first-out (LIFO)"]$$::jsonb,
  explanation = $$Correct (D): IAS 2, paragraph 25, explicitly prohibits the use of LIFO for inventory costing under IFRS. LIFO often does not reflect the actual physical flow of goods and can result in outdated inventory values on the balance sheet, undermining the relevance of reported assets.
Wrong (A): FIFO is permitted under both IAS 2 (paragraph 27) and ASC 330, as it typically approximates the physical flow of most inventories.
Wrong (B): Specific identification is permitted under IAS 2 (paragraph 23) and is required for items that are not ordinarily interchangeable.
Wrong (C): Weighted average cost is permitted under IAS 2 (paragraph 27) and ASC 330 as an acceptable cost flow assumption.$$,
  difficulty = 'easy'
WHERE id = 1971;

-- Q1975 [easy] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$During a period of rising prices, which inventory cost flow method results in the highest reported net income?$$,
  choices = $$["LIFO because it matches current costs to revenue","FIFO because it assigns the lowest costs to cost of goods sold","Weighted average because it smooths cost fluctuations","All methods produce the same net income regardless of price trends"]$$::jsonb,
  explanation = $$Correct (B): Under ASC 330-10-30, FIFO assigns the oldest (lowest) costs to cost of goods sold during rising prices, resulting in the lowest COGS and therefore the highest gross profit and net income. The newer, higher-cost inventory remains on the balance sheet.
Wrong (A): LIFO assigns the newest (highest) costs to COGS during rising prices, producing the highest COGS and lowest net income among the three methods.
Wrong (C): Weighted average falls between FIFO and LIFO because it blends old and new costs, producing moderate COGS and net income.
Wrong (D): When prices are changing, different cost flow methods produce different COGS amounts and therefore different net income figures.$$,
  difficulty = 'easy'
WHERE id = 1975;

-- Q1987 [hard] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company using LIFO has an inventory item with cost $20, replacement cost $17, selling price $25, normal profit margin $5, and costs to sell $3. Under the lower of cost or market rule, what is the designated market value?$$,
  choices = $$["$17 because replacement cost is always used as market","$22 representing the net realizable value ceiling","$17 as replacement cost bounded between floor and ceiling","$20 because cost equals the designated market value"]$$::jsonb,
  explanation = $$Correct (C): ASC 330-10-35-1B applies the lower of cost or market rule for LIFO inventory using a three-step market test. Ceiling (NRV) = $25 - $3 = $22. Floor = NRV - normal profit = $22 - $5 = $17. Replacement cost = $17, which equals the floor. Market is the middle value of replacement cost, ceiling, and floor, so market = $17. Since market ($17) is less than cost ($20), the inventory is written down to $17.
Wrong (A): Replacement cost is used as market only when it falls between the ceiling and floor; here it happens to equal the floor, making the bounded analysis necessary.
Wrong (B): The ceiling ($22 NRV) serves as the upper bound for market but is not itself the designated market value when replacement cost falls below it.
Wrong (D): Cost ($20) exceeds the designated market value ($17), so the inventory must be written down under the LCM rule.$$,
  difficulty = 'hard'
WHERE id = 1987;

-- Q2012 [easy] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Pratt Inc. exchanges a truck (cost $60,000, accumulated depreciation $40,000, fair value $25,000) for a different truck with a fair value of $25,000. The exchange has commercial substance. What gain or loss should Pratt recognize?$$,
  choices = $$["$5,000 gain recognized in full on the exchange","$5,000 loss deferred over the new asset''s life","$15,000 gain based on the original cost difference","$0 because nonmonetary exchanges defer all gains"]$$::jsonb,
  explanation = $$Correct (A): ASC 845-10-30-1 requires full gain or loss recognition when a nonmonetary exchange has commercial substance. Book value = $60,000 - $40,000 = $20,000. Fair value received = $25,000. Gain = $25,000 - $20,000 = $5,000, recognized in full.
Wrong (B): There is a gain, not a loss, because fair value exceeds book value, and gains on exchanges with commercial substance are not deferred.
Wrong (C): The gain is based on the difference between fair value of consideration received and the book value of the asset surrendered, not the original cost.
Wrong (D): Deferral of gains applies only to exchanges lacking commercial substance under ASC 845-10-30-3, not to exchanges with commercial substance.$$,
  difficulty = 'easy'
WHERE id = 2012;

-- Q2023 [medium] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 350, what is the purpose of the qualitative assessment (Step 0) that may be performed before the quantitative goodwill impairment test?$$,
  choices = $$["To determine whether goodwill should be amortized or remain indefinite-lived","To assess whether it is more likely than not that fair value is less than carrying amount","To calculate the exact dollar amount of any goodwill impairment loss","To determine the appropriate discount rate for the reporting unit valuation"]$$::jsonb,
  explanation = $$Correct (B): ASC 350-20-35-3A allows an entity to perform a qualitative assessment to evaluate whether it is more likely than not (greater than 50% likelihood) that the fair value of a reporting unit is less than its carrying amount. If the answer is no, the quantitative impairment test can be skipped, reducing cost and effort.
Wrong (A): The qualitative assessment does not address amortization; goodwill is not amortized under GAAP for public entities and is instead tested annually for impairment per ASC 350-20-35-28.
Wrong (C): The qualitative assessment is a screening step to determine whether the quantitative test is needed; it does not calculate a specific impairment amount.
Wrong (D): Discount rate selection is part of the quantitative fair value measurement, not the qualitative screening assessment.$$,
  difficulty = 'medium'
WHERE id = 2023;

-- Q2041 [easy] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Morton Inc. acquires all the assets of a competitor for $10,000,000. The fair value of identifiable net assets acquired is $7,200,000. What amount of goodwill should Morton recognize?$$,
  choices = $$["$2,800,000 as the excess of purchase price over net assets","$10,000,000 as the total consideration transferred","$7,200,000 as the fair value of identifiable net assets","$0 because goodwill is not recognized in asset acquisitions"]$$::jsonb,
  explanation = $$Correct (A): ASC 805-30-30-1 requires goodwill to be measured as the excess of consideration transferred over the net of acquisition-date fair values of identifiable assets acquired and liabilities assumed. Goodwill = $10,000,000 - $7,200,000 = $2,800,000, representing expected synergies and other unidentifiable benefits.
Wrong (B): The total consideration of $10,000,000 is allocated between identifiable net assets and goodwill; the entire amount is not recorded as goodwill.
Wrong (C): $7,200,000 is the fair value of identifiable net assets, which is recorded separately from goodwill on the acquisition date balance sheet.
Wrong (D): Goodwill is recognized in business combinations under ASC 805 when the consideration transferred exceeds the fair value of identifiable net assets.$$,
  difficulty = 'easy'
WHERE id = 2041;

-- Q2044 [hard] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company acquires a non-compete agreement for $240,000 as part of a business combination. The agreement has a 3-year term. After 1 year, the former competitor dies. What accounting entry is required?$$,
  choices = $$["Continue amortizing over the remaining two years as originally planned","Write off the remaining $160,000 carrying amount as a loss","Reclassify the remaining balance to goodwill for impairment testing","No entry is needed because the agreement remains on the books"]$$::jsonb,
  explanation = $$Correct (B): ASC 350-30-35-14 requires that when events indicate a finite-lived intangible asset has no remaining future economic benefit, the carrying amount must be written off. After one year of amortization ($240,000 / 3 = $80,000), the remaining $160,000 must be recognized as a loss because the competitor''s death eliminates the economic value of the non-compete restriction.
Wrong (A): Continued amortization is inappropriate because the non-compete agreement no longer provides any future economic benefit after the competitor''s death.
Wrong (C): Reclassification to goodwill is not permitted under ASC 350; identified intangible assets remain separately accounted for and are not combined back into goodwill.
Wrong (D): Failing to write off an asset with no remaining future benefit would overstate assets and violate the impairment recognition requirements of ASC 360-10-35.$$,
  difficulty = 'hard'
WHERE id = 2044;

-- Q2054 [easy] topic: Leases
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 842, what does a lessee''s total expense consist of in Year 1 of a finance lease?$$,
  choices = $$["Only the lease payment amount recognized as rent expense","Straight-line lease expense equal to total payments divided by the term","Amortization of the ROU asset plus interest on the lease liability","Interest expense on the lease liability only without amortization"]$$::jsonb,
  explanation = $$Correct (C): ASC 842-20-25-5 requires a finance lease lessee to recognize two separate expense components: (1) amortization of the right-of-use asset, typically on a straight-line basis, and (2) interest expense on the lease liability using the effective interest method. This results in front-loaded total expense compared to an operating lease.
Wrong (A): Recognizing only lease payments as rent expense is the treatment for short-term lease exemptions, not finance leases.
Wrong (B): Straight-line lease expense applies to operating leases under ASC 842-20-25-6, not finance leases.
Wrong (D): Finance lease expense includes both interest on the liability and amortization of the ROU asset; omitting amortization would understate total expense.$$,
  difficulty = 'easy'
WHERE id = 2054;

-- Q2064 [easy] topic: Leases
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 842, how is a lessee''s right-of-use asset for a finance lease amortized?$$,
  choices = $$["Using the effective interest method matching liability reduction","Straight-line over the shorter of the lease term or the asset''s useful life","Using the units-of-production method based on actual usage","ROU assets under finance leases are not subject to amortization"]$$::jsonb,
  explanation = $$Correct (B): ASC 842-20-35-7 requires the ROU asset for a finance lease to be amortized on a straight-line basis (unless another systematic method is more representative) over the shorter of the lease term or the useful life of the underlying asset. If ownership transfers or a purchase option is reasonably certain to be exercised, amortization is over the asset''s useful life.
Wrong (A): The effective interest method is used for the lease liability, not for amortizing the ROU asset, which uses a straight-line or other systematic method.
Wrong (C): Units-of-production is not the default method for ROU asset amortization under ASC 842; it may apply only if it is more representative of the pattern of use.
Wrong (D): Finance lease ROU assets must be amortized; only operating lease ROU assets use a single straight-line lease expense that implicitly includes amortization.$$,
  difficulty = 'easy'
WHERE id = 2064;

-- Q2072 [easy] topic: Leases
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Fielding Corp. has a 10-month copier lease with monthly payments of $500 and elects the short-term lease exemption under ASC 842. How should the lease be accounted for?$$,
  choices = $$["Recognize $500 monthly lease expense without recording a ROU asset or liability","Recognize a ROU asset and lease liability of $5,000 at commencement","Capitalize $5,000 as equipment on the balance sheet","Record a prepaid expense of $5,000 at lease inception"]$$::jsonb,
  explanation = $$Correct (A): ASC 842-20-25-2 permits a lessee to elect the short-term lease exemption for leases with a term of 12 months or less that do not include a purchase option the lessee is reasonably certain to exercise. The lessee recognizes lease expense on a straight-line basis over the term without recording a ROU asset or lease liability.
Wrong (B): The short-term exemption eliminates the requirement to recognize a ROU asset and lease liability; recording them would negate the simplification purpose of the exemption.
Wrong (C): Capitalizing the lease payments as equipment is not appropriate because the short-term exemption treats the arrangement as an operating expense, not a capital purchase.
Wrong (D): Prepaid expense treatment would front-load the balance sheet recognition, which conflicts with the straight-line expense recognition required under the short-term exemption.$$,
  difficulty = 'easy'
WHERE id = 2072;

-- Q2074 [medium] topic: Leases
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$In a direct financing lease, how does the lessor recognize income over the lease term?$$,
  choices = $$["On a straight-line basis over the lease term","Using the effective interest method on the net investment in the lease","Based on actual cash receipts as they are collected","By recognizing all income at lease commencement"]$$::jsonb,
  explanation = $$Correct (B): ASC 842-30-35-3 requires the lessor to recognize interest income on a direct financing lease using the effective interest method applied to the net investment in the lease. Any selling profit deferred at commencement is recognized over the term as part of this interest income pattern, producing a declining income pattern.
Wrong (A): Straight-line recognition does not reflect the time value of money inherent in the lease receivable and does not comply with ASC 842.
Wrong (C): Cash-basis recognition violates accrual accounting principles; income must be recognized based on the effective interest pattern regardless of cash receipt timing.
Wrong (D): Recognizing all income at commencement applies to selling profit in a sales-type lease, not a direct financing lease where profit is deferred.$$,
  difficulty = 'medium'
WHERE id = 2074;

-- Q2095 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Clifton Corp. has a bond with a carrying amount of $1,500,000 and a fair value of $1,550,000. Clifton has not elected the fair value option. At what amount should the bond be reported?$$,
  choices = $$["$1,500,000 at amortized cost","$1,550,000 at current fair value","$1,525,000 as an average of cost and fair value","The higher of carrying amount or fair value"]$$::jsonb,
  explanation = $$Correct (A): ASC 825-10-25 provides that financial liabilities are measured at amortized cost unless the entity has elected the fair value option under ASC 825-10-15. Since Clifton has not elected the fair value option, the bond is reported at its carrying amount (amortized cost) of $1,500,000.
Wrong (B): Fair value measurement applies only when the fair value option has been elected; otherwise, the bond remains at amortized cost with fair value disclosed in the notes per ASC 825-10-50.
Wrong (C): Averaging carrying amount and fair value has no basis in GAAP; financial liabilities are measured at either amortized cost or fair value, not a blend.
Wrong (D): A higher-of test does not apply to financial liability measurement; the measurement basis is determined by whether the fair value option was elected.$$,
  difficulty = 'easy'
WHERE id = 2095;

-- Q2099 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company issues zero-coupon bonds with a face value of $5,000,000 due in 10 years at an issue price of $2,313,775 (market rate 8%). What is the interest expense in Year 1?$$,
  choices = $$["$0 because no coupon payments are made","$400,000 based on the stated coupon rate","$185,102 using the effective interest method","$500,000 based on the face value times market rate"]$$::jsonb,
  explanation = $$Correct (C): ASC 835-30-35-2 requires interest expense on bonds to be recognized using the effective interest method. Year 1 interest expense = carrying amount x market rate = $2,313,775 x 8% = $185,102. This amount is added to the carrying amount as discount amortization, increasing the book value toward face value at maturity.
Wrong (A): Although zero-coupon bonds make no periodic cash interest payments, interest expense must still be accrued under the effective interest method as the discount amortizes.
Wrong (B): Zero-coupon bonds have a 0% stated coupon rate, so multiplying by any coupon rate produces a meaningless figure; the effective interest method uses the market yield.
Wrong (D): Interest expense is calculated on the carrying amount ($2,313,775), not the face value ($5,000,000), when using the effective interest method.$$,
  difficulty = 'medium'
WHERE id = 2099;

-- Q2107 [easy] topic: Equity
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Barton Corp. issues 10,000 shares of $5 par value common stock for $12 per share. What is the total credit to additional paid-in capital (APIC)?$$,
  choices = $$["$50,000 representing the total par value issued","$0 because all proceeds are credited to common stock","$120,000 representing the total proceeds received","$70,000 representing the excess of proceeds over par value"]$$::jsonb,
  explanation = $$Correct (D): ASC 505-10-45-2 requires that when stock is issued above par value, the par value portion is credited to common stock and the excess over par is credited to additional paid-in capital. Total proceeds = 10,000 x $12 = $120,000. Par value = 10,000 x $5 = $50,000. APIC = $120,000 - $50,000 = $70,000.
Wrong (A): $50,000 is the amount credited to the common stock account at par value, not to APIC.
Wrong (B): APIC is always credited when stock is issued above par value; crediting the entire proceeds to common stock would misstate legal capital.
Wrong (C): $120,000 is the total proceeds, which must be split between common stock ($50,000 at par) and APIC ($70,000 excess).$$,
  difficulty = 'easy'
WHERE id = 2107;

-- Q2159 [medium] topic: Contingencies
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Zenith Corp. is jointly and severally liable with two other financially viable defendants in a $9,000,000 environmental lawsuit. The loss is probable. What is the minimum amount Zenith should accrue?$$,
  choices = $$["$3,000,000 based on its proportionate share among viable defendants","$4,500,000 as a conservative estimate between one-third and full liability","$9,000,000 for the full jointly and severally liable amount","$0 until the court formally allocates each defendant''s share"]$$::jsonb,
  explanation = $$Correct (A): ASC 450-20-25-2 requires accrual of a loss contingency when it is probable and reasonably estimable. When jointly and severally liable with other financially viable co-defendants, a company should accrue its estimated proportionate share. With three viable defendants, Zenith estimates its share at $9,000,000 / 3 = $3,000,000.
Wrong (B): $4,500,000 overstates Zenith''s estimated share because all three co-defendants are financially viable and expected to bear their proportionate obligations.
Wrong (C): Accruing the full $9,000,000 would be required only if the other defendants were insolvent and unable to pay their shares, making Zenith responsible for the entire judgment.
Wrong (D): Waiting for court allocation is not permitted when the loss is probable and reasonably estimable; ASC 450-20-25 requires accrual at the balance sheet date.$$,
  difficulty = 'medium'
WHERE id = 2159;

-- Q2189 [hard] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Rogers Corp. has cumulative losses of $2,000,000 over three years and a deferred tax asset of $420,000. It has scheduled reversals of taxable temporary differences totaling $1,500,000 and tax planning strategies generating $800,000 of additional taxable income. What is the maximum DTA reportable without a valuation allowance?$$,
  choices = $$["$0 because cumulative losses require a full valuation allowance","$315,000 reflecting only the scheduled reversal portion","$420,000 because positive evidence supports the full DTA","$483,000 based on the combined sources of future taxable income"]$$::jsonb,
  explanation = $$Correct (C): ASC 740-10-30-18 requires evaluation of all available positive and negative evidence to determine whether a valuation allowance is needed. The positive evidence here includes $1,500,000 in scheduled reversals plus $800,000 from tax planning strategies ($2,300,000 total), which exceeds the deductible temporary differences underlying the $420,000 DTA. This positive evidence is sufficient to support the full DTA without a valuation allowance.
Wrong (A): Cumulative losses are significant negative evidence but do not automatically require a full valuation allowance when objectively verifiable positive evidence (such as scheduled reversals) outweighs the negative evidence.
Wrong (B): $315,000 does not correspond to a valid calculation; the scheduled reversals alone ($1,500,000) are sufficient to support more than the $420,000 DTA basis.
Wrong (D): $483,000 exceeds the actual DTA balance of $420,000; the valuation allowance assessment is limited to the recorded DTA amount, not the total future taxable income capacity.$$,
  difficulty = 'hard'
WHERE id = 2189;

-- Q2191 [easy] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Parker Inc. acquires 100% of Stone Corp. for $5,000,000 in cash. At the acquisition date, Stone''s identifiable net assets have a fair value of $4,200,000. What amount of goodwill should Parker recognize?$$,
  choices = $$["$800,000 as the excess of consideration over net assets","$5,000,000 as the full consideration transferred","$4,200,000 as the identifiable net asset value","$0 because goodwill is expensed immediately"]$$::jsonb,
  explanation = $$Correct (A): ASC 805-30-30-1 measures goodwill as the excess of consideration transferred over the acquisition-date fair value of identifiable net assets acquired and liabilities assumed. Goodwill = $5,000,000 - $4,200,000 = $800,000, representing expected synergies, assembled workforce, and going-concern value.
Wrong (B): The full $5,000,000 consideration is allocated between identifiable net assets ($4,200,000) and goodwill ($800,000); recording the entire amount as goodwill would omit the identifiable assets.
Wrong (C): $4,200,000 represents the identifiable net assets recorded at fair value on the acquisition date, not goodwill.
Wrong (D): Goodwill is recognized as an asset and tested annually for impairment under ASC 350-20; it is not expensed at acquisition.$$,
  difficulty = 'easy'
WHERE id = 2191;

-- Q2194 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Foster Corp. acquires 80% of Grand Corp. for $4,800,000. Grand''s identifiable net assets have a fair value of $5,000,000, and the 20% noncontrolling interest has a fair value of $1,200,000. Under the fair value method for NCI, what amount of goodwill is recognized?$$,
  choices = $$["$800,000 attributable only to the controlling interest","$0 because net assets exceed consideration transferred","$200,000 as the proportionate NCI share of goodwill","$1,000,000 attributable to both controlling and noncontrolling interests"]$$::jsonb,
  explanation = $$Correct (D): ASC 805-20-30-1 allows the fair value method for measuring NCI, where goodwill = (consideration transferred + NCI fair value) - fair value of net assets = ($4,800,000 + $1,200,000) - $5,000,000 = $1,000,000. This method attributes goodwill to both the controlling and noncontrolling interests.
Wrong (A): $800,000 would result from the proportionate share method ($4,800,000 - 80% x $5,000,000), but the question specifies the fair value method for NCI, which includes NCI''s share of goodwill.
Wrong (B): Net assets ($5,000,000) do not exceed total implied value ($6,000,000); the goodwill calculation includes both the parent''s consideration and the NCI fair value.
Wrong (C): $200,000 is NCI''s implied share of goodwill ($1,200,000 - 20% x $5,000,000), but goodwill is recognized in total ($1,000,000), not separated by interest holder.$$,
  difficulty = 'medium'
WHERE id = 2194;

-- Q2211 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A reporting unit has a carrying amount of $8,000,000 including goodwill of $2,000,000. Its fair value is $7,200,000. Under the current goodwill impairment test, what impairment loss is recognized?$$,
  choices = $$["$0 because fair value exceeds net assets excluding goodwill","$1,200,000 representing the full excess of carrying amount over fair value","$2,000,000 as a complete write-off of the goodwill balance","$800,000 limited to the excess of carrying amount over fair value"]$$::jsonb,
  explanation = $$Correct (D): ASC 350-20-35-3C (as amended by ASU 2017-04) measures goodwill impairment as the excess of carrying amount over fair value, limited to the carrying amount of goodwill. Here, $8,000,000 - $7,200,000 = $800,000. Since $800,000 is less than the $2,000,000 goodwill balance, the full $800,000 is the impairment loss.
Wrong (A): Fair value ($7,200,000) is less than total carrying amount ($8,000,000), confirming impairment exists; comparing to net assets excluding goodwill is not the correct test.
Wrong (B): $1,200,000 does not correspond to any valid calculation under the simplified impairment test; the correct excess is $800,000.
Wrong (C): A full write-off of goodwill would occur only if the excess of carrying amount over fair value equaled or exceeded the goodwill balance, which is not the case here.$$,
  difficulty = 'medium'
WHERE id = 2211;

-- Q2222 [easy] topic: Fair Value
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Clearwater Corp. values an investment property using a discounted cash flow model based entirely on management''s own unobservable assumptions. This measurement is classified as:$$,
  choices = $$["Level 1 using quoted prices in active markets","Level 2 using observable inputs other than quoted prices","Level 3 using unobservable inputs based on entity assumptions","Outside the fair value hierarchy and not classifiable"]$$::jsonb,
  explanation = $$Correct (C): ASC 820-10-35-52 defines Level 3 inputs as unobservable inputs that reflect the reporting entity''s own assumptions about what market participants would use in pricing the asset. Management''s proprietary cash flow projections and discount rates not corroborated by market data are Level 3 inputs, the least reliable tier in the hierarchy.
Wrong (A): Level 1 requires quoted prices in active markets for identical assets or liabilities, such as exchange-traded securities, not management''s internal projections.
Wrong (B): Level 2 requires inputs other than quoted prices that are observable, either directly or indirectly, such as comparable property sales or market interest rates.
Wrong (D): All fair value measurements must be classified within the three-level hierarchy under ASC 820; there is no category outside the hierarchy.$$,
  difficulty = 'easy'
WHERE id = 2222;

-- Q2264 [easy] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Which of the following items would NOT be classified as cash or cash equivalents on the balance sheet?$$,
  choices = $$["Money market funds with daily liquidity","Treasury bills maturing in 60 days from purchase","A certificate of deposit maturing in six months from purchase","Petty cash maintained for office expenses"]$$::jsonb,
  explanation = $$Correct (C): ASC 305-10-20 defines cash equivalents as highly liquid investments with original maturities of three months or less from the date of purchase. A six-month CD exceeds this threshold and is classified as a short-term investment, not a cash equivalent.
Wrong (A): Money market funds are highly liquid investments that typically qualify as cash equivalents because they maintain stable net asset values and offer daily redemption.
Wrong (B): Treasury bills maturing in 60 days from purchase fall within the three-month original maturity criterion and qualify as cash equivalents.
Wrong (D): Petty cash is currency on hand and is classified as cash on the balance sheet.$$,
  difficulty = 'easy'
WHERE id = 2264;

-- Q2265 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Titan Corp. factors $1,200,000 of receivables without recourse. The factor charges a 5% fee and retains 8% as a holdback. What is the loss on sale?$$,
  choices = $$["$60,000 equal to the factor''s fee","$96,000 equal to the holdback amount","$156,000 combining the fee and holdback","$0 because the holdback is a receivable from the factor"]$$::jsonb,
  explanation = $$Correct (A): ASC 860-20-25-1 requires that a transfer of receivables meeting the conditions for sale accounting be measured at fair value of consideration received. Cash received = $1,200,000 - $60,000 fee - $96,000 holdback = $1,044,000. The holdback ($96,000) is a receivable from the factor. Total consideration = $1,044,000 + $96,000 = $1,140,000. Loss = $1,200,000 - $1,140,000 = $60,000, which equals the factor''s fee.
Wrong (B): The $96,000 holdback is not a loss; it is a receivable from the factor that will be returned after collections, so it is included in total consideration received.
Wrong (C): Combining the fee and holdback overstates the loss because the holdback is a recoverable asset, not a cost of the transaction.
Wrong (D): The factor''s 5% fee ($60,000) represents a real cost of the transaction that reduces total consideration below the carrying amount.$$,
  difficulty = 'medium'
WHERE id = 2265;

-- Q2269 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under CECL, how should a company account for a previously written-off receivable that is subsequently collected?$$,
  choices = $$["Credit bad debt expense to reverse the original write-off","Credit the allowance for credit losses and debit cash","Credit revenue as a new source of income","Credit a gain on recovery in non-operating income"]$$::jsonb,
  explanation = $$Correct (B): ASC 326-20-35-8 requires that recovery of a previously written-off receivable be recorded by reversing the write-off (debit receivable, credit allowance) and then recording the cash collection (debit cash, credit receivable). The net effect is a debit to cash and credit to the allowance for credit losses, restoring the allowance without directly affecting current-period income.
Wrong (A): The original write-off was charged against the allowance, not bad debt expense, so the recovery restores the allowance rather than reversing an expense.
Wrong (C): Recovery of a written-off receivable is not new revenue; it represents collection of a previously recognized receivable that had been deemed uncollectible.
Wrong (D): GAAP does not recognize a separate gain on recovery; the recovery is processed through the allowance account, which may indirectly reduce future provision expense.$$,
  difficulty = 'medium'
WHERE id = 2269;
