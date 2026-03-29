-- Migration: Stem expansion — ISC batch 9 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 4911: Change Management (18 words)
-- ORIGINAL STEM: Which financial statement assertion addresses whether all transactions that should have been recorded have in fact been recorded?
UPDATE questions SET
  stem = $EXPL$During a year-end audit of Ridgeway Manufacturing, the engagement team discovers that several December purchase transactions were not posted to accounts payable. Which financial statement assertion does this omission most directly affect?$EXPL$
WHERE id = 4911;

-- ID 4912: Change Management (18 words)
-- ORIGINAL STEM: Which financial statement assertion is an auditor primarily testing when verifying that recorded inventory actually exists at year-end?
UPDATE questions SET
  stem = $EXPL$An auditor from Blake & Hartwell CPAs attends Coastal Electronics'' December 31 physical inventory count, confirming that items listed in the perpetual records are physically present in the warehouse. Which financial statement assertion is the auditor primarily testing?$EXPL$
WHERE id = 4912;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (2 questions)
-- ============================================================

-- ID 777: Data Management and Lifecycle (17 words)
-- ORIGINAL STEM: Which database concept ensures that a record in one table references a valid record in another table?
UPDATE questions SET
  stem = $EXPL$Pinnacle Retail''s order management database enforces a rule preventing any sales order from being saved unless it links to an existing customer record. Which database concept does this constraint represent?$EXPL$
WHERE id = 777;

-- ID 3508: Data Management and Lifecycle (17 words)
-- ORIGINAL STEM: Which data quality dimension is violated when the same data element has different values across multiple systems?
UPDATE questions SET
  stem = $EXPL$Mercer Financial''s CRM lists a client''s address as 200 Oak Street, while the billing system shows 450 Elm Avenue for the same client. Which data quality dimension is violated?$EXPL$
WHERE id = 3508;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (1 questions)
-- ============================================================

-- ID 5843: Data Protection Technologies (18 words)
-- ORIGINAL STEM: Which term describes data that is stored on a physical medium and not actively being transmitted or processed?
UPDATE questions SET
  stem = $EXPL$Garrison Healthcare''s compliance officer is categorizing data states to determine which encryption controls apply. Patient records saved on the hospital''s SAN storage arrays are not currently being accessed or transmitted. Which term describes data in this state?$EXPL$
WHERE id = 5843;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (2 questions)
-- ============================================================

-- ID 762: ERP and Accounting Information Systems (19 words)
-- ORIGINAL STEM: In an accounting information system, which type of control ensures completeness and authorization at the point of data entry?
UPDATE questions SET
  stem = $EXPL$A staff accountant at Waverly Industries enters a vendor invoice into the ERP system. The system rejects the entry because the purchase order number is missing and the amount exceeds the authorized limit. Which type of control triggered these checks?$EXPL$
WHERE id = 762;

-- ID 771: ERP and Accounting Information Systems (19 words)
-- ORIGINAL STEM: When migrating from multiple legacy systems to one ERP, what is the best approach for inconsistent charts of accounts?
UPDATE questions SET
  stem = $EXPL$Crestfield Corp. is consolidating three subsidiary accounting systems into a single SAP ERP. Each subsidiary uses a different chart of accounts with overlapping but inconsistent account numbering. What is the best approach to resolve these inconsistencies?$EXPL$
WHERE id = 771;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (2 questions)
-- ============================================================

-- ID 7828: Incident Response and Recovery (17 words)
-- ORIGINAL STEM: What is the primary role of a Security Information and Event Management (SIEM) system in incident response?
UPDATE questions SET
  stem = $EXPL$After detecting unusual login patterns across multiple servers, Northbridge Financial''s security team relies on a centralized platform that aggregates logs from firewalls, endpoints, and applications. What is the primary role of this SIEM system in incident response?$EXPL$
WHERE id = 7828;

-- ID 3700: Incident Response and Recovery (18 words)
-- ORIGINAL STEM: What component of an incident response plan defines who must be informed and when during a data breach?
UPDATE questions SET
  stem = $EXPL$Redstone Software discovers that an attacker exfiltrated 50,000 customer records. The incident response team needs to determine the notification sequence for executives, regulators, and affected individuals. Which component of the incident response plan defines these requirements?$EXPL$
WHERE id = 3700;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 1057: IT Audit Frameworks (15 words)
-- ORIGINAL STEM: Which IT framework centers on the service value system, guiding principles, and continual improvement practices?
UPDATE questions SET
  stem = $EXPL$Oakmont Insurance is selecting a framework to improve how its IT department delivers help desk, application hosting, and infrastructure services to internal business units. Which framework centers on the service value system, guiding principles, and continual improvement?$EXPL$
