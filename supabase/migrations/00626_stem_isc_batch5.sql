-- Migration: Stem expansion — ISC batch 5 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 13544: Change Management (15 words)
-- ORIGINAL STEM: Under ITIL 4, what does the term "change enablement" emphasize compared to traditional change control?
UPDATE questions SET
  stem = $EXPL$Pinnacle Financial Services is updating its IT service management practices from ITIL v3 to ITIL 4. The IT director notes that the framework now uses the term ''change enablement'' rather than ''change control.'' What does this revised terminology emphasize compared to traditional change control?$EXPL$
WHERE id = 13544;

-- ID 13550: Change Management (15 words)
-- ORIGINAL STEM: What is the primary purpose of a post-implementation review (PIR) in the change management process?
UPDATE questions SET
  stem = $EXPL$After deploying a major payroll system upgrade in March 2026, Westbrook Industries schedules a formal meeting with IT and business stakeholders to evaluate the deployment outcome. What is the primary purpose of this post-implementation review (PIR) in the change management process?$EXPL$
WHERE id = 13550;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 3506: Data Management and Lifecycle (13 words)
-- ORIGINAL STEM: What is the primary risk of retaining data beyond its required retention period?
UPDATE questions SET
  stem = $EXPL$Glenview Medical Group''s data governance committee discovers that patient billing records from 2014 are still stored on active servers, well past the organization''s seven-year retention policy. What is the primary risk of retaining data beyond its required retention period?$EXPL$
WHERE id = 3506;

-- ID 3530: Data Management and Lifecycle (13 words)
-- ORIGINAL STEM: What is the fundamental purpose of a primary key in a relational database?
UPDATE questions SET
  stem = $EXPL$A database administrator at Crestline Manufacturing is designing a new relational table to store vendor contracts. She assigns a unique contract_id column that will serve as the primary key. What is the fundamental purpose of a primary key in a relational database?$EXPL$
WHERE id = 3530;

-- ID 785: Data Management and Lifecycle (14 words)
-- ORIGINAL STEM: What is the primary benefit of partitioning a large database table by date range?
UPDATE questions SET
  stem = $EXPL$Sterling Logistics maintains a sales transactions table with over 200 million rows spanning five years. The DBA proposes partitioning the table by fiscal quarter to improve query performance. What is the primary benefit of partitioning a large database table by date range?$EXPL$
WHERE id = 785;

-- ID 3521: Data Management and Lifecycle (14 words)
-- ORIGINAL STEM: What is the primary compliance risk when vendor records are missing tax identification numbers?
UPDATE questions SET
  stem = $EXPL$During a year-end review, Oakridge Construction''s accounts payable team discovers that 35 vendor master records lack tax identification numbers. The controller raises a compliance concern. What is the primary compliance risk when vendor records are missing tax identification numbers?$EXPL$
WHERE id = 3521;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5787: Data Protection Technologies (13 words)
-- ORIGINAL STEM: What is the PRIMARY distinction between hashing and encryption as data protection techniques?
UPDATE questions SET
  stem = $EXPL$Redwood Health Systems stores patient passwords using SHA-256 and protects patient records in transit using AES-256 encryption. A new IT analyst asks why two different techniques are used. What is the PRIMARY distinction between hashing and encryption as data protection techniques?$EXPL$
WHERE id = 5787;

-- ID 4940: Data Protection Technologies (14 words)
-- ORIGINAL STEM: An organization achieves k-anonymity with k=5 in a published dataset. What does this mean?
UPDATE questions SET
  stem = $EXPL$Lakeshore University''s research office plans to publish a de-identified student health survey dataset. The privacy officer confirms the dataset achieves k-anonymity with k=5 before release. What does this mean?$EXPL$
WHERE id = 4940;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (2 questions)
-- ============================================================

-- ID 13474: ERP and Accounting Information Systems (14 words)
-- ORIGINAL STEM: Which of the following is an example of transaction data in an ERP system?
UPDATE questions SET
  stem = $EXPL$During an IT audit of Bridgeport Electronics, the auditor distinguishes between master data and transaction data within the company''s SAP ERP system. Which of the following is an example of transaction data in an ERP system?$EXPL$
