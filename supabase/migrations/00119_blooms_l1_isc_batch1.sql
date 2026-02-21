-- Migration: Bloom's L1 rebalancing — ISC batch 1 (48 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 48 L2 (Application) questions to L1 (Remember/Understand) depth for ISC section
-- Affected topics: System Availability and Change Management, Security and Control Frameworks, Security Controls and Monitoring, Data Management and Lifecycle, Incident Response and Recovery

BEGIN;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (11 questions)
-- ============================================================

-- ID 788: System Availability and Change Management — RPO definition
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'What does Recovery Point Objective (RPO) measure?',
  choices = '["The maximum acceptable amount of data loss measured in time", "The time required to restore a system to full operation after an outage", "The average interval between consecutive system failures", "The average time needed to repair a failed system component"]'::jsonb,
  explanation = 'Correct (A): Recovery Point Objective (RPO) defines the maximum acceptable amount of data loss measured in time. For example, an RPO of one hour means the organization can tolerate losing up to one hour of data. Under NIST SP 800-34, RPO drives backup frequency requirements. (B) is wrong because the time required to restore a system describes the Recovery Time Objective (RTO), not RPO. (C) is wrong because the interval between failures describes Mean Time Between Failures (MTBF).',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 788;

-- ID 789: System Availability and Change Management — Backup frequency and RPO relationship
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'What is the relationship between backup frequency and Recovery Point Objective (RPO)?',
  choices = '["Backup frequency must equal the Recovery Time Objective", "Backup frequency must be at least as frequent as the RPO to meet data loss requirements", "Backup frequency is unrelated to RPO and is determined solely by storage capacity", "Backup frequency determines the Mean Time Between Failures"]'::jsonb,
  explanation = 'Correct (B): Under NIST SP 800-34, backup frequency must be at least as frequent as the RPO. If the RPO is 15 minutes, backups or replication must occur at intervals of 15 minutes or less to ensure no more than that amount of data is lost during an outage. (A) is wrong because backup frequency aligns with RPO, not RTO. (C) is wrong because backup frequency is directly driven by RPO requirements, not storage capacity alone.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 789;

-- ID 792: System Availability and Change Management — Emergency change definition
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under ITIL change management, what is an emergency change?',
  choices = '["Any change requested by a senior executive", "A routine patch applied during a scheduled maintenance window", "A change that must be implemented immediately to address a critical issue and bypasses normal approval with post-implementation review", "A planned upgrade that has been moved to an earlier date"]'::jsonb,
  explanation = 'Correct (C): Under ITIL, an emergency change addresses a critical issue — such as a system outage or security breach — that requires immediate implementation and cannot wait for normal Change Advisory Board approval. Emergency changes follow an abbreviated process but require post-implementation documentation and review to maintain governance. (A) is wrong because executive requests do not automatically qualify as emergency changes. (B) is wrong because routine patches during scheduled windows follow standard change procedures.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 792;

-- ID 793: System Availability and Change Management — BCP system tiering purpose
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'In business continuity planning, what is the purpose of classifying systems into recovery tiers?',
  choices = '["To determine which systems should be permanently decommissioned", "To assign equal recovery priority to all systems", "To eliminate the need for disaster recovery testing", "To prioritize recovery order based on each system''s criticality to business operations"]'::jsonb,
  explanation = 'Correct (D): Under NIST SP 800-34, system tiering assigns recovery priorities based on a business impact analysis (BIA). The most critical systems (Tier 1) receive the fastest recovery targets and most resources, ensuring essential business functions resume first. (B) is wrong because tiering explicitly creates unequal priorities based on criticality. (C) is wrong because tiering supports and informs disaster recovery testing rather than eliminating it.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 793;

-- ID 794: System Availability and Change Management — Regression testing definition
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'What is the purpose of regression testing in software change management?',
  choices = '["To validate that a software change has not adversely affected existing functionality", "To verify that individual code modules work in isolation", "To confirm that the system meets end-user business requirements", "To test how components interact with each other across system boundaries"]'::jsonb,
  explanation = 'Correct (A): Regression testing specifically validates that new changes, bug fixes, or enhancements have not introduced unintended side effects in previously working functionality. Under COBIT, regression testing is a key control in the change management process. (B) is wrong because verifying individual modules in isolation describes unit testing. (C) is wrong because confirming business requirements describes user acceptance testing.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 794;

-- ID 796: System Availability and Change Management — Full interruption test definition
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'Which type of disaster recovery test involves actually switching operations to the backup site?',
  choices = '["A tabletop exercise where participants discuss recovery procedures", "A full interruption test where production fails over to the secondary site", "A walkthrough test where the team reviews steps without executing them", "A simulation test where specific scenarios are tested without actual failover"]'::jsonb,
  explanation = 'Correct (B): A full interruption test (also called a full-scale test) involves actually switching operations from the primary site to the backup site, testing all recovery procedures under real conditions. Under NIST SP 800-34, this is the most rigorous form of DR testing. (A) is wrong because tabletop exercises are discussion-based and do not involve actual system operations. (D) is wrong because simulation tests model specific scenarios without performing actual failover.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 796;

