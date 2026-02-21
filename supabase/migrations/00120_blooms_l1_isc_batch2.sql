-- Migration: Bloom's L1 rebalancing — ISC batch 2 (48 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 48 L2 (Application) questions to L1 (Remember/Understand) depth for ISC section
-- Affected topics: Incident Response and Recovery, SOC Reporting, IT Audit Frameworks, SOC Testing Controls, ERP and Accounting Information Systems, Change Management, SOC Report Content and Structure, IT Infrastructure and Architecture, IT General Controls, Threats/Attacks/Vulnerabilities, Privacy Requirements, SOC Engagements, Data Protection Technologies, SOC Reporting and Trust Services Criteria, System Availability and Change Management

BEGIN;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (1 question)
-- ============================================================

-- ID 868: Incident Response and Recovery — Purpose of forensic imaging
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'In digital forensics, what is the primary purpose of creating a bit-for-bit forensic image of affected drives?',
  choices = '["To preserve evidence in its original state so analysis can be conducted on the copy", "To restore the system to normal operations as quickly as possible", "To allow all IT staff to examine the compromised system freely", "To permanently delete malicious files from the affected drives"]'::jsonb,
  explanation = 'Correct (A): Under NIST SP 800-86, forensic best practices require creating a bit-for-bit image (exact copy) of affected drives to preserve evidence in its original state. Analysis is then conducted on the copy, maintaining the integrity of the original evidence and supporting a documented chain of custody. (B) is wrong because forensic imaging preserves evidence for investigation, not for restoring operations. (C) is wrong because unrestricted access to evidence can compromise its integrity and break the chain of custody.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 868;

-- ============================================================
-- SOC REPORTING (6 questions)
-- ============================================================

-- ID 1216: SOC Reporting — Qualified opinion definition
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'In a SOC report, which opinion type uses ''except for'' language to identify specific control exceptions?',
  choices = '["Unqualified opinion", "Qualified opinion", "Adverse opinion", "Disclaimer of opinion"]'::jsonb,
  explanation = 'Correct (B): A qualified opinion uses ''except for'' language to identify specific controls with exceptions while acknowledging that the overall control environment is effective. Under AICPA attestation standards (AT-C 205), a qualified opinion indicates limited exceptions that do not pervade the entire system. (A) is wrong because an unqualified opinion means no exceptions were found. (C) is wrong because an adverse opinion indicates pervasive exceptions rendering the system ineffective.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1216;

-- ID 1219: SOC Reporting — Adverse opinion conditions
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under AICPA attestation standards, when is an adverse opinion issued on a SOC report?',
  choices = '["When the practitioner identifies no exceptions during testing", "When the practitioner cannot obtain sufficient evidence to form an opinion", "When exceptions are so pervasive that the overall control environment cannot be relied upon", "When the report covers a period of less than six months"]'::jsonb,
  explanation = 'Correct (C): An adverse opinion is issued when exceptions are so widespread and significant that the control environment as a whole cannot be relied upon. Under AT-C 205, this means the subject matter departs materially and pervasively from the applicable criteria. (B) is wrong because inability to obtain sufficient evidence leads to a disclaimer, not an adverse opinion. (A) is wrong because no exceptions would result in an unqualified opinion.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1219;

-- ID 1220: SOC Reporting — Bridge letter definition
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under SOC reporting guidance, what is a bridge letter (gap letter)?',
  choices = '["An independent examination that provides the same assurance as a SOC report", "A document that eliminates the need for additional audit procedures during a gap period", "A formal request from the user auditor to extend the SOC report coverage period", "A management representation covering the period between the SOC report end date and the user entity''s year-end"]'::jsonb,
  explanation = 'Correct (D): A bridge letter is a written representation from the service organization''s management covering the gap between the end of the SOC report period and the user entity''s year-end. It addresses whether significant changes occurred to the system or controls during the gap period. (A) is wrong because a bridge letter is a management representation, not an independent examination, and provides no assurance comparable to a SOC report. (B) is wrong because the user auditor must still evaluate whether additional procedures are needed based on the gap period.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1220;

-- ID 1221: SOC Reporting — User auditor responsibility for unimplemented CUECs
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'What should a user auditor do when a CUEC identified in the SOC report is not implemented at the user entity?',
  choices = '["Evaluate the impact on the related control objective and determine whether additional procedures are needed", "Disregard the SOC report entirely because the complementary control is missing", "Request the service organization to implement the control on the user entity''s behalf", "Automatically issue a qualified opinion on the user entity''s financial statements"]'::jsonb,
  explanation = 'Correct (A): The user auditor must evaluate the specific impact of the missing CUEC on the related control objective and determine whether the gap creates a risk requiring additional audit procedures. The absence of one CUEC does not invalidate the entire SOC report. (B) is wrong because the SOC report remains useful for the controls that are unaffected by the missing CUEC. (C) is wrong because the service organization is not responsible for implementing user entity controls.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1221;

