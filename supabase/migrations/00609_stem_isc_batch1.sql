-- Migration: Stem expansion — ISC batch 1 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 4915: Change Management (9 words)
-- ORIGINAL STEM: In configuration management, what does "baseline identification" refer to?
UPDATE questions SET
  stem = $EXPL$Pryor Manufacturing recently deployed a new ERP system and wants to establish a documented reference point for its production configuration. The IT director plans to formally record the approved state of each system component. In configuration management, what does "baseline identification" refer to?$EXPL$
WHERE id = 4915;

-- ID 12612: Change Management (9 words)
-- ORIGINAL STEM: In configuration management, what is a "configuration item" (CI)?
UPDATE questions SET
  stem = $EXPL$Dellmark Financial Services is populating its Configuration Management Database (CMDB) and must decide which system components to track individually. The IT governance team is defining the scope of items to include. In configuration management, what is a "configuration item" (CI)?$EXPL$
WHERE id = 12612;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 3525: Data Management and Lifecycle (5 words)
-- ORIGINAL STEM: What does data lineage document?
UPDATE questions SET
  stem = $EXPL$During a financial statement audit at Glenwood Corp., the auditor asks the data governance team to demonstrate how customer revenue figures flow from the point-of-sale system through three intermediate databases to the general ledger. What does data lineage document?$EXPL$
WHERE id = 3525;

-- ID 13435: Data Management and Lifecycle (6 words)
-- ORIGINAL STEM: What does an incremental backup capture?
UPDATE questions SET
  stem = $EXPL$Oakridge Retail runs a full backup of its inventory database every Sunday evening. On Wednesday, the operations team executes a scheduled backup designed to minimize storage use and backup time. What does an incremental backup capture?$EXPL$
WHERE id = 13435;

-- ID 13450: Data Management and Lifecycle (6 words)
-- ORIGINAL STEM: What does a differential backup capture?
UPDATE questions SET
  stem = $EXPL$Finley Healthcare performs a full backup of its patient records system each Sunday at midnight. The IT team runs a mid-week backup on Wednesday that is faster to restore than an incremental approach. What does a differential backup capture?$EXPL$
WHERE id = 13450;

-- ID 3502: Data Management and Lifecycle (8 words)
-- ORIGINAL STEM: What is the primary purpose of database normalization?
UPDATE questions SET
  stem = $EXPL$A database administrator at Kessler Logistics discovers that customer addresses are stored in both the orders table and the shipping table, leading to frequent inconsistencies when addresses are updated. The administrator recommends restructuring the schema. What is the primary purpose of database normalization?$EXPL$
WHERE id = 3502;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5827: Data Protection Technologies (8 words)
-- ORIGINAL STEM: What is the defining characteristic of symmetric encryption?
UPDATE questions SET
  stem = $EXPL$Vance Electronics needs to encrypt large volumes of transaction data stored on its database servers. The security architect selects an encryption method optimized for speed and bulk data processing. What is the defining characteristic of symmetric encryption?$EXPL$
WHERE id = 5827;

-- ID 5873: Data Protection Technologies (9 words)
-- ORIGINAL STEM: What is steganography in the context of information security?
UPDATE questions SET
  stem = $EXPL$A forensic investigator at Ridley Corp. discovers that an employee has been concealing proprietary data inside ordinary image files before emailing them to a personal account. What is steganography in the context of information security?$EXPL$
WHERE id = 5873;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (2 questions)
-- ============================================================

-- ID 760: ERP and Accounting Information Systems (12 words)
-- ORIGINAL STEM: Which of the following best describes an Enterprise Resource Planning (ERP) system?
UPDATE questions SET
  stem = $EXPL$Harmon Industries currently uses separate applications for accounting, inventory, and human resources, resulting in duplicated data and inconsistent reports. Management is evaluating a single platform to unify these functions. Which of the following best describes an Enterprise Resource Planning (ERP) system?$EXPL$
WHERE id = 760;

-- ID 761: ERP and Accounting Information Systems (12 words)
-- ORIGINAL STEM: What is the primary risk of excessive customization during an ERP implementation?
UPDATE questions SET
  stem = $EXPL$Crestline Manufacturing is implementing a new ERP system and has requested over 200 custom modifications to match its legacy workflows. The project manager warns that this approach may create long-term problems. What is the primary risk of excessive customization during an ERP implementation?$EXPL$
WHERE id = 761;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (4 questions)
-- ============================================================

