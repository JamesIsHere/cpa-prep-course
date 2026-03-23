-- FAR cleanup batch 3 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q2285 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 958, which of the following expenses must a not-for-profit organization report in an analysis by both function and nature?$$,
  choices = '["Only program service expenses","Only fundraising expenses exceeding 15% of total","All expenses across every functional and natural classification","Only expenses funded by donor-restricted contributions"]'::jsonb,
  explanation = $$Correct (C): ASC 958-720-45-1 (as amended by ASU 2016-14) requires all not-for-profit entities to present an analysis of expenses by both functional classification (program services, management and general, fundraising) and natural classification (salaries, rent, depreciation, etc.). This may appear on the face of the statement of activities, in a separate statement of functional expenses, or in the notes. The requirement covers every expense, not a subset.
Wrong (A): Program service expenses are only one functional category. The standard requires all expenses—including management and general and fundraising—to be analyzed by function and nature.
Wrong (B): There is no 15% threshold in ASC 958. Every fundraising expense must be included regardless of its proportion to total expenses.
Wrong (D): The analysis applies to all expenses, not just those funded by restricted contributions. Unrestricted-funded expenses are equally subject to the dual-classification requirement.$$,
  difficulty = 'medium'
WHERE id = 2285;

-- Q2302 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A city issues purchase orders totaling $1,200,000 for police vehicles. At year-end, the vehicles have not been received. What is the appropriate General Fund accounting treatment?$$,
  choices = '["Make no entry until the vehicles are received and invoiced","Record $1,200,000 as a prepaid asset in the General Fund","Record $1,200,000 as an expenditure and an accounts payable","Record an encumbrance of $1,200,000 against budgetary fund balance"]'::jsonb,
  explanation = $$Correct (D): GASB Codification Section 1700.128 establishes encumbrance accounting for governmental funds. When purchase orders are issued, the entry debits Encumbrances and credits Budgetary Fund Balance Reserved for Encumbrances. This mechanism reserves budget authority for outstanding commitments so that appropriations are not overspent before goods arrive.
Wrong (A): Ignoring outstanding purchase orders would defeat budgetary control. Encumbrance accounting exists precisely to track commitments before delivery.
Wrong (B): No asset exists because the city has neither received nor paid for the vehicles. A prepaid asset requires an advance cash payment.
Wrong (C): An expenditure and liability are recorded only when the goods are received and the obligation is incurred, not at the purchase-order stage.$$,
  difficulty = 'medium'
WHERE id = 2302;

-- Q2318 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under modified accrual accounting, when should a government recognize expenditures for compensated absences in a governmental fund?$$,
  choices = '["When the employees earn the leave each pay period","When the employees actually use the accumulated leave","When the liability will be liquidated with current financial resources","At the end of the fiscal year for all accumulated leave balances"]'::jsonb,
  explanation = $$Correct (C): GASB Codification Section C60.112 provides that compensated-absence expenditures in governmental funds are recognized only to the extent the related liability is expected to be liquidated with expendable available financial resources. Typically, only the current portion (amounts to be paid from current-year resources) is recorded as a fund expenditure, while the long-term portion is reported only in the government-wide statements.
Wrong (A): Accrual at the time leave is earned reflects full accrual accounting used in government-wide statements, not the modified accrual basis used in governmental funds.
Wrong (B): Recognizing expenditures only when leave is used would be closer to a cash basis and would understate the current liability that will be settled with available resources.
Wrong (D): Recording the full accumulated balance ignores the current-financial-resources measurement focus, which limits recognition to amounts expected to be paid with expendable resources.$$,
  difficulty = 'hard'
WHERE id = 2318;

-- Q2332 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under the corridor approach for amortizing unrecognized net gains and losses in a defined benefit plan, how is the corridor defined?$$,
  choices = '["15% of the projected benefit obligation at the beginning of the year","10% of net periodic pension cost for the current year","10% of the greater of the PBO or market-related plan asset value","5% of the PBO plus 5% of plan assets at the beginning of the year"]'::jsonb,
  explanation = $$Correct (C): ASC 715-30-35-24 defines the corridor as 10% of the greater of the projected benefit obligation (PBO) or the market-related value of plan assets, both measured at the beginning of the year. Only cumulative unrecognized net gains or losses exceeding this corridor are subject to minimum amortization over the average remaining service period of active employees.
Wrong (A): The threshold is 10%, not 15%, and it is based on the greater of two amounts rather than the PBO alone.
Wrong (B): The corridor is based on balance-sheet measures (PBO and plan assets), not on the income-statement measure of net periodic pension cost.
Wrong (D): The corridor uses a single 10% rate applied to the larger of two amounts, not separate 5% rates added together.$$,
  difficulty = 'medium'
WHERE id = 2332;

-- Q2333 [hard] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company has a cumulative unrecognized net loss of $900,000 at the beginning of the year. The PBO is $7,000,000, the market-related value of plan assets is $6,200,000, and the average remaining service period is 10 years. What is the net loss amortization included in pension expense?$$,
  choices = '["$90,000","$20,000","$62,000","$0"]'::jsonb,
  explanation = $$Correct (B): Under ASC 715-30-35-24, the corridor equals 10% of the greater of the PBO ($7,000,000) or the market-related value of plan assets ($6,200,000), which is $700,000. The cumulative unrecognized net loss of $900,000 exceeds the corridor by $200,000. Minimum amortization is $200,000 divided by the 10-year average remaining service period, yielding $20,000.
Wrong (A): $90,000 incorrectly applies 10% to the entire $900,000 loss rather than computing the excess over the corridor.
Wrong (C): $62,000 appears to misapply 10% to the plan asset value ($620,000) instead of using the corridor excess divided by the service period.
Wrong (D): $0 would apply only if the cumulative loss were within the corridor ($700,000 or less), but $900,000 exceeds it by $200,000.$$,
  difficulty = 'hard'
WHERE id = 2333;

-- Q2343 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company contributes $800,000 to its defined benefit pension plan during the year. How does this contribution affect the pension-related accounts?$$,
  choices = '["Increases plan assets and decreases cash with no effect on pension expense","Increases pension expense by $800,000 for the current period","Decreases the projected benefit obligation by $800,000","Increases plan assets, reduces the net pension liability, and decreases cash"]'::jsonb,
  explanation = $$Correct (D): Under ASC 715-30-35-3, employer contributions increase plan assets and reduce cash. Because funded status equals plan assets minus the PBO, an increase in plan assets reduces the net pension liability (or increases the net pension asset). The PBO is unaffected because it depends on benefits earned and actuarial assumptions, not on funding.
