-- Migration: Stem expansion — ISC batch 2 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 12603: Change Management (11 words)
-- ORIGINAL STEM: What does the change management metric "mean time to implement" measure?
UPDATE questions SET
  stem = $EXPL$Whitfield Financial''s IT director is reviewing quarterly change management dashboards. One metric shows that approved changes take an average of 14 days from request submission to production deployment. What does this "mean time to implement" metric measure?$EXPL$
WHERE id = 12603;

-- ID 12629: Change Management (11 words)
-- ORIGINAL STEM: What does the "failed change rate" metric measure in change management?
UPDATE questions SET
  stem = $EXPL$After a series of production outages, Kellner Industries'' CIO requests a report on change management health. The IT governance team presents a metric showing that 12% of deployed changes required rollback or caused incidents last quarter. What does this "failed change rate" metric measure?$EXPL$
WHERE id = 12629;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 3505: Data Management and Lifecycle (8 words)
-- ORIGINAL STEM: In the data lifecycle, what is data archival?
UPDATE questions SET
  stem = $EXPL$Ridgeway Healthcare maintains patient billing records that are no longer actively used but must be retained for seven years under federal regulations. The IT team is planning to move these records from the production database to a lower-cost storage tier. In the data lifecycle, what is this process called?$EXPL$
WHERE id = 3505;

-- ID 3528: Data Management and Lifecycle (8 words)
-- ORIGINAL STEM: What business value does a data catalog provide?
UPDATE questions SET
  stem = $EXPL$Creston Manufacturing has data spread across an ERP system, a data warehouse, and multiple departmental spreadsheets. Analysts frequently spend hours locating the correct data source for reports. The CIO proposes implementing a centralized data catalog. What business value does this tool primarily provide?$EXPL$
WHERE id = 3528;

-- ID 3511: Data Management and Lifecycle (9 words)
-- ORIGINAL STEM: What is the primary distinction between OLAP and OLTP?
UPDATE questions SET
  stem = $EXPL$Grayson Retail''s database administrator manages both a transactional system handling point-of-sale purchases and a separate analytical platform used for quarterly trend reporting. The controller asks why two separate systems are needed. What is the primary distinction between OLAP and OLTP systems?$EXPL$
WHERE id = 3511;

-- ID 787: Data Management and Lifecycle (10 words)
-- ORIGINAL STEM: What is tiered storage in the context of data retention?
UPDATE questions SET
  stem = $EXPL$Beacon Insurance''s data retention policy requires keeping claims data for ten years. The IT team proposes moving older records from high-performance SSD storage to lower-cost tape archives based on access frequency. What is this approach called in data retention?$EXPL$
WHERE id = 787;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5844: Data Protection Technologies (10 words)
-- ORIGINAL STEM: What is key escrow in the context of data protection?
UPDATE questions SET
  stem = $EXPL$Aldridge Consulting encrypts all client engagement files using individual employee encryption keys. Management is concerned that if an employee leaves unexpectedly, encrypted files could become permanently inaccessible. The CISO recommends a key escrow arrangement. What does this involve?$EXPL$
WHERE id = 5844;

-- ID 5896: Data Protection Technologies (10 words)
-- ORIGINAL STEM: Which data protection state does confidential computing technology primarily address?
UPDATE questions SET
  stem = $EXPL$Pennbrook Financial processes sensitive client portfolio data in a shared cloud environment. The security team is evaluating confidential computing technology to protect data while it is actively being processed in memory. Which data protection state does this technology primarily address?$EXPL$
WHERE id = 5896;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (2 questions)
-- ============================================================

-- ID 765: ERP and Accounting Information Systems (12 words)
-- ORIGINAL STEM: What type of control rejects unauthorized transactions before they enter the system?
UPDATE questions SET
  stem = $EXPL$Summit Distributors'' ERP system automatically blocks purchase orders submitted by employees who lack the appropriate approval authority. The blocked transactions are returned to the submitter with an error message before any data is recorded. What type of control does this represent?$EXPL$
