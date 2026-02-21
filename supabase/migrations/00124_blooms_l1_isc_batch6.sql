-- Migration: Bloom's L1 rebalancing — ISC batch 6 (44 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 44 L2 (Application) questions to L1 (Remember/Understand) depth for ISC section
-- Affected topics: IT Audit Frameworks, SOC Testing Controls, ERP and Accounting Information Systems

BEGIN;

-- ============================================================
-- IT AUDIT FRAMEWORKS (15 questions)
-- ============================================================

-- ID 3835: IT Audit Frameworks — COBIT 2019 design factors purpose
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'In COBIT 2019, what is the purpose of design factors?',
  choices = '["They help organizations tailor the governance system to their specific context and priorities", "They define the minimum number of controls every organization must implement", "They specify the exact technology products an organization must purchase", "They determine the number of IT auditors required"]'::jsonb,
  explanation = 'Correct (A): Design factors in COBIT 2019 influence the design of an organization''s governance system by helping tailor COBIT to the organization''s strategy, risk profile, compliance requirements, and IT environment. They include factors such as enterprise strategy, goals, risk profile, and technology adoption strategy. (B) is wrong because design factors customize the governance system rather than prescribing a fixed set of mandatory controls. (C) is wrong because COBIT is technology-neutral and does not specify product purchases.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3835;

-- ID 3836: IT Audit Frameworks — COBIT 2019 focus area examples
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Which of the following is an example of a COBIT 2019 focus area?',
  choices = '["Revenue recognition guidance under accounting standards", "Cybersecurity, cloud computing, or small enterprise IT governance", "Financial statement audit procedures", "Employee compensation benchmarking"]'::jsonb,
  explanation = 'Correct (B): COBIT 2019 focus areas provide additional guidance for specific governance topics such as cybersecurity, cloud computing, DevOps, digital transformation, and small-to-medium enterprise governance. They build on the core framework for targeted organizational needs. (A) is wrong because revenue recognition is an accounting standard topic, not an IT governance focus area. (D) is wrong because compensation benchmarking falls outside IT governance.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3836;

-- ID 3837: IT Audit Frameworks — ITIL 4 central concept
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What is the central concept of the ITIL 4 framework?',
  choices = '["The physical security of IT infrastructure", "The software development lifecycle", "The service value system, which describes how organizational components create value through IT services", "The financial management of IT departments"]'::jsonb,
  explanation = 'Correct (C): ITIL 4''s central concept is the service value system (SVS), which describes how all organizational components and activities work together to create value through IT-enabled services. The SVS includes the service value chain, practices, guiding principles, governance, and continual improvement. (A) is wrong because physical security is only one element of IT management, not the central concept. (B) is wrong because the software development lifecycle is a separate discipline from IT service management.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3837;

-- ID 3839: IT Audit Frameworks — First step in IT risk management
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Which step comes first in the IT risk management process?',
  choices = '["Risk treatment", "Risk acceptance", "Risk transfer", "Risk identification"]'::jsonb,
  explanation = 'Correct (D): The IT risk management process begins with risk identification, where the organization catalogs potential threats, vulnerabilities, and scenarios that could affect its IT systems and data. This is followed by risk analysis, risk evaluation, and risk treatment. (A) is wrong because risk treatment (implementing controls) occurs after risks have been identified, analyzed, and evaluated. (B) is wrong because risk acceptance is a treatment decision made after assessment, not the first step.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3839;

-- ID 3840: IT Audit Frameworks — Output of IT risk analysis
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'What is the typical output of IT risk analysis that combines likelihood and impact?',
  choices = '["A risk register that ranks risks by their combined likelihood and impact rating", "A financial budget for the IT department", "A list of all IT vendors and their contract terms", "A software architecture diagram"]'::jsonb,
  explanation = 'Correct (A): IT risk analysis produces a risk assessment that combines the likelihood of each identified risk event with its potential impact to determine a risk rating or score. These assessments are documented in a risk register that ranks and prioritizes risks for resource allocation. (B) is wrong because a financial budget is an operational planning document, not a risk analysis output. (C) is wrong because vendor contract lists relate to procurement, not risk analysis.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3840;