-- ID 1223: SOC Reporting — Management assertion scope in SOC 2 Type II
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'In a SOC 2 Type II report, management asserts all of the following EXCEPT:',
  choices = '["The system description fairly presents the system as designed, implemented, and operated", "The controls were suitably designed to achieve the applicable trust services criteria", "The controls operated effectively throughout the examination period", "The controls will continue to operate effectively for the next 12 months"]'::jsonb,
  explanation = 'Correct (D): Management''s assertion in a SOC 2 Type II covers fair presentation of the system description, suitability of control design, and operating effectiveness throughout the examination period. Management does NOT assert that controls will continue to be effective in the future because the SOC report covers a historical period, not a prospective guarantee. (A) is wrong because fair presentation of the system description is part of management''s assertion. (B) is wrong because suitability of design is part of management''s assertion.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1223;

-- ID 1225: SOC Reporting — Practitioner responsibility for management response to exceptions
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'What is the practitioner''s responsibility regarding management''s response to exceptions in a SOC report?',
  choices = '["To verify that the remediation described has been implemented and is effective", "To include the response for the reader''s benefit without evaluating or vouching for the remediation", "To require management to resolve all exceptions before the report can be issued", "To independently test compensating controls described in management''s response"]'::jsonb,
  explanation = 'Correct (B): The practitioner includes management''s response to provide context for the reader but does not evaluate whether the described remediation has been or will be effective. The practitioner''s opinion is based on evidence obtained during the examination period, not on promises of future remediation. (A) is wrong because verifying remediation effectiveness is beyond the scope of the practitioner''s responsibility for the response. (C) is wrong because exceptions do not need to be resolved before the report is issued.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1225;

-- ============================================================
-- IT AUDIT FRAMEWORKS (5 questions)
-- ============================================================

-- ID 1057: IT Audit Frameworks — ITIL 4 identification
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Which IT framework centers on the service value system, guiding principles, and continual improvement practices?',
  choices = '["COBIT 2019, which structures governance around five management domains", "NIST Risk Management Framework, which follows a seven-step cybersecurity lifecycle", "ITIL 4, which organizes IT service management around the service value chain", "ISO 27001, which specifies requirements for an information security management system"]'::jsonb,
  explanation = 'Correct (C): ITIL 4 is an IT service management framework built around the Service Value System (SVS), which includes the service value chain, guiding principles, governance, practices, and continual improvement. (A) is wrong because COBIT 2019, issued by ISACA, focuses on IT governance and management objectives across five domains (EDM, APO, BAI, DSS, MEA) rather than a service value chain. (B) is wrong because the NIST RMF is a cybersecurity risk framework, not a service management model.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1057;

-- ID 1059: IT Audit Frameworks — Annualized Loss Expectancy formula
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'In quantitative risk analysis, how is Annualized Loss Expectancy (ALE) calculated?',
  choices = '["ALE equals the total cost of all security controls implemented", "ALE equals the single loss expectancy multiplied by the number of years in the analysis period", "ALE equals the annualized rate of occurrence divided by the single loss expectancy", "ALE equals the single loss expectancy multiplied by the annualized rate of occurrence"]'::jsonb,
  explanation = 'Correct (D): Annualized Loss Expectancy (ALE) is calculated as Single Loss Expectancy (SLE) multiplied by the Annualized Rate of Occurrence (ARO). This metric helps organizations compare the cost of implementing controls against the expected annual loss from a threat. (C) is wrong because the formula requires multiplication, not division. (B) is wrong because the number of years in the analysis period is not part of the ALE formula.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1059;

-- ID 1060: IT Audit Frameworks — Risk transfer definition
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'In risk management, what does the risk transfer strategy involve?',
  choices = '["Shifting the financial impact of a risk to a third party, such as through insurance", "Reducing the likelihood or impact of a risk through implementing controls", "Eliminating the activity that creates the risk", "Accepting the risk without taking any action"]'::jsonb,
  explanation = 'Correct (A): Risk transfer shifts the financial impact of a risk to a third party, most commonly through purchasing insurance or outsourcing to a vendor with contractual liability. (B) is wrong because reducing likelihood or impact through controls describes risk mitigation. (C) is wrong because eliminating the activity describes risk avoidance.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1060;

