-- FAR cleanup batch 17 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q5358 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 34, paragraph 38, the statement of activities uses a net (expense) revenue format that presents each function''s expenses offset by directly associated program revenues (charges for services, operating grants, and capital grants), resulting in a net expense or net revenue for each function. General revenues are reported separately below the functional detail.
Wrong (A): A traditional income statement format reports total revenues less total expenses, which is used in commercial accounting. The government-wide statement of activities specifically avoids this format to highlight each function''s reliance on general revenues.
Wrong (C): A cash-flow format categorizes receipts and disbursements by activity type, which describes the statement of cash flows used by proprietary funds, not the government-wide statement of activities.
Wrong (D): A budgetary comparison format shows actual results versus appropriations and is presented as required supplementary information for governmental funds, not as the government-wide statement of activities.$EXPL$,
  difficulty = 'easy'
WHERE id = 5358;

-- Q5359 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 87, paragraph 16, a short-term lease is defined as a lease with a maximum possible term of 12 months or fewer, including any options to extend. Since this 10-month lease has no renewal option, the maximum possible term is 10 months, qualifying it for the short-term exception. Payments are recognized as expenses in the periods to which they relate.
Wrong (A): Recognizing a right-to-use asset and lease liability applies only to leases exceeding the 12-month short-term threshold under GASB 87. A 10-month lease with no renewal option falls below this threshold.
Wrong (B): Capitalizing the total lease cost as a prepaid asset is not the prescribed treatment under GASB 87 for either short-term or long-term leases. Short-term leases are expensed as incurred.
Wrong (D): Recognizing the full amount as an expenditure at signing does not match the period-by-period expense recognition required for short-term leases under GASB 87.$EXPL$,
  difficulty = 'medium'
WHERE id = 5359;

-- Q5361 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 34, paragraph 63, the five governmental fund types are the general fund, special revenue funds, capital projects funds, debt service funds, and permanent funds. Permanent funds account for resources where the principal must be preserved and earnings benefit the government or its citizens.
Wrong (A): Internal service funds are classified as proprietary funds under GASB 34, not governmental funds. Proprietary funds use full accrual accounting and include internal service and enterprise funds.
Wrong (B): Investment trust funds are classified as fiduciary funds under GASB 34. They report the external portion of investment pools managed by the government.
Wrong (D): Enterprise funds are classified as proprietary funds under GASB 34, not governmental funds. They account for activities where fees are charged to external users for goods or services.$EXPL$,
  difficulty = 'easy'
WHERE id = 5361;

-- Q5363 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB 34, paragraph 130, the budgetary comparison schedule compares actual inflows and outflows to the legally adopted budget. For expenditures, the variance is actual ($31,100,000) minus appropriations ($30,500,000) = $600,000 unfavorable because spending exceeded the authorized amount.
Wrong (A): This answer incorrectly compares actual expenditures to estimated revenues rather than appropriations. Expenditure variances are always measured against appropriations, the authorized spending authority.
Wrong (B): The $900,000 figure results from comparing actual expenditures to estimated revenues, which is not how budgetary variances are calculated. The appropriate comparison is expenditures to appropriations.
Wrong (C): Comparing actual expenditures to actual revenues measures the surplus or deficit, not the expenditure variance. The budgetary comparison focuses on compliance with the adopted budget.$EXPL$,
  difficulty = 'medium'
WHERE id = 5363;

-- Q5364 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 33, paragraph 20, voluntary nonexchange transactions with reimbursement eligibility requirements (allowable cost provisions) are recognized as revenue when the qualifying expenditures are incurred because that is when the eligibility requirement is met. The city incurred $420,000 in qualifying costs, making that amount eligible for recognition.
Wrong (B): Recognizing the full $1,500,000 at the award date is incorrect because reimbursement-type grants do not create receivables when the agreement is signed. Revenue recognition depends on incurring allowable costs, not on the existence of the grant agreement.
Wrong (C): Recognizing $750,000 based on elapsed time is incorrect because reimbursement-basis grants tie revenue recognition to qualifying expenditures, not to the passage of time or a pro-rata allocation of the grant period.
Wrong (D): Waiting until project completion to recognize revenue is overly conservative and not required by GASB 33. Revenue is recognized as qualifying expenditures are incurred, not deferred until the project is fully complete.$EXPL$,
  difficulty = 'medium'
WHERE id = 5364;

-- Q5366 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 96, paragraphs 11-13, subscription-based information technology arrangements (SBITAs) require governments to recognize an intangible right-to-use subscription asset and a corresponding subscription liability at the present value of future payments. This treatment parallels the lease accounting model under GASB 87.
Wrong (A): Recognizing a single-year operating expense is not permitted under GASB 96 for arrangements exceeding 12 months. The standard mandates capitalization of the right-to-use asset and recognition of a liability.
Wrong (B): Recording only the first payment as a prepaid asset does not reflect the full obligation or the intangible asset created by the multi-year subscription arrangement under GASB 96.
Wrong (D): Capitalizing $270,000 with no liability ignores the present value measurement requirement and the obligation to make future payments. GASB 96 requires both an asset and a corresponding liability.$EXPL$,
  difficulty = 'medium'
WHERE id = 5366;