-- ID 3842: IT Audit Frameworks — COBIT 2019 capability levels count
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'How many capability levels does the COBIT 2019 process capability model define?',
  choices = '["Three levels: basic, intermediate, advanced", "Six levels: 0 (Incomplete) through 5 (Optimizing)", "Two levels: pass and fail", "Seven levels corresponding to the seven guiding principles"]'::jsonb,
  explanation = 'Correct (B): The COBIT 2019 process capability model defines six levels (0 through 5): Level 0 — Incomplete, Level 1 — Performed, Level 2 — Managed, Level 3 — Established, Level 4 — Predictable, and Level 5 — Optimizing. Each level builds upon the previous one. (A) is wrong because the model uses six levels, not three. (D) is wrong because the capability levels are independent of the guiding principles.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3842;

-- ID 3845: IT Audit Frameworks — Evaluating control objectives definition
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'What does evaluating control objectives involve in an IT audit?',
  choices = '["Preparing the organization''s financial statements", "Calculating the organization''s tax liability", "Assessing whether controls are properly designed and operating effectively against defined criteria", "Conducting employee performance reviews"]'::jsonb,
  explanation = 'Correct (C): Evaluating control objectives involves assessing whether controls are properly designed to achieve their intended objectives (design adequacy) and whether they function as intended during the evaluation period (operating effectiveness). Defined criteria or control objectives serve as benchmarks. (A) is wrong because financial statement preparation is a management responsibility, not an IT audit activity. (B) is wrong because tax computation is unrelated to IT control evaluation.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3845;

-- ID 3849: IT Audit Frameworks — Basis for risk criteria
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'In IT risk evaluation, what are risk criteria typically based on?',
  choices = '["The number of IT staff employed by the organization", "The market capitalization of competitors", "The number of software applications in the portfolio", "The organization''s risk appetite, tolerance levels, and regulatory requirements"]'::jsonb,
  explanation = 'Correct (D): Risk criteria are established based on the organization''s risk appetite (how much risk it will accept), risk tolerance levels (acceptable variation), legal and regulatory requirements, and stakeholder expectations. These criteria provide the benchmark against which analyzed risks are evaluated. (A) is wrong because headcount does not determine risk thresholds. (B) is wrong because competitor market capitalization is irrelevant to internal risk criteria.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3849;

-- ID 3850: IT Audit Frameworks — Risk avoidance definition
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Which risk response involves eliminating the activity that gives rise to the risk?',
  choices = '["Risk avoidance", "Risk transfer", "Risk acceptance", "Risk mitigation"]'::jsonb,
  explanation = 'Correct (A): Risk avoidance involves eliminating the activity or condition that gives rise to the risk entirely. It is appropriate when the risk exceeds the organization''s risk appetite and other responses are insufficient. (D) is wrong because risk mitigation reduces the likelihood or impact of a risk but does not eliminate the underlying activity. (B) is wrong because risk transfer shifts the financial consequence to a third party rather than eliminating the risk source.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3850;

-- ID 3852: IT Audit Frameworks — Capability maturity Level 2 meaning
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What does Level 2 (Managed) indicate in a capability maturity model?',
  choices = '["The process does not exist or fails to achieve its purpose", "The process is planned, monitored, and adjusted, with work products appropriately controlled", "The process is fully optimized with continuous improvement in place", "The process is defined at the organizational level with standardized procedures"]'::jsonb,
  explanation = 'Correct (B): At Level 2 (Managed), a process is performed in a managed fashion — it is planned, monitored, and adjusted, and work products are appropriately established, controlled, and maintained. The organization has moved beyond ad hoc execution. (A) is wrong because that describes Level 0 (Incomplete). (D) is wrong because organizational-level standardization occurs at Level 3 (Established).',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3852;

