-- Migration: Stem expansion — ISC batch 4 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 12607: Change Management (13 words)
-- ORIGINAL STEM: What is the primary purpose of a scheduled maintenance window in change management?
UPDATE questions SET
  stem = $EXPL$Pinnacle Financial Services deploys software updates to its trading platform every second Saturday between 2:00 AM and 6:00 AM, when transaction volume is lowest. What is the primary purpose of establishing this type of scheduled maintenance window in change management?$EXPL$
WHERE id = 12607;

-- ID 12614: Change Management (15 words)
-- ORIGINAL STEM: What is the primary purpose of performing a risk assessment during the change approval phase?
UPDATE questions SET
  stem = $EXPL$Quorum Health Systems has submitted a change request to upgrade its patient billing module. Before the Change Advisory Board votes, the IT team evaluates potential impacts on connected systems. What is the primary purpose of performing a risk assessment during the change approval phase?$EXPL$
WHERE id = 12614;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 3509: Data Management and Lifecycle (12 words)
-- ORIGINAL STEM: What does ETL (Extract, Transform, Load) do in a data warehousing context?
UPDATE questions SET
  stem = $EXPL$Ridgemont Corporation consolidates sales data from three regional ERP systems into a centralized data warehouse for quarterly financial analysis. The process pulls data nightly, standardizes formats, and loads it into the reporting database. What does ETL (Extract, Transform, Load) accomplish in this data warehousing context?$EXPL$
WHERE id = 3509;

-- ID 3523: Data Management and Lifecycle (12 words)
-- ORIGINAL STEM: Which SQL statement retrieves specific columns and rows from a database table?
UPDATE questions SET
  stem = $EXPL$An internal auditor at Fielding Industries needs to pull all vendor names and payment amounts exceeding $10,000 from the accounts payable database for fraud analysis. Which SQL statement retrieves specific columns and rows from a database table?$EXPL$
WHERE id = 3523;

-- ID 13449: Data Management and Lifecycle (12 words)
-- ORIGINAL STEM: What is the purpose of a certificate of destruction in data management?
UPDATE questions SET
  stem = $EXPL$Whitman Legal Group contracted a third-party vendor to shred 200 decommissioned hard drives containing client records. After the process, the vendor provided a signed document confirming the media was destroyed. What is the purpose of a certificate of destruction in data management?$EXPL$
WHERE id = 13449;

-- ID 779: Data Management and Lifecycle (13 words)
-- ORIGINAL STEM: Why does retaining all data indefinitely without a retention policy create compliance risk?
UPDATE questions SET
  stem = $EXPL$Aldridge Manufacturing has never adopted a formal data retention policy. Its file servers hold 15 years of employee records, expired contracts, and customer correspondence with no scheduled purge dates. Why does retaining all data indefinitely without a retention policy create compliance risk?$EXPL$
WHERE id = 779;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5903: Data Protection Technologies (11 words)
-- ORIGINAL STEM: What is a self-encrypting drive in the context of data-at-rest protection?
UPDATE questions SET
  stem = $EXPL$Trident Consulting is upgrading its laptop fleet and the CISO recommends drives that perform hardware-level encryption automatically without relying on separate software. What is a self-encrypting drive in the context of data-at-rest protection?$EXPL$
WHERE id = 5903;

-- ID 5837: Data Protection Technologies (12 words)
-- ORIGINAL STEM: What does the term cryptographic key lifecycle refer to in data protection?
UPDATE questions SET
  stem = $EXPL$Ashford Bank''s security team manages thousands of encryption keys used across payment processing, email, and backup systems. Keys must be generated, distributed, rotated, and eventually retired on a defined schedule. What does the term cryptographic key lifecycle refer to in data protection?$EXPL$
WHERE id = 5837;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (2 questions)
-- ============================================================

-- ID 767: ERP and Accounting Information Systems (14 words)
-- ORIGINAL STEM: What is the purpose of parallel simulation as an audit procedure for ERP systems?
UPDATE questions SET
  stem = $EXPL$During the year-end audit of Greystone Electronics, the external auditor reprocesses a sample of payroll transactions through an independently developed program and compares the results to the ERP output. What is the purpose of parallel simulation as an audit procedure for ERP systems?$EXPL$
WHERE id = 767;

-- ID 768: ERP and Accounting Information Systems (14 words)
-- ORIGINAL STEM: In an ERP accounts payable module, which three documents are compared in three-way matching?
UPDATE questions SET
  stem = $EXPL$Beacon Supply Co. configured its ERP system to automatically hold vendor payments until three separate documents are electronically matched and all amounts agree. In an ERP accounts payable module, which three documents are compared in three-way matching?$EXPL$