-- ID 7813: Incident Response and Recovery (9 words)
-- ORIGINAL STEM: What characterizes a cold site in disaster recovery planning?
UPDATE questions SET
  stem = $EXPL$Benton Financial Group is evaluating disaster recovery site options on a limited budget. The CFO proposes leasing a facility that would require the company to procure and install all hardware after a disaster occurs. What characterizes a cold site in disaster recovery planning?$EXPL$
WHERE id = 7813;

-- ID 7903: Incident Response and Recovery (9 words)
-- ORIGINAL STEM: What is failover in the context of disaster recovery?
UPDATE questions SET
  stem = $EXPL$During a power outage at Meridian Bank''s primary data center, its online banking application automatically begins running on a standby server at a secondary facility with no manual intervention. What is failover in the context of disaster recovery?$EXPL$
WHERE id = 7903;

-- ID 3686: Incident Response and Recovery (10 words)
-- ORIGINAL STEM: In incident response, what distinguishes long-term containment from short-term containment?
UPDATE questions SET
  stem = $EXPL$Waverly Corp.''s security team has isolated a compromised server from the network to stop malware from spreading. The team now needs to apply temporary fixes that allow the business to continue operating while preserving forensic evidence. In incident response, what distinguishes long-term containment from short-term containment?$EXPL$
WHERE id = 3686;

-- ID 7911: Incident Response and Recovery (10 words)
-- ORIGINAL STEM: What does Maximum Tolerable Downtime represent in disaster recovery planning?
UPDATE questions SET
  stem = $EXPL$Trident Insurance is conducting a business impact analysis for its claims processing system. The risk committee needs to determine the longest period the system can be unavailable before the company suffers irreversible harm. What does Maximum Tolerable Downtime (MTD) represent in disaster recovery planning?$EXPL$
WHERE id = 7911;

-- ============================================================
-- IT AUDIT FRAMEWORKS (4 questions)
-- ============================================================

-- ID 1060: IT Audit Frameworks (10 words)
-- ORIGINAL STEM: In risk management, what does the risk transfer strategy involve?
UPDATE questions SET
  stem = $EXPL$After completing a quantitative risk assessment, Dunbar Logistics determines its annualized loss expectancy for a ransomware attack is $75,000. The CTO recommends shifting the financial impact of this risk to a third party rather than building additional controls. In risk management, what does the risk transfer strategy involve?$EXPL$
WHERE id = 1060;

-- ID 3832: IT Audit Frameworks (10 words)
-- ORIGINAL STEM: Which organization developed and maintains the COBIT 2019 governance framework?
UPDATE questions SET
  stem = $EXPL$Park & Associates is helping a client select an IT governance framework that organizes 40 governance and management objectives across five domains. The engagement partner asks the team to confirm the framework''s issuing body. Which organization developed and maintains the COBIT 2019 governance framework?$EXPL$
WHERE id = 3832;

-- ID 3835: IT Audit Frameworks (10 words)
-- ORIGINAL STEM: In COBIT 2019, what is the purpose of design factors?
UPDATE questions SET
  stem = $EXPL$Calloway Health Systems is tailoring its IT governance approach based on enterprise-specific characteristics such as its regulatory environment, risk profile, and IT sourcing model. In COBIT 2019, what is the purpose of design factors?$EXPL$
WHERE id = 3835;

-- ID 3837: IT Audit Frameworks (10 words)
-- ORIGINAL STEM: What is the central concept of the ITIL 4 framework?
UPDATE questions SET
  stem = $EXPL$Ashford Technologies is adopting a framework focused on how IT services are designed, delivered, and continually improved to create value for stakeholders. What is the central concept of the ITIL 4 framework?$EXPL$
WHERE id = 3837;

-- ============================================================
-- IT GENERAL CONTROLS (2 questions)
-- ============================================================

-- ID 13865: IT General Controls (8 words)
-- ORIGINAL STEM: What are escalation procedures in IT incident management?
UPDATE questions SET
  stem = $EXPL$Sterling Bank''s help desk receives a report that the core banking application is unresponsive. The Level 1 analyst cannot resolve the issue within 15 minutes and must follow a predefined chain of notification. What are escalation procedures in IT incident management?$EXPL$
WHERE id = 13865;

-- ID 13852: IT General Controls (10 words)
-- ORIGINAL STEM: What is deprovisioning in the context of IT access controls?
UPDATE questions SET
  stem = $EXPL$An HR manager at Norwood Consulting notifies the IT department that a senior analyst resigned effective Friday. The security team must promptly disable all system accounts and revoke access rights. What is deprovisioning in the context of IT access controls?$EXPL$
WHERE id = 13852;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (2 questions)
-- ============================================================