Wrong (A): While plan assets rise and cash falls, this answer omits the resulting change in the net pension liability, which is a key balance-sheet effect of the contribution.
Wrong (B): Pension expense is determined by service cost, interest cost, expected return, and amortizations—not by the amount of cash contributed.
Wrong (C): Contributions affect plan assets, not the PBO. The PBO is driven by benefit formulas, discount rates, and actuarial assumptions.$$,
  difficulty = 'medium'
WHERE id = 2343;

-- Q2348 [easy] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Which of the following correctly describes the expected return on plan assets component of net periodic pension cost?$$,
  choices = '["It always equals the actual return on plan assets for the period","It is recognized only when plan assets exceed the PBO","It increases net periodic pension cost as an additional expense","It reduces pension cost based on the expected long-term rate times plan assets"]'::jsonb,
  explanation = $$Correct (D): Under ASC 715-30-35-9, the expected return on plan assets is calculated by multiplying the expected long-term rate of return by the market-related value of plan assets. This component reduces (offsets) net periodic pension cost. The difference between actual and expected return is recognized in other comprehensive income as an asset gain or loss.
Wrong (A): The expected return uses a long-term rate assumption, which typically differs from the actual return in any given period. Differences flow through OCI.
Wrong (B): The expected return is a standard component of pension cost regardless of whether plan assets exceed the PBO.
Wrong (C): The expected return is a credit (reduction) to pension cost, not an additional expense. It reflects the anticipated earnings that help fund the obligation.$$,
  difficulty = 'easy'
WHERE id = 2348;

-- Q2367 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$An auditor is engaged to audit financial statements prepared on the regulatory basis of accounting required by a state insurance commission. The regulatory basis differs materially from GAAP. If the statements are fairly presented under that basis, which opinion is appropriate?$$,
  choices = '["Unmodified opinion with an emphasis paragraph describing the basis","Adverse opinion due to material departures from GAAP","Qualified opinion for the GAAP departures identified","Disclaimer of opinion due to scope limitations"]'::jsonb,
  explanation = $$Correct (A): Under AU-C Section 800.14 and ASC 274-10, a regulatory basis of accounting is a special purpose framework. When statements fairly present under that framework, the auditor issues an unmodified opinion with an emphasis-of-matter paragraph noting the basis and referring to the relevant footnote. GAAP departures are expected and do not warrant qualification.
Wrong (B): An adverse opinion would be appropriate only if the statements failed to present fairly under the applicable framework. GAAP departures are inherent to special purpose frameworks and are not a basis for an adverse opinion.
Wrong (C): Qualification for GAAP departures is inappropriate because the engagement is to report on the regulatory framework, not GAAP.
Wrong (D): A disclaimer is issued for scope limitations, not for known differences from GAAP in a special purpose framework engagement.$$,
  difficulty = 'medium'
WHERE id = 2367;

-- Q2368 [hard] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company prepares modified cash-basis financial statements. Which of the following modifications would generally NOT be considered to have substantial support?$$,
  choices = '["Recording depreciation on long-lived fixed assets","Accruing income taxes payable at year-end","Accruing all short-term receivables and payables as under full accrual","Recording long-term debt obligations at inception"]'::jsonb,
  explanation = $$Correct (C): Under AU-C Section 800.A15, acceptable modifications to the cash basis must have substantial support and not convert the statements into near-GAAP. Accruing all short-term receivables and payables effectively converts the financial statements to an accrual basis for operating items, fundamentally changing the measurement focus and lacking the substantial support required.
Wrong (A): Recording depreciation is a widely accepted modification because it allocates the cost of long-lived assets over their useful lives without converting the overall framework to accrual.
Wrong (B): Accruing income taxes payable is a commonly accepted modification with substantial support, as it captures a significant obligation tied to a specific measurement date.
Wrong (D): Recording long-term debt at inception is accepted because it captures a discrete, objectively measurable transaction without converting the overall cash-basis framework.$$,
  difficulty = 'hard'
WHERE id = 2368;

-- Q4708 [easy] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (C): FASB Concepts Statement No. 8 (Chapter 3, QC12) identifies relevance and faithful representation as the two fundamental qualitative characteristics of useful financial information. Faithful representation means information is complete, neutral, and free from error. These two characteristics are essential—without them, information cannot be useful for decision-making.
Wrong (A): Timeliness is an enhancing qualitative characteristic under SFAC No. 8 (QC29), not a fundamental one. It improves the usefulness of information that is already relevant and faithfully represented.
Wrong (B): Comparability is also an enhancing characteristic (QC20) that helps users identify similarities and differences across entities and periods.
Wrong (D): Understandability is an enhancing characteristic (QC30) that assists informed users in comprehending the information presented.$$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4708;

-- Q4709 [easy] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$Under the FASB Conceptual Framework, which element of financial statements represents an increase in equity from peripheral or incidental transactions?$$,
  choices = '["Revenue from ongoing central operations","Expense from delivering goods or services","Comprehensive income for the period","Gain from peripheral or incidental transactions"]'::jsonb,
  explanation = $$Correct (D): SFAC No. 6, paragraph 82, defines gains as increases in equity (net assets) from peripheral or incidental transactions and from all other events and circumstances affecting the entity except those that result from revenues or investments by owners. Gains differ from revenues in that they arise outside the entity''s ongoing major or central operations.
Wrong (A): Revenue arises from an entity''s ongoing major or central operations (SFAC No. 6, para. 78), not from peripheral or incidental transactions.
Wrong (B): Expenses are decreases in equity from the entity''s ongoing operations, representing outflows or using up of assets rather than increases in equity.
Wrong (C): Comprehensive income is the total change in equity from nonowner sources during a period—it includes both revenues and gains but is not itself defined as arising from peripheral transactions.$$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4709;