WHERE id = 765;

-- ID 770: ERP and Accounting Information Systems (12 words)
-- ORIGINAL STEM: Which ERP module most directly supports work-in-process inventory valuation for financial reporting?
UPDATE questions SET
  stem = $EXPL$Hartwell Precision Components tracks raw materials through multiple production stages, each adding labor and overhead costs. The controller needs accurate work-in-process inventory figures for the quarterly financial statements. Which ERP module most directly supports this valuation?$EXPL$
WHERE id = 770;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (4 questions)
-- ============================================================

-- ID 7809: Incident Response and Recovery (11 words)
-- ORIGINAL STEM: What does the term 'failover' describe in a disaster recovery context?
UPDATE questions SET
  stem = $EXPL$Northfield Bank''s primary data center experiences a power grid failure at 2:00 AM. Within minutes, all transaction processing automatically transfers to a secondary data center 200 miles away with no manual intervention. What does this automatic transfer describe in disaster recovery?$EXPL$
WHERE id = 7809;

-- ID 7820: Incident Response and Recovery (11 words)
-- ORIGINAL STEM: What is the primary purpose of a documented incident response plan?
UPDATE questions SET
  stem = $EXPL$After a ransomware attack caused three days of confusion and conflicting directives among Waverly Corp''s IT staff, the CISO recommends creating a formal, documented incident response plan. What is the primary purpose of this document?$EXPL$
WHERE id = 7820;

-- ID 7891: Incident Response and Recovery (11 words)
-- ORIGINAL STEM: What is the purpose of a write blocker in digital forensics?
UPDATE questions SET
  stem = $EXPL$During a fraud investigation at Mercer Logistics, the forensics team connects the suspect''s laptop hard drive to an analysis workstation using a specialized hardware device. This device allows data to be read but prevents any modifications to the original media. What is the purpose of this write blocker?$EXPL$
WHERE id = 7891;

-- ID 7914: Incident Response and Recovery (11 words)
-- ORIGINAL STEM: What defines a security incident in the context of incident response?
UPDATE questions SET
  stem = $EXPL$Oakmont Technologies'' security operations center detects an unusual spike in outbound network traffic at 11:30 PM. The SOC analyst must determine whether this event qualifies for escalation under the incident response plan. What defines a security incident in this context?$EXPL$
WHERE id = 7914;

-- ============================================================
-- IT AUDIT FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3839: IT Audit Frameworks (10 words)
-- ORIGINAL STEM: Which step comes first in the IT risk management process?
UPDATE questions SET
  stem = $EXPL$Cascade Financial Services is implementing a formal IT risk management program for the first time. The IT governance committee asks which activity should be performed before any controls are selected or risk treatment decisions are made. Which step comes first in the IT risk management process?$EXPL$
WHERE id = 3839;

-- ID 3858: IT Audit Frameworks (10 words)
-- ORIGINAL STEM: Why did ITIL 4 replace the term processes with practices?
UPDATE questions SET
  stem = $EXPL$An IT service management consultant is training Dalton Corp''s staff on ITIL 4. A team member notices that earlier ITIL versions used the term "processes," while ITIL 4 uses "practices." Why did ITIL 4 make this terminology change?$EXPL$
WHERE id = 3858;

-- ID 12946: IT Audit Frameworks (10 words)
-- ORIGINAL STEM: In quantitative risk analysis, what does the exposure factor represent?
UPDATE questions SET
  stem = $EXPL$Vanguard Systems is performing a quantitative risk analysis on its $800,000 database server. The risk analyst estimates that a successful ransomware attack would render 40% of the asset''s value unrecoverable. What does this 40% figure represent in the risk analysis?$EXPL$
WHERE id = 12946;