WHERE id = 1057;

-- ID 3838: IT Audit Frameworks (15 words)
-- ORIGINAL STEM: ITIL 4 defines seven guiding principles. Which of the following is one of those principles?
UPDATE questions SET
  stem = $EXPL$A CIO at Keystone Health is aligning IT service practices with ITIL 4 and asks the governance team to adopt the framework''s seven guiding principles. Which of the following is one of those ITIL 4 guiding principles?$EXPL$
WHERE id = 3838;

-- ID 12963: IT Audit Frameworks (15 words)
-- ORIGINAL STEM: Which international standard provides requirements for an IT service management system, complementing ITIL 4 guidance?
UPDATE questions SET
  stem = $EXPL$Vertex Consulting wants its managed services division to achieve a formal certification demonstrating compliance with IT service management requirements. Which international standard provides certifiable requirements for an IT service management system, complementing ITIL 4 guidance?$EXPL$
WHERE id = 12963;

-- ============================================================
-- IT GENERAL CONTROLS (2 questions)
-- ============================================================

-- ID 1047: IT General Controls (17 words)
-- ORIGINAL STEM: What IT control principle requires that the same person cannot both develop and deploy code to production?
UPDATE questions SET
  stem = $EXPL$During an ITGC walkthrough at Summit Logistics, an auditor discovers that a single developer wrote a payroll calculation update and also migrated it to the production server. Which IT control principle was violated?$EXPL$
WHERE id = 1047;

-- ID 1048: IT General Controls (18 words)
-- ORIGINAL STEM: When evaluating IT general controls over computer operations, which of the following is classified as a detective control?
UPDATE questions SET
  stem = $EXPL$An auditor at Beacon Accounting is classifying computer operations controls at a client''s data center by timing — preventive, detective, or corrective. Which of the following controls is classified as detective?$EXPL$
WHERE id = 1048;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (1 questions)
-- ============================================================

-- ID 3455: IT Infrastructure and Architecture (19 words)
-- ORIGINAL STEM: An organization uses SaaS-based accounting software. Under the shared responsibility model, which of the following is the organization's responsibility?
UPDATE questions SET
  stem = $EXPL$Trident Staffing uses a SaaS-based general ledger application hosted by a cloud provider. The provider manages all infrastructure, patching, and application code. Under the shared responsibility model, which of the following remains Trident''s responsibility?$EXPL$
WHERE id = 3455;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (2 questions)
-- ============================================================

-- ID 13905: Privacy Requirements and Data Protection (19 words)
-- ORIGINAL STEM: Under GDPR Article 9, which type of data is classified as a special category requiring additional protections before processing?
UPDATE questions SET
  stem = $EXPL$A Berlin-based fintech company plans to collect biometric data from customers for identity verification. The data protection officer reviews GDPR Article 9 obligations. Under GDPR, which type of data is classified as a special category requiring additional protections before processing?$EXPL$
WHERE id = 13905;

-- ID 13919: Privacy Requirements and Data Protection (19 words)
-- ORIGINAL STEM: Under HIPAA, the Safe Harbor method of de-identification requires removal of how many categories of identifiers from health information?
UPDATE questions SET
  stem = $EXPL$Lakewood Regional Hospital wants to share patient data with a university research team. The privacy officer proposes using the HIPAA Safe Harbor method to de-identify the records. How many categories of identifiers must be removed under this method?$EXPL$
WHERE id = 13919;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (7 questions)
-- ============================================================

-- ID 809: Security and Control Frameworks (16 words)
-- ORIGINAL STEM: Which of the following represents the correct hierarchy from broadest to most specific in IT governance?
UPDATE questions SET
  stem = $EXPL$Prescott Industries'' new CISO is organizing IT governance documentation into layers — from high-level strategic direction down to detailed operational steps. Which of the following represents the correct hierarchy from broadest to most specific?$EXPL$
WHERE id = 809;

-- ID 13298: Security and Control Frameworks (16 words)
-- ORIGINAL STEM: In COBIT 2019, which management domain is responsible for day-to-day IT service delivery and operational support?
UPDATE questions SET
  stem = $EXPL$Clearwater Bank is mapping its IT operations — help desk, security services, and infrastructure monitoring — to COBIT 2019 management domains. Which COBIT 2019 management domain covers day-to-day IT service delivery and operational support?$EXPL$
WHERE id = 13298;

-- ID 13943: Security and Control Frameworks (16 words)
-- ORIGINAL STEM: What is the term for the level of risk that remains after controls have been applied?
UPDATE questions SET
  stem = $EXPL$After implementing firewalls, encryption, and access controls, Fieldstone Corp.''s risk committee acknowledges that some cybersecurity exposure persists. What is the term for the level of risk that remains after controls have been applied?$EXPL$