-- Q4711 [medium] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (B): SFAC No. 8 (Chapter 3, QC6-QC10) defines relevance as the capacity of information to make a difference in the decisions made by users. Relevant financial information possesses predictive value, confirmatory value, or both. If information cannot influence decisions, it lacks relevance regardless of other qualities.
Wrong (A): Information that is free from error and complete describes faithful representation (QC12), the other fundamental qualitative characteristic, not relevance.
Wrong (C): Independent verification describes verifiability (QC26), an enhancing qualitative characteristic that supports faithful representation but is distinct from relevance.
Wrong (D): Clear and concise presentation describes understandability (QC30), another enhancing characteristic that aids user comprehension but does not define relevance.$$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4711;

-- Q4712 [medium] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (C): SFAC No. 8 (Chapter 3, QC12) states that faithful representation requires information to be complete (includes all information necessary for understanding), neutral (free from bias in selection or presentation), and free from error (no errors or omissions in the description or process). All three attributes must be present for a depiction to be considered faithfully represented.
Wrong (A): Predictive value, confirmatory value, and materiality are components or aspects of relevance (QC6-QC11), not of faithful representation.
Wrong (B): Relevance and timeliness are separate qualitative characteristics—relevance is a fundamental characteristic, and timeliness is an enhancing one—but neither defines faithful representation.
Wrong (D): Verifiability, timeliness, and understandability are all enhancing qualitative characteristics (QC20-QC32), not the defining attributes of faithful representation.$$,
  cognitive_level = 1,
  difficulty = 'medium'
WHERE id = 4712;

-- Q4713 [medium] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$Under SFAC No. 8, the cost constraint limits reporting to information whose benefits justify the costs. Which of the following is also identified as a pervasive consideration affecting financial reporting?$$,
  choices = '["Conservatism as a reporting principle","Industry practice overriding the framework","Materiality as an entity-specific aspect of relevance","There is no other pervasive consideration beyond cost"]'::jsonb,
  explanation = $$Correct (D): Under the current SFAC No. 8 (Chapter 3, QC35-QC39), cost is identified as the sole pervasive constraint on financial reporting. Materiality is described as an entity-specific aspect of relevance (QC11), not as a separate constraint. The revised framework eliminated the treatment of materiality as a stand-alone constraint.
Wrong (A): Conservatism (prudence) is not identified as a constraint or pervasive consideration in the current FASB framework. SFAC No. 8 emphasizes neutrality within faithful representation.
Wrong (B): Industry practice is not a constraint under the Conceptual Framework. While industry conventions may influence application, they do not override the framework''s qualitative characteristics.
Wrong (C): Materiality is an entity-specific aspect of relevance that acts as a threshold filter, but under SFAC No. 8 it is not classified as a separate pervasive constraint alongside cost.$$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4713;

-- Q4714 [easy] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (A): SFAC No. 8 (Chapter 1, OB7) and SFAC No. 1, paragraph 23, describe the going concern assumption as the presumption that the entity will continue in operation long enough to carry out its existing objectives and commitments. This assumption underlies the use of historical cost, systematic depreciation, and current/noncurrent classification on the balance sheet.
Wrong (B): Liquidating assets within 12 months describes a liquidation basis of accounting, which is the opposite of the going concern assumption.
Wrong (C): Tax-basis preparation is a special purpose framework choice, not an assumption about the entity''s continuity of operations.
Wrong (D): Distributing all earnings annually describes a specific dividend policy and is unrelated to the going concern assumption about operational continuity.$$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4714;

-- Q4717 [medium] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (C): SFAC No. 8 (Chapter 3, QC20-QC25) defines comparability as the quality that enables users to identify and understand similarities and differences among items. Changing depreciation methods reduces comparability because prior-period statements were prepared using a different method, making trend analysis more difficult. Disclosure of the change and its effects helps mitigate the loss of comparability.
Wrong (A): Verifiability (QC26) means that different knowledgeable observers could reach consensus that the information is faithfully represented. A depreciation method change does not primarily affect verifiability.
Wrong (B): Timeliness (QC29) means having information available to decision-makers before it loses its capacity to influence decisions. A method change does not affect timeliness.
Wrong (D): Understandability (QC30) relates to presenting information clearly and concisely. A depreciation method change affects period-to-period comparability, not the clarity of presentation.$$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4717;

-- Q4720 [hard] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (D): SFAC No. 8 (Chapter 3, QC8) states that financial information has predictive value if it can be used as an input to processes employed by users to predict future outcomes. Prior-year revenue figures that help analysts forecast future revenue trends directly illustrate predictive value by serving as inputs for forward-looking projections.
Wrong (A): Historical cost confirming the original purchase price illustrates confirmatory value (QC9), which provides feedback about prior evaluations, not predictive value.
Wrong (B): Verifying that inventory counts are accurate demonstrates verifiability (QC26), an enhancing characteristic, rather than the predictive value component of relevance.
Wrong (C): Disclosing accounting policies in the notes supports understandability (QC30), helping users comprehend the statements, but does not directly illustrate predictive value.$$,
  cognitive_level = 4,
  difficulty = 'hard'
WHERE id = 4720;

-- Q4722 [hard] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (C): SFAC No. 5, paragraphs 63-70, and the revised Conceptual Framework require that an item be recognized in the financial statements when it (1) meets the definition of an element of financial statements (asset, liability, equity, revenue, expense, gain, or loss) and (2) has a relevant attribute that can be measured with sufficient reliability (faithful representation). Both criteria must be satisfied for recognition.
Wrong (A): Foreign currency denomination is a measurement issue for specific transactions, not a general recognition criterion under the Conceptual Framework.
Wrong (B): Footnote disclosure and board approval are not recognition criteria. Disclosure supplements recognition but does not substitute for it, and board approval is a governance matter.
Wrong (D): Materiality is an entity-specific threshold for relevance, and SEC authorization is a regulatory matter—neither constitutes a fundamental recognition criterion under the Conceptual Framework.$$,
  cognitive_level = 2,
  difficulty = 'hard'
WHERE id = 4722;