-- ID 1062: IT Audit Frameworks — COSO framework primary use
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What is the primary audit application of the COSO Internal Control framework?',
  choices = '["Evaluating IT service management maturity", "Evaluating internal control over financial reporting", "Assessing cybersecurity risk management programs", "Reviewing cloud computing service-level agreements"]'::jsonb,
  explanation = 'Correct (B): COSO is the de facto standard framework for evaluating internal control over financial reporting (ICFR) in the United States. It comprises five components: control environment, risk assessment, control activities, information and communication, and monitoring. (A) is wrong because IT service management maturity is assessed using frameworks like ITIL or COBIT. (C) is wrong because cybersecurity risk management is typically assessed using NIST CSF or ISO 27001.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1062;

-- ID 1063: IT Audit Frameworks — COBIT 2019 Level 3 definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'In the COBIT 2019 capability maturity model, what does Level 3 (Established) mean?',
  choices = '["The process is ad hoc with no documentation", "The process is performed but may not be consistently documented", "The process is defined, documented, and consistently followed organization-wide", "The process is continuously optimized using statistical measurement techniques"]'::jsonb,
  explanation = 'Correct (C): COBIT 2019 uses a 0-5 capability scale. Level 3 (Established) means the process is defined, documented, and standardized across the organization. Level 0 = Incomplete, Level 1 = Performed, Level 2 = Managed, Level 4 = Predictable, Level 5 = Optimizing. (A) is wrong because ad hoc processes describe Level 0 or Level 1. (D) is wrong because continuous optimization with statistical techniques describes Level 5.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1063;

-- ============================================================
-- SOC TESTING CONTROLS (6 questions)
-- ============================================================

-- ID 1206: SOC Testing Controls — Most persuasive testing procedure
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Which testing procedure provides the most persuasive evidence of a control''s operating effectiveness?',
  choices = '["Inquiry of management about the control''s operation", "Observation of the control being performed at a point in time", "Inspection of documentation supporting the control", "Reperformance of the control by the auditor"]'::jsonb,
  explanation = 'Correct (D): Reperformance is the most persuasive testing procedure because the auditor independently executes the control to verify it produces the expected results. Under AICPA attestation standards, the hierarchy of evidence persuasiveness is: inquiry (least), observation, inspection, reperformance (most). (A) is wrong because inquiry provides only testimonial evidence, which is the least persuasive. (B) is wrong because observation provides point-in-time evidence that the control was performed but does not verify the result.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1206;

-- ID 1207: SOC Testing Controls — SOC 2 Type I scope
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under AICPA attestation standards, what does a SOC 2 Type I report evaluate?',
  choices = '["Design effectiveness of controls at a point in time only", "Design and operating effectiveness of controls over a period of time", "Operating effectiveness of controls at a point in time only", "Financial statement impact of control deficiencies"]'::jsonb,
  explanation = 'Correct (A): A SOC 2 Type I report evaluates the suitability of design of controls at a specific point in time. Operating effectiveness testing, which evaluates whether controls actually operated as designed consistently, is only included in a Type II report covering a period of time. (B) is wrong because evaluating both design and operating effectiveness over a period describes a Type II report. (C) is wrong because operating effectiveness alone is not what a Type I evaluates.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1207;

-- ID 1208: SOC Testing Controls — Sample size for daily controls
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'When testing a daily control over a 12-month SOC 2 Type II period, what is the appropriate sample size?',
  choices = '["5 items selected from the last month of the period", "25 to 40 items spread across the full 12-month period", "All business days must be tested for completeness", "1 item, since consistent performance can be inferred from a single observation"]'::jsonb,
  explanation = 'Correct (B): For daily manual controls, a sample of 25 to 40 items spread across the full examination period provides reasonable assurance of operating effectiveness. Samples must cover the entire period, not just recent months. (A) is wrong because testing only the last month does not provide coverage of the full period. (C) is wrong because testing every business day is impractical and not required by attestation standards.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1208;

-- ID 1210: SOC Testing Controls — Testing automated controls with effective ITGCs
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'When IT general controls are effective, what is the most efficient approach for testing an automated application control?',
  choices = '["Select a sample of 25 transactions and verify each one individually", "Inquire of the IT administrator whether the control has been in effect all year", "Inspect the system configuration and perform one reperformance test", "Observe an administrator performing the control during normal business operations"]'::jsonb,
  explanation = 'Correct (C): For automated controls where IT general controls (ITGCs) are effective, the control operates consistently once properly configured. Testing involves inspecting the configuration settings and performing limited reperformance to confirm the control functions as designed. (A) is wrong because extensive sampling is unnecessary for automated controls with effective ITGCs. (B) is wrong because inquiry alone is the least persuasive form of evidence and insufficient for operating effectiveness.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1210;