-- Q5367 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 14 (as amended by GASB 61), paragraph 53, a component unit should be blended when it provides services exclusively or almost exclusively to the primary government, even if legally separate. Because the Building Authority exists solely to issue bonds for city facilities and the city is the sole beneficiary, blending is appropriate.
Wrong (A): Legal separateness alone does not dictate discrete presentation. The nature of the relationship and exclusivity of services determine the presentation method under GASB 61, and the Authority''s exclusive service to the city triggers blending.
Wrong (C): Exclusion is not appropriate because the city appoints the Authority''s board and is the sole beneficiary, establishing the Authority as a component unit. A separate governing board does not justify exclusion when the primary government controls the entity.
Wrong (D): Fiduciary fund presentation applies when a government holds resources in trust or as an agent for external parties. The Building Authority''s resources benefit the city, not external beneficiaries.$EXPL$,
  difficulty = 'hard'
WHERE id = 5367;

-- Q5368 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Concepts Statement No. 4, deferred inflows of resources represent acquisitions of net assets by the government that are applicable to a future reporting period. They are reported as a separate section on the statement of net position or balance sheet.
Wrong (B): Earned but uncollected revenues are reported as receivables, not deferred inflows. Deferred inflows specifically relate to resources acquired before the period to which they apply, such as property taxes levied for a future year.
Wrong (C): Long-term liabilities due beyond one year are reported in the liabilities section of the statement of net position, not as deferred inflows of resources. The two categories are distinct under the GASB financial elements framework.
Wrong (D): Assets restricted by external creditors are classified as restricted net position or restricted fund balance, not as deferred inflows of resources. Restrictions affect classification within net position, not the deferred inflows category.$EXPL$,
  difficulty = 'easy'
WHERE id = 5368;

-- Q5369 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB 68, paragraphs 48-49, employers participating in cost-sharing plans must recognize their proportionate share of the collective net pension liability. The ability to withdraw from the plan does not reduce the reported liability. GASB 68 explicitly rejected limiting the liability to contributions due because the obligation reflects the employer''s share of benefits already earned by employees.
Wrong (A): Voluntary participation does not override the proportionate share allocation required by the standard. GASB 68 mandates recognition of the full proportionate share regardless of withdrawal provisions or the voluntary nature of participation.
Wrong (B): The three-month measurement date lag does not make the liability unreliable. GASB 68, paragraph 81, explicitly permits a measurement date up to 12 months before the employer''s fiscal year-end, with appropriate disclosure of the lag.
Wrong (C): Reducing the liability by cumulative contributions has no basis in GASB 68. The net pension liability is the total pension liability minus the plan''s fiduciary net position, not the total pension liability minus the employer''s contributions.$EXPL$,
  difficulty = 'hard'
WHERE id = 5369;

-- Q5371 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 34, paragraph 58, interfund receivables and payables between funds of the same activity type must be eliminated in the government-wide financial statements. Because both the general fund and the capital projects fund are governmental funds, the $1.5 million interfund balance is eliminated during the conversion to government-wide statements.
Wrong (B): Internal balances are used only for amounts between governmental activities and business-type activities, not between funds within the same activity column. Both funds here are governmental activities, requiring full elimination.
Wrong (C): Reclassifying the advance as a long-term receivable is a fund-level consideration, not a government-wide reporting treatment. In government-wide statements, same-activity interfund balances are eliminated entirely.
Wrong (D): The repayment timeline is irrelevant to the government-wide elimination requirement. GASB 34 requires elimination of all interfund balances between funds of the same activity type regardless of the expected repayment period.$EXPL$,
  difficulty = 'medium'
WHERE id = 5371;

-- Q5376 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 77, paragraphs 4-7, governments must disclose information about tax abatement agreements, including a brief description of the program, the gross dollar amount of taxes abated during the reporting period, and any commitments made as part of the agreement. GASB 77 requires note disclosure, not recognition as an expenditure or liability.
Wrong (A): Recording a $350,000 expenditure is incorrect because the foregone revenue was never collected, so there is no expenditure to record. GASB 77 addresses disclosure requirements only, not recognition of an expense or expenditure.
Wrong (B): Recognizing a $3.5 million contingent liability for the total abatement commitment is not required by GASB 77. The standard mandates annual note disclosure of amounts abated, not balance sheet recognition of future commitments.
Wrong (D): Reporting the abatement as a reduction to the tax levy with no additional disclosure fails to meet GASB 77''s requirement for note disclosures that describe the program, its purpose, authority, and dollar amounts abated.$EXPL$,
  difficulty = 'medium'
WHERE id = 5376;

-- Q5378 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 54, paragraphs 6-8, fund balance classifications follow a hierarchy where external constraints (from creditors, grantors, or laws of other governments) result in restricted classification, regardless of any additional internal actions. Because the state legislature imposed the mandate, the entire $4.2 million meets the restricted definition.
Wrong (B): The city council''s resolution does not supersede the state mandate. Under GASB 54, external constraints from higher-level governments always result in a restricted classification that cannot be overridden by internal action.
Wrong (C): Splitting $1.5 million as committed and $2.7 million as restricted is incorrect because the council''s action cannot reclassify externally restricted resources to a lower classification level. The entire amount remains restricted.
Wrong (D): Classifying the amount as assigned is incorrect because grants from other governments with legislative mandates create externally imposed constraints, which are the highest level of restriction under GASB 54.$EXPL$,
  difficulty = 'hard'
WHERE id = 5378;