-- ID 797: System Availability and Change Management — Asynchronous replication data loss
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'What is the primary data loss risk of asynchronous data replication?',
  choices = '["Asynchronous replication causes permanent data corruption at the secondary site", "Asynchronous replication provides no protection against hardware failure", "Data changes that occurred after the last completed replication cycle may be lost if the primary site fails", "Asynchronous replication requires the primary site to be offline during each replication cycle"]'::jsonb,
  explanation = 'Correct (C): With asynchronous replication, the secondary site lags behind the primary by the interval between replication cycles. If the primary fails, any transactions processed since the last successful replication are lost. Under NIST SP 800-34, asynchronous replication trades some RPO risk for reduced performance impact compared to synchronous replication. (A) is wrong because asynchronous replication does not inherently cause data corruption. (B) is wrong because asynchronous replication does protect against hardware failure, with potential data loss limited to the lag window.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 797;

-- ID 799: System Availability and Change Management — System availability formula
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Which formula is used to calculate system availability?',
  choices = '["MTTR divided by MTBF", "MTBF minus MTTR", "MTTR divided by the sum of MTBF and MTTR", "MTBF divided by the sum of MTBF and MTTR"]'::jsonb,
  explanation = 'Correct (D): System availability is calculated as MTBF / (MTBF + MTTR), where MTBF is Mean Time Between Failures and MTTR is Mean Time To Repair. This yields the proportion of total time the system is operational. Under COBIT, availability metrics are key IT governance indicators. (A) is wrong because dividing MTTR by MTBF yields the unavailability ratio, not availability. (C) is wrong because MTTR in the numerator calculates the proportion of downtime, not uptime.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 799;

-- ID 800: System Availability and Change Management — Parallel testing definition
-- correct_index = 0 (was 0; unchanged)
UPDATE questions SET
  stem = 'In change management, what does parallel testing involve?',
  choices = '["Running the old and new systems simultaneously on the same transactions and comparing results", "Testing the new system in a sandbox without reference to the old system", "Deploying the change to a subset of users while others remain on the old system", "Performing the system upgrade during non-business hours to minimize disruption"]'::jsonb,
  explanation = 'Correct (A): Parallel testing involves running both old and new systems simultaneously, processing identical transactions through both, and comparing outputs to verify the new system produces correct results. Under COBIT, parallel testing provides high assurance before decommissioning the old system. (B) is wrong because testing without reference to the old system describes standalone testing, not parallel testing. (C) is wrong because deploying to a subset of users describes a phased or pilot rollout, not parallel testing.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 800;

-- ID 801: System Availability and Change Management — Separation of environments principle
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Under COBIT, what does the principle of separation of environments require?',
  choices = '["All system changes must be approved by a single individual", "Development, testing, and production environments must be separated, and developers should not have direct access to production", "Developers must have access to all environments to ensure rapid deployment", "Production changes may only be made on weekends to minimize disruption"]'::jsonb,
  explanation = 'Correct (B): The separation of environments principle under COBIT requires that development, testing, and production environments be kept separate and that developers should not have the ability to modify production systems directly. This prevents unauthorized or untested changes from affecting live data. (A) is wrong because separation of environments is about environment isolation, not single-person approval. (C) is wrong because granting developers access to all environments directly violates this principle.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 801;

-- ID 1292: System Availability and Change Management — Emergency change characteristics
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Which statement best describes an emergency change under ITIL?',
  choices = '["A change that bypasses all documentation and governance requirements permanently", "A routine patch applied during a scheduled maintenance window", "A change addressing a critical issue that requires immediate action outside normal procedures, with post-implementation review", "A planned upgrade that has been expedited by management request"]'::jsonb,
  explanation = 'Correct (C): Under ITIL, an emergency change must be implemented immediately to address a critical issue — such as a security breach, system outage, or data loss risk — that cannot wait for normal Change Advisory Board review. Emergency changes bypass standard approval due to urgency but require post-implementation review and documentation. (A) is wrong because emergency changes still require documentation and post-implementation review. (B) is wrong because routine patches during scheduled windows follow normal change procedures.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1292;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (11 questions)
-- ============================================================

-- ID 802: Security and Control Frameworks — NIST CSF origin
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Which framework was published by NIST specifically to help organizations manage and reduce cybersecurity risk?',
  choices = '["COBIT 2019", "ISO 27001", "ITIL v4", "NIST Cybersecurity Framework (CSF)"]'::jsonb,
  explanation = 'Correct (D): The NIST Cybersecurity Framework (CSF) was developed by the National Institute of Standards and Technology to provide a voluntary framework for managing and reducing cybersecurity risk, consisting of five core functions: Identify, Protect, Detect, Respond, and Recover. (A) is wrong because COBIT focuses on IT governance, not cybersecurity specifically. (B) is wrong because ISO 27001 addresses information security management systems broadly, and is published by ISO, not NIST.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 802;

