-- Migration: Upgrade 37 moderate-scoring State and Local Government Reporting questions
-- Fixes: short-stem (<12 words), short-explanation (<30 words), length-cuing (choice imbalance)
-- Target: all questions score 7+ after this migration

-- Q721 [score:6] short-stem(9w) → expand stem
UPDATE questions SET
  stem = 'Under the modified accrual basis of accounting used by governmental funds, revenues are recognized when they are:',
  explanation = 'Modified accrual recognizes revenues when they are both measurable (the amount can be reasonably determined) and available (collectible within the current period or soon enough to pay current liabilities, typically within 60 days). While full accrual recognizes revenue when earned, the modified accrual basis adds the availability criterion to reflect the focus on current financial resources.'
WHERE id = 721;

-- Q722 [score:6] short-stem(9w) → expand stem
UPDATE questions SET
  stem = 'When preparing governmental fund financial statements under GASB standards, which fund type always qualifies as a major fund regardless of its size?',
  explanation = 'The general fund is always reported as a major fund regardless of its relative size. Other governmental funds must meet the 10%/5% size criteria to qualify as major funds under GASB 34. While enterprise funds may also qualify as major, they must pass the same size thresholds rather than receiving automatic major fund designation.'
WHERE id = 722;

-- Q723 [score:4] short-stem(4w) + short-expl(23w) → expand both
UPDATE questions SET
  stem = 'A newly hired staff accountant at Clearwater County asks which activities are reported on the government-wide financial statements. The correct answer is that government-wide financial statements include:',
  explanation = 'Under GASB 34, government-wide statements report governmental activities and business-type activities but exclude fiduciary activities. Fiduciary resources are held in trust for others and are not available for the government''s own programs. While fiduciary funds have their own fund-level statements, they do not appear on the statement of net position or statement of activities at the government-wide level.'
WHERE id = 723;

-- Q724 [score:4] short-stem(10w) + short-expl(24w) → expand both
UPDATE questions SET
  stem = 'Ridgemont County purchases a new fire truck for $450,000 using general fund resources. In the governmental fund financial statements, this capital asset purchase is recorded as:',
  explanation = 'Under modified accrual accounting, governmental funds record capital outlays as expenditures in the period of purchase because governmental funds focus on current financial resources. Capital assets themselves appear only on the government-wide statements under full accrual. While the equipment is an asset to the government, the fund-level statements reflect only the outflow of current financial resources rather than capitalizing and depreciating the asset.'
WHERE id = 724;

-- Q726 [score:4] short-stem(9w) + short-expl(25w) → expand both
UPDATE questions SET
  stem = 'A CPA candidate is reviewing the three categories of funds used in governmental accounting. Enterprise funds, which account for business-type activities, are classified as which type of fund?',
  explanation = 'Enterprise funds are proprietary funds that account for business-type activities such as water utilities, airports, and parking operations. They use full accrual accounting and the economic resources measurement focus, similar to commercial enterprises. Unlike governmental funds that use modified accrual, proprietary funds recognize revenues when earned and expenses when incurred regardless of when cash changes hands.'
WHERE id = 726;

-- Q727 [score:5] short-expl(23w) + length-cuing → expand explanation, balance choices
UPDATE questions SET
  choices = '["Property taxes and unrestricted state aid","Charges for services, operating grants, and capital grants","General revenues and tax collections","Investment earnings and fines"]',
  explanation = 'Program revenues on the statement of activities are directly linked to specific government functions and include three categories: charges for services, operating grants and contributions, and capital grants and contributions. In contrast, general revenues such as property taxes, unrestricted grants, and investment earnings are not tied to specific programs. Under GASB 34, this net cost format shows how much each function relies on general revenues after offsetting its own program revenues.'
WHERE id = 727;

-- Q728 [score:5] short-stem(10w) + short-expl(25w) → expand both
UPDATE questions SET
  stem = 'Greenfield Township participates in a cost-sharing multiple-employer pension plan. Under GASB 68, the net pension liability for this arrangement is reported on:',
  explanation = 'GASB 68 requires the net pension liability (total pension liability minus plan net position) to be reported on the face of the government-wide statement of net position. This liability is not recognized on governmental fund balance sheets because long-term obligations fall outside the current financial resources measurement focus. However, the pension expense affects both the government-wide statement of activities and, through required supplementary information schedules, provides additional context about the plan''s funded status.'
WHERE id = 728;

-- Q730 [score:4] short-stem(5w) + short-expl(28w) → expand both
UPDATE questions SET
  stem = 'During the budget process for the upcoming fiscal year, a government issues purchase orders for supplies not yet received. In governmental accounting, these encumbrances represent:',
  explanation = 'Encumbrances are budgetary controls that reserve fund balance for outstanding purchase orders and contracts, helping prevent overspending against appropriations. They are not GAAP expenditures because no goods or services have been received. Under GASB standards, actual expenditures are recorded when goods or services are received and the liability is incurred. While encumbrances restrict available fund balance, they differ from expenditures in that the underlying transaction has not yet occurred.'