-- ID 12960: IT Audit Frameworks (10 words)
-- ORIGINAL STEM: In IT risk treatment, what does the "mitigate" strategy involve?
UPDATE questions SET
  stem = $EXPL$After completing a risk assessment, Thornton Manufacturing identifies a high risk of unauthorized access to its financial reporting system. The risk committee decides to deploy multi-factor authentication and network segmentation to address the threat. In IT risk treatment, what does this "mitigate" strategy involve?$EXPL$
WHERE id = 12960;

-- ============================================================
-- IT GENERAL CONTROLS (2 questions)
-- ============================================================

-- ID 13855: IT General Controls (10 words)
-- ORIGINAL STEM: What is a job dependency in IT operations batch processing?
UPDATE questions SET
  stem = $EXPL$Prescott Corp''s nightly batch schedule runs subsidiary ledger postings before the general ledger close job. If the subsidiary postings fail, the GL close is automatically held until the prerequisite completes successfully. What is this sequencing requirement called in IT operations?$EXPL$
WHERE id = 13855;

-- ID 13131: IT General Controls (11 words)
-- ORIGINAL STEM: What is the primary goal of problem management in IT operations?
UPDATE questions SET
  stem = $EXPL$Ellington Financial''s help desk has resolved the same "application timeout" incident twelve times this month by restarting the web server. The IT director assigns a team to investigate why the timeouts keep recurring. What is the primary goal of this problem management activity?$EXPL$
WHERE id = 13131;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (2 questions)
-- ============================================================

-- ID 3458: IT Infrastructure and Architecture (13 words)
-- ORIGINAL STEM: Which of the following scenarios BEST illustrates the use of a community cloud?
UPDATE questions SET
  stem = $EXPL$Five regional credit unions agree to share a cloud computing environment that is jointly governed and accessible only to member institutions. The platform hosts regulatory reporting tools and shared compliance databases. Which cloud deployment model does this arrangement best illustrate?$EXPL$
WHERE id = 3458;

-- ID 3447: IT Infrastructure and Architecture (14 words)
-- ORIGINAL STEM: Which OSI layer is responsible for logical addressing and routing packets between different networks?
UPDATE questions SET
  stem = $EXPL$Langford Corp''s network engineer is troubleshooting connectivity between the company''s New York and Chicago offices. The issue involves IP address configuration and how packets are routed between the two separate networks. Which OSI layer is responsible for this logical addressing and routing function?$EXPL$
WHERE id = 3447;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (3 questions)
-- ============================================================

-- ID 13213: Privacy Requirements and Data Protection (10 words)
-- ORIGINAL STEM: What does the CCPA's right to non-discrimination protect consumers against?
UPDATE questions SET
  stem = $EXPL$A California-based streaming service charges customers who opt out of personal data sales an additional $5.99 per month compared to customers who allow data sharing. A consumer files a complaint under the CCPA. What does the CCPA''s right to non-discrimination protect consumers against?$EXPL$
WHERE id = 13213;

-- ID 13209: Privacy Requirements and Data Protection (12 words)
-- ORIGINAL STEM: What does the "notice" principle require under fair information practice principles (FIPPs)?
UPDATE questions SET
  stem = $EXPL$Hawthorne Analytics launches a new mobile app that collects user location data for targeted advertising but does not disclose this practice anywhere in the app or on its website. A privacy audit flags a violation. What does the "notice" principle require under fair information practice principles?$EXPL$
WHERE id = 13209;

-- ID 844: Privacy Requirements and Data Protection (13 words)
-- ORIGINAL STEM: Which regulation establishes comprehensive data protection rights for individuals within the European Union?
UPDATE questions SET
  stem = $EXPL$A U.S.-based e-commerce company begins selling products to customers in Germany and France. Legal counsel advises that the company must now comply with a comprehensive European data protection regulation governing the personal data of EU residents. Which regulation is counsel referring to?$EXPL$