-- ID 803: Security and Control Frameworks — NIST CSF Protect function
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under the NIST CSF, which core function focuses on implementing safeguards to ensure delivery of critical services?',
  choices = '["Protect", "Identify", "Respond", "Detect"]'::jsonb,
  explanation = 'Correct (A): The Protect function under the NIST CSF includes access control, awareness and training, data security, information protection processes, maintenance, and protective technology. It focuses on implementing safeguards to limit or contain the impact of potential cybersecurity events. (B) is wrong because Identify focuses on understanding cybersecurity risk to systems, assets, and data. (D) is wrong because Detect focuses on identifying cybersecurity events in a timely manner.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 803;

-- ID 805: Security and Control Frameworks — ISO 27001 mandatory requirement
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'What does ISO 27001 require an organization to establish?',
  choices = '["Implementation of all 93 Annex A controls without exception", "An Information Security Management System (ISMS) with a risk-based approach", "Use of the NIST CSF as the foundation for the ISMS", "Appointment of a Chief Information Security Officer (CISO)"]'::jsonb,
  explanation = 'Correct (B): ISO 27001 mandates establishing, implementing, maintaining, and continually improving an ISMS using a risk-based approach. Organizations select controls based on their risk assessment and document unselected controls in a Statement of Applicability. (A) is wrong because not all 93 Annex A controls must be implemented — selection is based on the organization''s risk assessment. (D) is wrong because ISO 27001 does not require a specific CISO role.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 805;

-- ID 807: Security and Control Frameworks — COSO foundation component
-- correct_index = 2 (was 2; unchanged)
UPDATE questions SET
  stem = 'Under the COSO Internal Control framework, which component is considered the foundation for all other components?',
  choices = '["Risk Assessment", "Control Activities", "Control Environment", "Monitoring Activities"]'::jsonb,
  explanation = 'Correct (C): The Control Environment is the foundation of the COSO framework. It sets the tone of the organization and includes governance structure, ethical values, management philosophy, organizational structure, competence standards, and accountability. The other four components operate within the context established by the control environment. (A) is wrong because Risk Assessment identifies and analyzes risks but depends on the foundation set by the control environment. (D) is wrong because Monitoring evaluates control effectiveness over time but is not the foundational component.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 807;

-- ID 810: Security and Control Frameworks — COBIT capability levels
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Under COBIT 2019, what does a Level 2 (Managed) capability rating indicate?',
  choices = '["Processes are ad hoc and not formally defined", "Processes are optimized through continuous improvement and automation", "Processes are consistently implemented enterprise-wide with defined standards", "Processes are planned, monitored, and adjusted, with work products appropriately managed"]'::jsonb,
  explanation = 'Correct (D): Under COBIT 2019, Level 2 (Managed) indicates that processes are planned, monitored, and adjusted, with work products appropriately managed. The organization has moved beyond merely performing tasks (Level 1) but has not yet achieved consistent enterprise-wide implementation (Level 3). (A) is wrong because ad hoc processes describe Level 0 (Incomplete) or Level 1 (Performed). (C) is wrong because consistent enterprise-wide implementation describes Level 3 (Established).',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 810;

-- ID 812: Security and Control Frameworks — NIST RMF Assess step
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'In the NIST Risk Management Framework (RMF), what is the purpose of the Assess step?',
  choices = '["To determine whether security and privacy controls are implemented correctly and producing desired outcomes", "To categorize information systems based on impact levels", "To select appropriate security controls from the control catalog", "To deploy and configure the selected security controls"]'::jsonb,
  explanation = 'Correct (A): The Assess step of the NIST RMF evaluates whether security and privacy controls are implemented correctly, operating as intended, and producing the desired outcomes. The seven RMF steps are: Prepare, Categorize, Select, Implement, Assess, Authorize, and Monitor. (B) is wrong because categorizing systems by impact level is the Categorize step. (D) is wrong because deploying controls is the Implement step.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 812;

-- ID 813: Security and Control Frameworks — COBIT APO02 purpose
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Under COBIT 2019, which management objective addresses aligning IT strategy with business objectives?',
  choices = '["EDM01: Ensured Governance Framework Setting and Maintenance", "APO02: Managed Strategy", "EDM02: Ensured Benefits Delivery", "BAI01: Managed Programs"]'::jsonb,
  explanation = 'Correct (B): APO02 (Managed Strategy) in COBIT 2019 directly addresses aligning IT strategy with business objectives by defining how IT can best contribute to business goals. (A) is wrong because EDM01 focuses on establishing and maintaining the overall governance framework, not strategy alignment specifically. (C) is wrong because EDM02 focuses on ensuring that IT investments deliver expected benefits.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 813;