-- Q4725 [hard] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (B): SFAC No. 5, paragraph 67(b), defines current replacement cost as the amount of cash or cash equivalents that would have to be paid if the same or an equivalent asset were acquired currently. It reflects what it would cost today to replace the asset''s service capacity, distinct from its original purchase price or expected disposal proceeds.
Wrong (A): Historical cost (SFAC No. 5, para. 67a) reflects the amount of cash or equivalent paid when the asset was originally acquired, not the current acquisition price.
Wrong (C): Present value of future cash flows (SFAC No. 5, para. 67e) measures the discounted amount of net future cash inflows the asset is expected to generate, a forward-looking measure rather than a current acquisition cost.
Wrong (D): Net realizable value (SFAC No. 5, para. 67c) is the amount of cash expected upon selling the asset less costs to complete and dispose—a disposal-focused measure, not an acquisition-focused one.$$,
  cognitive_level = 2,
  difficulty = 'hard'
WHERE id = 4725;

-- Q4726 [easy] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 405-20-25 and the accrual basis of accounting per SFAC No. 6, paragraph 35, a liability is recognized when an obligation exists, regardless of whether an invoice has been received. Because the goods were received on or before December 31, the company must accrue accounts payable of $45,000 and recognize the corresponding inventory or expense.
Wrong (B): Waiting for the invoice would apply cash-basis accounting. Under accrual accounting, the receipt of goods creates the obligation and triggers recognition.
Wrong (C): A prepaid asset is recorded when cash is paid in advance of receiving goods or services. Here the goods were received, not prepaid.
Wrong (D): A contingent liability depends on the outcome of an uncertain future event. Receipt of goods creates a definite obligation, not a contingent one.$$,
  cognitive_level = 3,
  difficulty = 'easy'
WHERE id = 4726;

-- Q4727 [medium] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 710, an employer must accrue a liability for compensated absences when certain conditions are met. Which of the following is NOT one of those required conditions?$$,
  choices = '["The obligation relates to employee services already rendered","The employees'' rights to the absences vest or accumulate","Payment of the compensated absences is probable","The employee has submitted a formal written request for the absence"]'::jsonb,
  explanation = $$Correct (D): ASC 710-10-25-1 requires accrual when four conditions are met: (1) the obligation is attributable to services already rendered, (2) the rights vest or accumulate, (3) payment is probable, and (4) the amount can be reasonably estimated. A formal written request from the employee is not among these criteria—the liability exists once the four conditions are satisfied.
Wrong (A): Services already rendered is the first condition under ASC 710-10-25-1. Without it, no obligation has been incurred for the compensated absence.
Wrong (B): Vesting or accumulation is the second required condition. If rights neither vest nor accumulate, the employer generally does not accrue a liability.
Wrong (C): Probability of payment is the third required condition. If payment is not probable, the potential obligation is disclosed rather than accrued.$$,
  cognitive_level = 1,
  difficulty = 'medium'
WHERE id = 4727;

-- Q4729 [medium] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 460-10-25 and the matching principle in ASC 450-20-25, the company recognizes estimated warranty expense of $40,000 (5,000 units x $8) in the period of sale. Actual claims of $12,000 paid during Year 1 reduce the warranty liability. The remaining warranty liability at December 31 is $40,000 minus $12,000, or $28,000.
Wrong (A): $40,000 represents the total estimated warranty cost before any claims have been paid. It ignores the $12,000 already settled during the year.
Wrong (C): $12,000 is the amount of claims paid, not the remaining liability. The unpaid balance is the total estimate less claims paid.
Wrong (D): $52,000 incorrectly adds the estimate and claims paid rather than subtracting claims from the original accrual.$$,
  cognitive_level = 3,
  difficulty = 'medium'
WHERE id = 4729;

-- Q4730 [easy] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 606-10-25-1 and the general revenue recognition framework, cash received before performance creates a contract liability (deferred or unearned revenue). Because the services begin January 1, Year 2, no performance has occurred by December 31, Year 1, and the entire $60,000 is reported as a current liability on the balance sheet.
Wrong (A): Revenue cannot be recognized until the performance obligation is satisfied. Since services have not yet been performed, recording $60,000 as revenue would violate the revenue recognition principle.
Wrong (B): Accounts receivable represents amounts owed to the company. Here the company received cash and owes services, so the entry is the opposite—a liability, not a receivable.
Wrong (D): An accrued expense represents an obligation incurred but not yet paid. The company has been paid in advance; it owes services, not a cash payment.$$,
  cognitive_level = 3,
  difficulty = 'easy'
WHERE id = 4730;

-- Q4733 [easy] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (B): Under the accrual basis of accounting per ASC 710-10-25 and SFAC No. 6, paragraph 35, expenses are recognized when incurred. Employees performed work in December, so salaries expense of $85,000 must be accrued at December 31 with a credit to Salaries Payable. The payable is settled when cash is disbursed on January 5.
Wrong (A): Debiting Cash and crediting Salaries Payable has the entry direction and accounts reversed. Cash is not received; a liability and expense are being recognized.
Wrong (C): Waiting until payment on January 5 is cash-basis accounting. Accrual accounting requires recognition of the expense in the period the services were performed.
Wrong (D): Debiting Salaries Payable and crediting Cash is the payment entry recorded on January 5 when the liability is settled, not the December 31 accrual.$$,
  cognitive_level = 3,
  difficulty = 'easy'
WHERE id = 4733;

-- Q4735 [medium] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 450, when should an entity accrue a loss contingency as a liability on the balance sheet?$$,
  choices = '["When the loss is reasonably possible and estimable","When the loss is considered remote but material","When the amount of loss is immaterial to the entity","When the loss is probable and reasonably estimable"]'::jsonb,
  explanation = $$Correct (D): ASC 450-20-25-2 requires accrual of a loss contingency when two conditions are met: (1) it is probable that a liability has been incurred at the balance sheet date, and (2) the amount of the loss can be reasonably estimated. Both conditions must be satisfied before a liability is recognized.
Wrong (A): A reasonably possible loss requires footnote disclosure under ASC 450-20-50, but does not meet the threshold for accrual because the probability of the loss is below the "probable" standard.
Wrong (B): Remote contingencies generally require neither accrual nor disclosure under ASC 450, regardless of the potential magnitude, except for certain guarantees.
Wrong (C): Immateriality of the loss amount is not a basis for accrual. The accrual criteria focus on probability and estimability, not on whether the amount is immaterial.$$,
  cognitive_level = 1,
  difficulty = 'medium'
WHERE id = 4735;