-- ID 1211: SOC Testing Controls — Factor increasing testing extent
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Which factor would cause a SOC practitioner to increase the extent of testing for a particular control?',
  choices = '["The control is fully automated and IT general controls are effective", "The control is supported by a compensating control that also operates effectively", "The control is simple and performed by a single individual with no judgment required", "The control had exceptions noted in the prior year''s SOC report"]'::jsonb,
  explanation = 'Correct (D): Prior period exceptions are a key risk factor that increases testing rigor. The practitioner must obtain more evidence that the control has been remediated and is now operating effectively. (A) is wrong because automated controls with effective ITGCs typically require less testing, not more. (C) is wrong because simple controls with no judgment required generally do not warrant expanded testing.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1211;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (4 questions)
-- ============================================================

-- ID 761: ERP and Accounting Information Systems — Risk of excessive customization
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'What is the primary risk of excessive customization during an ERP implementation?',
  choices = '["The system will run faster due to optimized code paths", "Future vendor upgrades and patches may break customized functionality", "The vendor will provide enhanced support for all custom modules", "The implementation timeline will be shortened significantly"]'::jsonb,
  explanation = 'Correct (B): Excessive ERP customization creates technical debt that makes future upgrades difficult and costly. Vendor patches and updates may conflict with custom code, requiring extensive regression testing with each upgrade. (A) is wrong because customization typically adds complexity rather than improving performance. (C) is wrong because vendors typically do not support custom modifications and may void support agreements for heavily customized modules.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 761;

-- ID 762: ERP and Accounting Information Systems — Input controls definition
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'In an accounting information system, which type of control ensures completeness and authorization at the point of data entry?',
  choices = '["Input controls", "Output controls", "Processing controls", "Storage controls"]'::jsonb,
  explanation = 'Correct (A): Input controls operate at the point of data entry to ensure completeness (all authorized transactions are recorded), accuracy (data is correct), and authorization (only valid transactions are processed). These include validation checks, batch totals, sequence checks, and authorization requirements. (B) is wrong because output controls operate at the reporting stage, not at data entry. (C) is wrong because processing controls verify data during processing, after it has already been entered.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 762;

-- ID 763: ERP and Accounting Information Systems — Batch control for completeness
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Which batch control technique is most effective for ensuring completeness of transaction processing?',
  choices = '["Hash total of transaction reference numbers", "Visual inspection of printed output reports", "Random sampling of individual transactions", "Record count combined with financial total of the batch"]'::jsonb,
  explanation = 'Correct (D): A record count (verifying the number of records processed matches the expected count) combined with a financial total (verifying the dollar total matches the control total established before processing) provides the most effective assurance of both completeness and accuracy. (A) is wrong because hash totals verify a specific field but do not confirm dollar accuracy. (B) is wrong because visual inspection provides limited assurance for large transaction volumes.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 763;

-- ID 765: ERP and Accounting Information Systems — Preventive control definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'What type of control rejects unauthorized transactions before they enter the system?',
  choices = '["A detective control that identifies errors after processing", "A corrective control that fixes errors after detection", "A preventive control that blocks transactions failing authorization requirements", "A compensating control that substitutes for another control"]'::jsonb,
  explanation = 'Correct (C): A preventive control stops unauthorized or invalid transactions before they are processed. Rejecting transactions that do not meet authorization requirements is a classic preventive control. (A) is wrong because detective controls identify issues after processing has occurred, not before. (B) is wrong because corrective controls fix errors after they have been detected, rather than preventing them.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 765;

-- ============================================================
-- CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 5410: Change Management — Change request form purpose
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Which document formally initiates the change management process?',
  choices = '["Post-implementation review report", "Release deployment plan", "Configuration audit checklist", "Change request form"]'::jsonb,
  explanation = 'Correct (D): A change request form (or request for change, RFC) is the formal document that initiates the change management process. It captures the proposed modification, business justification, risk assessment, and expected impact. (A) is wrong because a post-implementation review occurs after deployment, not at initiation. (B) is wrong because a release deployment plan addresses how approved changes are moved to production, not the initiation of the change process.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5410;