-- Q5379 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 14 (as amended by GASB 61), paragraphs 21-22, a legally separate entity is a component unit if the primary government appoints a voting majority of the board and can impose its will or the entity is fiscally dependent. The county''s appointment power over the library board establishes the component unit relationship. Discrete presentation is appropriate because the library serves the public, not exclusively the primary government.
Wrong (A): Exclusion is not appropriate because the county appoints the board majority, establishing the library as a component unit. Financial independence from county appropriations does not negate the appointment-based component unit relationship.
Wrong (B): Blending requires the component unit to serve the primary government exclusively or almost exclusively, or have a substantively identical governing body. The library serves all county residents, not just the county government.
Wrong (D): Fiduciary fund reporting applies when a government holds resources in trust or as an agent for external parties. The library''s resources fund its own operations and public services, not a fiduciary arrangement.$EXPL$,
  difficulty = 'hard'
WHERE id = 5379;

-- Q5381 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 34, paragraph 130, budgetary comparison schedules for the general fund and each major special revenue fund with a legally adopted annual budget are required supplementary information (RSI). RSI accompanies but is not part of the basic financial statements.
Wrong (A): The statement of net position is a basic financial statement, not supplementary information. Basic financial statements include government-wide statements, fund statements, and notes.
Wrong (B): Notes to the financial statements are an integral part of the basic financial statements under GASB 34, not required supplementary information.
Wrong (D): Combining statements for nonmajor funds are supplementary information but are not required by GASB standards. They are optional presentations, unlike RSI which is mandated.$EXPL$,
  difficulty = 'easy'
WHERE id = 5381;

-- Q5382 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 34, paragraphs 23-26, governments may elect the modified approach for eligible infrastructure assets, under which the assets are not depreciated if the government maintains them at or above a condition level it establishes and documents. Other capital assets, such as the road grader, follow standard depreciation methods over their useful lives.
Wrong (B): Both assets are not depreciated the same way. The modified approach is an explicit alternative to depreciation for qualifying infrastructure assets, creating a distinct reporting treatment from general capital assets like equipment.
Wrong (C): The road grader is not expensed immediately in government-wide statements. GASB 34 requires capitalization of capital assets exceeding the government''s threshold; immediate expensing occurs only in the governmental fund statements.
Wrong (D): Neither asset is reported at fair value under GASB 34. Infrastructure under the modified approach is reported at historical cost less preservation expenditures, and the road grader is reported at historical cost less accumulated depreciation.$EXPL$,
  difficulty = 'medium'
WHERE id = 5382;

-- Q5383 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB 72, paragraphs 46-59, the fair value hierarchy consists of three levels: Level 1 (quoted prices in active markets for identical assets), Level 2 (observable inputs other than quoted prices), and Level 3 (unobservable inputs based on the government''s own assumptions).
Wrong (A): Historical cost, replacement cost, and net realizable value are different measurement attributes, not levels of the fair value hierarchy. GASB 72 specifically addresses fair value measurements and their input classifications.
Wrong (B): Entry price, exit price, and settlement price are pricing concepts used in financial theory, not the three levels of the GASB 72 fair value hierarchy. GASB 72 defines fair value as an exit price measured through the input hierarchy.
Wrong (C): Market approach, cost approach, and income approach are valuation techniques used to measure fair value, not levels within the hierarchy. The hierarchy classifies the inputs to those techniques by their observability.$EXPL$,
  difficulty = 'easy'
WHERE id = 5383;

-- Q5384 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 34, paragraphs 130-131, the budgetary comparison schedule must present both the original and final budget amounts alongside actual results on the budgetary basis. When the budgetary basis differs from GAAP, a reconciliation to GAAP amounts must be provided either on the schedule or in the notes.
Wrong (A): Presenting only the GAAP-basis actual amount of $33.8 million would obscure the comparison with the legally adopted budget, defeating the purpose of budgetary accountability. The schedule must use the budgetary basis for actual amounts.
Wrong (C): Adjusting the budget amounts to modified accrual would misrepresent the legally adopted budget. The budgetary comparison schedule must present the budget as adopted, not convert it to a different basis.
Wrong (D): The $1.8 million difference between budgetary and GAAP amounts is a basis difference, not a prior period adjustment. Basis differences are reconciled through a note or schedule, not corrected as prior period adjustments.$EXPL$,
  difficulty = 'medium'
WHERE id = 5384;

-- Q5385 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 33, paragraph 7, government-mandated nonexchange transactions occur when a higher-level government provides resources to a lower-level government and requires it to use those resources for a specific purpose. Federal grants for Medicaid or education are common examples.
Wrong (B): A transaction where a government voluntarily provides resources to another entity describes a voluntary nonexchange transaction under GASB 33, not a government-mandated transaction. The key distinction is whether compliance is required by law.
Wrong (C): A tax imposed directly on citizens by the receiving government is classified as either a derived tax revenue or an imposed nonexchange revenue under GASB 33, depending on whether there is an underlying exchange transaction.
Wrong (D): A fee charged for services rendered is an exchange or exchange-like transaction, not a nonexchange transaction. Government-mandated transactions involve resource transfers without proportional exchange of value.$EXPL$,
  difficulty = 'easy'
WHERE id = 5385;