WHERE id = 13474;

-- ID 13491: ERP and Accounting Information Systems (14 words)
-- ORIGINAL STEM: What is the purpose of a reorder point configured in an ERP inventory module?
UPDATE questions SET
  stem = $EXPL$Cascade Hardware''s warehouse manager notices that the ERP system automatically generated a purchase requisition when the stock level for a high-demand fastener fell to 500 units. What is the purpose of a reorder point configured in an ERP inventory module?$EXPL$
WHERE id = 13491;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (4 questions)
-- ============================================================

-- ID 3708: Incident Response and Recovery (13 words)
-- ORIGINAL STEM: What is the purpose of an escalation matrix in an incident response plan?
UPDATE questions SET
  stem = $EXPL$Vanguard Capital''s CISO is finalizing the firm''s incident response plan and includes an escalation matrix that maps severity levels to specific notification contacts and response timeframes. What is the purpose of an escalation matrix in an incident response plan?$EXPL$
WHERE id = 3708;

-- ID 3710: Incident Response and Recovery (13 words)
-- ORIGINAL STEM: Why should evidence be preserved before containment actions are taken during an incident?
UPDATE questions SET
  stem = $EXPL$Northgate Bank''s security team detects unauthorized access to a loan processing server. Before isolating the compromised system, the incident commander orders a forensic image of the server''s hard drive. Why should evidence be preserved before containment actions are taken during an incident?$EXPL$
WHERE id = 3710;

-- ID 862: Incident Response and Recovery (14 words)
-- ORIGINAL STEM: Which of the following is the PRIMARY reason for preserving evidence during incident response?
UPDATE questions SET
  stem = $EXPL$After detecting a data exfiltration attempt on its customer database, Beacon Insurance''s incident response team captures volatile memory and creates forensic disk images before shutting down the affected server. Which of the following is the PRIMARY reason for preserving evidence during incident response?$EXPL$
WHERE id = 862;

-- ID 863: Incident Response and Recovery (14 words)
-- ORIGINAL STEM: What does it mean when actual data loss exceeds the Recovery Point Objective (RPO)?
UPDATE questions SET
  stem = $EXPL$Trident Manufacturing''s ERP system has an RPO of 4 hours with backups running every 4 hours. A server failure occurs 6 hours after the last successful backup, resulting in the loss of 6 hours of production data. What does it mean when actual data loss exceeds the Recovery Point Objective (RPO)?$EXPL$
WHERE id = 863;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 1062: IT Audit Frameworks (12 words)
-- ORIGINAL STEM: What is the primary audit application of the COSO Internal Control framework?
UPDATE questions SET
  stem = $EXPL$During planning for the 2026 integrated audit of Harmon Retail Group, the engagement partner references the COSO Internal Control — Integrated Framework as the basis for evaluating the client''s control environment. What is the primary audit application of this framework?$EXPL$
WHERE id = 1062;

-- ID 3913: IT Audit Frameworks (12 words)
-- ORIGINAL STEM: Under a risk management framework, what documentation supports a risk acceptance decision?
UPDATE questions SET
  stem = $EXPL$Silverline Energy''s risk committee decides to accept the residual risk of a legacy SCADA system vulnerability because the cost of remediation exceeds the estimated annual loss exposure. Under a risk management framework, what documentation supports this risk acceptance decision?$EXPL$
WHERE id = 3913;

-- ID 12949: IT Audit Frameworks (12 words)
-- ORIGINAL STEM: Which ITIL 4 guiding principle emphasizes working across organizational boundaries with transparency?
UPDATE questions SET
  stem = $EXPL$Meridian Healthcare''s IT department is adopting ITIL 4 and wants to break down silos between the infrastructure, development, and security teams. The CIO asks which guiding principle supports this objective. Which ITIL 4 guiding principle emphasizes working across organizational boundaries with transparency?$EXPL$