WHERE id = 730;

-- Q731 [score:6] short-expl(28w) → expand explanation
UPDATE questions SET
  explanation = 'The reconciliation converts from the modified accrual basis used in governmental fund statements to the full accrual basis used in government-wide statements. Key adjustments include adding capital assets and removing capital expenditures, adding long-term debt and removing debt service expenditures, and adjusting revenue and expense timing differences. Unlike the fund statements that focus on current financial resources, the government-wide statements require recognition of all economic resources including long-term assets and liabilities.'
WHERE id = 731;

-- Q732 [score:4] short-stem(9w) + short-expl(26w) → expand both
UPDATE questions SET
  stem = 'The Harrington Foundation donated $2 million to the city, stipulating that the principal must remain intact and only investment earnings may fund park maintenance. This arrangement is accounted for in a permanent fund, which differs from other governmental funds in that:',
  explanation = 'Permanent funds hold resources where the principal must be maintained intact, similar to an endowment. Only earnings on the principal may be used for the specified purpose. Under GASB standards, permanent funds are governmental funds that use modified accrual accounting and the current financial resources measurement focus. While private-purpose trust funds also preserve principal, they benefit external parties rather than the government''s own programs.'
WHERE id = 732;

-- Q733 [score:4] short-stem(11w) + short-expl(29w) → expand both
UPDATE questions SET
  stem = 'Westbrook City makes a scheduled $500,000 principal payment on its general obligation bonds from the debt service fund. In governmental fund accounting, this debt service principal payment is recognized as:',
  explanation = 'Under modified accrual accounting, debt service principal and interest payments are recognized as expenditures when the payment date arrives (when legally due), not when the liability was incurred. This reflects the current financial resources measurement focus of governmental funds. The actual reduction of the long-term liability is reflected only on the government-wide statements under full accrual. While the fund-level expenditure reduces available financial resources, the corresponding long-term debt reduction appears in the reconciliation between fund and government-wide statements.'
WHERE id = 733;

-- Q734 [score:6] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'Rather than depreciating its highway and bridge network, Lakewood County elects to use the modified approach for infrastructure assets under GASB 34. This approach allows a government to:'
WHERE id = 734;

-- Q737 [score:4] short-stem(7w) + short-expl(23w) + length-cuing → expand stem/explanation, balance choices
UPDATE questions SET
  stem = 'A CPA is reviewing the required supplementary information (RSI) for a municipal government''s annual comprehensive financial report. Under GASB standards, budget-to-actual comparison schedules are required supplementary information for:',
  choices = '["All governmental funds regardless of budget status","The general fund and each major special revenue fund with a legally adopted annual budget","Enterprise funds and internal service funds","All funds that receive federal grant funding"]',
  explanation = 'GASB requires budgetary comparison schedules as RSI for the general fund and each major special revenue fund that has a legally adopted annual budget. These schedules compare original budget, final amended budget, and actual results on the budgetary basis. While other funds may adopt budgets, only those meeting both the major fund and legally adopted budget criteria require this RSI presentation.'
WHERE id = 737;

-- Q738 [score:4] short-stem(9w) + short-expl(26w) → expand both
UPDATE questions SET
  stem = 'A CPA candidate is comparing the measurement focus used by different fund types. Under GASB standards, governmental funds such as the general fund and special revenue funds use which measurement focus?',
  explanation = 'Governmental funds use the current financial resources measurement focus, which tracks only current assets and current liabilities that will be received or paid in the near term. Long-term assets such as capital assets and long-term liabilities such as bonds payable are not reported in governmental fund statements. Under GASB 34, these long-term items appear only on the government-wide statements, which use the economic resources measurement focus.'
WHERE id = 738;

-- Q739 [score:4] short-stem(3w) + short-expl(28w) → expand both
UPDATE questions SET
  stem = 'A city government is evaluating how to report its retiree healthcare obligations on the government-wide financial statements. The applicable GASB standard, GASB 75, addresses:',
  explanation = 'GASB 75 establishes accounting and financial reporting standards for other post-employment benefits (OPEB) such as retiree healthcare and life insurance. It follows the same conceptual framework as GASB 68 for pensions: employers report the net OPEB liability (total OPEB liability minus plan net position) on the government-wide statement of net position. While GASB 68 covers pension benefits, GASB 75 specifically addresses all non-pension post-employment benefits provided to retirees.'
WHERE id = 739;