-- Q5388 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 54, paragraph 10, committed fund balance can be established and modified only by the government''s highest level of decision-making authority, which here is the board of trustees. A township manager lacks the authority to modify committed fund balance, so the original $800,000 commitment remains intact at year-end.
Wrong (A): The township manager''s reallocation is invalid under GASB 54. The same formal action by the same body that committed the resources must also be used to modify the commitment; a manager cannot reduce committed amounts.
Wrong (C): Committed fund balance can be established for future projects. GASB 54 specifically allows committed classifications for purposes determined by formal action of the highest decision-making authority.
Wrong (D): The $200,000 reallocated portion was not validly reassigned because the manager lacks authority, and the remaining $600,000 was never released. The full $800,000 remains committed.$EXPL$,
  difficulty = 'medium'
WHERE id = 5388;

-- Q5390 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 54, paragraph 30, special revenue funds should report resources restricted or committed for purposes other than capital projects or debt service, and the restricted or committed revenues should constitute a substantial portion of the fund''s inflows. When general fund transfers ($3.5 million) approach the restricted revenue ($4.2 million), the fund''s classification becomes questionable.
Wrong (A): GASB 54 requires ongoing evaluation of the revenue composition, not merely the original establishment purpose. A fund''s classification may need to change if the revenue source no longer forms a substantial portion of inflows.
Wrong (B): Reclassification to a capital projects fund would only be appropriate if the fund''s primary purpose is capital asset acquisition or construction, not program expansion. Fund type is determined by purpose and revenue source.
Wrong (D): A permanent fund requires that the principal be maintained intact with only earnings available for use. An ongoing sales tax is a revenue stream, not an endowment-like principal.$EXPL$,
  difficulty = 'medium'
WHERE id = 5390;

-- Q5391 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 34, paragraph 70, pension trust funds are fiduciary funds used to report resources held in trust for pension plan members and beneficiaries. These funds account for plan assets, contributions received, investment income, and benefit payments.
Wrong (A): Employee salary expenditures are reported in the governmental fund that pays the salaries (typically the general fund), not in the pension trust fund. The trust fund holds and manages accumulated plan assets.
Wrong (C): Debt service payments on pension obligation bonds are reported in a debt service fund, not a pension trust fund. Pension trust funds account for plan assets and benefits, not the government''s bonded indebtedness.
Wrong (D): The employer''s annual pension contribution expense is recognized on the government-wide financial statements under GASB 68, not within the pension trust fund. The trust fund reports contributions received, not the employer''s expense.$EXPL$,
  difficulty = 'easy'
WHERE id = 5391;

-- Q5393 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB standards and general bond covenants, when a bond indenture specifies that unused proceeds must be applied to debt retirement, the restriction governs the disposition of surplus funds. The $340,000 must be transferred to the debt service fund to comply with the indenture, as external creditor restrictions take precedence under GASB 54.
Wrong (B): The finance director cannot override the bond indenture''s legal restriction. External constraints from creditors take precedence over management''s preferred disposition of remaining funds.
Wrong (C): Retaining the balance in the capital projects fund indefinitely is not appropriate when the project is complete and the bond indenture specifies how unused proceeds must be used. The funds must be applied to debt retirement.
Wrong (D): Returning funds directly to bondholders as an early principal payment is not the standard procedure. Bond proceeds flow through the debt service fund, which manages scheduled and early debt retirement payments.$EXPL$,
  difficulty = 'medium'
WHERE id = 5393;

-- Q5395 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB 87, paragraph 16, a short-term lease has a maximum possible term of 12 months or less, including any options to extend. Short-term leases are exempt from the capitalization requirements, and payments are recognized as expenses or expenditures in the period incurred.
Wrong (A): A 6-month threshold has no basis in GASB 87. The standard specifically establishes 12 months as the maximum possible term cutoff for short-term lease classification.
Wrong (B): A 24-month threshold has no basis in GASB 87. Leases exceeding 12 months must be capitalized with a right-to-use asset and lease liability, regardless of materiality.
Wrong (C): A 36-month threshold has no basis in GASB 87. The 12-month cutoff is the only short-term threshold established by the standard.$EXPL$,
  difficulty = 'easy'
WHERE id = 5395;

-- Q5400 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 34, paragraph 8, MD&A is classified as required supplementary information (RSI) that precedes the basic financial statements. It provides an analytical overview of the government''s financial activities and is required but not part of the basic financial statements themselves.
Wrong (A): MD&A is not a basic financial statement. The basic financial statements include the government-wide statements, fund financial statements, and notes to the financial statements.
Wrong (C): Supplementary information (without the ''required'' qualifier) refers to optional additional schedules such as combining statements for nonmajor funds. MD&A is mandated by GASB, making it required supplementary information.
Wrong (D): Notes to the financial statements are an integral part of the basic financial statements and provide essential disclosures. MD&A is separate from the notes and precedes the basic financial statements.$EXPL$,
  difficulty = 'easy'
WHERE id = 5400;

-- Q5402 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 34, paragraph 76, the general fund is always reported as a major fund. All other governmental and enterprise funds must meet quantitative thresholds (10% of the category total and 5% of the aggregate total) to qualify as major funds, though a government may also designate any fund as major.
Wrong (B): The debt service fund must meet the quantitative thresholds or be designated by management to qualify as a major fund. It is not automatically reported as major regardless of size.
Wrong (C): The capital projects fund, like other governmental funds, must meet both the 10% category and 5% aggregate thresholds to qualify as major. It receives no automatic major fund designation.
Wrong (D): The largest special revenue fund is not automatically major. It must still meet both quantitative thresholds under GASB 34 or be specifically designated by management as a major fund.$EXPL$,
  difficulty = 'easy'