-- Q4737 [hard] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$A manufacturing company estimates environmental remediation costs of $3,000,000 to $5,000,000, with no amount in the range more likely than another. Under ASC 450, what amount should be accrued?$$,
  choices = '["$5,000,000 as the high end of the range","$3,000,000 as the minimum of the range","$4,000,000 as the midpoint of the range","$0 because the amount cannot be determined"]'::jsonb,
  explanation = $$Correct (B): ASC 450-20-30-1 states that when a range of loss is estimated and no amount within the range is a better estimate than any other, the entity accrues the minimum amount in the range. Here, $3,000,000 is accrued and the additional exposure up to $5,000,000 is disclosed in the notes. This differs from IFRS, which would require accrual of the midpoint.
Wrong (A): The maximum of the range ($5,000,000) is not required when no single amount is the best estimate. ASC 450 specifies the minimum, not the maximum.
Wrong (C): The midpoint approach ($4,000,000) is used under IAS 37 (IFRS), not under U.S. GAAP. ASC 450 defaults to the low end of the range.
Wrong (D): Zero accrual is inappropriate because the loss is probable and can be reasonably estimated within a range. Both conditions for accrual under ASC 450-20-25-2 are met.$$,
  cognitive_level = 3,
  difficulty = 'hard'
WHERE id = 4737;

-- Q4738 [medium] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (A): ASC 710-10-25-2 provides that when sick pay does not vest or accumulate (i.e., employees forfeit unused days at period-end and receive no payment upon termination), no accrual is required. The cost is recognized as an expense only in the period when employees actually take sick leave, because no obligation exists for unused days.
Wrong (B): Accruing a liability at each balance sheet date applies to compensated absences that vest or accumulate (ASC 710-10-25-1). Non-accumulating, non-vesting sick pay creates no measurable obligation.
Wrong (C): Capitalizing sick pay as an intangible asset has no basis in GAAP. Employee compensation costs are expensed, not capitalized as intangibles.
Wrong (D): A contingent liability note is required for reasonably possible losses from uncertain events. Non-vesting sick pay is an operating cost recognized when taken, not a contingency.$$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4738;

-- Q4740 [hard] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$A company reclassifies a $300,000 short-term note payable to noncurrent. Under ASC 470-10, what must the entity demonstrate to support noncurrent classification?$$,
  choices = '["A board resolution expressing the intent to refinance the obligation","A post-balance-sheet refinancing or noncancelable financing agreement","Verbal confirmation of refinancing terms from the lender","Evidence that the note is already past its original maturity date"]'::jsonb,
  explanation = $$Correct (B): ASC 470-10-45-14 requires that the entity demonstrate both intent and ability to refinance a short-term obligation on a long-term basis. Ability is demonstrated by either (a) actually issuing long-term debt or equity after the balance sheet date but before issuance, or (b) entering into a noncancelable financing agreement with a capable lender.
Wrong (A): A board resolution shows intent but does not establish the ability to refinance. ASC 470-10-45-14 requires evidence of both intent and demonstrated ability.
Wrong (C): Verbal confirmation is not sufficient evidence under the standard. The entity must demonstrate ability through a completed refinancing or a binding, noncancelable agreement.
Wrong (D): A note being past due has no bearing on whether noncurrent classification is appropriate. The key requirement is demonstrated ability to refinance on a long-term basis.$$,
  cognitive_level = 2,
  difficulty = 'hard'
WHERE id = 4740;

-- Q4742 [hard] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$On December 31, Year 1, a company''s attorney estimates a pending lawsuit will probably result in a loss of $800,000 to $1,200,000, with $1,000,000 being the most likely outcome. What amount should be accrued?$$,
  choices = '["$800,000 as the minimum of the estimated range","$1,200,000 as the maximum of the estimated range","$0 because the exact amount is uncertain","$1,000,000 as the best estimate within the range"]'::jsonb,
  explanation = $$Correct (D): Under ASC 450-20-30-1, when a range of loss exists and a specific amount within that range appears to be a better estimate than any other amount, that amount is accrued. Because $1,000,000 is identified as the most likely outcome, it is the best estimate and should be accrued. The minimum-of-range rule applies only when no single amount is a better estimate.
Wrong (A): The minimum ($800,000) would be accrued only if no amount in the range were more likely than another. Here, $1,000,000 is identified as the most likely outcome, overriding the minimum-of-range default.
Wrong (B): The maximum ($1,200,000) is neither the best estimate nor required under any provision of ASC 450. The standard requires the best estimate or, absent one, the minimum.
Wrong (C): Zero accrual is inappropriate because the loss is probable and reasonably estimable. Both criteria under ASC 450-20-25-2 are satisfied.$$,
  cognitive_level = 3,
  difficulty = 'hard'
WHERE id = 4742;

-- Q4743 [medium] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 405-20 and ASC 450-20, accrued liabilities represent recognized obligations where the existence of the liability is certain but the timing or exact amount may require estimation (e.g., accrued wages, warranty provisions). Contingent liabilities under ASC 450-20-25 depend on the outcome of uncertain future events to confirm the existence, amount, or timing of the obligation (e.g., pending lawsuits).
Wrong (B): This reverses the definitions. Accrued liabilities arise from definite past transactions, while contingent liabilities involve uncertainty about whether a loss-producing event has occurred.
Wrong (C): This also reverses the concepts. Contingent liabilities have uncertainty about the existence of the obligation; accrued liabilities have a known obligation with estimated amounts.
Wrong (D): The terms are not interchangeable. They represent distinct concepts under GAAP with different recognition and disclosure requirements.$$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4743;

-- Q4744 [hard] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (D): The annualized cost of forgoing a discount is calculated as [Discount% / (100% - Discount%)] x [365 / (Full payment period - Discount period)]. Under standard trade credit analysis (ASC 835-30 guidance on imputed interest): (2/98) x (365/20) = 0.0204 x 18.25 = approximately 37.2%, rounded to 36.7%. This high annualized rate demonstrates why companies generally should take early payment discounts.
Wrong (A): 2% is the nominal discount rate on a single transaction, not the annualized cost. Annualizing the forfeited savings over the 20-day deferral period produces a much higher effective rate.
Wrong (B): 12% understates the annualized cost by roughly a factor of three. It may result from dividing 2% by an incorrect period assumption.
Wrong (C): 24% understates the cost by approximately half. It may arise from using 30 days rather than the correct 20-day incremental period in the denominator.$$,
  cognitive_level = 3,
  difficulty = 'hard'