-- ID 5411: Change Management — Separation of duties in deployment
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Under proper separation of duties in change management, who should deploy code to the production environment?',
  choices = '["The developer who wrote the code", "A separate operations or release management team member", "The end user who reported the defect", "The project manager who approved the budget"]'::jsonb,
  explanation = 'Correct (B): Separation of duties in change management requires that the person who develops code is not the same person who deploys it to production. A separate operations or release management team member should handle production deployments to prevent unauthorized modifications and reduce fraud risk. (A) is wrong because allowing the developer to deploy their own code violates separation of duties. (C) is wrong because end users typically lack the technical access and role authorization for deployments.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5411;

-- ID 5413: Change Management — Unauthorized change rate metric
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Which change management metric measures the percentage of changes deployed without documented approval?',
  choices = '["Unauthorized change rate", "Change lead time", "Deployment frequency", "Mean time to restore service"]'::jsonb,
  explanation = 'Correct (A): The unauthorized change rate measures the percentage of changes deployed without following the established approval process. A high rate indicates a control deficiency in authorization workflows. (B) is wrong because change lead time measures the duration from request to deployment. (D) is wrong because mean time to restore service measures incident recovery speed, not change authorization compliance.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5413;

-- ID 5415: Change Management — Big bang deployment definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Which deployment strategy implements a change across the entire organization at once?',
  choices = '["Canary deployment", "Phased rollout", "Big bang deployment", "Blue-green deployment"]'::jsonb,
  explanation = 'Correct (C): A big bang deployment implements the change across the entire organization simultaneously. This approach carries higher risk but avoids the complexity of running parallel systems. (A) is wrong because a canary deployment releases the change to a small subset of users first to test before wider rollout. (B) is wrong because a phased rollout deploys incrementally by group or location over time.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5415;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (4 questions)
-- ============================================================

-- ID 5451: SOC Report Content and Structure — SOC 2 Type II management assertion
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'In a SOC 2 Type II report, what additional claim does the management assertion include beyond suitability of design?',
  choices = '["That the controls operated effectively throughout the specified period", "That the controls comply with all applicable laws and regulations", "That no security breaches occurred during the reporting period", "That user entities are responsible for implementing all controls"]'::jsonb,
  explanation = 'Correct (A): In a SOC 2 Type II report, management''s assertion addresses both the suitability of design and the operating effectiveness of controls throughout the specified examination period. A Type I report only addresses suitability of design as of a point in time. (B) is wrong because the assertion does not claim legal compliance. (C) is wrong because the assertion does not claim an absence of security breaches.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5451;

-- ID 5453: SOC Report Content and Structure — User entity CUEC responsibility
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What is the user entity''s responsibility regarding complementary user entity controls (CUECs) identified in a SOC report?',
  choices = '["CUECs are optional recommendations that do not affect control effectiveness", "The user entity should request that the service organization implement the CUECs instead", "The user entity must implement the CUECs within its own control environment for the overall control objectives to be achieved", "The user entity can ignore CUECs since the service organization is responsible for all controls"]'::jsonb,
  explanation = 'Correct (C): Complementary user entity controls (CUECs) are controls that the service organization''s system design assumes the user entity has in place. If user entities do not implement CUECs, the overall control objectives may not be achieved even if the service organization''s controls operate effectively. (A) is wrong because CUECs are necessary components of the complete control environment, not optional. (D) is wrong because the service organization''s controls are designed to work in combination with user entity controls.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5453;

-- ID 5454: SOC Report Content and Structure — Mandatory trust services criterion
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Which trust services criterion is mandatory in every SOC 2 engagement?',
  choices = '["Availability", "Security (common criteria)", "Processing integrity", "Privacy"]'::jsonb,
  explanation = 'Correct (B): Security (the common criteria) is mandatory in every SOC 2 engagement because it forms the foundation for all other trust services criteria. The common criteria address foundational controls including logical access, system operations, and change management. (A) is wrong because availability is an optional criterion added based on the nature of the service. (C) is wrong because processing integrity is also optional and selected based on user entity needs.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5454;

-- ID 5455: SOC Report Content and Structure — Carve-out method definition
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'In a SOC report, what does the carve-out method mean for a subservice organization?',
  choices = '["The subservice organization''s controls are included in the service organization''s report scope", "The subservice organization is no longer responsible for any controls", "The service auditor tests the subservice organization''s controls directly", "The subservice organization''s controls are excluded from the service organization''s report scope"]'::jsonb,
  explanation = 'Correct (D): Under the carve-out method, the subservice organization''s controls are excluded from the service organization''s SOC report scope. The report identifies the nature of services provided by the subservice organization, but does not include testing of its controls. User entities would need to obtain a separate SOC report from the subservice organization. (A) is wrong because including subservice controls describes the inclusive method, not the carve-out method. (C) is wrong because under the carve-out method, the service auditor does not test the subservice organization''s controls.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5455;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (3 questions)
