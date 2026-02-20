-- =============================================================================
-- Blueprint Gap Fill — Tier 1: High-Weight Missing Lessons
-- ISC (2 lessons, 20 questions), BAR (3 lessons, 30 questions), FAR (3 lessons, 30 questions)
-- =============================================================================

-- Insert new ISC lessons
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (5, 'IT General Controls', '13-it-general-controls', 'isc/13-it-general-controls', 13, false),
  (5, 'IT Audit Frameworks', '14-it-audit-frameworks', 'isc/14-it-audit-frameworks', 14, false);

-- Insert new BAR lessons
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (4, 'Internal-Use Software and Cloud Computing', '12-internal-use-software', 'bar/12-internal-use-software', 12, false),
  (4, 'Advanced Lease Transactions', '13-advanced-leases', 'bar/13-advanced-leases', 13, false),
  (4, 'Pension and Postretirement Benefits', '14-employee-benefit-plans', 'bar/14-employee-benefit-plans', 14, false);

-- Insert new FAR lessons
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (2, 'Cash and Receivables', '14-cash-and-receivables', 'far/14-cash-and-receivables', 14, false),
  (2, 'Employee Benefit Plans', '15-employee-benefit-plans', 'far/15-employee-benefit-plans', 15, false),
  (2, 'Special Purpose Frameworks', '16-special-purpose-frameworks', 'far/16-special-purpose-frameworks', 16, false);