WHERE id = 12949;

-- ============================================================
-- IT GENERAL CONTROLS (1 questions)
-- ============================================================

-- ID 13120: IT General Controls (14 words)
-- ORIGINAL STEM: What is user acceptance testing (UAT) in the context of IT program change controls?
UPDATE questions SET
  stem = $EXPL$Thornton Financial has developed a new automated loan approval module. Before promoting the code to production, the IT manager requires the lending department to verify that the module meets their business requirements. What is user acceptance testing (UAT) in the context of IT program change controls?$EXPL$
WHERE id = 13120;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (2 questions)
-- ============================================================

-- ID 3436: IT Infrastructure and Architecture (16 words)
-- ORIGINAL STEM: Which of the following best describes the difference between a Type 1 and Type 2 hypervisor?
UPDATE questions SET
  stem = $EXPL$Atlas Cloud Services is evaluating virtualization options for its new data center. The infrastructure team is comparing hypervisors that run directly on hardware versus those that run as applications within a host operating system. Which of the following best describes the difference between a Type 1 and Type 2 hypervisor?$EXPL$
WHERE id = 3436;

-- ID 747: IT Infrastructure and Architecture (17 words)
-- ORIGINAL STEM: Which cloud service model provides the customer with the most control over the operating system and middleware?
UPDATE questions SET
  stem = $EXPL$Granite Analytics needs to deploy a custom machine-learning application and requires full control over the operating system, runtime libraries, and middleware configuration. The CTO is evaluating cloud service models. Which model provides the customer with the most control over the operating system and middleware?$EXPL$
WHERE id = 747;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (3 questions)
-- ============================================================

-- ID 849: Privacy Requirements and Data Protection (15 words)
-- ORIGINAL STEM: Under GDPR, what is a Data Protection Impact Assessment (DPIA) and when is it required?
UPDATE questions SET
  stem = $EXPL$EuroTech Solutions, a Berlin-based SaaS provider, plans to launch a new feature that uses automated profiling to score customer creditworthiness. The Data Protection Officer advises that a DPIA is mandatory before launch. Under GDPR, what is a Data Protection Impact Assessment (DPIA) and when is it required?$EXPL$
WHERE id = 849;

-- ID 3745: Privacy Requirements and Data Protection (15 words)
-- ORIGINAL STEM: Under GDPR, the accountability principle requires the data controller to do which of the following?
UPDATE questions SET
  stem = $EXPL$Nordic Retail, a data controller processing personal data of EU customers, is preparing for a supervisory authority audit. The DPO emphasizes that the company must be ready to demonstrate GDPR compliance. Under GDPR, the accountability principle requires the data controller to do which of the following?$EXPL$
WHERE id = 3745;

-- ID 13214: Privacy Requirements and Data Protection (16 words)
-- ORIGINAL STEM: Which of the following is an example of a technical safeguard under the HIPAA Security Rule?
UPDATE questions SET
  stem = $EXPL$Bayview Community Hospital is implementing controls to protect electronic protected health information (ePHI) stored in its patient portal. The compliance officer is classifying each proposed control by HIPAA safeguard category. Which of the following is an example of a technical safeguard under the HIPAA Security Rule?$EXPL$
WHERE id = 13214;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (5 questions)
-- ============================================================

-- ID 814: Security and Control Frameworks (13 words)
-- ORIGINAL STEM: Which type of control is designed to discourage individuals from committing policy violations?
UPDATE questions SET
  stem = $EXPL$Apex Financial Corp posts a prominent login banner warning that unauthorized system access will result in termination and criminal prosecution. The security team classifies this measure by control type. Which type of control is designed to discourage individuals from committing policy violations?$EXPL$
WHERE id = 814;