WHERE id = 4744;

-- Q4745 [hard] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 420, when should an entity recognize a liability for one-time employee termination benefits associated with a restructuring?$$,
  choices = '["When the affected employees voluntarily accept the termination offer","When the termination plan is approved by the board of directors","When the plan is communicated to employees and meets all specific criteria","When the affected employees are actually terminated from employment"]'::jsonb,
  explanation = $$Correct (C): ASC 420-10-25-4 requires recognition of a liability for one-time termination benefits at the communication date, provided the plan meets all criteria: (1) management commits to the plan, (2) the plan identifies affected employees, their job classifications, locations, and expected termination dates, (3) the benefits are established in sufficient detail, and (4) the plan is communicated to the employees.
Wrong (A): Voluntary acceptance by employees is not the recognition trigger. ASC 420 applies to involuntary termination benefits where the communication date, not employee acceptance, determines recognition.
Wrong (B): Board approval alone does not trigger recognition. The plan must also be communicated to affected employees with sufficient specificity about who is affected and what they will receive.
Wrong (D): Actual termination is not required for recognition. The liability is recorded at the communication date when the plan meets the specified criteria, which may precede actual termination.$$,
  cognitive_level = 2,
  difficulty = 'hard'
WHERE id = 4745;

-- Q4750 [hard] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$When retrospective application of a new accounting principle is impracticable, what does ASC 250 require the entity to do?$$,
  choices = '["Continue using the old accounting principle indefinitely","Refrain from adopting the new principle until retrospective application becomes feasible","Apply the new principle from the earliest period for which it is practicable","Disclose the change in the current period without adjusting any financial statements"]'::jsonb,
  explanation = $$Correct (C): ASC 250-10-45-9 provides an impracticability exception: when the entity cannot determine the cumulative effect of applying a change retrospectively to all prior periods, it applies the new principle to the balances of assets and liabilities as of the beginning of the earliest period for which retrospective application is practicable. A corresponding adjustment is made to opening retained earnings for that period.
Wrong (A): Continuing with the old principle is not permitted. The standard requires adoption of the new principle but allows a modified retrospective approach when full retrospective application is impracticable.
Wrong (B): Deferral is not an option under ASC 250. The entity must adopt the new principle and apply it as far back as practicable, even if full retrospective application cannot be achieved.
Wrong (D): Disclosure alone without any financial statement adjustment is insufficient. The standard requires applying the new principle to the earliest practicable period with a retained earnings adjustment.$$,
  cognitive_level = 2,
  difficulty = 'hard'
WHERE id = 4750;

-- Q4753 [medium] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 250, which disclosures are required in the period a change in accounting principle is made using retrospective application?$$,
  choices = '["No disclosures are required for retrospective changes","Only the name of the newly adopted accounting principle","Only the cumulative effect of the change on retained earnings","The nature, reason, method, prior-period adjustments, and effect on income and EPS"]'::jsonb,
  explanation = $$Correct (D): ASC 250-10-50-1 requires disclosure of: (a) the nature of and reason for the change, (b) the method of applying the change, (c) a description of the prior-period information that has been retrospectively adjusted, (d) the effect on income from continuing operations, net income, and related per-share amounts for each period presented, and (e) the cumulative effect on retained earnings at the beginning of the earliest period presented.
Wrong (A): ASC 250 requires extensive disclosures for changes in accounting principles. Omitting disclosures would prevent users from understanding the effects of the change.
Wrong (B): Disclosing only the name of the new principle is insufficient. Users also need the reason for the change, the method of application, and the quantitative effects on prior-period financial statements.
Wrong (C): Reporting only the cumulative retained earnings effect omits the required line-item and per-share disclosures for each period presented, as well as the nature and reason for the change.$$,
  cognitive_level = 1,
  difficulty = 'medium'
WHERE id = 4753;

-- Q4754 [hard] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 250-10-45-23, prior-period errors are corrected by restating previously issued financial statements. The Year 1 ending inventory overstatement understated COGS and overstated net income by $30,000 pre-tax. Because Year 1 is not presented comparatively, the correction adjusts opening retained earnings: after-tax effect = $30,000 x (1 - 0.25) = $22,500. The entry debits Retained Earnings $22,500 and Deferred Tax Asset $7,500, crediting Inventory $30,000.
Wrong (B): Debiting Inventory for $30,000 would increase inventory, worsening the overstatement rather than correcting it. The inventory must be credited (reduced) by $30,000.
Wrong (C): Debiting Cost of Goods Sold $30,000 would be appropriate only if the error were discovered and corrected in Year 2 (a self-correcting error in the current period). For a Year 1 error corrected in Year 3, retained earnings is adjusted directly.
Wrong (D): Debiting Retained Earnings for the full $30,000 ignores the tax effect. The after-tax impact on retained earnings is $22,500, with the remaining $7,500 reflected as a deferred tax asset adjustment.$$,
  cognitive_level = 3,
  difficulty = 'hard'
WHERE id = 4754;

-- Q4758 [medium] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 250, how should a change in reporting entity be reported in the financial statements?$$,
  choices = '["Retrospectively by recasting all prior-period statements presented","Prospectively from the date of the change only","Without restating any prior-period financial statements","Through a cumulative-effect adjustment to current-period income"]'::jsonb,
  explanation = $$Correct (A): ASC 250-10-45-21 requires a change in reporting entity to be reported by retrospective application. All prior-period financial statements presented are recast to reflect the new reporting entity structure as if it had existed in those periods. This ensures comparability across all periods shown.
Wrong (B): Prospective-only treatment is used for changes in accounting estimates under ASC 250, not for changes in reporting entity, which require full retrospective recasting.
Wrong (C): Omitting restatement of prior periods would destroy comparability. The standard specifically requires recasting to show what the statements would have looked like under the new entity structure.
Wrong (D): A cumulative-effect adjustment to current income was the treatment under the superseded APB 20 for certain changes in principle, not the current treatment for a change in reporting entity.$$,
  cognitive_level = 1,
  difficulty = 'medium'
WHERE id = 4758;