WHERE id = 13943;

-- ID 803: Security and Control Frameworks (17 words)
-- ORIGINAL STEM: Under the NIST CSF, which core function focuses on implementing safeguards to ensure delivery of critical services?
UPDATE questions SET
  stem = $EXPL$Granite Mutual is deploying encryption, access controls, and employee security training as part of its NIST Cybersecurity Framework alignment. Which NIST CSF core function do these safeguard activities fall under?$EXPL$
WHERE id = 803;

-- ID 13290: Security and Control Frameworks (17 words)
-- ORIGINAL STEM: What type of control is designed to fix problems after they are detected and restore normal operations?
UPDATE questions SET
  stem = $EXPL$After detecting a ransomware infection on a file server, Elm Street Financial''s IT team restores the encrypted files from last night''s backup and re-images the compromised machine. What type of control does this restoration activity represent?$EXPL$
WHERE id = 13290;

-- ID 13297: Security and Control Frameworks (17 words)
-- ORIGINAL STEM: Among the major security and governance frameworks, which one offers formal organizational certification through an independent audit?
UPDATE questions SET
  stem = $EXPL$Sterling Consulting''s clients increasingly require proof that the firm''s information security practices meet an internationally recognized standard. Management wants to pursue a formal organizational certification through an independent audit. Which framework offers this certification?$EXPL$
WHERE id = 13297;

-- ID 815: Security and Control Frameworks (18 words)
-- ORIGINAL STEM: An organization implements a defense-in-depth strategy for its financial systems. Which of the following BEST represents this approach?
UPDATE questions SET
  stem = $EXPL$Cascade Manufacturing protects its financial reporting systems with firewalls at the perimeter, network segmentation between departments, endpoint detection on workstations, and database-level encryption. Which concept BEST describes this layered approach?$EXPL$
WHERE id = 815;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (7 questions)
-- ============================================================

-- ID 832: Security Controls and Monitoring (17 words)
-- ORIGINAL STEM: Which of the following is the PRIMARY purpose of a Security Information and Event Management (SIEM) system?
UPDATE questions SET
  stem = $EXPL$Ridgeview Credit Union deploys a platform that ingests firewall logs, authentication records, and endpoint alerts into a single dashboard for correlation and analysis. What is the PRIMARY purpose of this SIEM system?$EXPL$
WHERE id = 832;

-- ID 3670: Security Controls and Monitoring (17 words)
-- ORIGINAL STEM: Which access control principle requires that no single person can both initiate and approve the same transaction?
UPDATE questions SET
  stem = $EXPL$At Briarwood Manufacturing, a purchasing clerk submits a $45,000 vendor payment request that must be authorized by the AP manager before processing. Which access control principle does this dual-role requirement enforce?$EXPL$
WHERE id = 3670;

-- ID 13661: Security Controls and Monitoring (17 words)
-- ORIGINAL STEM: What type of security control is a closed-circuit television (CCTV) surveillance system installed in a data center?
UPDATE questions SET
  stem = $EXPL$Harborview Data Services installs CCTV cameras at every entrance and within the server room of its Tier III data center to record all physical activity. What type of security control does CCTV represent?$EXPL$
WHERE id = 13661;

-- ID 831: Security Controls and Monitoring (19 words)
-- ORIGINAL STEM: An organization implements role-based access control (RBAC) for its ERP system. Which of the following BEST describes this approach?
UPDATE questions SET
  stem = $EXPL$Horizon Distribution configures its ERP so that each employee''s system permissions are determined by their job title — accounts payable clerks, warehouse managers, and controllers each receive a predefined permission set. Which statement BEST describes this access control approach?$EXPL$
WHERE id = 831;

-- ID 843: Security Controls and Monitoring (19 words)
-- ORIGINAL STEM: An organization conducts quarterly vulnerability scans and annual penetration tests. What is the KEY difference between these two activities?
UPDATE questions SET
  stem = $EXPL$Brightfield Energy''s security program includes quarterly automated vulnerability scans and an annual engagement where ethical hackers attempt to exploit identified weaknesses. What is the KEY difference between these two activities?$EXPL$
WHERE id = 843;

-- ID 3657: Security Controls and Monitoring (19 words)
-- ORIGINAL STEM: Attribute-Based Access Control (ABAC) differs from Role-Based Access Control (RBAC) in a key way. Which statement BEST describes ABAC?
UPDATE questions SET
  stem = $EXPL$Sentinel Defense Systems needs an access model that evaluates user clearance level, device location, and time of day before granting access to classified project files. The team considers ABAC instead of RBAC. Which statement BEST describes ABAC?$EXPL$