WHERE id = 5402;

-- Q5403 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 54, paragraph 30, a special revenue fund must have one or more specific revenue sources that form a substantial portion of its inflows. The $2,800,000 state grant at 75% of inflows is a restricted revenue source that satisfies this requirement.
Wrong (A): Government grants are qualifying revenue sources for special revenue funds under GASB 54. Restricted grants from other governments are among the most common revenue sources supporting special revenue fund classification.
Wrong (B): GASB 54 does not specify a fixed percentage threshold such as 90%. The ''substantial portion'' test is a principles-based standard, not a bright-line rule, and 75% clearly qualifies.
Wrong (C): Special revenue funds may account for any restricted or committed revenue source, not just tax revenues. Grants, fees, and other restricted revenues are all qualifying sources under GASB 54.$EXPL$,
  difficulty = 'medium'
WHERE id = 5403;

-- Q5408 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 33, paragraphs 20-22, voluntary nonexchange transactions are recognized as revenue when all eligibility requirements are met. A restriction limits how resources may be used but does not affect recognition timing. Since Dunmore met the eligibility condition (500 participants), the full $4,000,000 is recognized as revenue.
Wrong (A): Matching revenue to expenditures confuses the spending restriction with an eligibility requirement. Restrictions affect use of resources, not recognition timing. All eligibility requirements were met, so the full grant is recognized.
Wrong (C): Deferring all revenue until funds are fully spent is incorrect because GASB 33 does not condition revenue recognition on complete expenditure of grant funds. Recognition depends on meeting eligibility requirements.
Wrong (D): Recognizing only the unspent balance has no basis in GASB 33. Revenue recognition for voluntary nonexchange transactions is triggered by meeting eligibility requirements, not by the pattern of spending.$EXPL$,
  difficulty = 'medium'
WHERE id = 5408;

-- Q5409 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 34, paragraph 112, interfund services provided and used are reported as revenues and expenditures in the respective funds because they mirror arm''s-length transactions. The general fund reports the $480,000 billed amount as an expenditure for fleet services.
Wrong (B): Treating the payment as a transfer is incorrect because interfund service charges are recognized as expenditures, not transfers. The internal service fund provides a measurable service in return, making this a quasi-external transaction.
Wrong (C): Adjusting the expenditure to $450,000 to eliminate the markup is not required at the fund level. The general fund reports the billed amount; any markup elimination occurs during government-wide statement conversion.
Wrong (D): Recording a $480,000 reduction in fund balance with no expenditure ignores proper accounting treatment. Payments for interfund services must be reported as expenditures in the paying fund.$EXPL$,
  difficulty = 'medium'
WHERE id = 5409;

-- Q5411 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB standards and modified accrual accounting, fines and penalties are recognized as revenue when measurable and available (collectible within the availability period, typically 60 days). The $295,000 collected plus $30,000 expected within 60 days equals $325,000 in recognizable revenue. The remaining $15,000 fails the availability test and is deferred.
Wrong (A): Recognizing the full $340,000 assessed is incorrect because modified accrual requires revenue to be available, not merely assessed. The $15,000 collectible beyond 60 days does not meet the availability criterion.
Wrong (B): Recognizing only the $295,000 collected understates revenue because it excludes the $30,000 expected within the 60-day availability period, which qualifies for recognition under modified accrual.
Wrong (C): The $310,000 figure does not correspond to any valid calculation under modified accrual. The correct amount is $295,000 collected plus $30,000 available within 60 days, totaling $325,000.$EXPL$,
  difficulty = 'easy'
WHERE id = 5411;

-- Q5413 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 54, paragraphs 10-11, stabilization arrangements established by the government''s highest level of decision-making authority through formal action (such as a council resolution) are classified as committed fund balance. The constraint can only be removed by the same formal action.
Wrong (B): Restricted fund balance requires externally imposed constraints from creditors, grantors, or laws of other governments. An internal council resolution does not create a restriction under GASB 54, regardless of the two-thirds vote requirement.
Wrong (C): Assigned fund balance represents amounts intended for a specific purpose but lacking the formal constraint of a council resolution. Since the council passed a formal resolution, the higher committed classification applies.
Wrong (D): Nonspendable fund balance applies to amounts not in spendable form (inventories, prepaid items) or legally required to remain intact (permanent fund corpus). Cash set aside by resolution is spendable and does not qualify as nonspendable.$EXPL$,
  difficulty = 'medium'
WHERE id = 5413;

-- Q5414 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 34, paragraph 12, fiduciary funds are excluded from the government-wide financial statements because their resources are held in trust or as an agent for external parties and cannot support the government''s own programs. Fiduciary activities are reported only in the fiduciary fund financial statements.
Wrong (A): Proprietary fund activities are included in the government-wide statements under business-type activities. Enterprise and internal service fund transactions are presented in the government-wide financial statements.
Wrong (B): Governmental fund activities are included in the government-wide statements under governmental activities. They are converted from modified accrual to full accrual basis during the consolidation process.
Wrong (D): Internal service funds, while classified as proprietary funds, are typically included in the governmental activities column of the government-wide statements because they predominantly serve governmental funds.$EXPL$,
  difficulty = 'easy'
WHERE id = 5414;