-- ID 814: Security and Control Frameworks — Deterrent control definition
-- correct_index = 2 (was 2; unchanged)
UPDATE questions SET
  stem = 'Which type of control is designed to discourage individuals from committing policy violations?',
  choices = '["Detective control", "Corrective control", "Deterrent control", "Compensating control"]'::jsonb,
  explanation = 'Correct (C): Deterrent controls discourage individuals from intentionally violating policies or procedures. Examples include warning banners, surveillance cameras, and disciplinary policies. (A) is wrong because detective controls identify violations after they occur rather than discouraging them. (B) is wrong because corrective controls fix problems after they are detected, not before.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 814;

-- ID 3576: Security and Control Frameworks — NIST CSF Detect function
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Under the NIST CSF, which core function encompasses continuous security monitoring and anomaly detection?',
  choices = '["Identify", "Protect", "Recover", "Detect"]'::jsonb,
  explanation = 'Correct (D): The Detect function under the NIST CSF encompasses activities to identify the occurrence of cybersecurity events in a timely manner, including continuous security monitoring, anomaly and event detection, and detection processes such as intrusion detection systems. (A) is wrong because Identify focuses on understanding the organization''s cybersecurity risk posture, not monitoring for events. (B) is wrong because Protect focuses on implementing safeguards, not identifying events after they occur.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3576;

-- ID 3577: Security and Control Frameworks — NIST CSF Recover function
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under the NIST CSF, which core function covers restoring capabilities impaired by a cybersecurity incident?',
  choices = '["Recover", "Detect", "Respond", "Protect"]'::jsonb,
  explanation = 'Correct (A): The Recover function supports timely recovery to normal operations after a cybersecurity incident. It includes recovery planning, improvements, and communications related to restoring services and capabilities. (C) is wrong because the Respond function covers containment and communication during the incident, not restoration afterward. (D) is wrong because Protect focuses on preventive safeguards, not post-incident restoration.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3577;

-- ID 3578: Security and Control Frameworks — NIST SP 800-53 Contingency Planning family
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'In NIST SP 800-53, which control family addresses backup and recovery procedures?',
  choices = '["Access Control (AC)", "Audit and Accountability (AU)", "Contingency Planning (CP)", "System and Communications Protection (SC)"]'::jsonb,
  explanation = 'Correct (C): The Contingency Planning (CP) control family in NIST SP 800-53 addresses the establishment, maintenance, and effective implementation of plans for emergency response, backup operations, and post-disaster recovery. (A) is wrong because Access Control (AC) addresses authentication, authorization, and access enforcement. (B) is wrong because Audit and Accountability (AU) addresses audit logging and event monitoring.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3578;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (10 questions)
-- ============================================================

-- ID 833: Security Controls and Monitoring — User deprovisioning definition
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'What does the user deprovisioning (offboarding) process ensure?',
  choices = '["That new employees receive appropriate access upon joining the organization", "That access is revoked promptly when an employee departs the organization", "That password complexity requirements are enforced across all accounts", "That network segments are properly isolated from each other"]'::jsonb,
  explanation = 'Correct (B): User deprovisioning (offboarding) ensures that access rights are revoked promptly when an employee is terminated, transferred, or departs the organization. Under NIST SP 800-53 (AC-2), organizations must disable accounts within a defined timeframe after separation. (A) is wrong because granting access to new employees describes the provisioning (onboarding) process. (C) is wrong because password complexity is an authentication control separate from account lifecycle management.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 833;

-- ID 835: Security Controls and Monitoring — Privileged Access Management purpose
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What is the primary purpose of a Privileged Access Management (PAM) solution?',
  choices = '["To enforce password complexity requirements for standard user accounts", "To allow administrators to approve their own access requests", "To provide oversight and control of privileged accounts through session recording, credential vaulting, and just-in-time access", "To grant all administrators permanent elevated access for operational efficiency"]'::jsonb,
  explanation = 'Correct (C): Privileged Access Management (PAM) solutions control and monitor privileged accounts through session recording, credential vaulting, just-in-time access provisioning, and approval workflows. Under NIST SP 800-53 (AC-6), the principle of least privilege requires limiting privileged access to the minimum necessary. (A) is wrong because password complexity enforcement applies to general authentication policy, not PAM specifically. (B) is wrong because self-approval of access requests violates separation of duties.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 835;