-- Q741 [score:4] short-stem(6w) + short-expl(22w) → expand both
UPDATE questions SET
  stem = 'A county government operates a centralized fleet maintenance garage that provides vehicle repair services to all county departments. This activity would be reported in an internal service fund, which is classified as:',
  explanation = 'Internal service funds are proprietary funds that provide goods or services to other departments or agencies within the government on a cost-reimbursement basis. Common examples include fleet maintenance, IT services, and centralized printing operations. They use full accrual accounting and the economic resources measurement focus. Unlike enterprise funds, which charge external users, internal service funds predominantly serve internal customers within the government entity.'
WHERE id = 741;

-- Q742 [score:6] short-expl(17w) → expand explanation
UPDATE questions SET
  explanation = 'Under GASB 34, government-wide net position is reported in three categories: net investment in capital assets (capital assets minus related debt), restricted (constrained by external parties or legislation), and unrestricted (available for any purpose). These categories differ from the five fund balance classifications used in governmental fund statements. While fund balance uses nonspendable, restricted, committed, assigned, and unassigned categories, the government-wide presentation uses the simpler three-category framework.'
WHERE id = 742;

-- Q743 [score:5] short-expl(23w) + length-cuing → expand explanation, balance choices
UPDATE questions SET
  choices = '["When the grant award is formally announced by the federal agency","When all eligibility requirements are met and resources are available","When the government submits its application for funding","When cash proceeds are deposited in the government treasury"]',
  explanation = 'Revenue from government-mandated and voluntary nonexchange transactions is recognized when all eligibility requirements have been met. For governmental funds, resources must also be available (collectible within the availability period). Under GASB 33, eligibility requirements may include time requirements, matching or expenditure requirements, and contingencies. Unlike exchange transactions where revenue is earned through service delivery, nonexchange revenue recognition depends on meeting these externally imposed conditions.'
WHERE id = 743;

-- Q744 [score:5] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'An auditor reviewing Brookfield Township''s government-wide statement of net position notices a deferred outflows category. Under GASB standards, deferred outflows of resources reported in government-wide statements include:',
  choices = '["Property tax revenue collected before the levy date","Pension contributions made after the measurement date","Unearned revenue from federal grants","Encumbrances on outstanding purchase orders"]',
  explanation = 'Employer pension contributions made between the measurement date and the reporting date are reported as deferred outflows of resources on the government-wide statement of net position. These contributions will reduce the net pension liability in the next measurement period. Under GASB 68, deferred outflows also include differences between expected and actual experience and changes in actuarial assumptions, which are amortized over future periods rather than recognized immediately.'
WHERE id = 744;

-- Q745 [score:5] short-expl(25w) + length-cuing → expand explanation, balance choices
UPDATE questions SET
  choices = '["Expenditures for capital outlays","Other financing sources and uses","Depreciation expense on capital assets","Encumbrances for purchase commitments"]',
  explanation = 'Depreciation expense appears only on government-wide statements because those statements use full accrual accounting and the economic resources measurement focus. Governmental funds do not report capital assets or depreciation because they focus on current financial resources. Instead, governmental funds report the full cost of capital asset purchases as expenditures in the period of acquisition. The reconciliation between fund and government-wide statements adjusts for this difference.'
WHERE id = 745;

-- Q3218 [score:5] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA candidate is studying the differences between fund-level and government-wide reporting. Government-wide financial statements, including the statement of net position and the statement of activities, use which basis of accounting?',
  choices = '["Modified accrual with current financial resources focus","Cash basis with budget-to-actual comparisons","Full accrual with economic resources measurement focus","Budgetary basis as prescribed by state law"]',
  explanation = 'Government-wide financial statements use the full accrual basis with the economic resources measurement focus, similar to commercial enterprises. This reports all economic resources including capital assets and long-term liabilities. Under GASB 34, governmental fund statements use modified accrual, while government-wide statements use full accrual to provide a comprehensive view of the government''s financial position and results of operations.'
WHERE id = 3218;

-- Q3220 [score:6] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'The statement of activities in the government-wide financial statements presents revenues in a net cost format. Under GASB 34, revenues on this statement are classified as:'
WHERE id = 3220;

-- Q3222 [score:6] short-stem(3w) → expand stem
UPDATE questions SET
  stem = 'A government manages pension trust funds, custodial funds, and other resources held for external beneficiaries. Under GASB reporting standards, fiduciary funds are:'
WHERE id = 3222;