WHERE id = 844;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3612: Security and Control Frameworks (10 words)
-- ORIGINAL STEM: What is control mapping in the context of framework integration?
UPDATE questions SET
  stem = $EXPL$Silverline Corp must comply with both ISO 27001 and the NIST Cybersecurity Framework. The compliance team creates a matrix showing how each ISO 27001 control corresponds to NIST subcategories to avoid duplicating audit efforts. What is this alignment exercise called?$EXPL$
WHERE id = 3612;

-- ID 13947: Security and Control Frameworks (10 words)
-- ORIGINAL STEM: What is a compensating control in an information security context?
UPDATE questions SET
  stem = $EXPL$Fenwick Manufacturing''s legacy payroll system cannot support multi-factor authentication due to software limitations. To address the access risk, the company implements enhanced logging, IP address restrictions, and daily access reviews for all payroll users. What type of control does this alternative measure represent?$EXPL$
WHERE id = 13947;

-- ID 810: Security and Control Frameworks (12 words)
-- ORIGINAL STEM: Under COBIT 2019, what does a Level 2 (Managed) capability rating indicate?
UPDATE questions SET
  stem = $EXPL$An ISACA assessor evaluates Ridgefield Corp''s change management process and assigns it a Level 2 (Managed) rating under the COBIT 2019 capability model. What does this rating indicate about the process?$EXPL$
WHERE id = 810;

-- ID 3578: Security and Control Frameworks (12 words)
-- ORIGINAL STEM: In NIST SP 800-53, which control family addresses backup and recovery procedures?
UPDATE questions SET
  stem = $EXPL$Stratton Federal Agency is selecting baseline security controls from NIST SP 800-53 for its new financial reporting system. The system owner needs to identify which control family covers backup scheduling, offsite storage, and restoration testing. Which NIST SP 800-53 control family addresses these requirements?$EXPL$
WHERE id = 3578;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 3651: Security Controls and Monitoring (8 words)
-- ORIGINAL STEM: What does Transport Layer Security (TLS) protect against?
UPDATE questions SET
  stem = $EXPL$Broadmoor Credit Union''s online banking portal uses TLS 1.3 to secure all communications between customer browsers and the bank''s servers. The security team explains this protocol to the audit committee during a controls review. What does Transport Layer Security protect against?$EXPL$
WHERE id = 3651;

-- ID 3647: Security Controls and Monitoring (9 words)
-- ORIGINAL STEM: Which statement correctly categorizes preventive, detective, and corrective controls?
UPDATE questions SET
  stem = $EXPL$During an IT audit, Pemberton Consulting''s engagement team classifies each of the client''s information security controls into one of three categories based on when the control operates relative to a security event. Which statement correctly categorizes preventive, detective, and corrective controls?$EXPL$
WHERE id = 3647;

-- ID 3654: Security Controls and Monitoring (9 words)
-- ORIGINAL STEM: What are the three categories of multi-factor authentication (MFA)?
UPDATE questions SET
  stem = $EXPL$Glenmore Financial''s CISO is designing an MFA policy that requires employees to present credentials from at least two different factor categories when accessing the trading platform. What are the three recognized categories of multi-factor authentication?$EXPL$
WHERE id = 3654;

-- ID 3649: Security Controls and Monitoring (10 words)
-- ORIGINAL STEM: What type of encryption algorithm is AES (Advanced Encryption Standard)?
UPDATE questions SET
  stem = $EXPL$Ashford Dynamics encrypts all customer data at rest using AES-256, a standard recommended by NIST for protecting sensitive government and commercial information. What type of encryption algorithm is AES?$EXPL$
WHERE id = 3649;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 3750: SOC Engagements (12 words)
-- ORIGINAL STEM: How does a SOC 3 report differ from a SOC 2 report?
UPDATE questions SET
  stem = $EXPL$Pinnacle Cloud Services wants to post an assurance report on its website so prospective customers can verify its security controls without requiring a nondisclosure agreement. The compliance team recommends a SOC 3 report instead of a SOC 2. How does a SOC 3 report differ from a SOC 2 report?$EXPL$