-- ID 13591: IT Infrastructure and Architecture (11 words)
-- ORIGINAL STEM: Which network service translates human-readable domain names into numeric IP addresses?
UPDATE questions SET
  stem = $EXPL$When employees at Canton Industries type a website address such as ''portal.cantonindustries.com'' into their browser, a background network service resolves it to the server''s numeric address. Which network service translates human-readable domain names into numeric IP addresses?$EXPL$
WHERE id = 13591;

-- ID 758: IT Infrastructure and Architecture (12 words)
-- ORIGINAL STEM: Which of the following describes the concept of "infrastructure as code" (IaC)?
UPDATE questions SET
  stem = $EXPL$Redstone Analytics manages its cloud server environments by writing version-controlled scripts that automatically provision and configure servers in a repeatable manner. Which of the following describes the concept of "infrastructure as code" (IaC)?$EXPL$
WHERE id = 758;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (3 questions)
-- ============================================================

-- ID 13212: Privacy Requirements and Data Protection (7 words)
-- ORIGINAL STEM: Under GDPR, what is a "data subject"?
UPDATE questions SET
  stem = $EXPL$Luxmore Retail, a U.S.-based e-commerce company, ships products to customers throughout the European Union. Its privacy counsel is classifying the individuals whose personal data the company collects and processes. Under GDPR, what is a "data subject"?$EXPL$
WHERE id = 13212;

-- ID 13910: Privacy Requirements and Data Protection (8 words)
-- ORIGINAL STEM: Under HIPAA, what is a designated record set?
UPDATE questions SET
  stem = $EXPL$A patient at Greenfield Medical Center requests access to all records the hospital uses to make decisions about their care. The privacy officer must identify which records fall within the patient''s right of access. Under HIPAA, what is a designated record set?$EXPL$
WHERE id = 13910;

-- ID 13189: Privacy Requirements and Data Protection (10 words)
-- ORIGINAL STEM: Under GDPR, which of the following best defines "personal data"?
UPDATE questions SET
  stem = $EXPL$Bergen & Holt LLP is advising a client on GDPR compliance and must determine which categories of information collected from EU customers qualify for protection under the regulation. Under GDPR, which of the following best defines "personal data"?$EXPL$
WHERE id = 13189;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3606: Security and Control Frameworks (8 words)
-- ORIGINAL STEM: What does NIST SP 800-66 provide guidance on?
UPDATE questions SET
  stem = $EXPL$Lakeside Community Hospital is selecting a NIST publication to help its IT team implement the HIPAA Security Rule. The compliance officer identifies a specific special publication designed for this purpose. What does NIST SP 800-66 provide guidance on?$EXPL$
WHERE id = 3606;

-- ID 805: Security and Control Frameworks (9 words)
-- ORIGINAL STEM: What does ISO 27001 require an organization to establish?
UPDATE questions SET
  stem = $EXPL$Nexus Data Services wants to achieve an internationally recognized certification demonstrating that its information security practices meet a formal standard. The CISO is reviewing the core requirements of the certifiable standard. What does ISO 27001 require an organization to establish?$EXPL$
WHERE id = 805;

-- ID 13296: Security and Control Frameworks (9 words)
-- ORIGINAL STEM: What is the primary purpose of application output controls?
UPDATE questions SET
  stem = $EXPL$After the monthly close, Bridgeport Manufacturing''s accounting system generates financial reports that are distributed to division controllers. The internal audit team is evaluating the controls governing these system-generated reports. What is the primary purpose of application output controls?$EXPL$
WHERE id = 13296;

-- ID 3582: Security and Control Frameworks (10 words)
-- ORIGINAL STEM: In COBIT 2019, what distinguishes governance objectives from management objectives?
UPDATE questions SET
  stem = $EXPL$Whitfield Corp.''s board of directors oversees IT strategy while the CIO''s team executes day-to-day IT operations. An IT auditor is mapping these responsibilities to the COBIT 2019 framework. In COBIT 2019, what distinguishes governance objectives from management objectives?$EXPL$
WHERE id = 3582;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 3648: Security Controls and Monitoring (5 words)
-- ORIGINAL STEM: What is a compensating control?
UPDATE questions SET
  stem = $EXPL$A small nonprofit cannot fully segregate the duties of its IT administrator due to staffing constraints. Management implements enhanced logging and independent review of all privileged activity as an alternative measure. What is a compensating control?$EXPL$
WHERE id = 3648;