-- ID 3854: IT Audit Frameworks — COBIT 2019 four management domains
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Which of the following correctly lists the four management domains in COBIT 2019?',
  choices = '["Plan, Protect, Detect, Respond", "Identify, Protect, Detect, Respond, Recover", "APO (Align Plan and Organize), BAI (Build Acquire and Implement), DSS (Deliver Service and Support), MEA (Monitor Evaluate and Assess)", "Strategy, Design, Transition, Operation"]'::jsonb,
  explanation = 'Correct (C): COBIT 2019''s four management domains are APO (Align, Plan and Organize), BAI (Build, Acquire and Implement), DSS (Deliver, Service and Support), and MEA (Monitor, Evaluate and Assess). Together with the governance domain EDM (Evaluate, Direct and Monitor), they cover all governance and management objectives. (A) is wrong because those terms do not correspond to COBIT domains. (B) is wrong because Identify, Protect, Detect, Respond, and Recover are the five functions of the NIST Cybersecurity Framework, not COBIT.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3854;

-- ID 3856: IT Audit Frameworks — Emerging threats relate to which risk step
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Evaluating whether the organization considers emerging threats relates to which risk management step?',
  choices = '["Risk transfer", "Risk treatment", "Risk acceptance", "Risk identification"]'::jsonb,
  explanation = 'Correct (D): Evaluating whether the organization considers emerging threats relates to risk identification, which must be a continuous process that adapts to the evolving threat landscape. Comprehensive risk identification includes horizon scanning for new and emerging threats beyond historical categories. (A) is wrong because risk transfer deals with shifting consequences to third parties, not identifying threats. (B) is wrong because risk treatment involves implementing controls after risks are identified and assessed.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3856;

-- ID 3857: IT Audit Frameworks — COBIT 2019 governance system definition
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'In COBIT 2019, what does the term governance system refer to?',
  choices = '["The set of components (processes, structures, policies, information, culture, skills, and services) that work together to govern enterprise IT", "A single software application that automates all governance activities", "A document describing the organization''s IT policies", "The IT department''s organizational chart"]'::jsonb,
  explanation = 'Correct (A): A governance system in COBIT 2019 is the set of interrelated components — including processes, organizational structures, policies, information flows, culture, skills, and services — that work together to govern and manage enterprise IT. It is tailored through design factors. (B) is wrong because a governance system is not a single application but a holistic set of interacting components. (D) is wrong because an organizational chart is just one element within the broader governance system.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3857;

-- ID 3858: IT Audit Frameworks — Why ITIL 4 uses practices instead of processes
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Why did ITIL 4 replace the term processes with practices?',
  choices = '["Practices are simpler and require fewer resources", "Practices encompass people, technology, partners, and value streams, not just process activities", "Practices eliminate the need for documented procedures", "Practices are only applicable to large organizations"]'::jsonb,
  explanation = 'Correct (B): ITIL 4 shifted from processes to practices to take a more holistic view. Practices encompass not just process flows but also the people, tools, partners, information, and value streams needed to achieve outcomes, reflecting the complexity of modern service management. (A) is wrong because practices are broader in scope, not simpler. (C) is wrong because practices still require documented procedures as one of their components.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3858;

-- ID 3913: IT Audit Frameworks — Risk acceptance documentation requirements
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under a risk management framework, what documentation supports a risk acceptance decision?',
  choices = '["No documentation is required for risk acceptance decisions", "Only an email from the IT manager mentioning the risk", "A formal risk acceptance record signed by management documenting the risk, rationale, residual risk level, and review date", "A vendor proposal for the replacement system"]'::jsonb,
  explanation = 'Correct (C): Risk acceptance decisions should be formally documented with a record that identifies the risk, explains the rationale for acceptance, quantifies or describes the residual risk, identifies the authorizing person, and establishes a reassessment date. This supports accountability and transparency. (A) is wrong because formal documentation is required to demonstrate due diligence. (B) is wrong because an informal email lacks the rigor and completeness required by governance frameworks.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3913;

-- ============================================================
-- SOC TESTING CONTROLS (20 questions)
-- ============================================================

-- ID 1212: SOC Testing Controls — Small population sample size rule
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'When the population of a control is very small, what is the appropriate sampling approach?',
  choices = '["Select one item at random", "Select two items from different sub-periods", "Test all occurrences in the population", "Select 15 individual items across all periods"]'::jsonb,
  explanation = 'Correct (C): When a control population is very small (such as four quarterly reviews in a year), the practitioner should test all occurrences. Testing fewer than the full population for an infrequently operating control would not provide sufficient evidence that it operated throughout the period. (A) is wrong because selecting only one item from a small population provides inadequate coverage. (B) is wrong because two items out of four still leaves half the population untested.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1212;