WHERE id = 3750;

-- ID 13958: SOC Engagements (12 words)
-- ORIGINAL STEM: What distinguishes a SOC for Cybersecurity engagement from a SOC 2 engagement?
UPDATE questions SET
  stem = $EXPL$Haverford Industries'' board of directors requests an independent report covering the entire organization''s cybersecurity risk management program, not just controls over a specific service. The external auditor recommends a SOC for Cybersecurity engagement. What distinguishes this from a SOC 2 engagement?$EXPL$
WHERE id = 13958;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 4952: SOC Report Content and Structure (9 words)
-- ORIGINAL STEM: What is professional skepticism as defined by auditing standards?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 examination, the service auditor receives management''s written assertion that all controls operated effectively. Rather than accepting this representation at face value, the auditor plans corroborating test procedures. What mindset does auditing standards require in this situation?$EXPL$
WHERE id = 4952;

-- ============================================================
-- SOC REPORTING (3 questions)
-- ============================================================

-- ID 13689: SOC Reporting (10 words)
-- ORIGINAL STEM: In a SOC report's system description, what are system requirements?
UPDATE questions SET
  stem = $EXPL$Clearview Data Services is drafting Section III of its SOC 2 report. The description team must document the regulatory mandates and contractual obligations the system is designed to satisfy. In a SOC report''s system description, what are these system requirements?$EXPL$
WHERE id = 13689;

-- ID 1220: SOC Reporting (11 words)
-- ORIGINAL STEM: Under SOC reporting guidance, what is a bridge letter (gap letter)?
UPDATE questions SET
  stem = $EXPL$A user entity''s fiscal year ends December 31, but the service organization''s SOC 2 Type II report covers only January through September. The user entity auditor requests a written representation from the service organization covering the October-December gap period. What is this document called under SOC reporting guidance?$EXPL$
WHERE id = 1220;

-- ID 1217: SOC Reporting (12 words)
-- ORIGINAL STEM: A SOC 2 report that uses the carve-out method for subservice organizations:
UPDATE questions SET
  stem = $EXPL$Apex Payroll Services outsources its data hosting to a third-party cloud provider. Apex''s SOC 2 Type II report identifies the cloud provider and the services it performs but excludes the provider''s controls from the examination scope. A SOC 2 report that uses this carve-out method for subservice organizations:$EXPL$
WHERE id = 1217;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 895: SOC Reporting and Trust Services Criteria (12 words)
-- ORIGINAL STEM: The SOC for Cybersecurity framework differs from SOC 2 in that it:
UPDATE questions SET
  stem = $EXPL$Redstone Corp''s audit committee is deciding between a SOC 2 report focused on its cloud hosting service and a SOC for Cybersecurity report covering the entire organization''s risk management program. The SOC for Cybersecurity framework differs from SOC 2 in that it:$EXPL$
WHERE id = 895;

-- ID 3794: SOC Reporting and Trust Services Criteria (13 words)
-- ORIGINAL STEM: CC3 (Risk Assessment) in the Trust Services framework requires which of the following?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 examination of Meridian Software, the service auditor is evaluating controls mapped to the CC3 (Risk Assessment) common criteria. CC3 in the Trust Services framework requires which of the following?$EXPL$
WHERE id = 3794;

-- ID 3796: SOC Reporting and Trust Services Criteria (13 words)
-- ORIGINAL STEM: CC9 (Risk Mitigation) in the Trust Services framework addresses which of the following?
UPDATE questions SET
  stem = $EXPL$A SOC 2 practitioner is reviewing Eastgate Technologies'' controls mapped to CC9 (Risk Mitigation) in the Trust Services Criteria. The practitioner needs to determine what activities this criterion requires. CC9 addresses which of the following?$EXPL$