-- ID 3652: Security Controls and Monitoring (7 words)
-- ORIGINAL STEM: What three properties do digital signatures provide?
UPDATE questions SET
  stem = $EXPL$Thornton & Webb CPAs sends electronically signed engagement letters to clients. Each letter is hashed and the hash encrypted with the firm''s private key so the client can verify the sender''s identity and detect any modifications. What three properties do digital signatures provide?$EXPL$
WHERE id = 3652;

-- ID 833: Security Controls and Monitoring (8 words)
-- ORIGINAL STEM: What does the user deprovisioning (offboarding) process ensure?
UPDATE questions SET
  stem = $EXPL$On March 15, 2026, Hartwell Dynamics terminates a network engineer who had administrator-level access to production servers and the VPN. The IT security team initiates the offboarding workflow within one hour. What does the user deprovisioning (offboarding) process ensure?$EXPL$
WHERE id = 833;

-- ID 3650: Security Controls and Monitoring (8 words)
-- ORIGINAL STEM: What problem does asymmetric (public key) encryption solve?
UPDATE questions SET
  stem = $EXPL$Mercer Financial needs to exchange encrypted data with hundreds of external partners but finds it impractical to securely distribute a shared secret key to every counterparty. What problem does asymmetric (public key) encryption solve?$EXPL$
WHERE id = 3650;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 878: SOC Engagements (12 words)
-- ORIGINAL STEM: Which of the following professionals is qualified to perform a SOC engagement?
UPDATE questions SET
  stem = $EXPL$CloudVault Inc., a SaaS provider, is engaging a firm to examine its security controls and issue a SOC 2 Type II report. Management must confirm that the examining professional meets the required qualifications. Which of the following professionals is qualified to perform a SOC engagement?$EXPL$
WHERE id = 878;

-- ID 3747: SOC Engagements (12 words)
-- ORIGINAL STEM: Which professional standard governs SOC 1 engagements performed by a service auditor?
UPDATE questions SET
  stem = $EXPL$Rivera & Grant LLP is planning a SOC 1 Type II engagement for a payroll processing client whose services affect user entities'' internal control over financial reporting. The engagement partner identifies the applicable professional standard. Which professional standard governs SOC 1 engagements performed by a service auditor?$EXPL$
WHERE id = 3747;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 4950: SOC Report Content and Structure (7 words)
-- ORIGINAL STEM: Under AU-C 200, what is professional skepticism?
UPDATE questions SET
  stem = $EXPL$While reviewing a service organization''s SOC 2 system description, a CPA notices that management''s claims about encryption practices lack supporting documentation. The CPA maintains a questioning mindset rather than accepting the assertion at face value. Under AU-C 200, what is professional skepticism?$EXPL$
WHERE id = 4950;

-- ============================================================
-- SOC REPORTING (3 questions)
-- ============================================================

-- ID 3888: SOC Reporting (9 words)
-- ORIGINAL STEM: What does management's assertion in a SOC report address?
UPDATE questions SET
  stem = $EXPL$DataStream Hosting is preparing its annual SOC 2 Type II report. Before the service auditor begins testing, DataStream''s management must provide a formal written statement accompanying the report. What does management''s assertion in a SOC report address?$EXPL$
WHERE id = 3888;

-- ID 1222: SOC Reporting (10 words)
-- ORIGINAL STEM: Under the inclusive method for subservice organizations, the SOC practitioner:
UPDATE questions SET
  stem = $EXPL$Apex Payroll Services uses SecureHost LLC to host its production infrastructure. Apex''s SOC 1 report includes SecureHost''s controls within the examination scope rather than carving them out. Under the inclusive method for subservice organizations, the SOC practitioner:$EXPL$
WHERE id = 1222;

-- ID 3891: SOC Reporting (10 words)
-- ORIGINAL STEM: Who are the intended users of a SOC 2 report?
UPDATE questions SET
  stem = $EXPL$NovaTech Solutions has just received its SOC 2 Type II report from the service auditor. The marketing team asks whether the report can be shared publicly on the company website. Who are the intended users of a SOC 2 report?$EXPL$
WHERE id = 3891;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 13786: SOC Reporting and Trust Services Criteria (10 words)
-- ORIGINAL STEM: Which report period type is available for SOC 3 engagements?
UPDATE questions SET
  stem = $EXPL$A prospective client asks Pinnacle Cloud Services whether its SOC 3 report covers a single date or an examination period. The compliance officer reviews the AICPA''s SOC 3 requirements. Which report period type is available for SOC 3 engagements?$EXPL$
WHERE id = 13786;