-- ID 836: Security Controls and Monitoring — Intrusion prevention system definition
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'What distinguishes an Intrusion Prevention System (IPS) from an Intrusion Detection System (IDS)?',
  choices = '["An IPS only monitors network traffic without taking action", "An IPS detects threats but requires manual intervention to block them", "An IPS is deployed outside the network perimeter while an IDS is deployed inside", "An IPS can actively block malicious traffic in real time, while an IDS only alerts on suspicious activity"]'::jsonb,
  explanation = 'Correct (D): An Intrusion Prevention System (IPS) is deployed inline and can actively block or drop malicious packets in real time by comparing traffic against known attack signatures and behavioral patterns. An IDS only monitors and alerts without taking automated enforcement actions. Under NIST SP 800-94, IPS provides both detection and prevention capabilities. (A) is wrong because monitoring without action describes an IDS, not an IPS. (B) is wrong because an IPS takes automated action without requiring manual intervention.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 836;

-- ID 837: Security Controls and Monitoring — Data exfiltration indicators
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Which network activity pattern is a common indicator of potential data exfiltration?',
  choices = '["Unusual outbound traffic from an internal workstation to an unrecognized foreign IP address during non-business hours", "Routine inbound traffic from a known software vendor during a scheduled update window", "An employee accessing the company intranet during normal business hours", "A server sending automated status reports to the monitoring dashboard"]'::jsonb,
  explanation = 'Correct (A): Unusual outbound traffic to unrecognized destinations during non-business hours is a strong indicator of potential data exfiltration or command-and-control (C2) communication from a compromised system. Under NIST SP 800-61, this pattern warrants immediate investigation including network forensics and endpoint analysis. (B) is wrong because routine updates from known vendors during scheduled windows are expected and benign. (C) is wrong because normal intranet access during business hours represents typical user behavior.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 837;

-- ID 839: Security Controls and Monitoring — DLP purpose
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'What is the primary function of Data Loss Prevention (DLP) software?',
  choices = '["To encrypt all files stored on the network", "To monitor and prevent unauthorized transmission of sensitive data such as PII or financial records", "To compress data for efficient storage and transfer", "To manage user authentication and password resets"]'::jsonb,
  explanation = 'Correct (B): Data Loss Prevention (DLP) systems monitor data in motion, at rest, and in use, detecting sensitive content patterns such as Social Security numbers, credit card numbers, or classified keywords and preventing unauthorized disclosure. Under NIST SP 800-53 (SC-7), DLP is a boundary protection mechanism for sensitive data. (A) is wrong because encryption is a separate control that protects data confidentiality but does not monitor for unauthorized transmission. (D) is wrong because authentication and password management are identity and access management functions, not DLP.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 839;

-- ID 840: Security Controls and Monitoring — WAF purpose
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'What type of attacks is a Web Application Firewall (WAF) specifically designed to mitigate?',
  choices = '["Physical theft of server hardware", "Social engineering attacks targeting employees by phone", "Application-layer attacks such as SQL injection and cross-site scripting", "Denial-of-service attacks at the network transport layer"]'::jsonb,
  explanation = 'Correct (C): A WAF inspects HTTP/HTTPS traffic to and from a web application, filtering and blocking common web attacks such as SQL injection, cross-site scripting, and other OWASP Top 10 vulnerabilities. It operates at the application layer (Layer 7). Under NIST SP 800-53 (SI-3), WAFs are an application-level security control. (A) is wrong because physical theft is a physical security issue outside the scope of a WAF. (D) is wrong because transport-layer DDoS attacks are typically mitigated by network-level controls, not application-layer firewalls.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 840;

-- ID 842: Security Controls and Monitoring — Database audit trail purpose
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Which type of log provides the most direct evidence for investigating unauthorized database modifications?',
  choices = '["Web server access logs recording HTTP requests and response codes", "Network firewall logs recording allowed and denied traffic by port", "DHCP server logs recording IP address lease assignments", "Database audit trail logs capturing data manipulation operations with user and timestamp"]'::jsonb,
  explanation = 'Correct (D): Database audit trail logs capture DML (Data Manipulation Language) operations — INSERT, UPDATE, and DELETE statements — along with the user who executed the operation, what data was changed, and when. Under NIST SP 800-92, database audit logs are the most direct and relevant source for investigating unauthorized data modifications. (A) is wrong because web server logs capture HTTP-level activity but not database-level changes. (C) is wrong because DHCP logs record network address assignments, not database operations.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 842;

-- ID 3647: Security Controls and Monitoring — Control type categories
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Which statement correctly categorizes preventive, detective, and corrective controls?',
  choices = '["Preventive controls stop incidents before they occur, detective controls identify incidents after they happen, and corrective controls remediate the impact", "All three control types serve the same function and are interchangeable", "Preventive controls fix problems, detective controls stop incidents, and corrective controls identify violations", "Preventive controls are always technical, detective controls are always administrative, and corrective controls are always physical"]'::jsonb,
  explanation = 'Correct (A): Preventive controls stop incidents before they occur (such as access badges preventing unauthorized entry). Detective controls identify incidents that have occurred (such as surveillance cameras). Corrective controls remediate the impact after detection (such as disabling compromised accounts). Under NIST SP 800-53, these three types form a complementary defense strategy. (C) is wrong because it reverses the definitions of all three control types. (D) is wrong because each control type can be technical, administrative, or physical.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3647;