-- ID 1214: SOC Testing Controls — Evaluating control deviations
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'When deviations are found during control testing, what should the auditor evaluate first?',
  choices = '["Whether the pass rate alone determines effectiveness", "Whether the opinion must automatically be qualified", "Whether the sample should always be expanded to double size", "Whether the deviation is a design issue or an operating effectiveness issue, and whether compensating controls exist"]'::jsonb,
  explanation = 'Correct (D): When deviations are found, the auditor must evaluate the nature of the deviation to determine if it reflects a control design problem or an operating effectiveness failure, and whether compensating controls mitigate the risk. A pass rate alone is not determinative. (A) is wrong because pass rates must be considered alongside the nature and cause of deviations. (B) is wrong because not all deviations automatically require opinion qualification.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1214;

-- ID 3860: SOC Testing Controls — Procedures for testing control design
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Which procedures are commonly used to test the design of a control in a SOC engagement?',
  choices = '["Inquiry of management, inspection of documentation, and observation of the control", "Reperformance of the control by the auditor", "Statistical sampling of transactions", "Reconciliation of account balances"]'::jsonb,
  explanation = 'Correct (A): Testing control design typically involves inquiry of management, inspection of relevant documentation (policies, procedures, system configurations), and observation of the control being performed. These procedures help the auditor understand how the control is designed and whether it addresses the identified risk. (B) is wrong because reperformance is used for testing operating effectiveness, not design. (C) is wrong because statistical sampling tests populations of transactions, not control design.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3860;

-- ID 3861: SOC Testing Controls — What operating effectiveness tests determine
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What do tests of operating effectiveness determine in a SOC Type II engagement?',
  choices = '["Whether the control was properly designed at a point in time", "Whether the control operated as designed throughout the examination period", "Whether the service organization is financially viable", "Whether user entities are satisfied with the service"]'::jsonb,
  explanation = 'Correct (B): Tests of operating effectiveness determine whether controls operated as designed and consistently throughout the examination period. Unlike design tests that assess a point in time, operating effectiveness tests evaluate performance over a period and require evidence of consistent application. (A) is wrong because assessing design at a point in time is a design test, not an operating effectiveness test. (C) is wrong because financial viability is not within the scope of SOC control testing.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3861;

-- ID 3862: SOC Testing Controls — Best evidence for access review effectiveness
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Which procedure best verifies that an access review control operated effectively during the examination period?',
  choices = '["Asking management whether they performed the reviews", "Observing management perform a single review at period end", "Inspecting documented evidence of completed reviews, including sign-offs, dates, and remediation actions", "Reviewing only the access review policy document"]'::jsonb,
  explanation = 'Correct (C): Inspecting documentary evidence of completed access reviews — including sign-off records, review dates, and remediation actions — demonstrates that the control operated throughout the period. (A) is wrong because inquiry alone is insufficient for operating effectiveness testing. (B) is wrong because observing a single occurrence does not cover the full examination period.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3862;

-- ID 3863: SOC Testing Controls — When reperformance is most useful
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'In which situation is reperformance most useful as a testing procedure?',
  choices = '["When testing a management review requiring professional judgment", "When assessing the general tone at the top of an organization", "When testing physical security controls at a data center", "When the control involves an automated calculation or system-enforced validation that can be independently executed"]'::jsonb,
  explanation = 'Correct (D): Reperformance is most effective for controls involving specific procedures that can be independently replicated, such as automated calculations, system-enforced validations, or reconciliation processes. The auditor re-executes the procedure to verify expected results. (A) is wrong because management reviews involving judgment are better tested through inquiry and inspection. (C) is wrong because physical security controls are typically tested through observation and inspection of logs.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3863;

-- ID 3865: SOC Testing Controls — Factors increasing sample size
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Which factor would lead a SOC auditor to select a larger sample size for control testing?',
  choices = '["A higher expected deviation rate or a lower tolerable deviation rate for a critical control", "The control is automated and operates consistently without variation", "The control operates only once per year", "The population of items is very small"]'::jsonb,
  explanation = 'Correct (A): Larger sample sizes are needed when the auditor expects a higher deviation rate, when the tolerable deviation rate is low because the control is critical, or when greater assurance is needed. (B) is wrong because automated controls with consistent operation typically require smaller samples. (D) is wrong because very small populations are typically tested in their entirety rather than sampled.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3865;