WHERE id = 768;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (4 questions)
-- ============================================================

-- ID 7816: Incident Response and Recovery (12 words)
-- ORIGINAL STEM: In digital forensics, which type of evidence is considered the MOST volatile?
UPDATE questions SET
  stem = $EXPL$After detecting a suspected intrusion on a production database server, the forensic analyst at Caldwell Financial must decide what to collect first before powering down the compromised machine. In digital forensics, which type of evidence is considered the MOST volatile?$EXPL$
WHERE id = 7816;

-- ID 859: Incident Response and Recovery (13 words)
-- ORIGINAL STEM: Under NIST SP 800-61, what is the primary goal of the containment phase?
UPDATE questions SET
  stem = $EXPL$Lakeshore Medical Center''s security operations team has confirmed ransomware on two workstations in the billing department and is executing its incident response plan. Under NIST SP 800-61, what is the primary goal of the containment phase the team should now initiate?$EXPL$
WHERE id = 859;

-- ID 864: Incident Response and Recovery (13 words)
-- ORIGINAL STEM: Under NIST SP 800-61, what is the primary objective of the eradication phase?
UPDATE questions SET
  stem = $EXPL$Nova Retail''s incident response team has successfully contained a malware infection that spread through phishing emails and is now moving to the next phase. Under NIST SP 800-61, what is the primary objective of the eradication phase?$EXPL$
WHERE id = 864;

-- ID 3706: Incident Response and Recovery (13 words)
-- ORIGINAL STEM: What is the primary role of an incident commander during a security incident?
UPDATE questions SET
  stem = $EXPL$Trellis Technologies activated its incident response plan after detecting unauthorized access to customer payment data. A senior manager was designated to lead the response effort. What is the primary role of this incident commander during a security incident?$EXPL$
WHERE id = 3706;

-- ============================================================
-- IT AUDIT FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3857: IT Audit Frameworks (11 words)
-- ORIGINAL STEM: In COBIT 2019, what does the term governance system refer to?
UPDATE questions SET
  stem = $EXPL$A newly appointed CIO at Meridian Insurance is reviewing the organization''s COBIT 2019 implementation and asks IT leadership to explain the foundational concept. In COBIT 2019, what does the term governance system refer to?$EXPL$
WHERE id = 3857;

-- ID 13811: IT Audit Frameworks (11 words)
-- ORIGINAL STEM: In COBIT 2019, what is the purpose of governance objective EDM01?
UPDATE questions SET
  stem = $EXPL$The board of directors at Vanguard Logistics is evaluating whether the company''s IT governance structure is properly established and maintained. In COBIT 2019, what is the purpose of governance objective EDM01?$EXPL$
WHERE id = 13811;

-- ID 13818: IT Audit Frameworks (11 words)
-- ORIGINAL STEM: What is the primary purpose of the NIST Cybersecurity Framework (CSF)?
UPDATE questions SET
  stem = $EXPL$Harmon Industries, a mid-size manufacturer, is selecting a voluntary framework to standardize how it identifies, manages, and communicates cybersecurity risk across departments. What is the primary purpose of the NIST Cybersecurity Framework (CSF)?$EXPL$
WHERE id = 13818;

-- ID 1058: IT Audit Frameworks (12 words)
-- ORIGINAL STEM: The NIST Risk Management Framework (RMF) includes which of the following steps?
UPDATE questions SET
  stem = $EXPL$A federal contractor is implementing NIST SP 800-37 to integrate security and risk management into its system development lifecycle. The NIST Risk Management Framework (RMF) includes which of the following steps?$EXPL$
WHERE id = 1058;

-- ============================================================
-- IT GENERAL CONTROLS (2 questions)
-- ============================================================

-- ID 13135: IT General Controls (12 words)
-- ORIGINAL STEM: What is a compensating control in the context of IT general controls?
UPDATE questions SET
  stem = $EXPL$Elm Street Community Bank has only three IT employees, making full segregation of duties between development and operations impractical. Management implements enhanced logging and independent review of all production changes instead. What is a compensating control in the context of IT general controls?$EXPL$
WHERE id = 13135;

-- ID 13851: IT General Controls (12 words)
-- ORIGINAL STEM: What is the purpose of a job execution log in computer operations?
UPDATE questions SET
  stem = $EXPL$Sterling Payroll Services runs nightly batch jobs to process direct deposits for 400 employer clients. The operations team reviews a detailed record each morning that shows job start times, completion status, and any errors. What is the purpose of a job execution log in computer operations?$EXPL$
WHERE id = 13851;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (2 questions)
-- ============================================================