-- ID 3648: Security Controls and Monitoring — Compensating control definition
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'What is a compensating control?',
  choices = '["A control that prevents all security incidents from occurring", "An alternative control that provides a similar level of protection when the primary control cannot function or is unavailable", "A control that detects incidents and automatically escalates them to management", "A control that permanently replaces all other controls in the organization"]'::jsonb,
  explanation = 'Correct (B): A compensating control is an alternative measure that provides a similar level of protection when the primary control cannot be implemented or has failed. Under NIST SP 800-53, compensating controls are documented as alternatives that meet the intent of the original control requirement. (A) is wrong because no single control can prevent all security incidents. (D) is wrong because compensating controls supplement or substitute for specific controls, not replace all controls.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3648;

-- ID 3649: Security Controls and Monitoring — AES encryption type
-- correct_index = 2 (was 2; unchanged)
UPDATE questions SET
  stem = 'What type of encryption algorithm is AES (Advanced Encryption Standard)?',
  choices = '["Asymmetric encryption using a public and private key pair", "A one-way hash function that cannot be reversed", "Symmetric encryption using the same key for encryption and decryption", "A digital signature algorithm used only for authentication"]'::jsonb,
  explanation = 'Correct (C): AES is a symmetric encryption algorithm, meaning the same secret key is used for both encryption and decryption. Under NIST FIPS 197, AES supports 128-bit, 192-bit, and 256-bit key lengths and is widely adopted for protecting data at rest and in transit. (A) is wrong because asymmetric encryption uses separate public and private keys, which describes algorithms like RSA. (B) is wrong because hash functions produce a fixed-length digest and are not encryption algorithms.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3649;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (9 questions)
-- ============================================================

-- ID 775: Data Management and Lifecycle — Restricted data classification
-- correct_index = 3 (was 3; unchanged)
UPDATE questions SET
  stem = 'In a four-tier data classification scheme, which classification applies to the most sensitive personally identifiable information?',
  choices = '["Public — data intended for unrestricted distribution", "Internal — data limited to organizational use", "Confidential — data requiring access controls and limited distribution", "Restricted — the highest sensitivity level requiring the strongest protection"]'::jsonb,
  explanation = 'Correct (D): In a standard four-tier classification scheme (Public, Internal, Confidential, Restricted), the Restricted tier applies to the most sensitive data such as Social Security numbers, whose unauthorized disclosure could result in identity theft, regulatory penalties, and significant harm to individuals. Under ISO 27001, data classification drives the selection of appropriate security controls. (C) is wrong because Confidential is a high sensitivity tier but not the highest. (B) is wrong because Internal is a lower sensitivity tier for general organizational data.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 775;

-- ID 776: Data Management and Lifecycle — Data destruction phase
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Which phase of the data lifecycle involves securely eliminating data that has exceeded its retention period?',
  choices = '["Data destruction", "Data creation", "Data storage", "Data archival"]'::jsonb,
  explanation = 'Correct (A): Data destruction (also called data disposal or sanitization) is the final phase of the data lifecycle where data that has exceeded its retention period is securely eliminated using methods appropriate to the data''s classification, such as cryptographic erasure, degaussing, or physical destruction. Under NIST SP 800-88, media sanitization guidelines define appropriate destruction methods. (D) is wrong because data archival involves moving data to long-term storage, not eliminating it. (C) is wrong because data storage involves maintaining and protecting data during its active or inactive lifecycle.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 776;

-- ID 777: Data Management and Lifecycle — Referential integrity definition
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Which database concept ensures that a record in one table references a valid record in another table?',
  choices = '["Primary key constraint", "Referential integrity (foreign key) constraint", "Check constraint", "Unique constraint"]'::jsonb,
  explanation = 'Correct (B): Referential integrity enforced through foreign key constraints ensures that a value in one table must match a valid value in the referenced table. This prevents orphaned records and maintains data consistency across related tables. Under COBIT, referential integrity is a key data quality control. (A) is wrong because a primary key uniquely identifies each record within a single table but does not enforce cross-table relationships. (C) is wrong because a check constraint validates that column values meet a specified condition within a single table.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 777;

-- ID 778: Data Management and Lifecycle — Completeness data quality dimension
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Which data quality dimension is at risk when a database permits null values in mandatory fields?',
  choices = '["Timeliness", "Uniqueness", "Completeness", "Consistency"]'::jsonb,
  explanation = 'Correct (C): Completeness means that all required data elements are present. Allowing null values in a mandatory field means records can exist without critical information, undermining data completeness and reliability. Under COBIT, completeness is one of the core data quality dimensions that organizations must maintain. (A) is wrong because timeliness refers to whether data is available when needed, not whether required fields are populated. (D) is wrong because consistency refers to whether the same data values agree across different systems or records.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 778;