-- ID 3580: Security and Control Frameworks (13 words)
-- ORIGINAL STEM: Under ISO 27001, what is the purpose of the Statement of Applicability (SoA)?
UPDATE questions SET
  stem = $EXPL$Vertex Technologies is pursuing ISO 27001 certification and must prepare a document that identifies which of the 93 Annex A controls are applicable to its ISMS and justifies any exclusions. Under ISO 27001, what is the purpose of the Statement of Applicability (SoA)?$EXPL$
WHERE id = 3580;

-- ID 3590: Security and Control Frameworks (13 words)
-- ORIGINAL STEM: Which security document type provides high-level, mandatory statements of management's intent and direction?
UPDATE questions SET
  stem = $EXPL$Ridgeline Corp''s CISO is organizing the company''s security documentation hierarchy — from broad organizational directives down to detailed step-by-step procedures. Which security document type provides high-level, mandatory statements of management''s intent and direction?$EXPL$
WHERE id = 3590;

-- ID 3602: Security and Control Frameworks (13 words)
-- ORIGINAL STEM: According to zero trust principles, what should be the first step in implementation?
UPDATE questions SET
  stem = $EXPL$Clearwater Insurance is transitioning from a traditional perimeter-based security model to a zero trust architecture. The CISO presents a phased implementation roadmap to the board. According to zero trust principles, what should be the first step in implementation?$EXPL$
WHERE id = 3602;

-- ID 3603: Security and Control Frameworks (13 words)
-- ORIGINAL STEM: Why are asset and software inventory controls listed first in the CIS Controls?
UPDATE questions SET
  stem = $EXPL$Summit Partners'' IT governance committee is adopting the CIS Critical Security Controls and notes that asset inventory and software inventory appear as Controls 1 and 2. Why are asset and software inventory controls listed first in the CIS Controls?$EXPL$
WHERE id = 3603;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (5 questions)
-- ============================================================

-- ID 3666: Security Controls and Monitoring (11 words)
-- ORIGINAL STEM: Why is regular encryption key rotation considered a security best practice?
UPDATE questions SET
  stem = $EXPL$Fortis Bank''s information security policy requires that AES-256 encryption keys used for customer data at rest be rotated every 90 days. A junior analyst asks why this effort is necessary. Why is regular encryption key rotation considered a security best practice?$EXPL$
WHERE id = 3666;

-- ID 3669: Security Controls and Monitoring (11 words)
-- ORIGINAL STEM: What security challenge does centralized log aggregation in a SIEM address?
UPDATE questions SET
  stem = $EXPL$Prestige Hospitality Group operates firewalls, endpoint protection, and application servers that each generate separate log files. The security team deploys a SIEM platform to consolidate these logs. What security challenge does centralized log aggregation in a SIEM address?$EXPL$
WHERE id = 3669;

-- ID 3678: Security Controls and Monitoring (11 words)
-- ORIGINAL STEM: Which type of security control identifies policy violations after they occur?
UPDATE questions SET
  stem = $EXPL$After implementing new data handling policies, Orion Financial''s compliance team runs weekly exception reports that flag employee actions violating those policies. Which type of security control identifies policy violations after they occur?$EXPL$
WHERE id = 3678;

-- ID 834: Security Controls and Monitoring (12 words)
-- ORIGINAL STEM: Which encryption approach protects data stored in a database (data at rest)?
UPDATE questions SET
  stem = $EXPL$Keystone Credit Union stores sensitive member account information in its SQL Server database and wants to ensure the data remains unreadable if the storage media is physically stolen. Which encryption approach protects data stored in a database (data at rest)?$EXPL$
WHERE id = 834;

-- ID 835: Security Controls and Monitoring (12 words)
-- ORIGINAL STEM: What is the primary purpose of a Privileged Access Management (PAM) solution?
UPDATE questions SET
  stem = $EXPL$After an internal audit reveals that 14 IT administrators share a single root account on critical servers, Centurion Corp deploys a Privileged Access Management (PAM) solution. What is the primary purpose of a PAM solution?$EXPL$
