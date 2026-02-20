-- =============================================================================
-- Tier 3: BAR + ISC Gap Fill — 4 lessons, 40 questions
-- BAR: Fund-to-Government-Wide Reconciliation, Interfund Transactions
-- ISC: SOC Testing Controls, SOC Reporting
-- =============================================================================

-- Insert new lessons
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (4, 'Fund-to-Government-Wide Reconciliation', '15-fund-reconciliation', 'bar/15-fund-reconciliation', 15, false),
  (4, 'Interfund Transactions', '16-interfund-transactions', 'bar/16-interfund-transactions', 16, false),
  (5, 'SOC Testing Controls', '15-soc-testing-controls', 'isc/15-soc-testing-controls', 15, false),
  (5, 'SOC Reporting', '16-soc-reporting', 'isc/16-soc-reporting', 16, false);

-- =============================================================================
-- BAR: Fund-to-Government-Wide Reconciliation (10 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(4, 'Fund-to-Government-Wide Reconciliation',
 'A city''s governmental funds report total fund balances of $6,000,000. Capital assets used in governmental activities total $18,000,000 (net of $7,000,000 accumulated depreciation). General obligation bonds payable total $12,000,000. What is the net position of governmental activities (ignoring other adjustments)?',
 '["$6,000,000", "$12,000,000", "$24,000,000", "$5,000,000"]'::jsonb,
 1,
 'Net position = Fund balances ($6,000,000) + Capital assets net ($18,000,000) − Long-term liabilities ($12,000,000) = $12,000,000. Capital assets are added because they are excluded from fund statements, and long-term liabilities are subtracted because they are not reported in governmental funds.',
 'easy'),

(4, 'Fund-to-Government-Wide Reconciliation',
 'Which of the following is the PRIMARY reason a reconciliation between governmental fund statements and government-wide statements is required?',
 '["Different fiscal year-ends are used", "Different measurement focuses and bases of accounting are used", "Government-wide statements exclude fiduciary funds", "Fund statements use cash basis while government-wide uses accrual"]'::jsonb,
 1,
 'Governmental funds use the current financial resources measurement focus and modified accrual basis, while government-wide statements use the economic resources measurement focus and full accrual basis. This fundamental difference creates the need for reconciliation. Fund statements do not use cash basis.',
 'easy'),

(4, 'Fund-to-Government-Wide Reconciliation',
 'When converting from the change in fund balances to the change in net position, capital outlay expenditures reported in governmental funds should be:',
 '["Subtracted because they are not expenses on the government-wide statements", "Added back because they are capitalized rather than expensed on the government-wide statements", "Ignored because they appear in both sets of statements", "Reported as deferred outflows of resources"]'::jsonb,
 1,
 'Capital outlay is treated as an expenditure in governmental funds (reducing fund balance) but is capitalized on the government-wide statements (increasing capital assets, not reducing net position). The expenditure must be added back in the reconciliation.',
 'easy'),

(4, 'Fund-to-Government-Wide Reconciliation',
 'A county issued $10,000,000 in general obligation bonds at a premium of $300,000 during the year. On the governmental fund statement of revenues, expenditures, and changes in fund balances, the bond proceeds were reported as other financing sources. What is the net reconciliation adjustment for this transaction when converting to the government-wide statement of activities?',
 '["Add $10,300,000", "Subtract $10,300,000", "Subtract $10,000,000 and add $300,000", "No adjustment is needed"]'::jsonb,
 1,
 'Bond proceeds (including premium) are reported as other financing sources in governmental funds but create a liability on the government-wide statements. The full $10,300,000 must be subtracted in the reconciliation because it is not revenue government-wide — it is a liability.',
 'medium'),

(4, 'Fund-to-Government-Wide Reconciliation',
 'A city''s governmental funds report deferred inflows of $450,000 for property taxes levied but not collected within the 60-day availability period. When reconciling to the government-wide statement of net position, this amount should be:',
 '["Subtracted from fund balance because the taxes were not collected", "Added to net position because these taxes are recognized as revenue under full accrual", "Reported as a liability on the government-wide statements", "Ignored because deferred inflows appear in both statements"]'::jsonb,
 1,
 'Under modified accrual, property taxes not collected within the availability period are deferred inflows. Under full accrual, they are recognized as revenue when levied for the current period. The deferred inflow in the fund statements becomes revenue on the government-wide statements, increasing net position.',
 'medium'),

(4, 'Fund-to-Government-Wide Reconciliation',
 'During the year, a government made principal payments of $2,000,000 on its general obligation bonds and paid $600,000 in interest. Accrued interest payable increased by $50,000 during the year. What is the net adjustment to convert the change in fund balances to the change in net position for these debt-related items?',
 '["Add $2,000,000 and subtract $50,000", "Add $2,600,000 and subtract $50,000", "Add $2,000,000 only", "Subtract $2,000,000 and add $50,000"]'::jsonb,
 0,
 'Principal payments ($2,000,000) are expenditures in the funds but reduce a liability government-wide, so they are added back. Interest payments are expenditures in both sets of statements, requiring no adjustment. However, the increase in accrued interest ($50,000) is an expense government-wide but not in the funds, so it is subtracted. Net adjustment = +$2,000,000 − $50,000.',
 'medium'),

(4, 'Fund-to-Government-Wide Reconciliation',
 'A government sold equipment with an original cost of $500,000 and accumulated depreciation of $350,000 for $120,000. The fund statement reported the $120,000 as revenue. What adjustments are needed for the activity statement reconciliation?',
 '["Remove $120,000 revenue and recognize $30,000 loss", "Remove $120,000 revenue and recognize $30,000 gain", "No adjustment; the $120,000 is revenue in both statements", "Remove $120,000 revenue and recognize $150,000 gain"]'::jsonb,
 0,
 'Net book value = $500,000 − $350,000 = $150,000. Proceeds = $120,000. Loss = $150,000 − $120,000 = $30,000. The fund statement recorded $120,000 as revenue, but government-wide only recognizes the loss. Adjustment: remove $120,000 revenue and recognize $30,000 loss. Net impact = −$120,000 − $30,000 = −$150,000 (the net book value of the disposed asset).',
 'hard'),

(4, 'Fund-to-Government-Wide Reconciliation',
 'An internal service fund reports net position of $850,000 and a change in net position of $120,000. How are these amounts treated in the reconciliation to governmental activities?',
 '["Both are subtracted because internal service funds are proprietary funds", "The $850,000 is added to the balance sheet reconciliation and the $120,000 is added to the activity statement reconciliation", "Only the $850,000 is added; the $120,000 is eliminated", "Internal service funds are excluded from both reconciliations"]'::jsonb,
 1,
 'Internal service funds primarily serve governmental activities, so their net position is added in the balance sheet reconciliation and their change in net position is added in the activity statement reconciliation. This includes them with governmental activities on the government-wide statements.',
 'medium'),

(4, 'Fund-to-Government-Wide Reconciliation',
 'A government reports the following: governmental fund balances of $4,200,000; capital assets net of depreciation of $22,500,000; GO bonds payable of $14,000,000; net pension liability of $5,800,000; compensated absences of $390,000; deferred outflows (pensions) of $1,100,000; deferred inflows (pensions) of $780,000; and unavailable property tax revenue of $260,000. What is the net position of governmental activities?',
 '["$7,090,000", "$7,350,000", "$6,830,000", "$8,190,000"]'::jsonb,
 0,
 'Net position = $4,200,000 + $22,500,000 − $14,000,000 − $5,800,000 − $390,000 + $1,100,000 − $780,000 + $260,000 = $7,090,000. Each item adjusts fund balance: capital assets add, long-term liabilities subtract, pension deferred outflows add, pension deferred inflows subtract, and unavailable revenue adds.',
 'hard'),

(4, 'Fund-to-Government-Wide Reconciliation',
 'Depreciation expense of $1,400,000 for governmental activities capital assets appears as a reconciling item on the government-wide statements because:',
 '["Governmental funds do not report capital assets and therefore do not record depreciation expense", "Depreciation is recorded in the funds but eliminated government-wide", "Depreciation is only reported for enterprise fund assets", "Government-wide statements use modified accrual which excludes depreciation"]'::jsonb,
 0,
 'Governmental funds use the current financial resources measurement focus and do not report capital assets or accumulated depreciation. Since capital assets are not on the fund balance sheet, there is no depreciation expense in the funds. Government-wide statements capitalize assets and recognize depreciation, making it a reconciling item.',
 'hard');

-- =============================================================================
-- BAR: Interfund Transactions (10 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(4, 'Interfund Transactions',
 'Which of the following is classified as a reciprocal interfund activity?',
 '["Interfund transfer from the General Fund to the Debt Service Fund", "Interfund reimbursement for supplies charged to the wrong fund", "Interfund loan from the General Fund to the Capital Projects Fund", "Annual allocation from the General Fund to the Special Revenue Fund"]'::jsonb,
 2,
 'Interfund loans are reciprocal activities because both funds exchange value — one fund gives cash and receives a receivable, while the other receives cash and incurs a payable. Transfers (a, d) and reimbursements (b) are nonreciprocal activities.',
 'easy'),

(4, 'Interfund Transactions',
 'When the General Fund transfers $500,000 to the Capital Projects Fund, the General Fund should report the transfer as:',
 '["An expenditure", "A reduction in revenue", "Other financing uses — transfer out", "A decrease in fund balance with no separate reporting"]'::jsonb,
 2,
 'Interfund transfers are reported as other financing sources (receiving fund) and other financing uses (sending fund). They appear after the excess/deficiency line on the operating statement. They are not expenditures or revenues.',
 'easy'),

(4, 'Interfund Transactions',
 'The city''s Internal Service Fund charges the General Fund $60,000 for vehicle maintenance at fair market value. How should the General Fund record this transaction?',
 '["Transfer out of $60,000", "Expenditure for vehicle maintenance of $60,000 and Due to Internal Service Fund of $60,000", "Due from Internal Service Fund of $60,000", "No entry is required because both funds are part of the same government"]'::jsonb,
 1,
 'Interfund services provided and used are recorded as revenues in the providing fund and expenditures/expenses in the receiving fund, just as if the transaction were with an external party. The General Fund records a maintenance expenditure and a payable to the Internal Service Fund.',
 'easy'),

(4, 'Interfund Transactions',
 'A city''s General Fund makes a three-year loan of $300,000 to the Enterprise Fund. How should the General Fund report this transaction?',
 '["Advance to Enterprise Fund (noncurrent asset) with a corresponding increase in nonspendable fund balance", "Due from Enterprise Fund (current asset) with no fund balance restriction", "Transfer out of $300,000", "Expenditure of $300,000"]'::jsonb,
 0,
 'Long-term interfund loans use "Advance to/from" terminology. The lending governmental fund must report a nonspendable fund balance equal to the advance because the resources are not available for current spending. Short-term loans use "Due from/to" without a fund balance restriction.',
 'medium'),

(4, 'Interfund Transactions',
 'Property taxes levied in the current year that are not expected to be collected within 60 days of year-end are classified as what type of nonexchange revenue?',
 '["Derived tax revenues", "Imposed nonexchange revenues", "Government-mandated nonexchange transactions", "Voluntary nonexchange transactions"]'::jsonb,
 1,
 'Property taxes are imposed nonexchange revenues — they are assessments by the government on nongovernmental entities with no underlying exchange transaction. Under modified accrual, the portion not collectible within the 60-day availability period is reported as a deferred inflow.',
 'medium'),

(4, 'Interfund Transactions',
 'Sales tax revenue collected by a state government on behalf of transactions between buyers and sellers is classified as:',
 '["Imposed nonexchange revenue", "Derived tax revenue", "Government-mandated nonexchange transaction", "Reciprocal interfund revenue"]'::jsonb,
 1,
 'Sales taxes are derived tax revenues because they are imposed on underlying exchange transactions between buyers and sellers. The government derives its revenue from the exchange activities of other parties. Imposed nonexchange revenues (a) have no underlying exchange transaction.',
 'medium'),

(4, 'Interfund Transactions',
 'A state provides a $1,000,000 education grant to a school district with a requirement that the district spend the funds on approved programs and provide a 15% local match. The district has spent $800,000 on approved programs but has provided only 10% of the required match. How much revenue should the district recognize?',
 '["$1,000,000 because the funds were received", "$800,000 because qualifying expenditures were incurred", "$0 because not all eligibility requirements have been met", "$850,000 based on partial fulfillment of requirements"]'::jsonb,
 2,
 'This is a government-mandated nonexchange transaction. Revenue is recognized when ALL eligibility requirements are met. The matching requirement (15%) has not been fully met (only 10% provided). Until all requirements are satisfied, no revenue is recognized. The amount received is reported as unearned revenue.',
 'hard'),

(4, 'Interfund Transactions',
 'Interfund transfers between two governmental funds are treated as follows on the government-wide financial statements:',
 '["Reported as revenues and expenses on the statement of activities", "Reported as transfers on the statement of activities", "Eliminated because they are internal to governmental activities", "Reported as other financing sources and uses"]'::jsonb,
 2,
 'Transfers between governmental funds are fully eliminated on the government-wide statements because both funds are part of governmental activities. Transfers between governmental and business-type activities are NOT eliminated but are reported as transfers. Other financing sources/uses terminology is only used at the fund level.',
 'medium'),

(4, 'Interfund Transactions',
 'The General Fund inadvertently paid $15,000 for office supplies that should have been charged to the Special Revenue Fund. When the Special Revenue Fund reimburses the General Fund, the General Fund should:',
 '["Record a transfer in of $15,000", "Record miscellaneous revenue of $15,000", "Reduce its supplies expenditure by $15,000", "Record Due from Special Revenue Fund of $15,000"]'::jsonb,
 2,
 'An interfund reimbursement corrects the initial recording. The General Fund reduces its expenditure (as if the transaction never occurred in that fund) and the Special Revenue Fund records the expenditure. Reimbursements are not transfers, not revenue, and are not separately reported on the financial statements.',
 'hard'),

(4, 'Interfund Transactions',
 'Which of the following interfund activities is NOT eliminated when preparing government-wide financial statements for governmental activities?',
 '["Transfers between the General Fund and the Debt Service Fund", "Interfund loans between the General Fund and the Capital Projects Fund", "Interfund services provided and used between the Internal Service Fund and the General Fund", "Transfers between the General Fund and the Special Revenue Fund"]'::jsonb,
 2,
 'Interfund services provided and used are generally NOT eliminated on the government-wide statements because they represent legitimate operating costs charged at fair value — similar to external transactions. Interfund loans (receivable/payable balances are eliminated) and transfers between governmental funds are fully eliminated.',
 'hard');

-- =============================================================================
-- ISC: SOC Testing Controls (10 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(5, 'SOC Testing Controls',
 'Which of the following testing procedures provides the MOST persuasive evidence regarding the operating effectiveness of a control?',
 '["Inquiry of management", "Observation of the control being performed", "Inspection of documentation", "Reperformance of the control by the auditor"]'::jsonb,
 3,
 'Reperformance is the most persuasive testing procedure because the auditor independently executes the control to verify it produces the expected results. Inquiry (least persuasive) provides only testimonial evidence. Observation provides point-in-time evidence. Inspection of documentation is medium-high persuasiveness.',
 'easy'),

(5, 'SOC Testing Controls',
 'A SOC 2 Type I report evaluates:',
 '["Design effectiveness of controls at a point in time only", "Design and operating effectiveness of controls over a period of time", "Operating effectiveness of controls at a point in time only", "Both design and operating effectiveness at a point in time"]'::jsonb,
 0,
 'A SOC Type I report evaluates the suitability of design of controls at a specific point in time. Operating effectiveness testing (whether the control actually operated as designed consistently) is only included in a Type II report, which covers a period of time.',
 'easy'),

(5, 'SOC Testing Controls',
 'When testing a control that operates daily over a 12-month SOC 2 Type II examination period, which sample size is MOST appropriate?',
 '["5 days selected from the last month of the period", "25-40 days spread across the full 12-month period", "All 260 business days must be tested", "1 day, since the control is automated"]'::jsonb,
 1,
 'For daily controls, a sample of 25-40 items spread across the full examination period provides reasonable assurance. Testing only the last month (a) does not cover the full period. Testing all days (c) is impractical. Testing 1 day (d) would only be appropriate for automated controls where ITGCs are effective, not for all daily controls.',
 'easy'),

(5, 'SOC Testing Controls',
 'During testing of a monthly reconciliation control (12 occurrences), the auditor finds that 2 of 12 reconciliations were not reviewed by a supervisor as required. How should the auditor evaluate this finding?',
 '["Automatically issue a qualified opinion because the deviation rate exceeds 10%", "Evaluate the nature, cause, and impact of the deviations and whether compensating controls exist before concluding", "Ignore the deviations because 10 of 12 is an acceptable pass rate", "Expand testing to a sample of 40 additional reconciliations"]'::jsonb,
 1,
 'The auditor must evaluate each deviation''s nature (what specifically failed), cause (isolated error vs. systemic issue), and whether compensating controls mitigate the risk. A deviation does not automatically result in a qualified opinion (a), should not be ignored (c), and expanding the population beyond all 12 occurrences is not applicable (d).',
 'medium'),

(5, 'SOC Testing Controls',
 'An automated system control enforces a minimum password length of 12 characters. IT general controls over program changes have been tested and found effective. What is the MOST efficient approach for testing operating effectiveness of this automated control?',
 '["Select a sample of 25 user accounts and verify each password meets the requirement", "Inspect the system configuration and perform one reperformance test", "Observe an administrator creating a new user account", "Inquire of the IT administrator whether the policy has been in effect all year"]'::jsonb,
 1,
 'For automated controls where ITGCs are effective, the control operates consistently once properly configured. Testing involves inspecting the configuration settings and performing limited reperformance (e.g., attempting to set a short password to verify rejection). Extensive sampling (a) is unnecessary for automated controls with effective ITGCs.',
 'medium'),

(5, 'SOC Testing Controls',
 'Which of the following factors would cause a SOC practitioner to INCREASE the extent of testing for a particular control?',
 '["The control is fully automated and IT general controls are effective", "The control had exceptions noted in the prior year''s SOC report", "The control is simple and performed by a single individual with no judgment required", "The control is supported by a compensating control that also operates effectively"]'::jsonb,
 1,
 'Prior period exceptions are a key risk factor that increases testing rigor. The practitioner must obtain more evidence that the control has been remediated and is now operating effectively. Automated controls with effective ITGCs (a) typically require less testing. Simple controls (c) and compensating controls (d) do not increase the need for more testing.',
 'medium'),

(5, 'SOC Testing Controls',
 'A practitioner is testing a quarterly user access review control over a 12-month SOC 2 Type II period. The population consists of 4 quarterly reviews. What is the appropriate sample size?',
 '["1 quarter selected at random", "2 quarters, one from each half of the year", "All 4 quarters must be tested", "15 individual user accounts from across all quarters"]'::jsonb,
 2,
 'When the population is very small (4 occurrences), the practitioner should test all occurrences. Testing less than the full population for a control that operates only quarterly would not provide sufficient evidence that the control operated throughout the period.',
 'medium'),

(5, 'SOC Testing Controls',
 'The distinction between a deviation and an exception in SOC reporting is:',
 '["A deviation is any instance where a control did not operate as described; an exception is a deviation that the practitioner concludes represents a failure to meet the control objective", "A deviation is a minor error; an exception is a major error", "There is no distinction; the terms are interchangeable", "A deviation occurs in Type I reports; an exception occurs in Type II reports"]'::jsonb,
 0,
 'A deviation is any instance where the control did not operate as described for a specific test item. An exception is a deviation that the practitioner has evaluated and concluded represents a failure of the control to meet its objective. Not every deviation rises to the level of an exception — minor timing differences or compensated deviations may not be exceptions.',
 'hard'),

(5, 'SOC Testing Controls',
 'An auditor is testing controls for a SOC 2 Type II engagement. For the daily system backup control (population of 365 days), the auditor selects 30 days using random selection spread across the 12-month period. Two deviations are found: on both days, the backup completed but the verification log was not reviewed by IT staff. Which conclusion is MOST appropriate?',
 '["The control is operating effectively because 28 of 30 is a 93% pass rate", "The deviation should be evaluated to determine if the missing review is a control design issue or an operating effectiveness issue, and whether compensating controls exist", "The opinion must be qualified because any deviations in backup controls are automatically material", "The auditor should expand the sample to 60 days before reaching a conclusion"]'::jsonb,
 1,
 'The auditor must evaluate the nature of the deviation (the backup completed but verification was not reviewed), determine whether this is a design issue (perhaps the review step is not practical for daily backups) or an operating issue (the reviewer failed to perform the step), and assess compensating controls (automated alerts, tape rotation verification). A pass rate alone (a) is not determinative.',
 'hard'),

(5, 'SOC Testing Controls',
 'Which of the following is a required documentation element for SOC testing working papers?',
 '["The service organization''s competitive analysis and market position", "A prediction of future control effectiveness based on current trends", "The population definition, sample selection method, evidence obtained, and conclusions reached for each control tested", "The user entities'' internal control evaluations and risk assessments"]'::jsonb,
 2,
 'SOC testing documentation must include the population definition, sample selection method and rationale, evidence obtained, test results (including deviations), and the practitioner''s conclusion for each control. Competitive analysis (a), predictions (b), and user entity evaluations (d) are not required working paper elements.',
 'hard');

-- =============================================================================
-- ISC: SOC Reporting (10 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(5, 'SOC Reporting',
 'Which type of SOC report opinion indicates that the practitioner found limited, specific exceptions but the overall control environment is still effective?',
 '["Unqualified", "Qualified", "Adverse", "Disclaimer"]'::jsonb,
 1,
 'A qualified opinion uses "except for" language to identify specific controls with exceptions while acknowledging that the overall control environment is effective. Unqualified (a) means no exceptions. Adverse (c) means pervasive exceptions rendering the whole system ineffective. Disclaimer (d) means the practitioner cannot form an opinion.',
 'easy'),

(5, 'SOC Reporting',
 'A SOC 2 report that uses the carve-out method for subservice organizations:',
 '["Includes the subservice organization''s controls in the examination scope", "Excludes the subservice organization''s controls from the examination scope and identifies the subservice organization", "Is less reliable than a report using the inclusive method", "Cannot be issued if the subservice organization provides critical services"]'::jsonb,
 1,
 'Under the carve-out method, the subservice organization''s controls are excluded from the SOC report scope. The report identifies the subservice organization and describes its functions but does not test its controls. The user auditor must obtain the subservice organization''s own SOC report to evaluate the complete control environment.',
 'easy'),

(5, 'SOC Reporting',
 'A Complementary User Entity Control (CUEC) in a SOC 2 report is:',
 '["A control that the service organization implements on behalf of user entities", "A control that the service organization assumes user entities will implement for the overall control environment to be effective", "A backup control used only when the primary service organization control fails", "A control tested by the SOC practitioner at the user entity''s location"]'::jsonb,
 1,
 'CUECs are controls that the service organization expects user entities to implement as part of the combined control environment. Examples include user access management, transaction authorization, and report reconciliation. Without CUECs in place, the service organization''s controls alone may not be sufficient.',
 'easy'),

(5, 'SOC Reporting',
 'A service organization''s SOC 2 Type II report identifies that the change management process was not followed for 12 of 40 changes tested, the quarterly access review was not performed in 3 of 4 quarters, and backup restoration tests were not conducted in 2 of 4 quarters. What opinion type is MOST likely?',
 '["Unqualified", "Qualified", "Adverse", "Disclaimer"]'::jsonb,
 2,
 'The exceptions are pervasive across multiple control areas (change management: 30% deviation rate, access reviews: 75% failure, backup tests: 50% failure). When exceptions are so widespread that the control environment as a whole cannot be relied upon, an adverse opinion is appropriate. A qualified opinion (b) would be used for isolated exceptions.',
 'medium'),

(5, 'SOC Reporting',
 'A bridge letter (gap letter) from a service organization:',
 '["Provides the same level of assurance as a SOC report because it covers the gap period", "Is a management representation covering the period between the SOC report end date and the user entity''s year-end", "Must be independently verified by the SOC practitioner before issuance", "Eliminates the need for the user auditor to perform any additional procedures"]'::jsonb,
 1,
 'A bridge letter is a written representation from the service organization''s management covering the gap between the end of the SOC report examination period and the user entity''s year-end. It provides no independent assurance (not the same as a SOC report) and does not eliminate the need for the user auditor to consider additional procedures.',
 'medium'),

(5, 'SOC Reporting',
 'When a user auditor discovers that a CUEC identified in the SOC report is not implemented at the user entity, the user auditor should:',
 '["Disregard the SOC report entirely because the complementary control is missing", "Evaluate the impact on the related control objective and determine whether the control gap creates a risk that must be addressed through additional procedures", "Request the service organization to implement the control on the user entity''s behalf", "Issue a qualified opinion on the user entity''s financial statements automatically"]'::jsonb,
 1,
 'The user auditor must evaluate the specific impact of the missing CUEC on the related control objective. The absence of one CUEC does not invalidate the entire SOC report (a). The service organization is not responsible for implementing user entity controls (c). A qualified opinion may or may not be appropriate depending on the risk assessment (d).',
 'medium'),

(5, 'SOC Reporting',
 'Under the inclusive method for subservice organizations, the SOC practitioner:',
 '["Excludes the subservice organization''s controls and relies on management''s representation", "Includes the subservice organization''s controls in the examination scope and tests them", "Requires the subservice organization to obtain its own SOC report", "Tests only the service organization''s monitoring controls over the subservice organization"]'::jsonb,
 1,
 'Under the inclusive method, the subservice organization''s relevant controls are included in the scope of the SOC examination. The practitioner (or the practitioner''s agent) tests these controls and the opinion covers the combined control environment. This is in contrast to the carve-out method where subservice controls are excluded.',
 'medium'),

(5, 'SOC Reporting',
 'Section II of a SOC report contains management''s assertion. For a SOC 2 Type II report, management asserts all of the following EXCEPT:',
 '["The description of the system fairly presents the system as designed, implemented, and operated", "The controls were suitably designed to achieve the applicable trust services criteria", "The controls operated effectively throughout the examination period", "The controls will continue to operate effectively for the next 12 months"]'::jsonb,
 3,
 'Management''s assertion in a SOC 2 Type II covers: fair presentation of the system description, suitability of control design, and operating effectiveness throughout the examination period. Management does NOT assert that controls will continue to be effective in the future. The SOC report covers a historical period, not a prospective guarantee.',
 'hard'),

(5, 'SOC Reporting',
 'A user auditor is reviewing a SOC 2 Type II report with a carve-out for a cloud hosting provider. The report''s opinion is unqualified. However, the hosting provider experienced a significant data breach during the SOC report period that affected the service organization''s systems. Which of the following BEST describes the limitation of the SOC report?',
 '["The unqualified opinion means the data breach did not affect the service organization''s controls", "The carve-out method means the hosting provider''s breach and its impact on the service organization''s controls may not be fully evaluated in the report", "The SOC report is invalid because the breach occurred during the examination period", "The user auditor should rely solely on the bridge letter for the breach period"]'::jsonb,
 1,
 'Under the carve-out method, the hosting provider''s controls are excluded from the examination scope. The SOC report tests the service organization''s monitoring controls over the hosting provider, but the actual controls at the hosting provider — including those that failed during the breach — are not tested. The user auditor should obtain the hosting provider''s own SOC report and evaluate the breach impact.',
 'hard'),

(5, 'SOC Reporting',
 'The practitioner includes management''s response to exceptions in the SOC report. The practitioner''s responsibility regarding management''s response is:',
 '["To verify that the remediation described in the response has been implemented and is effective", "To include the response for the reader''s benefit without evaluating or vouching for the remediation", "To require management to resolve all exceptions before the report can be issued", "To independently test the compensating controls described in management''s response"]'::jsonb,
 1,
 'The practitioner includes management''s response to provide context for the reader but does not evaluate whether the described remediation has been or will be effective. The practitioner''s opinion is based on evidence obtained during the examination period, not on promises of future remediation. Exceptions do not need to be resolved before the report is issued.',
 'hard');