-- ID 3866: SOC Testing Controls — Primary purpose of a walkthrough
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'What is the primary purpose of a walkthrough in a SOC engagement?',
  choices = '["To test operating effectiveness over the entire examination period", "To gain an understanding of the control by tracing a transaction through the entire process from initiation to completion", "To calculate the error rate in the population", "To evaluate the service organization''s financial performance"]'::jsonb,
  explanation = 'Correct (B): A walkthrough involves tracing a single transaction or event through the entire process from initiation to completion. The purpose is to confirm the auditor''s understanding, verify that described controls are in place, and identify where controls operate. Walkthroughs support design testing but do not alone prove operating effectiveness. (A) is wrong because walkthroughs trace a single transaction and do not cover the full examination period. (C) is wrong because error rate calculation requires statistical sampling, not a walkthrough.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3866;

-- ID 3870: SOC Testing Controls — What observation provides evidence about
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What does observation as a testing procedure provide evidence about?',
  choices = '["Whether the control operated effectively throughout the entire examination period", "The financial impact of control failures", "Whether the control was in operation at the specific point in time when the auditor observed it", "The adequacy of the organization''s insurance coverage"]'::jsonb,
  explanation = 'Correct (C): Observation provides evidence that a control is in operation at the specific point in time when the auditor witnesses it. However, observation alone does not demonstrate that the control operated throughout the full examination period. It is typically combined with inquiry and inspection. (A) is wrong because observation at one point does not cover the entire period. (B) is wrong because observation addresses control operation, not financial impact quantification.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3870;

-- ID 3871: SOC Testing Controls — Most effective evidence combination for daily review control
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Which combination of procedures provides the most effective evidence of operating effectiveness for a daily review control?',
  choices = '["Inquiry of management alone", "Review of the policy requiring daily reviews", "Observation of management performing one review", "Inquiry combined with inspection of review evidence (initials, dates, notes) for a sample of days across the period"]'::jsonb,
  explanation = 'Correct (D): The most effective approach combines inquiry (to understand how the review is performed) with inspection of documentary evidence demonstrating it was performed throughout the period, including initials, dates, and follow-up notes for a sample of days. (A) is wrong because inquiry alone is insufficient for operating effectiveness testing. (C) is wrong because observing a single occurrence does not cover the full examination period.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3871;

-- ID 3874: SOC Testing Controls — What complementary controls testing evaluates
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'When testing complementary controls in a SOC engagement, what does the service auditor evaluate?',
  choices = '["Whether the service organization''s controls work in conjunction with CUECs and CSOCs to achieve control objectives", "Whether user entities have implemented all CUECs", "Whether the subservice organization''s financial statements are accurate", "Whether the service organization''s employees are properly compensated"]'::jsonb,
  explanation = 'Correct (A): The service auditor evaluates how the service organization''s controls interact with complementary user entity controls (CUECs) and complementary subservice organization controls (CSOCs) to achieve control objectives or criteria. The auditor does not test CUECs at user entities directly. (B) is wrong because testing whether user entities implemented CUECs is the responsibility of user entity auditors, not the service auditor. (C) is wrong because subservice organization financial statements are outside the scope of complementary control testing.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3874;

-- ID 3876: SOC Testing Controls — Scanning tool test procedure classification
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Using a scanning tool to verify a system''s encryption configuration is an example of which test procedure?',
  choices = '["Inquiry", "Inspection of system configuration or reperformance using technical tools", "Observation", "Analytical procedures"]'::jsonb,
  explanation = 'Correct (B): Using a scanning tool to verify technical configurations such as encryption settings is an example of inspection of system configuration combined with reperformance using technical tools. The auditor independently verifies the configuration rather than relying on management representations alone. (A) is wrong because inquiry involves asking questions, not independently verifying configurations. (C) is wrong because observation involves watching a process, not running technical scanning tools.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3876;