WHERE id = 835;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 3749: SOC Engagements (14 words)
-- ORIGINAL STEM: Which of the following best describes the distribution restriction for a SOC 2 report?
UPDATE questions SET
  stem = $EXPL$NovaPay, a payroll processing company, has completed its annual SOC 2 Type II examination. A prospective client''s marketing team asks NovaPay to post the full report on its public website. Which of the following best describes the distribution restriction for a SOC 2 report?$EXPL$
WHERE id = 3749;

-- ID 3751: SOC Engagements (14 words)
-- ORIGINAL STEM: In a SOC Type I engagement, the service auditor evaluates which of the following?
UPDATE questions SET
  stem = $EXPL$CloudVault Storage has engaged a CPA firm to perform its first SOC 2 examination, selecting a Type I report as of June 30, 2026. In a SOC Type I engagement, the service auditor evaluates which of the following?$EXPL$
WHERE id = 3751;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 13427: SOC Report Content and Structure (12 words)
-- ORIGINAL STEM: A SOC 2 Type II report typically covers an examination period of:
UPDATE questions SET
  stem = $EXPL$Prism Data Services is planning its first SOC 2 Type II examination and asks its CPA firm about the standard length of the examination window. A SOC 2 Type II report typically covers an examination period of:$EXPL$
WHERE id = 13427;

-- ============================================================
-- SOC REPORTING (3 questions)
-- ============================================================

-- ID 13690: SOC Reporting (13 words)
-- ORIGINAL STEM: What level of assurance does a SOC 2 Type II examination engagement provide?
UPDATE questions SET
  stem = $EXPL$A user entity auditor is evaluating whether to rely on Zenith Hosting''s SOC 2 Type II report to reduce substantive testing of IT-dependent controls. What level of assurance does a SOC 2 Type II examination engagement provide?$EXPL$
WHERE id = 13690;

-- ID 1219: SOC Reporting (14 words)
-- ORIGINAL STEM: Under AICPA attestation standards, when is an adverse opinion issued on a SOC report?
UPDATE questions SET
  stem = $EXPL$During the SOC 2 Type II examination of DataBridge Analytics, the service auditor identifies pervasive control failures across multiple trust services criteria, affecting the majority of tested controls. Under AICPA attestation standards, when is an adverse opinion issued on a SOC report?$EXPL$
WHERE id = 1219;

-- ID 1223: SOC Reporting (14 words)
-- ORIGINAL STEM: In a SOC 2 Type II report, management asserts all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$Horizon Payroll Services is preparing its management assertion letter for inclusion in its SOC 2 Type II report covering January through December 2025. In a SOC 2 Type II report, management asserts all of the following EXCEPT:$EXPL$
WHERE id = 1223;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 888: SOC Reporting and Trust Services Criteria (15 words)
-- ORIGINAL STEM: The Privacy criteria in the Trust Services framework align with which widely recognized privacy framework?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 engagement for PeoplePath HR Solutions, the engagement partner includes the Privacy trust services criterion because the company processes employee personal information. The Privacy criteria in the Trust Services framework align with which widely recognized privacy framework?$EXPL$
WHERE id = 888;

-- ID 3784: SOC Reporting and Trust Services Criteria (15 words)
-- ORIGINAL STEM: In a SOC 2 report, the system description must include which of the following elements?
UPDATE questions SET
  stem = $EXPL$SignalPoint Analytics is drafting Section III of its SOC 2 Type II report and wants to ensure the system description meets AICPA requirements. In a SOC 2 report, the system description must include which of the following elements?$EXPL$
WHERE id = 3784;

-- ID 3785: SOC Reporting and Trust Services Criteria (15 words)
-- ORIGINAL STEM: Complementary user entity controls (CUECs) in a SOC report refer to which of the following?
UPDATE questions SET
  stem = $EXPL$While reviewing NetLedger''s SOC 1 Type II report, an auditor at Greystone Corp notices a section listing controls that NetLedger assumes its clients will implement. Complementary user entity controls (CUECs) in a SOC report refer to which of the following?$EXPL$
WHERE id = 3785;