-- ID 750: IT Infrastructure and Architecture (15 words)
-- ORIGINAL STEM: In a three-tier architecture, which tier is responsible for enforcing business rules and processing logic?
UPDATE questions SET
  stem = $EXPL$Clearwater E-Commerce designed its online ordering platform with separate presentation, application, and database layers. Customer orders are validated against pricing rules and inventory availability before reaching the database. In a three-tier architecture, which tier is responsible for enforcing business rules and processing logic?$EXPL$
WHERE id = 750;

-- ID 746: IT Infrastructure and Architecture (16 words)
-- ORIGINAL STEM: Which of the following best describes the role of a hypervisor in a virtualized IT environment?
UPDATE questions SET
  stem = $EXPL$Orion Data Services runs 40 virtual machines on a single physical server in its data center. A specialized software layer allocates CPU, memory, and storage to each VM. Which of the following best describes the role of a hypervisor in a virtualized IT environment?$EXPL$
WHERE id = 746;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (3 questions)
-- ============================================================

-- ID 3740: Privacy Requirements and Data Protection (14 words)
-- ORIGINAL STEM: Under the CCPA/CPRA, which of the following businesses is subject to the law's requirements?
UPDATE questions SET
  stem = $EXPL$Four companies collect personal information from California residents: a nonprofit hospital, a sole proprietor with $1 million revenue, a tech firm with $30 million revenue, and a small retailer with $5 million revenue and 500 customers. Under the CCPA/CPRA, which of the following businesses is subject to the law''s requirements?$EXPL$
WHERE id = 3740;

-- ID 13912: Privacy Requirements and Data Protection (14 words)
-- ORIGINAL STEM: Under GDPR Article 30, what are controllers required to maintain regarding their processing activities?
UPDATE questions SET
  stem = $EXPL$Northgate Software, a Berlin-based SaaS provider, processes personal data for 50,000 EU subscribers. A supervisory authority requests evidence of the company''s data processing activities during a compliance review. Under GDPR Article 30, what are controllers required to maintain regarding their processing activities?$EXPL$
WHERE id = 13912;

-- ID 845: Privacy Requirements and Data Protection (15 words)
-- ORIGINAL STEM: Under GDPR, which of the following is NOT a lawful basis for processing personal data?
UPDATE questions SET
  stem = $EXPL$A Dublin-based marketing firm is reviewing whether it has a valid legal justification for each of its data processing activities involving EU residents'' personal information. Under GDPR, which of the following is NOT a lawful basis for processing personal data?$EXPL$
WHERE id = 845;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 13286: Security and Control Frameworks (12 words)
-- ORIGINAL STEM: What are the three pillars of the CIA triad in information security?
UPDATE questions SET
  stem = $EXPL$During a security awareness training session, Redwood Financial''s CISO explains the foundational model that guides the organization''s approach to protecting its information assets. What are the three pillars of the CIA triad in information security?$EXPL$
WHERE id = 13286;

-- ID 13948: Security and Control Frameworks (12 words)
-- ORIGINAL STEM: In enterprise risk management, what does the term "risk appetite" refer to?
UPDATE questions SET
  stem = $EXPL$The board of directors at Oakmont Holdings is defining the amount and type of risk the organization is willing to accept in pursuit of its strategic objectives. In enterprise risk management, what does the term "risk appetite" refer to?$EXPL$
WHERE id = 13948;

-- ID 806: Security and Control Frameworks (13 words)
-- ORIGINAL STEM: Which of the following BEST describes the relationship between COBIT and NIST CSF?
UPDATE questions SET
  stem = $EXPL$Cascade Energy''s IT governance committee is evaluating whether to adopt COBIT 2019, the NIST Cybersecurity Framework, or both. The committee asks how the two frameworks relate to each other. Which of the following BEST describes the relationship between COBIT and NIST CSF?$EXPL$
WHERE id = 806;

-- ID 813: Security and Control Frameworks (13 words)
-- ORIGINAL STEM: Under COBIT 2019, which management objective addresses aligning IT strategy with business objectives?
UPDATE questions SET
  stem = $EXPL$The CIO at Westfield Industries wants to ensure IT investments directly support the company''s five-year growth strategy. The team reviews COBIT 2019 management objectives to find the appropriate guidance. Under COBIT 2019, which management objective addresses aligning IT strategy with business objectives?$EXPL$
WHERE id = 813;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 12754: Security Controls and Monitoring (10 words)
-- ORIGINAL STEM: What is the PRIMARY characteristic that distinguishes hashing from encryption?
UPDATE questions SET
  stem = $EXPL$Kessler Healthcare stores patient passwords using SHA-256 and protects medical records in transit using AES-256. A new IT analyst asks why different techniques are used for each purpose. What is the PRIMARY characteristic that distinguishes hashing from encryption?$EXPL$