WHERE id = 3657;

-- ID 3663: Security Controls and Monitoring (19 words)
-- ORIGINAL STEM: An organization implements Endpoint Detection and Response (EDR) on all workstations. How does EDR differ from traditional antimalware software?
UPDATE questions SET
  stem = $EXPL$After a phishing incident, Lakeshore Accounting deploys Endpoint Detection and Response (EDR) agents on every employee workstation alongside existing antivirus software. How does EDR differ from traditional antimalware?$EXPL$
WHERE id = 3663;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 875: SOC Engagements (18 words)
-- ORIGINAL STEM: What is the key difference between a SOC 2 Type I and a SOC 2 Type II report?
UPDATE questions SET
  stem = $EXPL$DataVault Cloud Services is choosing between obtaining a SOC 2 Type I and a SOC 2 Type II report for the first time. What is the key difference between these two report types?$EXPL$
WHERE id = 875;

-- ID 879: SOC Engagements (18 words)
-- ORIGINAL STEM: A service organization receives a qualified opinion on its SOC 2 Type II report. What does this indicate?
UPDATE questions SET
  stem = $EXPL$Nexus Payment Solutions receives a qualified opinion on its SOC 2 Type II report covering the twelve months ended September 30, 2025. What does a qualified opinion indicate about the service organization''s controls?$EXPL$
WHERE id = 879;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (2 questions)
-- ============================================================

-- ID 4946: SOC Report Content and Structure (17 words)
-- ORIGINAL STEM: Which of the following is included in the management description of the system within a SOC report?
UPDATE questions SET
  stem = $EXPL$Apex Payroll Services is preparing the system description section of its SOC 1 Type II report. Which of the following is included in management''s description of the system?$EXPL$
WHERE id = 4946;

-- ID 4962: SOC Report Content and Structure (17 words)
-- ORIGINAL STEM: The system description section of a SOC report defines the "system boundaries." What do system boundaries establish?
UPDATE questions SET
  stem = $EXPL$While reviewing CloudFirst Hosting''s SOC 2 report, an auditor focuses on the system description''s definition of "system boundaries." What do system boundaries establish within the SOC report?$EXPL$
WHERE id = 4962;

-- ============================================================
-- SOC REPORTING (2 questions)
-- ============================================================

-- ID 3890: SOC Reporting (17 words)
-- ORIGINAL STEM: What is the result of using the inclusive method for a subservice organization in a SOC report?
UPDATE questions SET
  stem = $EXPL$Paramount Benefits Administration outsources data hosting to Atlas Cloud Infrastructure. Paramount''s SOC 2 report uses the inclusive method for Atlas. What is the result of using this method?$EXPL$
WHERE id = 3890;

-- ID 3903: SOC Reporting (17 words)
-- ORIGINAL STEM: How should a service organization address a qualified opinion in its SOC report before the next examination?
UPDATE questions SET
  stem = $EXPL$Orion Data Services received a qualified opinion on its SOC 2 Type II report due to two access review exceptions. How should Orion address the qualified opinion before the next examination period?$EXPL$
WHERE id = 3903;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (2 questions)
-- ============================================================

-- ID 13784: SOC Reporting and Trust Services Criteria (19 words)
-- ORIGINAL STEM: In a SOC 2 engagement, who is responsible for preparing the management assertion in Section II of the report?
UPDATE questions SET
  stem = $EXPL$Vanguard Processing Corp. is undergoing its first SOC 2 Type II examination. The engagement partner asks who will prepare the management assertion included in Section II of the report. Who is responsible?$EXPL$
WHERE id = 13784;

-- ID 886: SOC Reporting and Trust Services Criteria (20 words)
-- ORIGINAL STEM: A SOC 2 report includes the Availability criteria. Which of the following controls would be MOST relevant to this category?
UPDATE questions SET
  stem = $EXPL$CloudBridge Hosting''s SOC 2 Type II report covers the Security and Availability trust services criteria. The engagement team is identifying controls relevant to Availability. Which of the following controls would be MOST relevant?$EXPL$
WHERE id = 886;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 3917: SOC Testing Controls (18 words)
-- ORIGINAL STEM: For a high-risk weekly control with 52 occurrences and zero expected deviations, what is the likely sample approach?
UPDATE questions SET
  stem = $EXPL$A SOC 2 practitioner is testing a high-risk weekly firewall rule review performed 52 times during the examination year. No deviations are expected. What is the likely sample approach for this control?$EXPL$