-- ID 779: Data Management and Lifecycle — Indefinite retention risk
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Why does retaining all data indefinitely without a retention policy create compliance risk?',
  choices = '["It reduces storage costs by consolidating data into a single archive", "It simplifies regulatory compliance by keeping everything available", "It decreases the likelihood of data breaches by storing data longer", "It increases exposure surface, complicates privacy regulation compliance, and creates unnecessary litigation risk"]'::jsonb,
  explanation = 'Correct (D): Retaining all data indefinitely without a defined policy increases the exposure surface in data breaches, makes it difficult to comply with privacy regulations that require data minimization (such as GDPR), and can create unnecessary litigation holds. Under NIST SP 800-53 (SI-12), organizations must manage data retention in accordance with applicable laws and policies. (B) is wrong because indefinite retention makes compliance harder, not simpler, since regulations like GDPR require data minimization. (C) is wrong because storing more data longer increases rather than decreases breach exposure.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 779;

-- ID 780: Data Management and Lifecycle — Change data capture purpose
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Which database feature records every modification to a record, preserving before and after values with timestamps?',
  choices = '["Change data capture (CDC) or temporal tables", "Database indexing", "Table partitioning", "Database normalization"]'::jsonb,
  explanation = 'Correct (A): Change data capture (CDC) and temporal tables record every change made to database records, preserving the before and after values along with timestamps and the user who made the change, creating a comprehensive audit trail. Under COBIT, audit trails are a key control for data integrity and accountability. (B) is wrong because indexing improves query performance but does not record data changes. (D) is wrong because normalization reduces data redundancy but does not track modifications.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 780;

-- ID 781: Data Management and Lifecycle — Data masking definition
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Which data protection technique replaces sensitive values with realistic but non-reversible substitutes?',
  choices = '["Encryption", "Data masking", "Tokenization", "Data compression"]'::jsonb,
  explanation = 'Correct (B): Data masking replaces sensitive data with realistic but fictitious values in a non-reversible way, making it suitable for sharing data with third parties or use in non-production environments. Under NIST SP 800-188, de-identification techniques like data masking protect PII while preserving data utility. (A) is wrong because encryption is reversible with the correct key. (C) is wrong because tokenization maps sensitive values to tokens using a vault and is reversible by design.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 781;

-- ID 785: Data Management and Lifecycle — Table partitioning purpose
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'What is the primary benefit of partitioning a large database table by date range?',
  choices = '["It converts the database from relational to NoSQL format", "It eliminates the need for database indexing", "It enables the database engine to scan only relevant partitions, improving query performance for date-specific queries", "It removes all historical data older than the current partition"]'::jsonb,
  explanation = 'Correct (C): Table partitioning by date range enables partition pruning, where the database engine scans only the partitions relevant to the query rather than the entire table, dramatically improving performance for date-range-specific queries. Under COBIT, efficient data management supports IT governance objectives. (A) is wrong because partitioning does not change the database model from relational to NoSQL. (B) is wrong because partitioning complements indexing rather than replacing it.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 785;

-- ID 786: Data Management and Lifecycle — Cryptographic hash with digital signature
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Which technique provides the strongest assurance that data has not been tampered with during transmission?',
  choices = '["A parity check that detects single-bit errors", "A basic checksum that sums data values for comparison", "A cyclic redundancy check (CRC) that detects accidental corruption", "A cryptographic hash combined with a digital signature"]'::jsonb,
  explanation = 'Correct (D): A cryptographic hash function (such as SHA-256) combined with a digital signature provides the strongest integrity assurance. The hash generates a unique fingerprint of the data, and the digital signature authenticates the sender using asymmetric cryptography, detecting both accidental corruption and deliberate modification. Under NIST FIPS 180 and FIPS 186, these are the standard mechanisms for data integrity verification. (A) is wrong because parity checks detect only single-bit errors. (C) is wrong because CRCs detect accidental errors but offer no protection against deliberate tampering.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 786;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (7 questions)
-- ============================================================

-- ID 858: Incident Response and Recovery — First phase of incident response
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'According to NIST SP 800-61, which phase of incident response comes first?',
  choices = '["Preparation", "Detection and Analysis", "Containment, Eradication, and Recovery", "Post-Incident Activity"]'::jsonb,
  explanation = 'Correct (A): Under NIST SP 800-61, the four phases of incident response are: (1) Preparation, (2) Detection and Analysis, (3) Containment, Eradication, and Recovery, and (4) Post-Incident Activity. Preparation establishes the incident response capability, policies, procedures, and team before any incidents occur. (B) is wrong because Detection and Analysis is the second phase. (D) is wrong because Post-Incident Activity is the final phase.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 858;