WHERE id = 12754;

-- ID 12759: Security Controls and Monitoring (10 words)
-- ORIGINAL STEM: What is the defining characteristic of Discretionary Access Control (DAC)?
UPDATE questions SET
  stem = $EXPL$At Sycamore Research Labs, individual project leaders set file permissions on their own shared folders, granting or revoking access to team members at their discretion. What is the defining characteristic of Discretionary Access Control (DAC)?$EXPL$
WHERE id = 12759;

-- ID 12766: Security Controls and Monitoring (10 words)
-- ORIGINAL STEM: What is the PRIMARY purpose of a deterrent security control?
UPDATE questions SET
  stem = $EXPL$Falcon Data Systems installed prominently visible security cameras and posted trespass-warning signs around its data center perimeter. What is the PRIMARY purpose of a deterrent security control?$EXPL$
WHERE id = 12766;

-- ID 839: Security Controls and Monitoring (11 words)
-- ORIGINAL STEM: What is the primary function of Data Loss Prevention (DLP) software?
UPDATE questions SET
  stem = $EXPL$After a former employee emailed confidential pricing data to a competitor, Revere Manufacturing deployed software that monitors outbound email, USB transfers, and cloud uploads for sensitive content. What is the primary function of Data Loss Prevention (DLP) software?$EXPL$
WHERE id = 839;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 13969: SOC Engagements (13 words)
-- ORIGINAL STEM: In a SOC 2 engagement, what does the Availability Trust Services Criterion address?
UPDATE questions SET
  stem = $EXPL$CloudBridge Hosting provides infrastructure services to 200 SaaS clients, each with 99.9% uptime SLAs. The company is scoping its first SOC 2 engagement and selecting applicable criteria. In a SOC 2 engagement, what does the Availability Trust Services Criterion address?$EXPL$
WHERE id = 13969;

-- ID 872: SOC Engagements (14 words)
-- ORIGINAL STEM: What does SOC stand for in the context of System and Organization Controls reports?
UPDATE questions SET
  stem = $EXPL$A prospective client asks Riverbend Payroll Services for an independently audited report on the company''s internal controls over its payroll processing platform. What does SOC stand for in the context of these System and Organization Controls reports?$EXPL$
WHERE id = 872;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (2 questions)
-- ============================================================

-- ID 13408: SOC Report Content and Structure (10 words)
-- ORIGINAL STEM: The primary intended audience for a SOC 1 report is:
UPDATE questions SET
  stem = $EXPL$Granite Payroll Solutions has completed a SOC 1 Type II examination covering its payroll processing controls. Management is determining who should receive the final report. The primary intended audience for a SOC 1 report is:$EXPL$
WHERE id = 13408;

-- ID 13399: SOC Report Content and Structure (12 words)
-- ORIGINAL STEM: Which Trust Services Criterion must be included in every SOC 2 engagement?
UPDATE questions SET
  stem = $EXPL$Apex Cloud Services is planning its first SOC 2 engagement and discussing which Trust Services Criteria to include in the scope with its service auditor. Which Trust Services Criterion must be included in every SOC 2 engagement?$EXPL$
WHERE id = 13399;

-- ============================================================
-- SOC REPORTING (3 questions)
-- ============================================================

-- ID 3904: SOC Reporting (13 words)
-- ORIGINAL STEM: What may be appropriately excluded from the system description in a SOC report?
UPDATE questions SET
  stem = $EXPL$During the preparation of a SOC 2 report for Crestline Data Services, management is drafting the system description and determining which details to include versus exclude. What may be appropriately excluded from the system description in a SOC report?$EXPL$
WHERE id = 3904;

-- ID 3907: SOC Reporting (13 words)
-- ORIGINAL STEM: What does the service auditor's opinion address in a SOC Type I report?
UPDATE questions SET
  stem = $EXPL$Keystone Benefits Administration received its first SOC 2 Type I report as of March 31, 2026. A user entity auditor is reviewing the opinion section. What does the service auditor''s opinion address in a SOC Type I report?$EXPL$
WHERE id = 3907;

-- ID 13683: SOC Reporting (13 words)
-- ORIGINAL STEM: What are principal service commitments in the system description of a SOC report?
UPDATE questions SET
  stem = $EXPL$In drafting the system description for Summit Payment Processing''s SOC 1 report, the engagement team identifies SLAs, contractual guarantees, and published service policies. What are principal service commitments in the system description of a SOC report?$EXPL$
WHERE id = 13683;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (2 questions)
-- ============================================================

