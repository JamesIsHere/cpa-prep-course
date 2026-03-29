-- Migration: Stem expansion — ISC batch 10 (27 questions)
-- Date: 2026-03-29
-- Purpose: Expand 27 short stems with scenario context for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 4917: Change Management (18 words)
-- ORIGINAL STEM: A company implements a canary deployment strategy for a new transaction processing module. What does this strategy involve?
UPDATE questions SET
  stem = $EXPL$Pinnacle Financial Services is rolling out a redesigned transaction processing module to its 2,000-user base. Rather than deploying the update to all users at once, the release team selects a canary deployment strategy. What does this strategy involve?$EXPL$
WHERE id = 4917;

-- ID 4906: Change Management (19 words)
-- ORIGINAL STEM: Which document formally initiates the change management process by describing the proposed modification, its business justification, and expected impact?
UPDATE questions SET
  stem = $EXPL$A developer at Crosspoint Technologies wants to modify the accounts payable module to support automated three-way matching. Before any work begins, the Change Advisory Board requires a formal document describing the proposed modification, business justification, and expected impact. Which document formally initiates this process?$EXPL$
WHERE id = 4906;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (3 questions)
-- ============================================================

-- ID 3527: Data Management and Lifecycle (18 words)
-- ORIGINAL STEM: When the same data field contains multiple representations of the same value, which data quality dimension is violated?
UPDATE questions SET
  stem = $EXPL$During a data quality audit at Lakeview Health Systems, an analyst discovers that the ''State'' field in the patient database contains entries for California recorded as ''CA,'' ''Calif.,'' and ''California.'' Which data quality dimension is violated?$EXPL$
WHERE id = 3527;

-- ID 3503: Data Management and Lifecycle (19 words)
-- ORIGINAL STEM: Which database constraint ensures that a foreign key value always matches an existing primary key in the referenced table?
UPDATE questions SET
  stem = $EXPL$A database administrator at Redstone Manufacturing is designing the orders table to link each order to a valid customer record in the customers table. Which database constraint ensures that a foreign key value always matches an existing primary key in the referenced table?$EXPL$
WHERE id = 3503;

-- ID 3533: Data Management and Lifecycle (19 words)
-- ORIGINAL STEM: In data warehousing, which slowly changing dimension type preserves full history by adding a new row for each change?
UPDATE questions SET
  stem = $EXPL$The data warehouse team at Beacon Retail needs to track every change to product pricing over time so analysts can report on historical trends. In data warehousing, which slowly changing dimension type preserves full history by adding a new row for each change?$EXPL$
WHERE id = 3533;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (1 questions)
-- ============================================================

-- ID 4927: Data Protection Technologies (20 words)
-- ORIGINAL STEM: Under NIST SP 800-88 Guidelines for Media Sanitization, which sanitization method renders data recovery infeasible even with state-of-the-art laboratory techniques?
UPDATE questions SET
  stem = $EXPL$Grayson Defense Contractors is decommissioning servers that stored classified project files. The security team must ensure that no data can be recovered, even using advanced forensic laboratory techniques. Under NIST SP 800-88 Guidelines for Media Sanitization, which sanitization method meets this requirement?$EXPL$
WHERE id = 4927;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (2 questions)
-- ============================================================

-- ID 3472: ERP and Accounting Information Systems (19 words)
-- ORIGINAL STEM: Which of the following BEST describes a master data management (MDM) strategy in the context of an ERP system?
UPDATE questions SET
  stem = $EXPL$After acquiring two subsidiaries, Orion Industries discovers that vendor records are duplicated and inconsistently formatted across three separate ERP instances. The CIO proposes a master data management (MDM) strategy. Which of the following best describes this strategy in the context of an ERP system?$EXPL$
WHERE id = 3472;

-- ID 3480: ERP and Accounting Information Systems (19 words)
-- ORIGINAL STEM: Which of the following is the BEST description of an application control as opposed to an IT general control?
UPDATE questions SET
  stem = $EXPL$During a walkthrough of Sterling Corp.''s ERP system, an auditor notes that the accounts payable module automatically rejects invoices where the purchase order, receiving report, and invoice amounts do not match within a $50 tolerance. Which of the following best describes this type of control as opposed to an IT general control?$EXPL$
WHERE id = 3480;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (3 questions)
-- ============================================================

-- ID 3684: Incident Response and Recovery (19 words)
-- ORIGINAL STEM: Under NIST SP 800-61, which IR phase involves validating alerts, correlating events, and confirming whether an incident has occurred?
UPDATE questions SET
  stem = $EXPL$The security operations center at Ridgeline Financial receives multiple alerts from its SIEM indicating unusual outbound traffic from a database server. Analysts begin correlating firewall logs with endpoint telemetry to determine whether an actual breach has occurred. Under NIST SP 800-61, which IR phase are they performing?$EXPL$