-- ID 3877: SOC Testing Controls — Representative sampling definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Selecting items from a population and testing them for specific attributes such as proper approval is best described as what?',
  choices = '["Haphazard selection", "Systematic selection with a random start", "Representative sampling to evaluate the attribute of interest across the population", "Census testing"]'::jsonb,
  explanation = 'Correct (C): Selecting a subset of items from a population and testing them for specific attributes (such as documentation, approval, and role-appropriate access) is representative sampling. The deviation rate in the sample is used to draw conclusions about the likely deviation rate in the population. (A) is wrong because haphazard selection is a method of choosing items, not a description of the overall approach. (D) is wrong because census testing means testing every item, not selecting a subset.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3877;

-- ID 3878: SOC Testing Controls — Responsibility when control redesigned mid-period
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'If a control is redesigned midway through the examination period, what is the auditor''s responsibility?',
  choices = '["Ignore the predecessor control since it was replaced", "Only test the successor control and assume the predecessor was effective", "Withdraw from the engagement due to the control change", "Test and report on both the predecessor and successor controls, including when the deficiency was remediated"]'::jsonb,
  explanation = 'Correct (D): The auditor must test and report on both controls. The predecessor control should be evaluated for the period it was in effect, including any deficiency that led to the redesign. The successor control is tested for the period after implementation. The report describes both controls and the transition. (A) is wrong because the predecessor control was in effect for part of the period and must be evaluated. (B) is wrong because assuming effectiveness without testing violates auditing standards.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3878;

-- ID 3879: SOC Testing Controls — Minimum sample for daily controls
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'What is the typical minimum sample size for testing a daily control over a 12-month Type II period?',
  choices = '["25 or more items, depending on the auditor''s risk assessment", "1 item", "5 items", "All 365 occurrences"]'::jsonb,
  explanation = 'Correct (A): For daily controls over a 12-month period, professional guidance generally recommends a sample of 25 or more items, though the exact number depends on the auditor''s risk assessment, expected deviation rate, and desired assurance level. Testing 25 items with zero deviations provides high confidence of a low deviation rate. (B) is wrong because a single item provides virtually no assurance for a daily control. (C) is wrong because 5 items is insufficient to draw reliable conclusions about 365 occurrences.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3879;

-- ID 3881: SOC Testing Controls — Comparing two independent sources classification
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Comparing a change log against a change management system to verify documented approvals is an example of which test?',
  choices = '["Inquiry", "Inspection of evidence and corroboration between two independent sources", "Observation", "Walkthrough"]'::jsonb,
  explanation = 'Correct (B): Comparing information from two independent sources (such as a firewall change log and a change management system) is inspection that corroborates evidence across sources. This dual-source verification is more reliable than relying on a single source because it confirms consistency between systems. (A) is wrong because inquiry involves asking questions, not comparing records. (D) is wrong because a walkthrough traces a single transaction through a process, not a systematic comparison of two systems.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3881;

-- ID 3882: SOC Testing Controls — Annual control testing minimum
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'What is the minimum number of occurrences to test for an annual control in a SOC engagement?',
  choices = '["A sample of 25 occurrences", "No testing is required for annual controls", "Every occurrence within the examination period, which for an annual control would be one", "A minimum of 10 occurrences regardless of frequency"]'::jsonb,
  explanation = 'Correct (C): For controls that operate infrequently (such as annually), the auditor must test every occurrence within the examination period. For an annual control, there is only one occurrence, so that single occurrence must be tested. The auditor cannot extrapolate from a sample when the population is extremely small. (A) is wrong because 25 items is a guideline for frequently occurring controls, not annual ones. (B) is wrong because all controls within scope must be tested regardless of frequency.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3882;

-- ID 3915: SOC Testing Controls — Automated control testing approach
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'What is the minimum testing required for an automated application control that has not changed during the period?',
  choices = '["Test every transaction processed by the control during the period", "No testing is required for automated controls", "Test a sample of 60 items throughout the period", "Test at one point in time and confirm through change management records that the code was not modified during the period"]'::jsonb,
  explanation = 'Correct (D): Automated controls embedded in application code operate consistently as long as the code is unchanged. The auditor can test the control at a single point in time and verify through IT general controls (change management records, version control logs) that no changes were made during the period. (A) is wrong because testing every transaction is unnecessarily extensive for a consistent automated control. (B) is wrong because all controls must be tested, including automated ones.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3915;