-- ============================================================

-- ID 747: IT Infrastructure and Architecture — IaaS definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Which cloud service model provides the customer with the most control over the operating system and middleware?',
  choices = '["Software as a Service (SaaS)", "Platform as a Service (PaaS)", "Infrastructure as a Service (IaaS)", "Function as a Service (FaaS)"]'::jsonb,
  explanation = 'Correct (C): IaaS provides virtualized computing resources (servers, storage, networking) where the customer manages the OS, middleware, runtime, and applications. This gives the customer the most control over the technology stack compared to other cloud models. (A) is wrong because SaaS manages the entire stack, giving the customer the least control. (B) is wrong because PaaS manages the OS and middleware for the customer, leaving only the application layer.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 747;

-- ID 748: IT Infrastructure and Architecture — Network segmentation with VLANs
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Which network design isolates sensitive systems from the general network while still allowing controlled access?',
  choices = '["A single flat network with host-based firewalls on each device", "Network segmentation using VLANs with access control lists", "A demilitarized zone designed for public-facing servers", "An air-gapped network with no external connectivity"]'::jsonb,
  explanation = 'Correct (B): VLANs (Virtual Local Area Networks) with access control lists (ACLs) provide network segmentation that logically isolates sensitive systems while still allowing controlled access through defined rules. (A) is wrong because a flat network offers no segmentation, even with host-based firewalls. (D) is wrong because an air-gapped network provides complete isolation but does not allow any controlled access from the general network.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 748;

-- ID 750: IT Infrastructure and Architecture — Three-tier architecture application tier
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'In a three-tier architecture, which tier is responsible for enforcing business rules and processing logic?',
  choices = '["Application (logic) tier", "Presentation tier", "Data tier", "Network tier"]'::jsonb,
  explanation = 'Correct (A): In a three-tier architecture, the application (logic/middle) tier processes business rules and logic. The presentation tier handles the user interface, and the data tier manages storage and retrieval of data. There is no separate network tier in the standard three-tier model. (B) is wrong because the presentation tier handles user interface display, not business logic. (C) is wrong because the data tier handles data storage and retrieval, not processing.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 750;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 1047: IT General Controls — Segregation of duties in IT
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'What IT control principle requires that the same person cannot both develop and deploy code to production?',
  choices = '["Segregation of duties in IT", "Encryption at rest", "Data loss prevention", "Business continuity planning"]'::jsonb,
  explanation = 'Correct (A): Segregation of duties in IT ensures that no single individual controls all phases of a transaction or process. Separating development from deployment prevents unauthorized code from being moved to production without independent review. (B) is wrong because encryption at rest protects stored data confidentiality, not role separation. (C) is wrong because data loss prevention protects against unauthorized data disclosure, not deployment controls.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1047;

-- ID 1049: IT General Controls — Logical access control deficiency
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Failure to promptly revoke a terminated employee''s system access is a deficiency in which ITGC area?',
  choices = '["Program change controls", "Computer operations controls", "Logical access controls", "Physical access controls"]'::jsonb,
  explanation = 'Correct (C): Timely deprovisioning of terminated employee access is a logical access control. Failure to promptly revoke access creates a window for unauthorized system access and is one of the most common ITGC findings in audits. (A) is wrong because program change controls govern modifications to applications and systems, not user access management. (D) is wrong because physical access controls govern entry to facilities and equipment, not system-level authentication.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1049;

-- ID 1050: IT General Controls — Change Advisory Board responsibility
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Under ITIL, what is the primary responsibility of a Change Advisory Board (CAB)?',
  choices = '["Writing program code for system enhancements", "Evaluating, prioritizing, and approving or rejecting change requests", "Performing user acceptance testing on all proposed changes", "Configuring server hardware before deployment"]'::jsonb,
  explanation = 'Correct (B): The CAB evaluates proposed changes for risk, impact, and resource requirements, then approves, defers, or rejects them. The CAB is an advisory body, not an implementation team. (A) is wrong because writing code is performed by the development team, not the CAB. (C) is wrong because user acceptance testing is performed by business users, not the CAB.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1050;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (2 questions)
-- ============================================================

-- ID 816: Threats, Attacks, and Vulnerabilities — Phishing definition
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Which type of attack uses fraudulent emails appearing to come from a trusted source to trick recipients into revealing sensitive information?',
  choices = '["Denial of Service (DoS)", "Man-in-the-middle", "SQL injection", "Phishing"]'::jsonb,
  explanation = 'Correct (D): Phishing is a social engineering attack that uses fraudulent communications, typically email, appearing to come from a reputable source to trick individuals into revealing sensitive information such as credentials or financial data. (A) is wrong because a Denial of Service attack disrupts availability by overwhelming a system with traffic. (C) is wrong because SQL injection targets database vulnerabilities through malicious input, not social engineering.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 816;