-- Q5415 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 77, paragraphs 5-7, governments must disclose tax abatement agreements in the notes, including the tax type, authority, eligibility criteria, dollar amount abated, and recapture provisions. The disclosure applies regardless of whether the clawback is exercised or whether the company has met its job creation commitments.
Wrong (A): GASB 77 does not provide a materiality exception based on the ratio of abated taxes to total revenue. Significant tax abatement agreements require note disclosure regardless of their proportion to total property tax revenue.
Wrong (B): Disclosure is required regardless of whether the clawback provision is exercised. The existence of recapture provisions must be disclosed, but disclosure is not contingent on the government taking enforcement action.
Wrong (C): GASB 77 requires note disclosure in the financial statements, not merely in the MD&A. Notes are an integral part of the basic financial statements, while MD&A is required supplementary information.$EXPL$,
  difficulty = 'hard'
WHERE id = 5415;

-- Q5418 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 34 and GASB Codification Section 2200, required supplementary information is data that GASB has determined is essential for placing the basic financial statements in context. RSI accompanies the basic financial statements but is not part of them; examples include MD&A and pension schedules.
Wrong (A): RSI is explicitly distinguished from the basic financial statements. Basic financial statements include government-wide statements, fund statements, and notes. RSI supplements but does not form part of these statements.
Wrong (B): RSI is not optional. GASB mandates its presentation, distinguishing it from other supplementary information that governments may choose to include but are not required to present.
Wrong (D): Auditors are required to apply certain limited procedures to RSI under auditing standards, including inquiries of management and comparing RSI to the basic financial statements. RSI is not outside the auditor''s scope.$EXPL$,
  difficulty = 'easy'
WHERE id = 5418;

-- Q5420 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 87, paragraph 16, a short-term lease has a maximum possible term (including renewal options) of 12 months or less at lease commencement. The 15-month lease exceeds this threshold and must be recognized as a right-to-use asset and lease liability regardless of payment amounts.
Wrong (A): The city''s capitalization threshold is irrelevant to the short-term lease classification under GASB 87. The 12-month maximum possible term test is the sole criterion for the short-term exemption.
Wrong (B): GASB 87 uses a 12-month threshold, not 24 months. There is no alternative short-term cutoff in the standard, and the 15-month term clearly exceeds the 12-month limit.
Wrong (D): Month-to-month leases are one type of short-term lease, but they are not the only qualifying type. Any lease with a maximum possible term of 12 months or less qualifies, including fixed-term leases within that period.$EXPL$,
  difficulty = 'medium'
WHERE id = 5420;

-- Q5421 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 54, paragraph 18, when an expenditure can be funded from both restricted and unrestricted resources, restricted is spent first by default absent a formal policy. Within unrestricted fund balance, committed amounts are considered spent before assigned. The default hierarchy is restricted, then committed, then assigned.
Wrong (A): Spending assigned first, then committed, then restricted reverses the GASB 54 default order. Absent a formal policy, the most constrained resources (restricted) are spent first.
Wrong (C): Spending committed before assigned is correct within unrestricted, but placing committed before restricted is incorrect. Restricted resources are always spent before unrestricted resources under the default hierarchy.
Wrong (D): GASB 54 establishes a clear default spending hierarchy when no formal policy exists. The absence of a policy does not give the government discretion to choose any spending order.$EXPL$,
  difficulty = 'hard'
WHERE id = 5421;

-- Q5423 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 44, the statistical section presents trend data, revenue capacity, debt capacity, demographic information, and operating data typically covering ten fiscal years. This information helps users assess a government''s financial condition over time.
Wrong (A): Auditor opinions are part of the independent auditor''s report, which accompanies but is separate from the statistical section. The statistical section contains government-prepared data, not auditor conclusions.
Wrong (B): Adjusting journal entries are internal accounting records used during year-end close. They are not presented in the statistical section or any published section of the financial report.
Wrong (D): The annual operating budget document is a separate publication from the comprehensive annual financial report. The statistical section provides historical trend data, not the current-year budget.$EXPL$,
  difficulty = 'easy'
WHERE id = 5423;

-- Q5425 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 67, paragraph 4, and GASB Statement No. 34, defined benefit pension plans administered through trusts are reported in a pension (and other employee benefit) trust fund, a fiduciary fund type. The fiduciary net position represents plan assets minus plan liabilities.
Wrong (A): The general fund accounts for the government''s general operating activities, not for pension plan assets. Pension contributions are expenditures in the general fund, but plan assets are held in a separate trust fund.
Wrong (C): Investment trust funds report the external portion of investment pools managed by the government, not employee benefit plans. Pension plans require the pension trust fund classification.
Wrong (D): Internal service funds account for goods or services provided by one department to another on a cost-reimbursement basis. They are proprietary funds and are not used to report fiduciary pension plan assets.$EXPL$,
  difficulty = 'medium'
WHERE id = 5425;

-- Q5427 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 33, derived tax revenues such as income taxes are recognized when the underlying exchange transaction occurs and the resources are available. Because the $380,000 relates to income earned during 2026 and is collected within the 60-day availability period, it qualifies for recognition in the general fund, bringing total revenue to $4,580,000.
Wrong (A): Modified accrual does not require cash collection during the fiscal year. It requires the revenue to be measurable and available, meaning collectible within the availability period after year-end. The $380,000 collected in January qualifies.
Wrong (C): Deferring income tax revenue until tax returns are filed and assessed has no basis in GASB 33. Derived tax revenues are recognized when the underlying exchange (earning income) occurs and the resources are available.
Wrong (D): Revenue recognition for derived taxes is permitted in both governmental fund statements (modified accrual) and government-wide statements (full accrual). The availability criterion applies only at the fund level, not as a complete bar to recognition.$EXPL$,
  difficulty = 'medium'