-- ID 3916: SOC Testing Controls — Strongest evidence for physical access control
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Which procedure provides the strongest evidence that a badge-entry physical access control is operating effectively?',
  choices = '["Inspection of badge access logs showing all entries during the period, including any unauthorized access attempts", "Inquiry of management about whether the badge system is functioning", "Observation of an employee using the badge system to enter once", "Review of the badge system vendor''s marketing materials"]'::jsonb,
  explanation = 'Correct (A): Inspection of badge access logs provides the strongest evidence because it covers the entire examination period and shows all entries, including anomalies or unauthorized access attempts. Documentary evidence covering the full period provides comprehensive assurance. (B) is wrong because inquiry alone does not provide corroborative evidence. (C) is wrong because observation at a single point in time does not cover the full period.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3916;

-- ID 3917: SOC Testing Controls — Sample size for high-risk weekly control
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'For a high-risk weekly control with 52 occurrences and zero expected deviations, what is the likely sample approach?',
  choices = '["Test only 5 occurrences because the control is routine", "Test approximately 20 to 25 occurrences given the higher risk and need for greater assurance", "Test all 52 occurrences because it is a high-risk control", "Test only the most recent occurrence"]'::jsonb,
  explanation = 'Correct (B): For a weekly control with 52 occurrences and a high-risk assessment, the auditor selects a larger sample to achieve greater assurance. With zero expected deviations and a low tolerable deviation rate, approximately 20 to 25 items provides sufficient evidence. (A) is wrong because 5 items is insufficient for a high-risk control. (D) is wrong because testing only the most recent occurrence provides no evidence about the rest of the period.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3917;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (9 questions)
-- ============================================================

-- ID 767: ERP and Accounting Information Systems — Parallel simulation definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'What is the purpose of parallel simulation as an audit procedure for ERP systems?',
  choices = '["To interview the IT manager about system capabilities", "To review the system user manual for configuration errors", "To independently recalculate results using separate software and compare them to the ERP output", "To inspect the system configuration screen for display errors"]'::jsonb,
  explanation = 'Correct (C): Parallel simulation uses independent software (such as CAATs or spreadsheets) to reprocess actual transaction data and compare the results with the ERP''s output. This directly tests whether automated calculations produce accurate results. (A) is wrong because interviews provide evidence about design, not operating accuracy. (B) is wrong because reviewing a manual does not verify that calculations are processed correctly.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 767;

-- ID 768: ERP and Accounting Information Systems — Three-way matching documents
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'In an ERP accounts payable module, which three documents are compared in three-way matching?',
  choices = '["Purchase order, receiving report, and vendor invoice", "Purchase requisition, purchase order, and check", "Vendor invoice, bank statement, and general ledger", "Sales order, shipping document, and customer payment"]'::jsonb,
  explanation = 'Correct (A): Three-way matching compares the purchase order (what was ordered), the receiving report (what was received), and the vendor invoice (what the vendor is billing). Discrepancies among these three documents trigger an exception for investigation before payment is authorized. (B) is wrong because a purchase requisition and check are not part of the standard three-way match. (C) is wrong because the bank statement and general ledger are used in reconciliation, not purchase matching.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 768;

-- ID 769: ERP and Accounting Information Systems — Segregation of duties definition
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'When a single user can create vendors, approve invoices, and process payments, which control principle is violated?',
  choices = '["Least privilege principle", "Segregation of duties", "Defense in depth", "Change management policy"]'::jsonb,
  explanation = 'Correct (B): Segregation of duties (SoD) requires that no single individual should control all phases of a transaction — authorization, custody, and recording. Combining vendor creation, invoice approval, and payment processing creates the risk of fictitious vendor fraud. (A) is wrong because least privilege restricts access to only what is needed but does not specifically address separating incompatible functions. (D) is wrong because change management governs system modifications, not transaction processing duties.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 769;