WHERE id = 3684;

-- ID 3699: Incident Response and Recovery (19 words)
-- ORIGINAL STEM: What technique is used to verify that a forensic disk image is an exact copy of the original drive?
UPDATE questions SET
  stem = $EXPL$A forensic investigator at Clearwater Consulting creates a bit-for-bit image of a compromised laptop''s hard drive before beginning analysis. To confirm the image is identical to the original, the investigator applies a verification technique. What technique is used for this purpose?$EXPL$
WHERE id = 3699;

-- ID 3687: Incident Response and Recovery (20 words)
-- ORIGINAL STEM: After containing and eradicating a malware infection, the IR team begins the recovery phase. Which activity is part of recovery?
UPDATE questions SET
  stem = $EXPL$The incident response team at Vantage Logistics has successfully contained a ransomware outbreak and removed all malicious files from affected servers. The team now transitions to the recovery phase. Which activity is part of this phase?$EXPL$
WHERE id = 3687;

-- ============================================================
-- IT AUDIT FRAMEWORKS (2 questions)
-- ============================================================

-- ID 1061: IT Audit Frameworks (18 words)
-- ORIGINAL STEM: Which ITIL 4 guiding principle emphasizes starting with what already exists rather than building something new from scratch?
UPDATE questions SET
  stem = $EXPL$Meridian Bank is redesigning its IT service management processes and considering ITIL 4. The CIO wants to leverage existing tools and workflows rather than replacing everything. Which ITIL 4 guiding principle supports this approach?$EXPL$
WHERE id = 1061;

-- ID 3855: IT Audit Frameworks (18 words)
-- ORIGINAL STEM: An organization implements the ITIL 4 practice of "continual improvement." Which of the following best describes this practice?
UPDATE questions SET
  stem = $EXPL$Atlas Cloud Services has adopted ITIL 4 and established a dedicated team to identify and implement ongoing enhancements across all IT service areas. Which of the following best describes the ITIL 4 practice of continual improvement?$EXPL$
WHERE id = 3855;

-- ============================================================
-- IT GENERAL CONTROLS (1 questions)
-- ============================================================

-- ID 3807: IT General Controls (20 words)
-- ORIGINAL STEM: An organization conducts quarterly access reviews of its critical financial applications. What is the primary purpose of these access reviews?
UPDATE questions SET
  stem = $EXPL$Hartwell Industries'' internal audit team performs quarterly reviews of user access rights across the ERP general ledger, accounts payable, and payroll modules. What is the primary purpose of these access reviews?$EXPL$
WHERE id = 3807;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (1 questions)
-- ============================================================

-- ID 759: IT Infrastructure and Architecture (20 words)
-- ORIGINAL STEM: An IT auditor is evaluating a client's use of containerization (Docker/Kubernetes). Which of the following represents the GREATEST audit concern?
UPDATE questions SET
  stem = $EXPL$During an IT audit of Crestline Software, the auditor learns that development teams deploy Docker containers orchestrated by Kubernetes to host customer-facing microservices in production. Which of the following represents the greatest audit concern regarding this containerization environment?$EXPL$
WHERE id = 759;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (2 questions)
-- ============================================================

-- ID 854: Privacy Requirements and Data Protection (20 words)
-- ORIGINAL STEM: Which privacy principle states that organizations should collect only the minimum amount of personal data necessary for the specified purpose?
UPDATE questions SET
  stem = $EXPL$Greenleaf Insurance''s new mobile app registration form requests a user''s full name, date of birth, Social Security number, home address, marital status, and political affiliation—even though only name and date of birth are needed to create an account. Which privacy principle is being violated?$EXPL$
WHERE id = 854;

-- ID 3737: Privacy Requirements and Data Protection (20 words)
-- ORIGINAL STEM: A data processing agreement between a controller and processor under GDPR Article 28 must include which of the following provisions?
UPDATE questions SET
  stem = $EXPL$Nordvik Analytics, a data processor based in Berlin, is finalizing a data processing agreement with its controller client under GDPR Article 28. Which of the following provisions must be included in this agreement?$EXPL$
WHERE id = 3737;

-- ============================================================
-- SOC ENGAGEMENTS (1 questions)
-- ============================================================

-- ID 3754: SOC Engagements (18 words)
-- ORIGINAL STEM: In a SOC 1 engagement, management of the service organization is responsible for providing which of the following?
UPDATE questions SET
  stem = $EXPL$Apex Payroll Services is preparing for its first SOC 1 Type II engagement. The CPA firm has outlined the respective responsibilities of the service auditor and the service organization''s management. In a SOC 1 engagement, management is responsible for providing which of the following?$EXPL$