-- ID 817: Threats, Attacks, and Vulnerabilities — SQL injection definition
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Which type of attack involves inserting malicious database commands into a web application''s input fields?',
  choices = '["SQL injection", "Cross-site scripting (XSS)", "Buffer overflow", "Session hijacking"]'::jsonb,
  explanation = 'Correct (A): SQL injection occurs when an attacker inserts malicious SQL statements into input fields that are passed to the database for execution. If the application does not properly validate and sanitize input, the attacker can read, modify, or delete data. (B) is wrong because cross-site scripting injects client-side scripts into web pages viewed by other users. (C) is wrong because buffer overflow exploits memory allocation errors, not database queries.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 817;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (2 questions)
-- ============================================================

-- ID 844: Privacy Requirements and Data Protection — GDPR identification
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Which regulation establishes comprehensive data protection rights for individuals within the European Union?',
  choices = '["HIPAA", "SOX", "GDPR", "PCI DSS"]'::jsonb,
  explanation = 'Correct (C): The General Data Protection Regulation (GDPR) is the EU''s comprehensive data protection law granting individuals rights over their personal data, including the right to access, rectification, erasure, portability, and the right to object to processing. (A) is wrong because HIPAA is a US law covering healthcare data privacy. (B) is wrong because SOX addresses financial reporting controls for public companies, not data protection rights.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 844;

-- ID 847: Privacy Requirements and Data Protection — HIPAA Privacy Rule scope
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Under the Health Insurance Portability and Accountability Act (HIPAA), to which entities does the Privacy Rule apply?',
  choices = '["All businesses that process any type of personal data", "Covered entities (health plans, healthcare providers, clearinghouses) and their business associates", "Only hospitals with more than 500 beds", "Only government healthcare agencies"]'::jsonb,
  explanation = 'Correct (B): HIPAA''s Privacy Rule applies to covered entities — health plans, healthcare providers who transmit health information electronically, and healthcare clearinghouses — as well as their business associates who create, receive, maintain, or transmit protected health information (PHI). (A) is wrong because HIPAA applies specifically to health-related entities and their business associates, not all businesses processing personal data. (C) is wrong because HIPAA applies to covered entities regardless of facility size.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 847;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 874: SOC Engagements — SOC 3 report purpose
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Which SOC report type is a general-use report that can be freely distributed to prospective customers?',
  choices = '["SOC 1 Type II", "SOC 2 Type II", "SOC 3", "SOC for Supply Chain"]'::jsonb,
  explanation = 'Correct (C): SOC 3 is a general-use report that can be freely distributed and even published on a service organization''s website. It provides a summary-level assurance opinion on the trust services criteria without the detailed control descriptions and test results found in SOC 2. (A) is wrong because SOC 1 reports are restricted-use documents intended only for management, user entities, and their auditors. (B) is wrong because SOC 2 reports are also restricted-use and contain detailed control testing information.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 874;

-- ID 877: SOC Engagements — User auditor CUEC responsibility
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'What is the user auditor''s responsibility regarding CUECs listed in a SOC 1 Type II report?',
  choices = '["CUECs are informational only and require no action by the user auditor", "The service auditor is responsible for testing all CUECs", "CUECs apply only to SOC 2 reports and not to SOC 1 reports", "The user auditor must evaluate whether the user entity has implemented the relevant CUECs"]'::jsonb,
  explanation = 'Correct (D): CUECs are controls that the service organization assumes the user entity will implement. The user auditor must evaluate whether their client has implemented the relevant CUECs, as the SOC 1 opinion is predicated on their existence. (A) is wrong because CUECs are not merely informational — they are necessary for the overall control objectives to be achieved. (B) is wrong because CUECs are the user entity''s responsibility to implement, not the service auditor''s responsibility to test.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 877;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5430: Data Protection Technologies — Network DLP definition
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Which type of Data Loss Prevention (DLP) system monitors network traffic to detect sensitive data being transmitted outside the organization?',
  choices = '["Network DLP", "Endpoint DLP", "Cloud DLP", "Storage DLP"]'::jsonb,
  explanation = 'Correct (A): Network DLP monitors data in motion by inspecting network traffic at egress points such as email gateways, web proxies, and firewalls to detect and block unauthorized transmission of sensitive data. (B) is wrong because endpoint DLP operates on individual devices to monitor local actions like copying to USB drives. (C) is wrong because cloud DLP protects data within cloud services and applications.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5430;