WHERE id = 3917;

-- ID 1208: SOC Testing Controls (19 words)
-- ORIGINAL STEM: When testing a daily control over a 12-month SOC 2 Type II period, what is the appropriate sample size?
UPDATE questions SET
  stem = $EXPL$Sterling Managed Services'' SOC 2 Type II examination covers a 12-month period. The practitioner is testing a daily backup verification control performed each business day (approximately 260 occurrences). What is the appropriate sample size?$EXPL$
WHERE id = 1208;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (7 questions)
-- ============================================================

-- ID 3538: System Availability and Change Management (15 words)
-- ORIGINAL STEM: Which data replication strategy is required to achieve a Recovery Point Objective (RPO) of zero?
UPDATE questions SET
  stem = $EXPL$Patriot National Bank''s business impact analysis requires zero data loss for its core banking transaction database. The DR committee is selecting a replication strategy to meet an RPO of zero. Which strategy is required?$EXPL$
WHERE id = 3538;

-- ID 3543: System Availability and Change Management (15 words)
-- ORIGINAL STEM: Under ITIL, what is the correct sequence of steps in a standard change management workflow?
UPDATE questions SET
  stem = $EXPL$Cornerstone Financial is adopting ITIL 4 practices for managing changes to its production trading platform. The IT director asks the team to document the correct sequence of steps in a standard change management workflow. What is that sequence?$EXPL$
WHERE id = 3543;

-- ID 3569: System Availability and Change Management (15 words)
-- ORIGINAL STEM: Which of the following BEST describes a cold site in the context of disaster recovery?
UPDATE questions SET
  stem = $EXPL$Hillcrest Manufacturing is evaluating disaster recovery site options to meet a 72-hour RTO for its non-critical systems. The DR consultant recommends a cold site as the most cost-effective option. Which description BEST defines a cold site?$EXPL$
WHERE id = 3569;

-- ID 3572: System Availability and Change Management (15 words)
-- ORIGINAL STEM: What is the primary purpose of an Uninterruptible Power Supply (UPS) in a data center?
UPDATE questions SET
  stem = $EXPL$Evergreen Data Services installs battery-backed UPS units in its primary data center to protect servers during electrical disturbances. What is the primary purpose of a UPS in this environment?$EXPL$
WHERE id = 3572;

-- ID 13636: System Availability and Change Management (15 words)
-- ORIGINAL STEM: What is the primary purpose of the deployment phase in the System Development Life Cycle?
UPDATE questions SET
  stem = $EXPL$Ashford Technologies has completed user acceptance testing for its new inventory management application and is preparing for go-live. What is the primary purpose of the deployment phase in the SDLC?$EXPL$
WHERE id = 13636;

-- ID 3549: System Availability and Change Management (17 words)
-- ORIGINAL STEM: What is the PRIMARY purpose of a post-implementation review (PIR) after a system change has been deployed?
UPDATE questions SET
  stem = $EXPL$Two weeks after deploying a major update to its billing system, Meridian Utilities convenes stakeholders to evaluate the change''s outcomes and document lessons learned. What is the PRIMARY purpose of this post-implementation review?$EXPL$
WHERE id = 3549;

-- ID 3535: System Availability and Change Management (19 words)
-- ORIGINAL STEM: Which of the following is the FIRST step an organization should take when developing a Business Continuity Plan (BCP)?
UPDATE questions SET
  stem = $EXPL$Following a prolonged network outage that disrupted client services, Whitfield Advisory decides to develop a formal Business Continuity Plan. Which of the following is the FIRST step the firm should take?$EXPL$
WHERE id = 3535;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (2 questions)
-- ============================================================

-- ID 13725: Threats, Attacks, and Vulnerabilities (16 words)
-- ORIGINAL STEM: What type of unwanted software automatically displays or downloads advertising material, often bundled with free applications?
UPDATE questions SET
  stem = $EXPL$After installing a free PDF converter downloaded from the internet, employees at Greenfield Logistics notice persistent pop-up advertisements appearing on their workstations. What type of unwanted software is most likely responsible?$EXPL$
WHERE id = 13725;

-- ID 3633: Threats, Attacks, and Vulnerabilities (20 words)
-- ORIGINAL STEM: During a threat assessment, an analyst categorizes a SYN flood attack. In which DDoS category does a SYN flood belong?
UPDATE questions SET
  stem = $EXPL$Summit eCommerce experiences a sudden surge of half-open TCP connection requests overwhelming its web servers. The security analyst identifies the traffic pattern as a SYN flood. In which DDoS attack category does a SYN flood belong?$EXPL$
WHERE id = 3633;

COMMIT;