-- ID 770: ERP and Accounting Information Systems — MRP module purpose
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Which ERP module most directly supports work-in-process inventory valuation for financial reporting?',
  choices = '["Customer Relationship Management (CRM)", "Human Capital Management (HCM)", "Manufacturing Resource Planning (MRP)", "Procurement and Sourcing"]'::jsonb,
  explanation = 'Correct (C): The MRP module tracks bills of materials, production orders, labor, and overhead allocation — all essential for calculating work-in-process (WIP) inventory values at each production stage. (A) is wrong because CRM focuses on customer interactions and sales pipelines, not production costing. (B) is wrong because HCM manages workforce administration, not manufacturing cost tracking.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 770;

-- ID 771: ERP and Accounting Information Systems — Chart of accounts migration approach
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'When migrating from multiple legacy systems to one ERP, what is the best approach for inconsistent charts of accounts?',
  choices = '["Import all legacy data as-is and reconcile after go-live", "Keep the legacy systems running indefinitely alongside the ERP", "Discard historical data and start fresh", "Create a unified chart of accounts mapping and transform legacy data during migration"]'::jsonb,
  explanation = 'Correct (D): Creating a unified chart of accounts mapping before migration ensures data consistency and comparability in the new system. The mapping transforms legacy account structures into the target structure during the migration process. (A) is wrong because importing inconsistent data creates reporting and reconciliation problems in the new system. (C) is wrong because discarding historical data violates retention requirements and eliminates comparative reporting capability.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 771;

-- ID 772: ERP and Accounting Information Systems — SOX 404 supporting ERP configuration
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Which ERP configuration best supports SOX Section 404 internal control requirements?',
  choices = '["Role-based access controls with documented segregation of duties matrices", "Disabling audit trails to improve system performance", "Granting super-user access to all accounting staff for efficiency", "Allowing direct database modifications to correct posting errors"]'::jsonb,
  explanation = 'Correct (A): SOX Section 404 requires management to assess and report on internal controls over financial reporting. Role-based access controls with documented SoD matrices demonstrate that access is appropriately restricted and incompatible duties are separated. (B) is wrong because disabling audit trails eliminates a key control that supports accountability and traceability. (D) is wrong because direct database modifications bypass application controls and create unauditable changes.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 772;

-- ID 773: ERP and Accounting Information Systems — Testing automated depreciation configuration
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What is the most efficient approach to test whether ERP depreciation rates are correctly configured?',
  choices = '["Manually recalculate depreciation for every fixed asset in the register", "Review configuration settings against accounting policy, then test a sample of assets", "Accept the automated output without testing because it is system-generated", "Test only newly acquired assets from the current year"]'::jsonb,
  explanation = 'Correct (B): The most efficient approach combines reviewing configuration settings (confirming methods and rates match the accounting policy) with testing a sample of assets to verify calculations. (A) is wrong because recalculating every asset is impractical and unnecessary when the configuration can be verified. (C) is wrong because accepting system output without testing provides no assurance over the accuracy of the configuration.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 773;

-- ID 3467: ERP and Accounting Information Systems — ERP defining characteristic
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What characteristic distinguishes an ERP system from separate standalone applications?',
  choices = '["Each module uses its own independent database", "ERP systems do not require user authentication", "All modules share a single integrated database, ensuring data consistency across functions", "ERP modules cannot be customized"]'::jsonb,
  explanation = 'Correct (C): The defining characteristic of an ERP system is its integrated database shared across all modules. When a transaction is recorded, all related modules are updated simultaneously from the same data source, eliminating redundant data entry and ensuring consistency. (A) is wrong because independent databases per module describes standalone applications, not ERP. (B) is wrong because ERP systems require robust user authentication to protect the integrated data.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3467;

-- ID 3468: ERP and Accounting Information Systems — Document that initiates revenue recognition
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'In a revenue transaction cycle, which document initiates revenue recognition and accounts receivable recording?',
  choices = '["Purchase requisition", "Receiving report", "Bank deposit slip", "Sales invoice"]'::jsonb,
  explanation = 'Correct (D): The sales invoice documents the sale of goods or services to a customer and triggers revenue recognition and the creation of an accounts receivable entry. (A) is wrong because a purchase requisition initiates the expenditure cycle, not the revenue cycle. (B) is wrong because a receiving report documents goods received in the purchasing process, not revenue generation.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3468;

COMMIT;