-- ID 3790: SOC Reporting and Trust Services Criteria (14 words)
-- ORIGINAL STEM: CC7 (System Operations) in the Trust Services framework addresses which of the following areas?
UPDATE questions SET
  stem = $EXPL$A service auditor is mapping Ironclad Hosting''s security controls to the Trust Services common criteria and needs to categorize the company''s SIEM monitoring and vulnerability management activities. CC7 (System Operations) in the Trust Services framework addresses which of the following areas?$EXPL$
WHERE id = 3790;

-- ID 3792: SOC Reporting and Trust Services Criteria (14 words)
-- ORIGINAL STEM: Points of focus in the Trust Services Criteria serve which of the following purposes?
UPDATE questions SET
  stem = $EXPL$While designing controls for its SOC 2 engagement, Pinnacle SaaS reviews the specific considerations listed under each Trust Services Criterion to guide its control implementation. Points of focus in the Trust Services Criteria serve which of the following purposes?$EXPL$
WHERE id = 3792;

-- ============================================================
-- SOC TESTING CONTROLS (3 questions)
-- ============================================================

-- ID 1215: SOC Testing Controls (14 words)
-- ORIGINAL STEM: Which of the following is a required documentation element for SOC testing working papers?
UPDATE questions SET
  stem = $EXPL$A senior associate on the SOC 2 engagement for Bridgewater Cloud is compiling testing workpapers and needs to ensure all required elements are documented before the review partner signs off. Which of the following is a required documentation element for SOC testing working papers?$EXPL$
WHERE id = 1215;

-- ID 13700: SOC Testing Controls (14 words)
-- ORIGINAL STEM: What must be documented about the population when performing sampling in a SOC engagement?
UPDATE questions SET
  stem = $EXPL$During the SOC 2 Type II examination of Landmark IT Services, the auditor is testing a control that operates daily over a 12-month period. Before selecting a sample, the auditor must establish the population. What must be documented about the population when performing sampling in a SOC engagement?$EXPL$
WHERE id = 13700;

-- ID 1212: SOC Testing Controls (15 words)
-- ORIGINAL STEM: When the population of a control is very small, what is the appropriate sampling approach?
UPDATE questions SET
  stem = $EXPL$Oakdale Analytics performs a comprehensive IT risk assessment once per year. The SOC 2 auditor is determining how to test this annual control over the 12-month examination period. When the population of a control is very small, what is the appropriate sampling approach?$EXPL$
WHERE id = 1212;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (5 questions)
-- ============================================================

-- ID 13647: System Availability and Change Management (10 words)
-- ORIGINAL STEM: What does server clustering provide in a high availability environment?
UPDATE questions SET
  stem = $EXPL$Vertex Financial runs its trading platform across four servers configured as a logical group. During a hardware failure on one server last quarter, transactions continued processing without interruption. What does server clustering provide in a high availability environment?$EXPL$
WHERE id = 13647;

-- ID 794: System Availability and Change Management (11 words)
-- ORIGINAL STEM: What is the purpose of regression testing in software change management?
UPDATE questions SET
  stem = $EXPL$After applying a patch to the shipping module of its ERP system, Harland Distribution discovers that the invoicing module now calculates freight charges incorrectly. The QA team had not performed a specific type of testing before deployment. What is the purpose of regression testing in software change management?$EXPL$
WHERE id = 794;

-- ID 797: System Availability and Change Management (11 words)
-- ORIGINAL STEM: What is the primary data loss risk of asynchronous data replication?
UPDATE questions SET
  stem = $EXPL$Atlas Corp. replicates its order database to a secondary site every 15 minutes. The primary data center fails at 2:15 PM, and the last successful replication completed at 2:00 PM. What is the primary data loss risk of asynchronous data replication?$EXPL$
WHERE id = 797;

-- ID 801: System Availability and Change Management (11 words)
-- ORIGINAL STEM: Under COBIT, what does the principle of separation of environments require?
UPDATE questions SET
  stem = $EXPL$An auditor at Crestfield Software discovers that developers routinely test new code directly on the production server because no separate testing environment exists. Under COBIT, what does the principle of separation of environments require?$EXPL$
WHERE id = 801;

-- ID 3542: System Availability and Change Management (11 words)
-- ORIGINAL STEM: What is the primary purpose of a Change Advisory Board (CAB)?
UPDATE questions SET
  stem = $EXPL$Horizon Telecom established a cross-functional committee of IT, operations, and business stakeholders that meets weekly to review proposed system modifications. What is the primary purpose of a Change Advisory Board (CAB)?$EXPL$
WHERE id = 3542;

COMMIT;