WHERE id = 3796;

-- ============================================================
-- SOC TESTING CONTROLS (3 questions)
-- ============================================================

-- ID 3872: SOC Testing Controls (12 words)
-- ORIGINAL STEM: Roll-forward procedures in a SOC engagement refer to which of the following?
UPDATE questions SET
  stem = $EXPL$Greystone Analytics issued a SOC 2 Type II report covering January through September. A major user entity''s auditor needs assurance through December 31 and asks Greystone''s service auditor to extend testing for the remaining three months. Roll-forward procedures in a SOC engagement refer to which of the following?$EXPL$
WHERE id = 3872;

-- ID 1206: SOC Testing Controls (13 words)
-- ORIGINAL STEM: Which testing procedure provides the most persuasive evidence of a control's operating effectiveness?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 Type II examination of Clarendon Data Services, the practitioner must select the most reliable testing approach for a complex automated reconciliation control. Which testing procedure provides the most persuasive evidence of a control''s operating effectiveness?$EXPL$
WHERE id = 1206;

-- ID 1207: SOC Testing Controls (13 words)
-- ORIGINAL STEM: Under AICPA attestation standards, what does a SOC 2 Type I report evaluate?
UPDATE questions SET
  stem = $EXPL$Sterling Cloud Hosting is a new service organization that has not yet completed a full year of operations. Its largest prospective client requests assurance over Sterling''s controls as of June 30, 2025. Under AICPA attestation standards, what does a SOC 2 Type I report evaluate?$EXPL$
WHERE id = 1207;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (5 questions)
-- ============================================================

-- ID 3550: System Availability and Change Management (8 words)
-- ORIGINAL STEM: In change management, what is a standard change?
UPDATE questions SET
  stem = $EXPL$Winslow Corp''s IT team deploys monthly operating system security patches using a pre-approved, documented procedure that does not require individual Change Advisory Board review. In change management terminology, what is this type of pre-authorized, low-risk change called?$EXPL$
WHERE id = 3550;

-- ID 3561: System Availability and Change Management (8 words)
-- ORIGINAL STEM: What does a full-interruption disaster recovery test involve?
UPDATE questions SET
  stem = $EXPL$Markham Financial''s disaster recovery team is planning its most rigorous annual test. The plan calls for shutting down the primary data center entirely and running all operations from the backup site for 48 hours. What does this full-interruption disaster recovery test involve?$EXPL$
WHERE id = 3561;

-- ID 792: System Availability and Change Management (9 words)
-- ORIGINAL STEM: Under ITIL change management, what is an emergency change?
UPDATE questions SET
  stem = $EXPL$At 10:00 PM on a Friday, Colton Enterprises'' security team discovers a critical zero-day vulnerability being actively exploited on its public-facing web servers. The patch must be applied immediately without waiting for the next scheduled Change Advisory Board meeting. Under ITIL, what is this type of change called?$EXPL$
WHERE id = 792;

-- ID 1292: System Availability and Change Management (9 words)
-- ORIGINAL STEM: Which statement best describes an emergency change under ITIL?
UPDATE questions SET
  stem = $EXPL$Braddock Systems experiences a production database failure affecting customer transactions during peak hours. The IT director authorizes an immediate code fix without completing the standard change request and CAB approval process. Which statement best describes this type of emergency change under ITIL?$EXPL$
WHERE id = 1292;

-- ID 3540: System Availability and Change Management (9 words)
-- ORIGINAL STEM: What is the primary availability benefit of server clustering?
UPDATE questions SET
  stem = $EXPL$Edgemont Hospital groups four application servers into a cluster so they operate as a single logical unit. When one server fails during an overnight update, the remaining three servers continue processing patient records without interruption. What is the primary availability benefit of this server clustering approach?$EXPL$
WHERE id = 3540;

COMMIT;