-- ============================================================
-- SOC TESTING CONTROLS (3 questions)
-- ============================================================

-- ID 3862: SOC Testing Controls (15 words)
-- ORIGINAL STEM: Which procedure best verifies that an access review control operated effectively during the examination period?
UPDATE questions SET
  stem = $EXPL$The service auditor testing SkyBridge Hosting''s SOC 2 Type II controls must determine whether the quarterly user access review was actually performed throughout the 12-month examination period. Which procedure best verifies that an access review control operated effectively during the examination period?$EXPL$
WHERE id = 3862;

-- ID 3878: SOC Testing Controls (15 words)
-- ORIGINAL STEM: If a control is redesigned midway through the examination period, what is the auditor's responsibility?
UPDATE questions SET
  stem = $EXPL$During the SOC 2 Type II examination of Pinnacle Cloud, the auditor learns that the company replaced its manual change approval process with an automated workflow tool in July, halfway through the 12-month period. If a control is redesigned midway through the examination period, what is the auditor''s responsibility?$EXPL$
WHERE id = 3878;

-- ID 3916: SOC Testing Controls (15 words)
-- ORIGINAL STEM: Which procedure provides the strongest evidence that a badge-entry physical access control is operating effectively?
UPDATE questions SET
  stem = $EXPL$A service auditor is testing whether the data center badge-entry system at Irongate Hosting actually restricts access to authorized personnel. The auditor considers which testing approach yields the most persuasive evidence. Which procedure provides the strongest evidence that a badge-entry physical access control is operating effectively?$EXPL$
WHERE id = 3916;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (5 questions)
-- ============================================================

-- ID 3545: System Availability and Change Management (11 words)
-- ORIGINAL STEM: What is an unauthorized change in the context of change management?
UPDATE questions SET
  stem = $EXPL$A developer at Evergreen Logistics deploys a database schema modification directly to production without submitting a change request or obtaining CAB approval. The IT audit team flags this action. What is an unauthorized change in the context of change management?$EXPL$
WHERE id = 3545;

-- ID 3571: System Availability and Change Management (11 words)
-- ORIGINAL STEM: How should change approval rigor differ based on system criticality tiers?
UPDATE questions SET
  stem = $EXPL$Meridian Corp classifies its IT systems into three criticality tiers: mission-critical (Tier 1), business-important (Tier 2), and non-essential (Tier 3). The IT governance committee is defining approval requirements for each tier. How should change approval rigor differ based on system criticality tiers?$EXPL$
WHERE id = 3571;

-- ID 3574: System Availability and Change Management (11 words)
-- ORIGINAL STEM: What risk does configuration drift between staging and production environments create?
UPDATE questions SET
  stem = $EXPL$After a patch passes all tests in Ridgeline Tech''s staging environment, it causes a critical failure when deployed to production. An investigation reveals that the staging server''s OS version and library configurations had diverged from production over the past six months. What risk does configuration drift between staging and production environments create?$EXPL$
WHERE id = 3574;

-- ID 789: System Availability and Change Management (12 words)
-- ORIGINAL STEM: What is the relationship between backup frequency and Recovery Point Objective (RPO)?
UPDATE questions SET
  stem = $EXPL$Harborview Medical Center sets an RPO of 1 hour for its electronic health records system but currently performs full backups only once every 24 hours. The disaster recovery planner identifies a gap between the backup schedule and the stated objective. What is the relationship between backup frequency and Recovery Point Objective (RPO)?$EXPL$
WHERE id = 789;

-- ID 3536: System Availability and Change Management (12 words)
-- ORIGINAL STEM: What do Recovery Time Objective (RTO) and Recovery Point Objective (RPO) measure?
UPDATE questions SET
  stem = $EXPL$During a business impact analysis, Summit Financial''s disaster recovery team defines two key metrics: the maximum acceptable downtime and the maximum tolerable data loss for each critical system. What do Recovery Time Objective (RTO) and Recovery Point Objective (RPO) measure?$EXPL$
WHERE id = 3536;

COMMIT;