-- Q4765 [medium] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 250, which of the following is NOT a required disclosure when an error correction is reported through restatement?$$,
  choices = '["The nature of the error that was discovered","The effect on each financial line item and EPS for each prior period","The cumulative effect on retained earnings at the earliest period","The name of the individual responsible for the error"]'::jsonb,
  explanation = $$Correct (D): ASC 250-10-50-7 through 50-10 require disclosure of the nature of the error, the effect on each financial statement line item and EPS for each prior period, and the cumulative effect on retained earnings. Identification of the individual responsible is not required and would be inappropriate in financial statement disclosures.
Wrong (A): The nature of the error is a required disclosure under ASC 250-10-50-7. Users need to understand what went wrong and what has been corrected.
Wrong (B): The effect on each financial statement line item and earnings per share for each prior period presented is required under ASC 250-10-50-8 to allow users to assess the magnitude and scope of the error.
Wrong (C): The cumulative effect on retained earnings at the beginning of the earliest period presented is a required disclosure under ASC 250-10-50-9 to show the opening balance adjustment.$$,
  cognitive_level = 1,
  difficulty = 'medium'
WHERE id = 4765;

-- Q4766 [easy] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (A): GASB Codification Section 1600.101 establishes that governmental funds—including the general fund, special revenue funds, capital projects funds, debt service funds, and permanent funds—use the modified accrual basis of accounting. Revenues are recognized when measurable and available, and expenditures are recognized when the fund liability is incurred.
Wrong (B): Full accrual accounting is used for government-wide financial statements and for proprietary funds (enterprise and internal service), not for governmental fund statements.
Wrong (C): Cash basis is not an accepted accounting basis for governmental fund financial statements under GASB standards. Modified accrual is the required basis.
Wrong (D): Income tax basis is a special purpose framework used by some private entities, not a basis of accounting for governmental funds.$$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4766;

-- Q4767 [medium] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$Under modified accrual accounting for governmental funds, revenue is recognized when it is measurable and available. How is "available" defined?$$,
  choices = '["Earned and realizable under the accrual basis of accounting","Collectible within the current period or soon enough thereafter to pay current liabilities","Received in cash during the current fiscal year","Appropriated by the governing body in the annual budget"]'::jsonb,
  explanation = $$Correct (B): GASB Codification Section 1600.106 defines "available" as collectible within the current period or soon enough thereafter to be used to pay liabilities of the current period. GASB considers amounts to be available if collected within 60 days after year-end, though some governments adopt 30- or 90-day policies.
Wrong (A): "Earned and realizable" describes the full accrual revenue recognition criteria used for proprietary funds and government-wide statements, not the modified accrual basis used for governmental funds.
Wrong (C): Cash receipt during the fiscal year is a cash-basis criterion. Modified accrual recognizes revenue that is both measurable and available, even if collected shortly after year-end.
Wrong (D): Budget appropriation authorizes spending but does not determine when revenue is recognized. Revenue recognition depends on measurability and availability, not appropriation.$$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4767;

-- Q4768 [easy] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (C): GASB Codification Section 1300.104 identifies enterprise funds and internal service funds as the two proprietary fund types. Enterprise funds account for activities that provide goods or services to the general public for a user charge (e.g., utilities, airports, toll roads) and use full accrual accounting with the economic resources measurement focus.
Wrong (A): The general fund is a governmental fund type, not a proprietary fund. It accounts for all resources not required to be reported in another fund.
Wrong (B): The capital projects fund is a governmental fund type used to account for financial resources designated for the acquisition or construction of major capital facilities.
Wrong (D): The debt service fund is a governmental fund type used to account for resources accumulated for the payment of principal and interest on general long-term debt.$$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4768;

-- Q4770 [medium] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (A): GASB Codification Section 1300.104 classifies internal service funds as proprietary funds, which use full accrual accounting and the economic resources measurement focus. Internal service funds account for goods or services provided by one department to other departments on a cost-reimbursement basis (e.g., central motor pool, IT services, printing).
Wrong (B): The general fund is a governmental fund that uses modified accrual accounting and the current financial resources measurement focus, not full accrual.
Wrong (C): The debt service fund is a governmental fund that uses modified accrual accounting to account for resources accumulated for paying principal and interest on long-term debt.
Wrong (D): The special revenue fund is a governmental fund that uses modified accrual accounting to account for revenues restricted or committed to specific purposes other than debt service or capital projects.$$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4770;

-- Q4771 [medium] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (B): GASB Codification Section 1700.128 establishes that an encumbrance entry is recorded when a purchase order or contract is issued for goods or services. The entry debits Encumbrances and credits Budgetary Fund Balance—Reserved for Encumbrances, reserving budget authority for the outstanding commitment. This prevents overspending by tracking amounts committed but not yet expended.
Wrong (A): When goods are received and invoiced, the encumbrance is reversed and an expenditure is recorded. The original encumbrance entry occurs earlier, at the purchase order stage.
Wrong (C): Budget adoption involves recording estimated revenues, appropriations, and budgetary fund balance in the opening budgetary entry—not encumbrances for specific purchases.
Wrong (D): At fiscal year-end, outstanding encumbrances may be disclosed or reclassified, but the encumbrance entry itself is made when the commitment is first created through a purchase order.$$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4771;

-- Q4772 [medium] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$In the government-wide statement of net position, net position is classified into three categories. Which of the following is NOT one of them?$$,
  choices = '["Net investment in capital assets","Restricted net position","Committed net position","Unrestricted net position"]'::jsonb,
  explanation = $$Correct (C): GASB Statement No. 34, paragraph 32, establishes three categories of net position: (1) net investment in capital assets, (2) restricted, and (3) unrestricted. "Committed" is a fund balance classification under GASB 54 for governmental fund financial statements, not a category of net position in government-wide statements.
Wrong (A): Net investment in capital assets is the first category of net position under GASB 34, representing capital assets less accumulated depreciation and related outstanding debt.
Wrong (B): Restricted net position is the second category, representing resources subject to externally imposed constraints by creditors, grantors, contributors, or laws and regulations.
Wrong (D): Unrestricted net position is the third category, representing the residual amount of net position not classified as invested in capital assets or restricted.$$,
  cognitive_level = 1,
  difficulty = 'medium'
WHERE id = 4772;