-- ID 13772: SOC Reporting and Trust Services Criteria (11 words)
-- ORIGINAL STEM: What is the primary distribution characteristic of a SOC 3 report?
UPDATE questions SET
  stem = $EXPL$Keystone SaaS wants to demonstrate its security posture to the general public and considers posting an assurance report on its website. The compliance team evaluates which SOC report type permits this. What is the primary distribution characteristic of a SOC 3 report?$EXPL$
WHERE id = 13772;

-- ID 892: SOC Reporting and Trust Services Criteria (12 words)
-- ORIGINAL STEM: In a SOC 2 report, the "System Description" section is prepared by:
UPDATE questions SET
  stem = $EXPL$The SOC 2 Type II report for Orion Data Centers includes a detailed narrative of system boundaries, infrastructure, and control environment. A user auditor reviewing the report needs to understand who is responsible for preparing this narrative. In a SOC 2 report, the "System Description" section is prepared by:$EXPL$
WHERE id = 892;

-- ============================================================
-- SOC TESTING CONTROLS (3 questions)
-- ============================================================

-- ID 3863: SOC Testing Controls (11 words)
-- ORIGINAL STEM: In which situation is reperformance most useful as a testing procedure?
UPDATE questions SET
  stem = $EXPL$A SOC 2 practitioner is testing an automated access provisioning control that assigns role-based permissions when new employees are onboarded. The practitioner wants the most persuasive evidence that the control produces correct results. In which situation is reperformance most useful as a testing procedure?$EXPL$
WHERE id = 3863;

-- ID 1213: SOC Testing Controls (12 words)
-- ORIGINAL STEM: The distinction between a deviation and an exception in SOC reporting is:
UPDATE questions SET
  stem = $EXPL$During a SOC 2 Type II engagement at Beacon Hosting, the auditor finds that 2 of 15 sampled weekly access reviews were completed three days late. The auditor must decide whether these findings rise to the level of reportable control failures. The distinction between a deviation and an exception in SOC reporting is:$EXPL$
WHERE id = 1213;

-- ID 3866: SOC Testing Controls (12 words)
-- ORIGINAL STEM: What is the primary purpose of a walkthrough in a SOC engagement?
UPDATE questions SET
  stem = $EXPL$At the start of a SOC 2 Type II engagement, the practitioner traces a single change request from initiation through approval, testing, and deployment to production. What is the primary purpose of a walkthrough in a SOC engagement?$EXPL$
WHERE id = 3866;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (5 questions)
-- ============================================================

-- ID 788: System Availability and Change Management (7 words)
-- ORIGINAL STEM: What does Recovery Point Objective (RPO) measure?
UPDATE questions SET
  stem = $EXPL$Atlas Logistics is conducting a business impact analysis for its shipment tracking database. The disaster recovery team must determine how much data the company can afford to lose after a system failure to set appropriate backup frequency. What does Recovery Point Objective (RPO) measure?$EXPL$
WHERE id = 788;

-- ID 3544: System Availability and Change Management (7 words)
-- ORIGINAL STEM: What should a change impact assessment address?
UPDATE questions SET
  stem = $EXPL$Stratton Bank''s IT team submits a request to upgrade the core banking application to a new version. Before the Change Advisory Board approves the request, it requires a formal evaluation of potential consequences. What should a change impact assessment address?$EXPL$
WHERE id = 3544;

-- ID 799: System Availability and Change Management (8 words)
-- ORIGINAL STEM: Which formula is used to calculate system availability?
UPDATE questions SET
  stem = $EXPL$Pinnacle Hosting promises 99.95% uptime in its service level agreements. The operations team needs to calculate the actual availability of its production servers using total uptime and total downtime figures for the quarter. Which formula is used to calculate system availability?$EXPL$
WHERE id = 799;

-- ID 800: System Availability and Change Management (8 words)
-- ORIGINAL STEM: In change management, what does parallel testing involve?
UPDATE questions SET
  stem = $EXPL$Weston Credit Union is migrating from a legacy loan processing system to a new platform. To minimize risk, management runs both the old and new systems simultaneously and compares their outputs during a transition period. In change management, what does parallel testing involve?$EXPL$
WHERE id = 800;

-- ID 3548: System Availability and Change Management (8 words)
-- ORIGINAL STEM: What does N+1 redundancy mean in IT infrastructure?
UPDATE questions SET
  stem = $EXPL$Grandview Data Centers operates five application servers to handle its normal processing load. The infrastructure architect adds one additional server beyond minimum capacity to ensure continuity if a single server fails. What does N+1 redundancy mean in IT infrastructure?$EXPL$
WHERE id = 3548;

COMMIT;