WHERE id = 5427;

-- Q5429 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 54, paragraph 30, a special revenue fund accounts for the proceeds of specific revenue sources that are restricted or committed to expenditures for specified purposes other than debt service or capital projects.
Wrong (B): Accounting for all general operating revenues and expenditures describes the general fund, not a special revenue fund. The general fund is the primary operating fund without a specific restricted revenue source requirement.
Wrong (C): Accounting for resources held in trust for external parties describes a fiduciary fund (such as a pension trust or custodial fund), not a special revenue fund. Fiduciary funds hold resources that cannot be used for the government''s own programs.
Wrong (D): Accounting for goods and services provided between departments on a cost-reimbursement basis describes an internal service fund, which is a proprietary fund type, not a governmental fund.$EXPL$,
  difficulty = 'easy'
WHERE id = 5429;

-- Q5430 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 33 and GASB 65, property taxes levied for a future period are reported as deferred inflows of resources because the resources were received before the period to which they relate. The $1,800,000 collected in advance cannot be recognized as revenue until the fiscal year for which the taxes were levied begins on January 1, 2027.
Wrong (A): Revenue recognition is not permitted for property taxes levied for a future fiscal period, even though cash has been collected. Under GASB 33, imposed nonexchange revenues such as property taxes are recognized in the period for which the levy is intended.
Wrong (C): Unearned revenue is a liability concept that may apply in some contexts, but GASB 65 specifically requires reporting advance property tax collections as deferred inflows of resources, a distinct financial statement element.
Wrong (D): The cash must be recorded when received, along with a corresponding deferred inflow. Ignoring the transaction entirely would understate both assets and deferred inflows on the balance sheet.$EXPL$,
  difficulty = 'easy'
WHERE id = 5430;

-- Q5431 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 34, paragraph 76, the general fund is always reported as a major fund regardless of whether it meets the quantitative major fund criteria. All other governmental and enterprise funds must meet both the 10% and 5% thresholds to qualify as major funds unless the government elects to report them as major.
Wrong (A): The debt service fund with the largest outstanding balance is not automatically major. It must meet the quantitative thresholds or be designated by management, like any other governmental fund.
Wrong (B): The largest special revenue fund by total assets is not automatically major. Even the largest special revenue fund must satisfy both thresholds under GASB 34 or be specifically designated.
Wrong (D): The capital projects fund with the highest expenditures receives no automatic major fund status. Fund size alone does not guarantee major fund classification without meeting the dual threshold test.$EXPL$,
  difficulty = 'easy'
WHERE id = 5431;

-- Q5432 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 34, paragraph 58, interfund receivables and payables between funds within the same activity category (governmental activities) must be eliminated in the government-wide statement of net position. Both the general fund and capital projects fund are governmental funds, so the $750,000 balance is eliminated.
Wrong (B): Internal balances are reported only when interfund amounts cross the governmental activities and business-type activities divide. Since both funds are within governmental activities, elimination rather than internal balance reporting is required.
Wrong (C): Reporting the receivable and payable with note disclosure would be appropriate for fund-level statements, not government-wide statements. The conversion to government-wide requires elimination of same-activity interfund balances.
Wrong (D): Netting against fund balance is not the correct government-wide conversion procedure. GASB 34 requires full elimination of same-activity interfund balances, not a netting adjustment to equity.$EXPL$,
  difficulty = 'medium'
WHERE id = 5432;

-- Q5433 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB 14 (as amended by GASB 61), paragraph 53, a component unit is blended only when its governing body is substantively the same as the primary government or when it provides services exclusively or almost exclusively to the primary government. A separately elected governing board indicates the library operates independently and serves the public, strongly favoring discrete presentation over blending.
Wrong (A): Serving the same geographic area is common among component units and does not determine the presentation method. Both discretely presented and blended component units may serve the same geographic area as the primary government.
Wrong (B): Receiving funding from general fund transfers does not determine blending versus discrete presentation. The key factors are the substantive sameness of governing bodies and whether services are provided exclusively to the primary government.
Wrong (C): Board appointment alone does not determine blending. The substantive-sameness or exclusive-service criteria must also be satisfied for blending. Appointment power helps establish the component unit relationship but not the presentation method.$EXPL$,
  difficulty = 'medium'
WHERE id = 5433;

-- Q5434 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB guidance and sound fiscal management principles, when bond covenants are silent, residual bond proceeds from completed capital projects should be directed to the debt service fund for bond retirement. This aligns with the restricted nature of bond proceeds under GASB 54 and the fiduciary purpose for which the bonds were issued.
Wrong (A): Transferring bond proceeds to the general fund for unrestricted use would conflict with the implicit restriction on debt-financed resources. Capital projects funds must close residual bond proceeds appropriately, not simply redirect them to general operations.
Wrong (C): Retaining proceeds indefinitely in the capital projects fund serves no purpose after project completion. The fund should close the project and direct remaining resources to the debt service fund consistent with the bonds'' purpose.
Wrong (D): Distributing proportionally between funds has no basis in GASB standards or bond law. Bond proceeds carry an implicit restriction tying them to their original debt-financed purpose.$EXPL$,
  difficulty = 'hard'