-- =============================================================================
-- ISC: IT General Controls (10 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(5, 'IT General Controls',
 'Which of the following BEST describes the principle of least privilege in IT access controls?',
 '["Users should have administrative access to all systems they may need in the future", "Users should be granted only the minimum access rights necessary to perform their job functions", "All users should have identical access rights to ensure fairness", "Access privileges should be reviewed only when an employee changes roles"]'::jsonb,
 1,
 'The principle of least privilege requires that users be granted only the minimum level of access necessary to perform their assigned duties. Granting broad or anticipatory access creates unnecessary risk. Access should be reviewed regularly, not only at role changes.',
 'easy'),

(5, 'IT General Controls',
 'An organization requires that the same employee cannot both develop program code and deploy it to production. This is an example of:',
 '["Encryption at rest", "Segregation of duties in IT", "Data loss prevention", "Business continuity planning"]'::jsonb,
 1,
 'Segregation of duties in IT ensures that no single individual controls all phases of a transaction or process. Separating development from deployment prevents unauthorized code from being moved to production without independent review.',
 'easy'),

(5, 'IT General Controls',
 'Which of the following is a detective control in computer operations?',
 '["Requiring supervisor approval before running batch jobs", "Reviewing system logs and monitoring alerts for anomalies", "Encrypting backup tapes before offsite storage", "Implementing multi-factor authentication for server access"]'::jsonb,
 1,
 'Reviewing logs and monitoring alerts is a detective control — it identifies issues after they occur. Requiring approval is preventive, encryption is preventive, and MFA is preventive. Detective controls focus on discovery and notification.',
 'easy'),

(5, 'IT General Controls',
 'A user''s access to the ERP system was not revoked until 30 days after termination. Which ITGC area does this deficiency relate to?',
 '["Program change controls", "Computer operations controls", "Logical access controls", "Physical access controls"]'::jsonb,
 2,
 'Timely deprovisioning of terminated employee access is a logical access control. Failure to promptly revoke access creates a window for unauthorized access and is a common ITGC finding in audits.',
 'medium'),

(5, 'IT General Controls',
 'A Change Advisory Board (CAB) is responsible for:',
 '["Writing program code for system enhancements", "Evaluating, prioritizing, and approving or rejecting change requests", "Performing user acceptance testing on all changes", "Configuring server hardware before deployment"]'::jsonb,
 1,
 'The CAB evaluates proposed changes for risk, impact, and resource requirements, then approves, defers, or rejects them. The CAB does not write code, perform UAT, or configure hardware — those are performed by development, business users, and operations teams respectively.',
 'medium'),

(5, 'IT General Controls',
 'An emergency change is deployed to production to fix a critical system outage. Under proper program change controls, what must happen after the emergency fix?',
 '["The change is automatically approved because it addressed a critical issue", "The change must be retroactively documented, tested, and formally approved by the CAB", "The developer who deployed the fix must also approve it to close the ticket", "Emergency changes are exempt from all change control requirements"]'::jsonb,
 1,
 'Emergency changes bypass the normal pre-approval process but must be retroactively documented, tested, and submitted for formal approval. Exempting emergency changes from all controls would create a loophole for unauthorized modifications.',
 'medium'),

(5, 'IT General Controls',
 'An organization uses role-based access control (RBAC). A new employee transfers between departments multiple times without old role permissions being removed. This risk is known as:',
 '["Privilege creep", "Social engineering", "Brute force accumulation", "Access token expiration"]'::jsonb,
 0,
 'Privilege creep (also called access accumulation) occurs when users retain access from previous roles when moving to new positions. Without periodic access recertification, users can accumulate excessive privileges that violate least privilege.',
 'medium'),

(5, 'IT General Controls',
 'If IT general controls over logical access are found to be ineffective, what is the most likely impact on the audit?',
 '["The auditor can still fully rely on automated application controls", "The auditor cannot rely on automated application controls that depend on those ITGCs", "Only manual controls are affected by ITGC weaknesses", "The auditor must issue an adverse opinion immediately"]'::jsonb,
 1,
 'Automated application controls depend on the underlying IT general controls. If ITGCs (such as logical access controls) are ineffective, the auditor cannot rely on automated controls within those systems and must perform additional substantive procedures.',
 'hard'),

(5, 'IT General Controls',
 'An auditor discovers that developers have write access to production databases and there are no compensating controls. Which of the following conclusions is MOST appropriate?',
 '["This is acceptable if the developers also perform code reviews", "This represents a segregation of duties violation that undermines the reliability of data processed by those systems", "This is only a concern for financial reporting if the database stores personally identifiable information", "Developers need production access for debugging, so this is standard practice"]'::jsonb,
 1,
 'Developers having write access to production databases violates segregation of duties — they could modify data or programs without detection. This undermines data integrity and is a significant ITGC deficiency regardless of what data the database contains.',
 'hard'),

(5, 'IT General Controls',
 'A company performs full backups every Sunday and incremental backups Monday through Saturday. A server failure occurs on Thursday afternoon. To restore the system, the IT team needs:',
 '["Only Thursday''s incremental backup", "Sunday''s full backup plus Monday through Thursday incremental backups", "Sunday''s full backup only", "All incremental backups from the past month"]'::jsonb,
 1,
 'An incremental backup captures only changes since the last backup. To fully restore, you need the most recent full backup (Sunday) plus all subsequent incremental backups (Monday through Thursday) applied in sequence.',
 'hard'),

-- =============================================================================
-- ISC: IT Audit Frameworks (10 questions)
-- =============================================================================

(5, 'IT Audit Frameworks',
 'Which IT governance framework distinguishes between governance objectives (Evaluate, Direct, Monitor) and management objectives?',
 '["ITIL 4", "COBIT 2019", "NIST Cybersecurity Framework", "ISO 27001"]'::jsonb,
 1,
 'COBIT 2019 uniquely separates governance (EDM domain: Evaluate, Direct, Monitor) from management (APO, BAI, DSS, MEA domains). ITIL focuses on service management, NIST CSF on cybersecurity, and ISO 27001 on information security management systems.',
 'easy'),

(5, 'IT Audit Frameworks',
 'ITIL 4 is primarily focused on:',
 '["Information security management systems", "IT service management and the service value system", "IT general controls for financial reporting", "Quantitative risk assessment methodologies"]'::jsonb,
 1,
 'ITIL 4 is an IT service management (ITSM) framework centered on the Service Value System (SVS), which includes the service value chain, guiding principles, governance, practices, and continual improvement.',
 'easy'),

(5, 'IT Audit Frameworks',
 'The NIST Risk Management Framework (RMF) includes which of the following steps?',
 '["Plan, Do, Check, Act", "Identify, Protect, Detect, Respond, Recover", "Categorize, Select, Implement, Assess, Authorize, Monitor", "Evaluate, Direct, Monitor"]'::jsonb,
 2,
 'The NIST RMF (SP 800-37) consists of 7 steps: Prepare, Categorize, Select, Implement, Assess, Authorize, and Monitor. ''Categorize, Select, Implement, Assess, Authorize, Monitor'' captures the core steps. ''Identify, Protect...'' is the NIST CSF, and ''Plan, Do, Check, Act'' is the Deming cycle.',
 'easy'),

(5, 'IT Audit Frameworks',
 'An organization estimates that a particular server failure occurs on average once every 4 years and causes $200,000 in damage each time. What is the annualized loss expectancy (ALE)?',
 '["$200,000", "$800,000", "$50,000", "$100,000"]'::jsonb,
 2,
 'ALE = Single Loss Expectancy (SLE) x Annualized Rate of Occurrence (ARO). SLE = $200,000, ARO = 1/4 = 0.25. ALE = $200,000 x 0.25 = $50,000 per year.',
 'medium'),

(5, 'IT Audit Frameworks',
 'An organization decides to purchase cyber insurance to address the financial impact of a data breach. This risk treatment strategy is:',
 '["Risk avoidance", "Risk mitigation", "Risk transfer", "Risk acceptance"]'::jsonb,
 2,
 'Purchasing insurance transfers the financial impact of the risk to the insurance company. Risk avoidance eliminates the activity, risk mitigation reduces likelihood or impact through controls, and risk acceptance means taking no action.',
 'medium'),

(5, 'IT Audit Frameworks',
 'Which ITIL 4 guiding principle emphasizes starting with what already exists rather than building something new from scratch?',
 '["Focus on value", "Start where you are", "Progress iteratively with feedback", "Keep it simple and practical"]'::jsonb,
 1,
 '''Start where you are'' advises assessing the current state before making changes, leveraging existing capabilities rather than starting over. ''Focus on value'' emphasizes stakeholder outcomes, ''Progress iteratively'' recommends incremental improvements, and ''Keep it simple'' advocates for minimum complexity.',
 'medium'),

(5, 'IT Audit Frameworks',
 'The COSO Internal Control framework is most commonly used in CPA practice as the basis for evaluating:',
 '["IT service management maturity", "Internal control over financial reporting (ICFR)", "Cybersecurity risk management programs", "Cloud computing service-level agreements"]'::jsonb,
 1,
 'COSO is the de facto standard framework for evaluating internal control over financial reporting in the United States. It comprises five components: control environment, risk assessment, control activities, information and communication, and monitoring. While it can integrate with IT frameworks, its primary audit application is ICFR.',
 'medium'),

(5, 'IT Audit Frameworks',
 'In the COBIT 2019 capability maturity model, a process rated at Level 3 (Established) means:',
 '["The process is ad hoc and chaotic", "The process is performed but may not be well-documented", "The process is defined, documented, and consistently followed organization-wide", "The process is continuously optimized using statistical techniques"]'::jsonb,
 2,
 'COBIT 2019 uses a 0-5 capability scale. Level 0 = Incomplete, Level 1 = Performed, Level 2 = Managed, Level 3 = Established (defined, documented, standardized), Level 4 = Predictable (measured and controlled), Level 5 = Optimizing (continuously improved).',
 'hard'),

(5, 'IT Audit Frameworks',
 'An organization uses both COBIT for IT governance and ITIL for IT service management. The BEST description of how these frameworks complement each other is:',
 '["They are competing frameworks and should not be used together", "COBIT provides the governance structure and objectives while ITIL provides operational service management practices", "ITIL replaces the management domains of COBIT entirely", "COBIT is for security and ITIL is for project management"]'::jsonb,
 1,
 'COBIT and ITIL are complementary, not competing. COBIT provides the governance and management objective framework (what needs to be governed), while ITIL provides detailed service management practices (how to manage IT services). Organizations commonly use both.',
 'hard'),

(5, 'IT Audit Frameworks',
 'A risk register entry shows: Likelihood = Probable, Impact = Severe, Current controls = Strong, Residual risk = Moderate. What should the risk owner evaluate next?',
 '["Immediately eliminate the risk by discontinuing the related business activity", "Whether the residual risk level is within the organization''s risk appetite and whether further controls are cost-justified", "Nothing further — the current controls are sufficient since they are rated Strong", "Transfer all residual risk to a third party regardless of cost"]'::jsonb,
 1,
 'The risk owner should compare residual risk to the organization''s risk appetite. Even with strong controls, moderate residual risk may or may not be acceptable depending on the organization''s tolerance. The decision should consider whether additional controls are cost-effective relative to the remaining risk.',
 'hard'),

-- =============================================================================
-- BAR: Internal-Use Software and Cloud Computing (10 questions)
-- =============================================================================

(4, 'Internal-Use Software and Cloud Computing',
 'During the preliminary project stage of an internal-use software development project, a company incurs $40,000 in vendor evaluation costs and $15,000 in feasibility analysis costs. How should these costs be accounted for under ASC 350-40?',
 '["Capitalize as an intangible asset", "Expense as incurred", "Capitalize as a prepaid expense", "Defer and amortize over the project life"]'::jsonb,
 1,
 'All costs incurred during the preliminary project stage — including feasibility studies, vendor evaluations, and conceptual formulation — are expensed as incurred under ASC 350-40.',
 'easy'),

(4, 'Internal-Use Software and Cloud Computing',
 'Which of the following costs is capitalizable during the application development stage of an internal-use software project?',
 '["Training costs for end users", "General and administrative overhead", "External direct costs of materials and services for coding", "Costs of maintaining the software after implementation"]'::jsonb,
 2,
 'External direct costs of materials and services consumed in coding, testing, and installation are capitalizable during the application development stage. Training and maintenance are post-implementation costs (expensed), and G&A overhead is not a direct cost.',
 'easy'),

(4, 'Internal-Use Software and Cloud Computing',
 'After an internal-use software project is complete and placed into service, a company spends $25,000 on routine bug fixes and $10,000 on employee training. Under ASC 350-40, these costs are:',
 '["Capitalized and amortized over the software''s useful life", "Expensed as incurred", "Capitalized as a separate intangible asset", "Added to the original capitalized software cost"]'::jsonb,
 1,
 'Costs incurred during the post-implementation/operation stage — including routine maintenance, bug fixes, and training — are expensed as incurred under ASC 350-40.',
 'easy'),

(4, 'Internal-Use Software and Cloud Computing',
 'A company develops internal-use software. The following costs were incurred: conceptual design $30,000; external coding $200,000; internal developer salaries during application development $150,000; testing $50,000; training $20,000. What is the total amount capitalized?',
 '["$450,000", "$420,000", "$400,000", "$370,000"]'::jsonb,
 2,
 'Capitalizable costs include external coding ($200,000) + internal developer salaries ($150,000) + testing ($50,000) = $400,000. Conceptual design ($30,000) is preliminary stage (expense) and training ($20,000) is post-implementation (expense).',
 'medium'),

(4, 'Internal-Use Software and Cloud Computing',
 'Under ASU 2018-15, a cloud computing arrangement (CCA) is accounted for as a service contract when:',
 '["The customer has the contractual right to take possession of the software", "The customer can feasibly run the software on its own hardware", "The customer does not have the right to take possession or cannot feasibly run the software independently", "The hosting term exceeds 3 years"]'::jsonb,
 2,
 'A CCA is a service contract when the customer does not have the contractual right to take possession of the software without significant penalty OR it is not feasible for the customer to run the software independently. Both conditions must be met for a license to exist.',
 'medium'),

(4, 'Internal-Use Software and Cloud Computing',
 'A company enters a 4-year SaaS contract classified as a service contract. It incurs $120,000 in configuration costs during the application development stage equivalent. On the balance sheet, these capitalized costs are classified as:',
 '["Intangible asset", "Property, plant, and equipment", "Prepaid expense", "Deferred charge within other assets"]'::jsonb,
 2,
 'Under ASU 2018-15, implementation costs capitalized in a CCA that is a service contract are classified as a prepaid expense, not as an intangible asset. They are amortized over the hosting term.',
 'medium'),

(4, 'Internal-Use Software and Cloud Computing',
 'A company capitalizes $500,000 in internal-use software development costs. The software has an estimated useful life of 5 years and is placed into service on July 1, Year 1. What is the amortization expense for Year 1?',
 '["$100,000", "$50,000", "$83,333", "$500,000"]'::jsonb,
 1,
 'Annual amortization = $500,000 / 5 years = $100,000. Since the software was placed into service on July 1 (half year), Year 1 amortization = $100,000 x 6/12 = $50,000.',
 'medium'),

(4, 'Internal-Use Software and Cloud Computing',
 'A company signs a 5-year cloud hosting contract (service contract) with two 1-year renewal options reasonably certain to be exercised. It incurs $350,000 in capitalizable implementation costs during the application development stage equivalent. What is the annual amortization expense?',
 '["$70,000", "$50,000", "$58,333", "$87,500"]'::jsonb,
 1,
 'The amortization period includes the base term plus reasonably certain renewals: 5 + 1 + 1 = 7 years. Annual amortization = $350,000 / 7 = $50,000.',
 'hard'),

(4, 'Internal-Use Software and Cloud Computing',
 'During development of internal-use software, a company determines that certain data conversion costs are necessary for the new system to access and use legacy data. Under ASC 350-40, these data conversion costs incurred during the application development stage should be:',
 '["Expensed as incurred because all data conversion is a post-implementation activity", "Capitalized because they are necessary for the software to function as intended", "Deferred and recognized when the legacy data is fully converted", "Allocated between expense and capitalization based on the percentage of data converted"]'::jsonb,
 1,
 'Data conversion costs to develop or obtain software that allows access to or conversion of old data by the new system are capitalizable during the application development stage. Only routine data conversion during post-implementation is expensed.',
 'hard'),

(4, 'Internal-Use Software and Cloud Computing',
 'A company has a cloud computing arrangement that includes both a software license (the customer can take possession and run the software independently) and hosting services. How should the company account for the implementation costs related to the software license component?',
 '["Capitalize as a prepaid expense and amortize over the hosting term", "Capitalize as an intangible asset under ASC 350-40 and amortize over the software''s useful life", "Expense all implementation costs as incurred", "Capitalize as part of property, plant, and equipment"]'::jsonb,
 1,
 'When a CCA includes a software license (customer has the right to take possession and can feasibly run it independently), the license is accounted for as internal-use software under ASC 350-40. Implementation costs are capitalized as an intangible asset and amortized over the software''s useful life, not the hosting term.',
 'hard'),

-- =============================================================================
-- BAR: Advanced Lease Transactions (10 questions)
-- =============================================================================

(4, 'Advanced Lease Transactions',
 'In a sale-leaseback transaction, what must be true for the transfer of the asset to qualify as a sale under ASC 842?',
 '["The leaseback must be classified as an operating lease", "Control of the asset must transfer to the buyer-lessor under ASC 606", "The seller-lessee must not have any continuing involvement", "The sale price must equal the asset''s carrying value"]'::jsonb,
 1,
 'Under ASC 842-40, the transfer must qualify as a sale under ASC 606 — meaning control of the asset must transfer to the buyer-lessor. Classification of the leaseback as operating or finance is not the determining factor.',
 'easy'),

(4, 'Advanced Lease Transactions',
 'When a sale-leaseback transaction fails to qualify as a sale, how does the seller-lessee account for the cash received?',
 '["As revenue from the sale of the asset", "As a financial liability (financing obligation)", "As deferred revenue amortized over the lease term", "As a reduction of the asset''s carrying value"]'::jsonb,
 1,
 'When the transfer does not qualify as a sale, the seller-lessee does not derecognize the asset. The cash received is recorded as a financial liability — the transaction is treated as a collateralized borrowing.',
 'easy'),

(4, 'Advanced Lease Transactions',
 'Under ASC 842, a lease modification is accounted for as a separate contract when:',
 '["The modification extends the lease term by more than 12 months", "The modification grants the right to use an additional asset at a standalone price commensurate with the contract adjustment", "The modification decreases the lease payments", "The modification changes the discount rate used to measure the lease liability"]'::jsonb,
 1,
 'A modification is a separate contract when it both (1) grants the right to use an additional asset not in the original lease and (2) the additional consideration is commensurate with the standalone price for the new right of use.',
 'easy'),

(4, 'Advanced Lease Transactions',
 'A company sells equipment with a carrying value of $500,000 for $750,000 (fair value) and leases it back under a 4-year operating lease. The present value of lease payments is $225,000. What gain should the seller-lessee recognize?',
 '["$250,000", "$175,000", "$0", "$225,000"]'::jsonb,
 1,
 'Total gain = $750,000 - $500,000 = $250,000. Portion of rights transferred = ($750,000 - $225,000) / $750,000 = 70%. Gain recognized = $250,000 x 70% = $175,000. The remaining $75,000 adjusts the ROU asset.',
 'medium'),

(4, 'Advanced Lease Transactions',
 'A lessee''s operating lease is modified to extend the term by 3 years with no change in annual payments and no additional assets. This modification does not create a separate contract. The correct accounting treatment is:',
 '["Derecognize the existing ROU asset and lease liability and record a new lease", "Remeasure the lease liability at the revised discount rate and adjust the ROU asset by the same amount", "Continue the original lease unchanged until the original termination date", "Recognize a gain or loss equal to the change in lease liability"]'::jsonb,
 1,
 'When a modification does not create a separate contract and does not decrease the scope of the lease, the lessee remeasures the lease liability using a revised discount rate at the modification date and adjusts the ROU asset by the corresponding amount.',
 'medium'),

(4, 'Advanced Lease Transactions',
 'A lessee leases three identical floors of a building. The lease is modified to return one floor (one-third reduction). Before modification, the ROU asset is $900,000 and the lease liability is $930,000. The remeasured lease liability for the remaining two floors is $620,000. What is the gain or loss?',
 '["$10,000 gain", "$10,000 loss", "$0", "$20,000 gain"]'::jsonb,
 0,
 'Proportional decrease in ROU asset: $900,000 x 1/3 = $300,000. Proportional decrease in lease liability: $930,000 x 1/3 = $310,000. Gain = $310,000 - $300,000 = $10,000 (liability decreased more than the asset).',
 'medium'),

(4, 'Advanced Lease Transactions',
 'Under ASC 842, how does an intermediate lessor classify a sublease?',
 '["Based on the fair value and useful life of the underlying asset", "Based on the right-of-use asset as the underlying asset for classification purposes", "Based on the original head lease classification", "Based solely on whether the sublease term exceeds 75% of the remaining head lease term"]'::jsonb,
 1,
 'Under ASC 842, the intermediate lessor uses the right-of-use asset (not the underlying asset) as the basis for classifying a sublease as operating or finance.',
 'medium'),

(4, 'Advanced Lease Transactions',
 'A seller-lessee sells a building for $1,200,000. The building''s fair value is $1,000,000 and its carrying value is $700,000. The $200,000 excess of sale price over fair value should be treated as:',
 '["Part of the gain on sale", "Additional financing from the buyer-lessor", "A reduction of the lease liability", "Revenue recognized over the leaseback term"]'::jsonb,
 1,
 'Under ASC 842-40, when the sale price exceeds fair value, the excess ($200,000) is treated as additional financing — recorded as a financial liability by the seller-lessee. Only the fair value amount is considered for sale and gain recognition.',
 'hard'),

(4, 'Advanced Lease Transactions',
 'A seller-lessee retains a fixed-price repurchase option in a sale-leaseback transaction. The asset has a carrying value of $400,000 and the sale price is $600,000 (fair value). What gain should the seller-lessee recognize?',
 '["$200,000", "$0 — the transaction is a failed sale treated as financing", "$100,000", "$600,000"]'::jsonb,
 1,
 'A fixed-price repurchase option means the buyer-lessor does not obtain control of the asset under ASC 606. The transaction fails to qualify as a sale. The seller keeps the asset on its books and records the $600,000 cash received as a financing obligation.',
 'hard'),

(4, 'Advanced Lease Transactions',
 'A lessee determines it is now reasonably certain to exercise a 3-year renewal option on an operating lease that currently has 4 years remaining. This is a reassessment, not a modification. The lessee should:',
 '["Make no adjustment until the option is formally exercised", "Remeasure the lease liability for the revised 7-year remaining term at the current discount rate and adjust the ROU asset", "Record a new separate lease for the 3-year renewal period", "Recognize the change prospectively by adjusting only future amortization of the ROU asset"]'::jsonb,
 1,
 'A significant event triggering reasonable certainty to exercise a renewal option requires reassessment. The lessee remeasures the lease liability for the revised remaining term (4 + 3 = 7 years) using the revised discount rate and adjusts the ROU asset by the corresponding amount.',
 'hard'),

-- =============================================================================
-- BAR: Employee Benefit Plans (10 questions)
-- =============================================================================

(4, 'Pension and Postretirement Benefits',
 'Under ASC 715, the funded status of a defined benefit pension plan reported on the balance sheet is:',
 '["The accumulated benefit obligation minus plan assets at fair value", "The projected benefit obligation minus plan assets at fair value", "Plan assets at cost minus the projected benefit obligation", "The vested benefit obligation minus plan assets at fair value"]'::jsonb,
 1,
 'The funded status is the fair value of plan assets minus the projected benefit obligation (PBO). If PBO exceeds plan assets, the result is a net pension liability. The PBO is the measure used for balance sheet reporting.',
 'easy'),

(4, 'Pension and Postretirement Benefits',
 'Which component of net periodic pension cost is reported within operating income under ASU 2017-07?',
 '["Interest cost", "Expected return on plan assets", "Service cost", "Amortization of prior service cost"]'::jsonb,
 2,
 'ASU 2017-07 requires that only service cost be reported as an operating expense. All other components — interest cost, expected return, and amortizations — are reported outside of operating income.',
 'easy'),

(4, 'Pension and Postretirement Benefits',
 'In a defined contribution plan such as a 401(k), the employer''s pension expense for the period equals:',
 '["The net periodic pension cost using the five-component formula", "The required employer contribution for the period", "The change in the plan''s funded status", "The actuarial present value of benefits earned"]'::jsonb,
 1,
 'In a defined contribution plan, the employer recognizes pension expense equal to the required contribution for the period. There is no PBO, no plan asset tracking, and no multi-component expense calculation.',
 'easy'),

(4, 'Pension and Postretirement Benefits',
 'A company has a beginning PBO of $3,000,000, service cost of $200,000, a discount rate of 5%, actuarial gains of $30,000, and benefits paid of $150,000. What is the ending PBO?',
 '["$3,170,000", "$3,200,000", "$3,120,000", "$3,020,000"]'::jsonb,
 0,
 'Ending PBO = $3,000,000 + $200,000 (service cost) + $150,000 (interest: $3M x 5%) - $30,000 (actuarial gain decreases PBO) - $150,000 (benefits paid) = $3,170,000.',
 'medium'),

(4, 'Pension and Postretirement Benefits',
 'A company has beginning plan assets of $2,400,000, actual return on plan assets of $180,000, employer contributions of $300,000, and benefits paid of $200,000. What is the ending fair value of plan assets?',
 '["$2,680,000", "$2,880,000", "$2,700,000", "$2,480,000"]'::jsonb,
 0,
 'Ending plan assets = $2,400,000 + $180,000 (actual return) + $300,000 (contributions) - $200,000 (benefits paid) = $2,680,000.',
 'medium'),

(4, 'Pension and Postretirement Benefits',
 'The difference between the actual return on plan assets and the expected return on plan assets is:',
 '["Recognized immediately in earnings as a component of NPPC", "Recognized in other comprehensive income as an actuarial gain or loss", "Added to or subtracted from the service cost component", "Ignored until the plan is terminated"]'::jsonb,
 1,
 'The difference between actual and expected return is an actuarial gain or loss recognized in OCI. It accumulates in AOCI and is subject to amortization into NPPC via the corridor approach.',
 'medium'),

(4, 'Pension and Postretirement Benefits',
 'Under the corridor approach, the corridor amount is defined as:',
 '["10% of the ending PBO", "10% of the greater of the beginning PBO or the beginning fair value of plan assets", "5% of the average PBO for the period", "10% of the beginning PBO only"]'::jsonb,
 1,
 'The corridor equals 10% of the greater of the beginning PBO or the beginning fair value of plan assets. Cumulative net gains or losses in AOCI exceeding this corridor are subject to minimum amortization.',
 'medium'),

(4, 'Pension and Postretirement Benefits',
 'A company amends its pension plan to increase benefits retroactively. The cost of the retroactive benefits (prior service cost) should be:',
 '["Recognized immediately in pension expense", "Recognized in other comprehensive income and amortized to NPPC over the remaining service period of affected employees", "Deferred indefinitely in AOCI", "Recognized as a direct adjustment to retained earnings"]'::jsonb,
 1,
 'Prior service cost from plan amendments is recognized initially in OCI. It is then amortized from AOCI into net periodic pension cost over the average remaining service period of employees expected to receive benefits.',
 'hard'),

(4, 'Pension and Postretirement Benefits',
 'At the beginning of Year 3, a pension plan has cumulative net actuarial losses in AOCI of $750,000. The beginning PBO is $6,000,000 and beginning plan assets at fair value are $5,500,000. The average remaining service period is 15 years. What is the minimum corridor amortization?',
 '["$10,000", "$50,000", "$75,000", "$150,000"]'::jsonb,
 0,
 'Corridor = 10% x $6,000,000 (greater of beginning PBO and plan assets) = $600,000. Excess = $750,000 - $600,000 = $150,000. Minimum amortization = $150,000 / 15 years = $10,000.',
 'hard'),

(4, 'Pension and Postretirement Benefits',
 'A company has beginning PBO of $5,000,000, beginning plan assets of $4,600,000, service cost of $300,000, discount rate of 5%, expected long-term return of 7%, and no amortizations. What is the net periodic pension cost?',
 '["$228,000", "$278,000", "$250,000", "$178,000"]'::jsonb,
 0,
 'NPPC = Service cost ($300,000) + Interest cost ($5,000,000 x 5% = $250,000) - Expected return ($4,600,000 x 7% = $322,000) = $228,000. The actual return affects OCI, not NPPC.',
 'hard'),

-- =============================================================================
-- FAR: Cash and Receivables (10 questions)
-- =============================================================================

(2, 'Cash and Receivables',
 'Which of the following would be classified as a cash equivalent on the balance sheet?',
 '["A 6-month certificate of deposit", "A 90-day Treasury bill purchased at issuance", "Common stock of a publicly traded company", "A 12-month money market note"]'::jsonb,
 1,
 'Cash equivalents are short-term, highly liquid investments with original maturities of three months or less from the date of purchase. A 90-day Treasury bill purchased at issuance meets this definition.',
 'easy'),

(2, 'Cash and Receivables',
 'In a bank reconciliation, an outstanding check should be:',
 '["Added to the bank balance", "Subtracted from the bank balance", "Added to the book balance", "Subtracted from the book balance"]'::jsonb,
 1,
 'Outstanding checks have been recorded by the company (reducing the book balance) but have not yet been processed by the bank. To reconcile, outstanding checks are subtracted from the bank balance.',
 'easy'),

(2, 'Cash and Receivables',
 'Under the CECL model (ASC 326), the allowance for credit losses on trade receivables is based on:',
 '["Losses that have already been incurred", "Lifetime expected credit losses incorporating historical data, current conditions, and reasonable forecasts", "Only historical loss rates without adjustment", "Losses that are probable and reasonably estimable"]'::jsonb,
 1,
 'ASC 326 requires recognition of lifetime expected credit losses at inception, using historical experience, current conditions, and reasonable and supportable forecasts. The incurred loss model was replaced by CECL.',
 'easy'),

(2, 'Cash and Receivables',
 'Henderson Corp. has a bank statement balance of $56,000 on December 31. Deposits in transit are $4,200 and outstanding checks total $7,800. What is the adjusted bank balance?',
 '["$52,400", "$56,000", "$60,200", "$48,000"]'::jsonb,
 0,
 'Adjusted bank balance = $56,000 + $4,200 (deposits in transit) - $7,800 (outstanding checks) = $52,400.',
 'medium'),

(2, 'Cash and Receivables',
 'A company has beginning allowance for credit losses of $15,000. During the year, $10,000 is written off, $2,000 is recovered, and management estimates the required ending allowance at $18,000. What is the credit loss expense for the year?',
 '["$18,000", "$11,000", "$8,000", "$3,000"]'::jsonb,
 1,
 'Beginning allowance $15,000 - write-offs $10,000 + recoveries $2,000 = $7,000 balance before provision. Required ending allowance is $18,000. Provision needed: $18,000 - $7,000 = $11,000.',
 'medium'),

(2, 'Cash and Receivables',
 'A company factors $150,000 of receivables without recourse. The factor charges a 5% fee and retains 8% as a holdback. What amount of cash does the company receive immediately?',
 '["$130,500", "$142,500", "$138,000", "$127,500"]'::jsonb,
 0,
 'Cash received = $150,000 - ($150,000 x 5% fee) - ($150,000 x 8% holdback) = $150,000 - $7,500 - $12,000 = $130,500. The holdback is recorded as a receivable from the factor.',
 'medium'),

(2, 'Cash and Receivables',
 'A compensating balance that is legally restricted and relates to a long-term borrowing arrangement should be classified on the balance sheet as:',
 '["Cash and cash equivalents", "A current asset", "A noncurrent asset", "A reduction of the related long-term debt"]'::jsonb,
 2,
 'A legally restricted compensating balance related to a long-term borrowing is classified as a noncurrent asset because the restriction matches the term of the debt.',
 'medium'),

(2, 'Cash and Receivables',
 'Under ASC 326, which of the following is NOT a permitted methodology for estimating the allowance for credit losses?',
 '["Vintage analysis", "Probability-of-default method", "Incurred loss model requiring losses to be probable", "Discounted cash flow method"]'::jsonb,
 2,
 'The incurred loss model (requiring losses to be probable and estimable) was the old standard replaced by CECL. Under ASC 326, entities may use vintage analysis, probability-of-default, discounted cash flow, or any other reasonable methodology.',
 'hard'),

(2, 'Cash and Receivables',
 'Radcliffe Inc. factors $250,000 of receivables with recourse. The recourse obligation has a fair value of $6,000. The factor charges a 3% fee and withholds 10% as a holdback. If the transfer qualifies as a sale, what loss should Radcliffe recognize?',
 '["$7,500", "$13,500", "$32,500", "$6,000"]'::jsonb,
 1,
 'Loss = Factoring fee ($250,000 x 3% = $7,500) + Recourse obligation ($6,000) = $13,500. The holdback ($25,000) is a receivable from the factor, not a loss.',
 'hard'),

(2, 'Cash and Receivables',
 'A company uses the discounted cash flow method under CECL to estimate its allowance. The amortized cost of the portfolio is $1,000,000 and the present value of expected cash flows is $940,000. What is the required allowance?',
 '["$1,000,000", "$940,000", "$60,000", "$0"]'::jsonb,
 2,
 'Under the DCF method, the allowance equals amortized cost minus the present value of expected cash flows discounted at the effective interest rate: $1,000,000 - $940,000 = $60,000.',
 'hard'),

-- =============================================================================
-- FAR: Employee Benefit Plans (10 questions)
-- =============================================================================

(2, 'Employee Benefit Plans',
 'Under ASC 715, which component of net periodic pension cost is presented as an operating expense?',
 '["Interest cost", "Expected return on plan assets", "Service cost", "Amortization of prior service cost"]'::jsonb,
 2,
 'ASC 715 requires that service cost be the only component of net periodic pension cost reported as an operating expense. All other components are reported below operating income.',
 'easy'),

(2, 'Employee Benefit Plans',
 'The funded status of a defined benefit pension plan is reported on the balance sheet as:',
 '["The difference between the ABO and plan assets", "The difference between the fair value of plan assets and the PBO", "The total PBO", "The total fair value of plan assets"]'::jsonb,
 1,
 'ASC 715 requires recognition of the funded status — fair value of plan assets minus PBO. An overfunded plan is reported as a net pension asset; an underfunded plan as a net pension liability.',
 'easy'),

(2, 'Employee Benefit Plans',
 'A company sponsors a 401(k) plan and matches 50% of employee contributions up to 4% of salary. An employee earning $100,000 contributes 6%. What is the employer''s expense?',
 '["$3,000", "$2,000", "$6,000", "$4,000"]'::jsonb,
 1,
 'The matchable amount is 4% of $100,000 = $4,000 (capped at 4%, not the 6% contributed). Employer match = $4,000 x 50% = $2,000.',
 'easy'),

(2, 'Employee Benefit Plans',
 'A company has a beginning PBO of $5,000,000 and a discount rate of 5%. The interest cost component of net periodic pension cost is:',
 '["$200,000", "$250,000", "$500,000", "$50,000"]'::jsonb,
 1,
 'Interest cost = Beginning PBO x Discount rate = $5,000,000 x 5% = $250,000.',
 'medium'),

(2, 'Employee Benefit Plans',
 'Archer Corp. has cumulative unrecognized net actuarial losses of $320,000. The beginning PBO is $2,500,000 and beginning plan assets are $2,800,000. The average remaining service period is 8 years. What is the corridor amortization?',
 '["$5,000", "$32,000", "$40,000", "$2,500"]'::jsonb,
 0,
 'Corridor = 10% of greater of PBO ($250,000) or plan assets ($280,000) = $280,000. Excess = $320,000 - $280,000 = $40,000. Amortization = $40,000 / 8 years = $5,000.',
 'medium'),

(2, 'Employee Benefit Plans',
 'When a defined benefit plan is amended to retroactively increase benefits, the resulting prior service cost is:',
 '["Recognized immediately as pension expense", "Recognized in OCI and amortized over the average remaining service period", "Recognized as a direct charge to retained earnings", "Not recognized until benefits are paid"]'::jsonb,
 1,
 'Prior service cost from a plan amendment is initially recognized in OCI and then amortized from AOCI into pension expense over the average remaining service period.',
 'medium'),

(2, 'Employee Benefit Plans',
 'Which measure of the pension obligation incorporates projected future salary increases?',
 '["Vested Benefit Obligation (VBO)", "Accumulated Benefit Obligation (ABO)", "Projected Benefit Obligation (PBO)", "Both the ABO and PBO"]'::jsonb,
 2,
 'Only the PBO incorporates projected future salary increases. The ABO uses current salary levels and the VBO is limited to vested benefits at current salaries.',
 'medium'),

(2, 'Employee Benefit Plans',
 'Birchwood Inc. reports: Service cost $200,000; Interest cost $150,000; Expected return on plan assets $180,000; Amortization of prior service cost $15,000; Amortization of net loss $8,000. What is net periodic pension cost?',
 '["$193,000", "$553,000", "$170,000", "$373,000"]'::jsonb,
 0,
 'NPPC = $200,000 + $150,000 - $180,000 + $15,000 + $8,000 = $193,000.',
 'hard'),

(2, 'Employee Benefit Plans',
 'Under ASC 715-60 (OPEB), the attribution period for postretirement healthcare benefits runs from:',
 '["Date of hire to expected retirement date", "Date of hire to full eligibility date", "Vesting date to expected retirement date", "Full eligibility date to expected retirement date"]'::jsonb,
 1,
 'For OPEB, benefit cost is attributed from the date of hire to the full eligibility date — when the employee earns the right to full benefits. This differs from pensions, which typically attribute costs to retirement.',
 'hard'),

(2, 'Employee Benefit Plans',
 'A company settles its pension obligation by purchasing annuity contracts. The PBO is $4,000,000, plan assets are $3,700,000, and the annuity cost is $3,850,000. The company must pay $150,000 beyond plan assets to purchase the annuities. What is the settlement result?',
 '["$150,000 gain", "$150,000 loss", "$300,000 loss", "$0"]'::jsonb,
 1,
 'The settlement cost ($3,850,000) exceeds plan assets ($3,700,000) by $150,000, which is the additional cash outlay. Additionally, any unrecognized items in AOCI proportional to the obligation settled are recognized. The $150,000 cash shortfall results in a settlement loss.',
 'hard'),

-- =============================================================================
-- FAR: Special Purpose Frameworks (10 questions)
-- =============================================================================

(2, 'Special Purpose Frameworks',
 'Which of the following is a type of special purpose framework recognized under AU-C Section 800?',
 '["Fair value basis", "Replacement cost basis", "Tax basis", "Current cost basis"]'::jsonb,
 2,
 'AU-C Section 800 recognizes five SPFs: cash basis, modified cash basis, tax basis, regulatory basis, and contractual basis.',
 'easy'),

(2, 'Special Purpose Frameworks',
 'Under the cash basis of accounting, when is revenue recognized?',
 '["When the performance obligation is satisfied", "When cash is received", "When the invoice is sent", "When the contract is signed"]'::jsonb,
 1,
 'Under the cash basis, revenue is recognized when cash is received, regardless of when services are performed or goods delivered.',
 'easy'),

(2, 'Special Purpose Frameworks',
 'Financial statements prepared under a special purpose framework must:',
 '["Use the same titles as GAAP financial statements", "Use titles that distinguish them from GAAP financial statements", "Not include any notes or disclosures", "Include an adverse opinion from the auditor"]'::jsonb,
 1,
 'SPF financial statements must use titles that differ from GAAP titles to alert users. For example, ''Statement of Assets and Liabilities — Tax Basis'' instead of ''Balance Sheet.''',
 'easy'),

(2, 'Special Purpose Frameworks',
 'Which modification is acceptable under the modified cash basis of accounting?',
 '["Accruing accounts receivable", "Recording depreciation on fixed assets", "Accruing accounts payable", "Recording prepaid insurance"]'::jsonb,
 1,
 'Recording depreciation is an acceptable modification because it relates to a long-term item with substantial support. Accruing receivables, payables, and prepaids are operating accruals that would make the framework indistinguishable from GAAP.',
 'medium'),

(2, 'Special Purpose Frameworks',
 'Under the tax basis of accounting, goodwill from a business acquisition is:',
 '["Tested for impairment annually but not amortized", "Amortized over 15 years under IRC Section 197", "Expensed immediately upon acquisition", "Amortized over 40 years"]'::jsonb,
 1,
 'Under the IRC, goodwill is a Section 197 intangible amortized over 15 years. Under GAAP, goodwill is not amortized but is tested for impairment annually.',
 'medium'),

(2, 'Special Purpose Frameworks',
 'A CPA compiling financial statements prepared on the tax basis must include in the report:',
 '["An opinion on GAAP conformity", "A statement identifying the SPF and referencing the note describing the basis", "A disclaimer stating the statements may be misleading", "A statement that the tax return has been examined"]'::jsonb,
 1,
 'A compilation report on SPF financial statements must identify the applicable framework, state it is a basis other than GAAP, and reference the note describing the framework.',
 'medium'),

(2, 'Special Purpose Frameworks',
 'Which is a common difference between tax basis and GAAP financial statements?',
 '["Tax basis uses straight-line depreciation while GAAP uses MACRS", "Tax basis uses the direct write-off method for bad debts while GAAP uses the allowance method", "Tax basis requires a cash flow statement while GAAP does not", "Tax basis recognizes revenue under ASC 606"]'::jsonb,
 1,
 'Under the IRC, bad debts are generally deducted using the direct write-off method (Section 166). Under GAAP, the allowance method is required (ASC 326). Tax basis uses MACRS (not straight-line) for depreciation.',
 'medium'),

(2, 'Special Purpose Frameworks',
 'An auditor reports on regulatory basis financial statements intended only for filing with the regulatory agency. The report should include:',
 '["An unmodified opinion with no additional paragraphs", "An adverse opinion because the statements don''t conform with GAAP", "An emphasis-of-matter paragraph describing the SPF and an other-matter paragraph restricting distribution", "A qualified opinion for the GAAP departure"]'::jsonb,
 2,
 'For special-use regulatory basis statements, the auditor includes an emphasis-of-matter paragraph describing the SPF and an other-matter paragraph restricting distribution to intended users.',
 'hard'),

(2, 'Special Purpose Frameworks',
 'A company uses the modified cash basis and records depreciation, income tax accruals, and capitalizes fixed assets. It also accrues all trade receivables, payables, and prepaid expenses. This presentation is:',
 '["A valid modified cash basis framework", "A valid tax basis framework", "An inappropriate hybrid that cannot be described as an SPF", "A valid cash basis framework"]'::jsonb,
 2,
 'When accrual modifications become so extensive that statements are indistinguishable from GAAP, they no longer qualify as modified cash basis. Accruing receivables, payables, and prepaids goes beyond modifications with substantial support.',
 'hard'),

(2, 'Special Purpose Frameworks',
 'Under which special purpose framework are financial statements prepared in accordance with a loan agreement between a borrower and a lender?',
 '["Regulatory basis", "Tax basis", "Modified cash basis", "Contractual basis"]'::jsonb,
 3,
 'Contractual basis statements are prepared per the financial reporting provisions in a contract or agreement, such as a loan covenant. Regulatory basis follows rules from a governmental regulatory agency.',
 'hard');