-- ID 5431: Data Protection Technologies — NIST SP 800-88 destroying definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under NIST SP 800-88, which media sanitization method renders data recovery infeasible even with state-of-the-art laboratory techniques?',
  choices = '["Clearing", "Purging", "Destroying", "Formatting"]'::jsonb,
  explanation = 'Correct (C): Under NIST SP 800-88, destroying (physical destruction through disintegration, melting, incineration, or shredding) renders data recovery infeasible even with advanced laboratory techniques by making the media itself unusable. (A) is wrong because clearing protects against simple recovery methods but not laboratory-level techniques. (B) is wrong because purging makes recovery infeasible through logical methods but keeps the media physically intact.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5431;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (1 question)
-- ============================================================

-- ID 885: SOC Reporting and Trust Services Criteria — Processing Integrity definition
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Which Trust Services Criteria category addresses whether system processing is complete, valid, accurate, timely, and authorized?',
  choices = '["Security", "Availability", "Confidentiality", "Processing Integrity"]'::jsonb,
  explanation = 'Correct (D): Processing Integrity addresses whether system processing is complete, valid, accurate, timely, and authorized. It ensures that transactions are processed correctly and that outputs are reliable. (A) is wrong because security (the common criteria) addresses protection of the system against unauthorized access, not processing accuracy. (B) is wrong because availability addresses whether the system is operational and usable as committed.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 885;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 3536: System Availability and Change Management — RTO and RPO definitions
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What do Recovery Time Objective (RTO) and Recovery Point Objective (RPO) measure?',
  choices = '["Service level agreement terms and mean time to repair", "Maximum acceptable recovery time and maximum acceptable data loss", "Maximum tolerable downtime and mean time between failures", "System uptime percentage and availability ratio"]'::jsonb,
  explanation = 'Correct (B): RTO is the maximum acceptable time to restore a system after disruption, and RPO is the maximum acceptable amount of data loss measured in time. These metrics drive the selection of disaster recovery strategies and technologies. (A) is wrong because SLA terms and MTTR are related but distinct concepts from RTO/RPO. (C) is wrong because maximum tolerable downtime and MTBF are separate metrics that describe different aspects of system reliability.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3536;

-- ID 3537: System Availability and Change Management — Hot site recovery speed
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Among hot, warm, and cold disaster recovery sites, which provides the fastest recovery time?',
  choices = '["Cold site", "Warm site", "Hot site", "All three provide identical recovery times"]'::jsonb,
  explanation = 'Correct (C): A hot site is a fully equipped, operational facility with current data through real-time replication, ready for immediate failover with minimal recovery time. (A) is wrong because a cold site provides only physical space and basic utilities, requiring full hardware installation and data recovery, resulting in the longest recovery time. (B) is wrong because a warm site has hardware and connectivity but requires data restoration and configuration, placing it between hot and cold in recovery speed.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3537;

-- ID 3538: System Availability and Change Management — Synchronous replication for zero RPO
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Which data replication strategy is required to achieve a Recovery Point Objective (RPO) of zero?',
  choices = '["Synchronous replication where every write is confirmed at both primary and secondary sites", "Asynchronous replication with a short transmission lag", "Nightly tape backups shipped to an offsite facility", "Weekly full backups with daily differential backups"]'::jsonb,
  explanation = 'Correct (A): An RPO of zero means no data loss is acceptable. Only synchronous replication achieves this by requiring that every write transaction is committed at both the primary and secondary sites before the write is acknowledged to the application. (B) is wrong because asynchronous replication has an inherent lag between primary and secondary, meaning some data loss is possible. (C) is wrong because nightly backups create up to 24 hours of potential data loss.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3538;

-- ID 3539: System Availability and Change Management — Tabletop exercise definition
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'In business continuity planning, what does a tabletop exercise involve?',
  choices = '["Physically shutting down production systems to simulate a real disaster", "Restoring systems from backup at the disaster recovery site", "Running automated failover tests during business hours", "Stakeholders walking through disaster scenarios verbally to identify gaps in plans and unclear responsibilities"]'::jsonb,
  explanation = 'Correct (D): A tabletop exercise is a discussion-based test where participants talk through their roles and decision-making during hypothetical disaster scenarios. It identifies gaps in plans, unclear responsibilities, and communication breakdowns without disrupting production systems. (A) is wrong because physically shutting down systems describes a full-interruption test, not a tabletop exercise. (B) is wrong because restoring from backup at the DR site describes a parallel or full-scale test.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3539;

COMMIT;