WHERE id = 3754;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 4951: SOC Report Content and Structure (20 words)
-- ORIGINAL STEM: When a service organization uses a subservice organization and the SOC report uses the "carve-out" method, what does this mean?
UPDATE questions SET
  stem = $EXPL$BrightCloud SaaS hosts its application on Amazon Web Services. BrightCloud''s SOC 2 Type II report states that the report uses the carve-out method with respect to AWS. What does this mean?$EXPL$
WHERE id = 4951;

-- ============================================================
-- SOC REPORTING (2 questions)
-- ============================================================

-- ID 3892: SOC Reporting (18 words)
-- ORIGINAL STEM: What should a user entity's auditor do when a SOC 1 Type II report contains a qualified opinion?
UPDATE questions SET
  stem = $EXPL$While auditing Trenton Manufacturing, the external auditor obtains a SOC 1 Type II report from Trenton''s payroll service provider. The report contains a qualified opinion noting exceptions in the access control area. What should the user entity''s auditor do?$EXPL$
WHERE id = 3892;

-- ID 3905: SOC Reporting (18 words)
-- ORIGINAL STEM: Why do SOC 1 reports use the term control objectives while SOC 2 reports use the term criteria?
UPDATE questions SET
  stem = $EXPL$A new staff auditor at Halcyon & Associates notices that the firm''s SOC 1 reports reference ''control objectives'' while its SOC 2 reports reference ''criteria.'' Why do these two report types use different terminology?$EXPL$
WHERE id = 3905;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (2 questions)
-- ============================================================

-- ID 3779: SOC Reporting and Trust Services Criteria (20 words)
-- ORIGINAL STEM: Which Trust Services Criteria category is concerned with protecting information designated as confidential, such as trade secrets and intellectual property?
UPDATE questions SET
  stem = $EXPL$Vertex Pharmaceuticals stores proprietary drug formulas and licensing agreements in its cloud-hosted document management system. The company is scoping a SOC 2 engagement and wants to ensure these sensitive business records are protected. Which Trust Services Criteria category addresses this concern?$EXPL$
WHERE id = 3779;

-- ID 3787: SOC Reporting and Trust Services Criteria (20 words)
-- ORIGINAL STEM: The privacy category within the Trust Services Criteria addresses personal information through criteria aligned with which of the following frameworks?
UPDATE questions SET
  stem = $EXPL$A service auditor is evaluating the privacy category for a SOC 2 engagement at MedFirst Claims Processing, which handles patient personal information. The privacy criteria within the Trust Services Criteria are aligned with which of the following frameworks?$EXPL$
WHERE id = 3787;

-- ============================================================
-- SOC TESTING CONTROLS (3 questions)
-- ============================================================

-- ID 3881: SOC Testing Controls (19 words)
-- ORIGINAL STEM: Comparing a change log against a change management system to verify documented approvals is an example of which test?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 Type II engagement at Cascade Data Services, the service auditor pulls the production change log and cross-references each entry against the change management system to confirm documented approvals exist. This procedure is an example of which type of test?$EXPL$
WHERE id = 3881;

-- ID 3864: SOC Testing Controls (20 words)
-- ORIGINAL STEM: In a SOC engagement, attribute sampling is commonly used when testing controls. Which of the following best describes attribute sampling?
UPDATE questions SET
  stem = $EXPL$A service auditor at Whitfield & Cole is planning the testing approach for a SOC 2 Type II engagement covering 12 months. The audit team decides to use attribute sampling for control testing. Which of the following best describes attribute sampling?$EXPL$
WHERE id = 3864;

-- ID 3877: SOC Testing Controls (20 words)
-- ORIGINAL STEM: Selecting items from a population and testing them for specific attributes such as proper approval is best described as what?
UPDATE questions SET
  stem = $EXPL$For a SOC 2 Type II engagement at Ironclad Hosting, the service auditor selects 25 access provisioning requests from the year''s population of 1,200 and checks each for documented manager approval. This procedure is best described as what?$EXPL$
WHERE id = 3877;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (1 questions)
-- ============================================================

-- ID 12882: Threats, Attacks, and Vulnerabilities (20 words)
-- ORIGINAL STEM: What term describes a cyberattack in which an attacker secretly uses a victim's computing resources to mine cryptocurrency without authorization?
UPDATE questions SET
  stem = $EXPL$The IT team at Granite Logistics notices that several servers are running at near 100% CPU utilization despite minimal application workloads. Investigation reveals hidden scripts mining cryptocurrency. What term describes this type of cyberattack?$EXPL$
WHERE id = 12882;

COMMIT;