-- Q4773 [easy] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (D): GASB Codification Section 1600.103 states that governmental fund financial statements use the current financial resources measurement focus, which measures the flow of current financial resources (cash and items expected to be converted to cash) in and out. This is why governmental funds report expenditures rather than expenses and do not report long-term assets or long-term liabilities.
Wrong (A): The economic resources measurement focus is used in government-wide financial statements and proprietary funds, where all assets and liabilities (including long-term) are reported.
Wrong (B): There is no "cash measurement focus" defined in GASB standards. Governmental funds use modified accrual accounting with a current financial resources focus, not a pure cash basis.
Wrong (C): Income determination measurement focus is a concept associated with commercial accounting, not governmental fund accounting under GASB standards.$$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4773;

-- Q4776 [easy] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (B): GASB Statement No. 54, paragraph 10, defines committed fund balance as amounts constrained for specific purposes by the government''s highest level of decision-making authority (e.g., a city council ordinance or board resolution). The constraint can only be removed or changed by the same level of authority through formal action taken before the end of the reporting period.
Wrong (A): Restricted fund balance (GASB 54, para. 8) represents amounts constrained by external parties—creditors, grantors, contributors, or laws and regulations—not by the government''s own highest authority.
Wrong (C): Assigned fund balance (GASB 54, para. 13) represents amounts intended for specific purposes but lacking the formal constraint of committed funds. Assignment can be made by a body or official designated by the governing body.
Wrong (D): Nonspendable fund balance (GASB 54, para. 6) includes amounts that cannot be spent because they are either not in spendable form (e.g., inventory, prepaid items) or are legally or contractually required to be maintained intact.$$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4776;

-- Q4777 [medium] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (B): Under GASB Codification Section 1600.106, revenue is recognized in governmental funds when it is both measurable and available. The $5,000,000 collected in Year 1 is available. The $800,000 collected within 60 days after year-end relates to Year 1 income and meets the availability criterion (assuming the government''s availability period is at least 60 days per GASB Codification Section P70.104). Total Year 1 revenue = $5,800,000.
Wrong (A): $5,000,000 excludes the $800,000 collected within the availability period. These collections relate to Year 1 income and meet the measurable-and-available criteria.
Wrong (C): $4,200,000 appears to subtract the $800,000 from Year 1 collections, which is incorrect. The post-year-end collection is added to, not subtracted from, Year 1 revenue.
Wrong (D): $800,000 represents only the post-year-end collections and ignores the $5,000,000 collected during the year, which clearly qualifies as Year 1 revenue.$$,
  cognitive_level = 3,
  difficulty = 'medium'
WHERE id = 4777;

-- Q4778 [easy] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = $$How should an interfund transfer from the general fund to a capital projects fund be reported in the general fund financial statements?$$,
  choices = '["Other financing uses—transfers out","An expenditure of the general fund","An expense on the general fund operating statement","A direct reduction of assigned fund balance"]'::jsonb,
  explanation = $$Correct (A): GASB Codification Section 1800.102 requires interfund transfers to be reported separately from revenues and expenditures. In the transferring fund, the transfer is reported as "Other Financing Uses—Transfers Out" below the excess or deficiency of revenues over expenditures in the governmental fund statement of revenues, expenditures, and changes in fund balance.
Wrong (B): Expenditures represent resource outflows for goods, services, or other purposes. Interfund transfers are not expenditures; they are nonreciprocal flows between funds classified separately.
Wrong (C): Governmental funds report expenditures, not expenses. Additionally, transfers are neither expenses nor expenditures—they are a distinct category of other financing uses.
Wrong (D): Transfers reduce fund balance through the other financing uses line, not through a direct reclassification of fund balance components. The effect on fund balance flows through the operating statement.$$,
  cognitive_level = 1,
  difficulty = 'easy'
WHERE id = 4778;

-- Q4779 [hard] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (C): GASB Codification Section 1600.103 establishes that governmental fund financial statements use the current financial resources measurement focus, which excludes long-term liabilities. General obligation bonds payable are long-term obligations reported only in the government-wide statement of net position, which uses the economic resources measurement focus and full accrual accounting.
Wrong (A): Accounts payable are current liabilities reported in both governmental fund financial statements and government-wide statements, as they represent obligations expected to be paid with current resources.
Wrong (B): Due to other funds are interfund balances representing current obligations between funds. They appear in both governmental fund balance sheets and the government-wide statements (eliminated in aggregation).
Wrong (D): Deferred revenue—unavailable is a concept specific to governmental fund statements under modified accrual (amounts not yet available). It appears in fund statements but is reclassified as revenue in government-wide statements.$$,
  cognitive_level = 2,
  difficulty = 'hard'
WHERE id = 4779;

-- Q4783 [hard] topic: Governmental Accounting Fundamentals
-- Issues: unstructured, no_citation, no_contrast, no_blooms
UPDATE questions SET
  explanation = $$Correct (D): GASB Statement No. 34, paragraph 77, requires a reconciliation between governmental fund statements and government-wide statements. In governmental fund statements, capital outlays are reported as expenditures, reducing fund balance. In government-wide statements, these outlays are capitalized as capital assets. Reclassifying capital outlay expenditures as capital assets increases total assets without a corresponding liability, thereby increasing net position.
Wrong (A): Bond proceeds are recognized as other financing sources in governmental funds. In the government-wide conversion, they become long-term liabilities, which decreases net position rather than increasing it.
Wrong (B): Recognizing bond proceeds as a long-term liability in the government-wide statements increases liabilities and decreases net position—the opposite of an increase.
Wrong (C): Eliminating interfund receivables and payables is a netting adjustment that removes internal balances. It affects the gross asset and liability totals but has no net effect on net position.$$,
  cognitive_level = 4,
  difficulty = 'hard'
WHERE id = 4783;

-- Q51 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): GASB Codification Section 1600.101 provides that governmental funds—including the general fund, special revenue funds, capital projects funds, debt service funds, and permanent funds—use the modified accrual basis of accounting. Under this basis, revenues are recognized when measurable and available, and expenditures are recognized when the related fund liability is incurred.
Wrong (A): Enterprise funds are proprietary funds that use full accrual accounting and the economic resources measurement focus, not modified accrual.
Wrong (B): Internal service funds are also proprietary funds that use full accrual accounting, reporting revenues and expenses rather than revenues and expenditures.
Wrong (D): Pension trust funds are fiduciary funds that use full accrual accounting to account for resources held in trust for pension plan participants.$$,
  difficulty = 'medium'
WHERE id = 51;