-- ID 859: Incident Response and Recovery — Containment phase definition
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under NIST SP 800-61, what is the primary goal of the containment phase?',
  choices = '["To establish the incident response team and policies before an incident", "To limit the scope and impact of an active security incident by isolating compromised systems", "To conduct a post-mortem review and document lessons learned", "To install preventive controls such as antivirus software across all endpoints"]'::jsonb,
  explanation = 'Correct (B): The containment phase focuses on limiting the scope and impact of an active security incident. Under NIST SP 800-61, containment strategies include isolating compromised systems from the network, blocking malicious IP addresses, and disabling compromised accounts to prevent further spread. (A) is wrong because establishing the team and policies is the Preparation phase. (C) is wrong because post-mortem review is the Post-Incident Activity phase.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 859;

-- ID 860: Incident Response and Recovery — Post-incident activity purpose
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'Under NIST SP 800-61, which incident response phase addresses lessons learned and long-term systemic improvements?',
  choices = '["Detection and Analysis", "Containment", "Post-Incident Activity", "Eradication"]'::jsonb,
  explanation = 'Correct (C): Post-Incident Activity (also called lessons learned) is the phase where the incident response team conducts a root cause analysis, documents findings, and recommends long-term systemic improvements to prevent recurrence. Under NIST SP 800-61, this phase includes a formal post-mortem review. (A) is wrong because Detection and Analysis identifies and confirms the incident but does not address long-term improvements. (D) is wrong because Eradication removes the immediate threat but does not address systemic changes.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 860;

-- ID 861: Incident Response and Recovery — External communication spokesperson
-- correct_index = 3 (was 3; unchanged)
UPDATE questions SET
  stem = 'During a security incident, who should handle external communications according to incident response best practices?',
  choices = '["The technical staff member who first discovered the incident", "The external penetration testing vendor", "Any available IT staff member who can describe the technical details", "A designated communications representative coordinated with legal counsel"]'::jsonb,
  explanation = 'Correct (D): Under NIST SP 800-61, external communication during a security incident should be handled by a designated spokesperson — typically from communications or public relations — who coordinates with legal counsel to ensure consistent, accurate, and legally appropriate messaging. (A) is wrong because technical staff may lack communication training and could inadvertently create legal liability. (C) is wrong because ad hoc communication by any available staff can produce inconsistent messaging.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 861;

-- ID 863: Incident Response and Recovery — RPO gap definition
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What does it mean when actual data loss exceeds the Recovery Point Objective (RPO)?',
  choices = '["The organization failed to meet its data loss tolerance, indicating backup frequency was insufficient", "The organization successfully recovered within its defined tolerance", "The Recovery Time Objective has been exceeded", "The Maximum Tolerable Downtime has been met"]'::jsonb,
  explanation = 'Correct (A): When actual data loss exceeds the RPO, the organization has failed to meet its defined data loss tolerance. Under NIST SP 800-34, this indicates that backup frequency or replication intervals were insufficient for the stated recovery requirements. (B) is wrong because exceeding the RPO means the tolerance was not met, not that recovery was successful. (C) is wrong because RPO measures data loss, not recovery time — exceeding the RTO is a separate issue.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 863;

-- ID 864: Incident Response and Recovery — Eradication phase actions
-- correct_index = 1 (was 1; unchanged)
UPDATE questions SET
  stem = 'Under NIST SP 800-61, what is the primary objective of the eradication phase?',
  choices = '["To notify all employees about the incident via email", "To remove the attacker''s access and close the vulnerability that enabled the breach", "To purchase replacement hardware to eliminate any persistent threats", "To reboot all affected servers to clear active sessions"]'::jsonb,
  explanation = 'Correct (B): Under NIST SP 800-61, eradication requires completely removing the attacker''s access and closing the vulnerability or misconfiguration that enabled the breach. This includes resetting compromised credentials, patching vulnerabilities, removing malware, and auditing for similar weaknesses. (A) is wrong because employee notification is a communication task, not an eradication action. (D) is wrong because rebooting may temporarily disrupt sessions but does not revoke credentials or close vulnerabilities.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 864;

-- ID 867: Incident Response and Recovery — RTO exceeding MTD
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'What does it indicate when a system''s Recovery Time Objective (RTO) exceeds its Maximum Tolerable Downtime (MTD)?',
  choices = '["The current recovery capability is adequate and no action is needed", "The system is not important enough to warrant disaster recovery planning", "The organization cannot restore the system within its tolerance for downtime, creating unacceptable business risk", "The MTD should be increased to match the RTO"]'::jsonb,
  explanation = 'Correct (C): When the RTO exceeds the MTD, the organization cannot restore the system within its maximum tolerable downtime, meaning unacceptable business impacts will occur before recovery is complete. Under NIST SP 800-34, this gap must be addressed by improving recovery capabilities to bring the RTO below the MTD. (A) is wrong because the RTO exceeding MTD means the capability is inadequate, not adequate. (D) is wrong because increasing the MTD to match a slow RTO does not reduce the actual business impact of downtime.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 867;

COMMIT;