-- Q3223 [score:5] short-stem(4w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'In preparing its annual financial report, every state and local government must have at least one fund to account for general operations. Under GASB standards, the General Fund is:',
  choices = '["A proprietary fund for enterprise activities","The chief operating fund for all resources not accounted for in another fund","A fiduciary fund for custodial resources","An internal service fund for interdepartmental charges"]',
  explanation = 'The General Fund is the government''s chief operating fund and accounts for all financial resources except those required to be accounted for in another fund. Every government must have a General Fund. It uses the modified accrual basis and current financial resources measurement focus. Unlike special revenue funds that track restricted resources, the General Fund handles the government''s routine operations and is always reported as a major fund.'
WHERE id = 3223;

-- Q3226 [score:5] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'A city has received a $10 million federal grant to construct a new community center and must track these restricted resources separately. Under GASB standards, a capital projects fund is used to:'
WHERE id = 3226;

-- Q3227 [score:4] short-stem(7w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A county government has accumulated resources from property tax levies dedicated to paying principal and interest on its general obligation bonds. Under GASB standards, a debt service fund is used to:',
  choices = '["Issue and market new bond offerings to investors","Manage short-term operating loans and lines of credit","Record capital assets acquired with bond proceeds","Accumulate resources for and make payments on long-term debt principal and interest"]'
WHERE id = 3227;

-- Q3230 [score:6] short-stem(11w) → expand stem
UPDATE questions SET
  stem = 'Rather than depreciating its extensive road network, Lakeview County elects to use the modified approach for reporting infrastructure assets under GASB 34. This approach requires a government to:'
WHERE id = 3230;

-- Q3231 [score:5] short-stem(6w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A city operates a water treatment plant that charges fees to residential and commercial customers to cover operating costs. Under GASB standards, an enterprise fund is required when:',
  choices = '["A government provides goods or services to its own departments","A government administers a defined benefit pension plan","A government collects and remits sales tax for the state","A government charges fees to external users and meets debt, cost-recovery, or pricing-policy criteria"]'
WHERE id = 3231;

-- Q3232 [score:5] short-stem(6w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A county receives a dedicated hotel occupancy tax that state law restricts to tourism promotion expenditures. Under GASB standards, special revenue funds are used to:',
  choices = '["Account for resources restricted or committed to specific purposes other than debt service or capital projects","Account for scheduled principal and interest payments on bonds","Manage the government''s pooled cash and investment portfolio","Record assets held in trust for employee pension benefits"]'
WHERE id = 3232;

-- Q3234 [score:6] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'When reviewing the format of government-wide financial statements under GASB 34, a CPA candidate notes that the statements report activities in which two main columns?'
WHERE id = 3234;

-- Q3235 [score:4] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A county appoints the majority of a local housing authority''s board members and can remove them at will. Under GASB 14, this component unit is presented discretely in the government-wide statements when:',
  choices = '["It is financially interrelated but the primary government has no governance role","It is so closely related that its operations are indistinguishable from the primary government","The primary government appoints a voting majority and can impose its will or receives a financial benefit or burden","It is a federal agency that provides funding to the primary government"]'
WHERE id = 3235;

-- Q3237 [score:5] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA candidate is studying the fund structure of governmental accounting. Under GASB standards, governmental fund financial statements report which five fund types?',
  choices = '["General, special revenue, debt service, capital projects, and permanent funds","Enterprise, internal service, general, special revenue, and debt service funds","Pension trust, investment trust, custodial, private-purpose trust, and general funds","Agency, general, capital projects, enterprise, and special revenue funds"]'
WHERE id = 3237;

-- Q3241 [score:5] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA is reviewing the government-wide statement of activities and notes that expenses are organized by department rather than by object. Under GASB 34, the statement of activities uses which format to present expenses?',
  choices = '["Natural classification such as salaries, supplies, and utilities","Both natural and functional classification in a matrix format","Functional classification by program or function such as public safety and education","Alphabetical order by department name within each activity type"]'
WHERE id = 3241;

-- Q3244 [score:6] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'A CPA candidate is studying how component units are integrated into the primary government''s financial statements. Under GASB 14, blended component units are presented in the financial statements as:'
WHERE id = 3244;

-- Q3378 [score:6] short-stem(9w) → expand stem
UPDATE questions SET
  stem = 'When preparing the annual comprehensive financial report for a state or local government, GASB 34 requires management''s discussion and analysis (MD&A) to be presented as:'
WHERE id = 3378;

-- Q3379 [score:6] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'Lakeshore County operates a centralized IT services fund classified as an internal service fund. When this internal service fund predominantly serves governmental activities, it is:'
WHERE id = 3379;

-- Q3381 [score:5] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA candidate is studying the reporting entity concept under GASB 14. To determine whether an entity qualifies as a primary government, three criteria must be met. Under GASB, a primary government is defined as:',
  choices = '["A state, general purpose local, or special purpose government with an elected governing body, legal separation, and fiscal independence","Any government entity that receives and distributes federal funding to subrecipients","Only state-level governments that issue general obligation bonds","Any public entity that collects property taxes from residents within its jurisdiction"]'
WHERE id = 3381;