WHERE id = 5434;

-- Q5436 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 34, paragraph 76, a governmental fund qualifies as major if any single financial element is at least 10% of the corresponding total for all governmental funds AND at least 5% of the combined total for all governmental and enterprise funds. The parks fund''s $22 million is 12.2% of $180 million governmental fund assets (exceeds 10%) and 7.3% of $300 million combined total (exceeds 5%), satisfying both thresholds.
Wrong (B): This answer incorrectly applies the 10% test against the combined $300 million total. The 10% threshold compares to governmental funds only ($180 million), while the 5% threshold compares to the combined governmental and enterprise fund total.
Wrong (C): Both thresholds must be met simultaneously. Meeting only the 5% threshold without satisfying the 10% threshold of the same-category total is insufficient to qualify as a major fund under GASB 34.
Wrong (D): Special revenue funds are not excluded from the dual threshold test. All governmental fund types, including special revenue funds, are subject to the same major fund criteria under GASB 34.$EXPL$,
  difficulty = 'hard'
WHERE id = 5436;

-- Q5437 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB 34, paragraphs 18-22, infrastructure assets that exceed the government''s capitalization threshold must be reported in the government-wide statement of net position. When using the depreciation approach, the asset is depreciated over its estimated useful life. The bridge at $8.4 million exceeds the $500,000 threshold and is depreciated over 40 years.
Wrong (A): GASB 34 explicitly requires capitalization of infrastructure assets in government-wide statements. Expensing infrastructure in full is incorrect; only the governmental fund statements treat capital outlays as expenditures.
Wrong (B): Recording only an expenditure in the capital projects fund without capitalization in government-wide statements ignores the full accrual conversion. The fund-level expenditure is converted to a capitalized asset in government-wide reporting.
Wrong (C): There is no 20-year useful life requirement for capitalization. GASB 34 requires capitalization based on the government''s threshold, and depreciation is applied over whatever useful life the government estimates.$EXPL$,
  difficulty = 'medium'
WHERE id = 5437;

-- Q5438 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 54, paragraph 6, nonspendable fund balance includes amounts not in spendable form (such as inventories and prepaid items) or amounts legally or contractually required to remain intact (such as the corpus of a permanent fund).
Wrong (A): Restricted fund balance refers to amounts constrained by external parties, legislation, or enabling legislation. The constraint is on the purpose of spending, not on the physical form of the resource.
Wrong (C): Committed fund balance represents amounts constrained by formal action of the government''s highest level of decision-making authority. The constraint is an internal policy decision, not a matter of the resource''s spendable form.
Wrong (D): Assigned fund balance represents amounts intended for a specific purpose by a body or official authorized to make such assignments. Like restricted and committed, the constraint relates to purpose, not to the form of the resource.$EXPL$,
  difficulty = 'easy'
WHERE id = 5438;

-- Q5439 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 68, paragraphs 28-36, employers in agent multiple-employer plans must recognize their individual net pension liability on the government-wide financial statements. Pension expense includes service cost, interest on total pension liability, projected earnings on plan assets, and amortization of deferred outflows and inflows. The net pension liability is $48 million minus $31 million, or $17 million.
Wrong (A): GASB 68 replaced the contribution-based approach with a liability-based model requiring full net pension liability recognition. Reporting only annual contributions as pension expense does not comply with the standard.
Wrong (B): The state retirement system does not report the net pension liability on behalf of participating employers in an agent plan. Each employer in an agent plan must recognize its own individual net pension liability, unlike cost-sharing plans where the liability is allocated proportionally.
Wrong (D): Note disclosure alone is insufficient under GASB 68. The standard requires balance sheet recognition of the net pension liability and income statement recognition of pension expense, not merely footnote disclosure of the unfunded amount.$EXPL$,
  difficulty = 'hard'
WHERE id = 5439;

-- Q5440 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB 34, paragraph 8, management''s discussion and analysis is required supplementary information (RSI) that precedes the basic financial statements. MD&A provides an analytical overview of the government''s financial activities based on currently known facts and conditions.
Wrong (A): MD&A is not a footnote to the financial statements. Notes are an integral part of the basic financial statements, while MD&A is required supplementary information that introduces and precedes the basic statements.
Wrong (B): MD&A is not supplementary information following the notes. It specifically precedes the basic financial statements, and its placement before the statements distinguishes it from post-statement supplementary schedules.
Wrong (C): MD&A is not a component of the basic financial statements. It is RSI that accompanies the basic statements, which consist of the government-wide statements, fund financial statements, and notes.$EXPL$,
  difficulty = 'easy'
WHERE id = 5440;

-- Q5441 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 34, paragraph 56, special items are significant transactions within management''s control that are either unusual or infrequent. They are reported separately in the statement of activities after general revenues and before the change in net position, drawing attention to their non-recurring nature.
Wrong (B): Netting a special item against program expenses would obscure the unusual transaction within normal operations. GASB 34 requires separate reporting to distinguish special items from recurring functional costs.
Wrong (C): Excluding the special item from the statement of activities would misrepresent the government''s financial performance. Special items are reported on the face of the statement, not relegated solely to the notes.
Wrong (D): Special items are not classified as program revenues because they do not relate to ongoing program operations. They are reported as a distinct line item to distinguish them from normal recurring activities and general revenues.$EXPL$,
  difficulty = 'medium'
WHERE id = 5441;
