-- Migration: Stem expansion — ISC batch 6 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 13555: Change Management (15 words)
-- ORIGINAL STEM: In the SDLC and change management, why must development, testing, and production environments be separated?
UPDATE questions SET
  stem = $EXPL$Greystone Financial is deploying a new loan origination module. A developer requests direct access to the production database to speed up bug fixes. The CIO asks the IT auditor to explain why this is problematic. In the SDLC and change management process, why must development, testing, and production environments be separated?$EXPL$
WHERE id = 13555;

-- ID 4910: Change Management (16 words)
-- ORIGINAL STEM: Under AU-C 200, what is the overall objective of an auditor conducting a financial statement audit?
UPDATE questions SET
  stem = $EXPL$Baker & Collings LLP has been engaged by Trident Logistics to audit its December 31, 2025, financial statements. During the planning meeting, a new staff member asks about the fundamental purpose of the engagement. Under AU-C 200, what is the overall objective of an auditor conducting a financial statement audit?$EXPL$
WHERE id = 4910;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 3534: Data Management and Lifecycle (14 words)
-- ORIGINAL STEM: Which data quality dimension measures whether data is available when needed for business decisions?
UPDATE questions SET
  stem = $EXPL$Cascade Retail''s CFO discovers that month-end inventory reports are consistently delivered two days after the close, delaying purchasing decisions. She asks the data governance team which quality metric addresses this gap. Which data quality dimension measures whether data is available when needed for business decisions?$EXPL$
WHERE id = 3534;

-- ID 13436: Data Management and Lifecycle (14 words)
-- ORIGINAL STEM: What is the primary responsibility of a data user under a data governance framework?
UPDATE questions SET
  stem = $EXPL$Solara Pharmaceuticals recently implemented a formal data governance framework with defined roles. A sales analyst who accesses customer records daily asks what obligations the framework places on someone in her position. What is the primary responsibility of a data user under a data governance framework?$EXPL$
WHERE id = 13436;

-- ID 13453: Data Management and Lifecycle (14 words)
-- ORIGINAL STEM: Which backup strategy requires the MOST storage space but provides the fastest restore time?
UPDATE questions SET
  stem = $EXPL$Pinnacle Bank''s IT director is evaluating backup strategies for the core banking database. Recovery speed after a failure is the top priority, and the bank is willing to accept higher storage costs. Which backup strategy requires the most storage space but provides the fastest restore time?$EXPL$
WHERE id = 13453;

-- ID 782: Data Management and Lifecycle (15 words)
-- ORIGINAL STEM: Which of the following describes the difference between a data owner and a data custodian?
UPDATE questions SET
  stem = $EXPL$Ridgeline Healthcare''s compliance officer and its database administrator both play critical roles in protecting patient data. During an audit, the auditor asks management to clarify each person''s accountability. Which of the following best describes the difference between a data owner and a data custodian?$EXPL$
WHERE id = 782;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5845: Data Protection Technologies (14 words)
-- ORIGINAL STEM: What is the primary purpose of a digital certificate in a public key infrastructure?
UPDATE questions SET
  stem = $EXPL$Northpoint Financial is deploying a customer-facing web portal and needs to establish trust with external users through PKI. The IT security manager explains that a digital certificate must be obtained before launch. What is the primary purpose of a digital certificate in a public key infrastructure?$EXPL$
WHERE id = 5845;

-- ID 5864: Data Protection Technologies (14 words)
-- ORIGINAL STEM: Which type of encryption uses the same key for both encrypting and decrypting data?
UPDATE questions SET
  stem = $EXPL$Oakmont Insurance needs to encrypt large volumes of policyholder data stored on its database servers. The CISO recommends an algorithm that uses a single shared secret for speed and efficiency. Which type of encryption uses the same key for both encrypting and decrypting data?$EXPL$
WHERE id = 5864;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (2 questions)
-- ============================================================

-- ID 3473: ERP and Accounting Information Systems (16 words)
-- ORIGINAL STEM: In an automated accounting system, which of the following is an example of a processing control?
UPDATE questions SET
  stem = $EXPL$Keystone Manufacturing runs a batch payroll cycle every two weeks through its ERP system. The controller wants to verify that all submitted timecards were processed without omission or duplication. In an automated accounting system, which of the following is an example of a processing control?$EXPL$
WHERE id = 3473;

-- ID 3475: ERP and Accounting Information Systems (16 words)
-- ORIGINAL STEM: Which of the following is an example of an output control in an accounting information system?
UPDATE questions SET
  stem = $EXPL$Summit Distribution''s accounts payable module generates weekly check disbursement reports. The controller is concerned that sensitive payment details could reach unauthorized personnel. Which of the following is an example of an output control in an accounting information system?$EXPL$
WHERE id = 3475;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (4 questions)
-- ============================================================

-- ID 3704: Incident Response and Recovery (14 words)
-- ORIGINAL STEM: What practices are most critical to ensure digital evidence is admissible in legal proceedings?
UPDATE questions SET
  stem = $EXPL$After discovering a data breach, Vanguard Credit Union''s legal counsel advises the IT team that any evidence collected may be needed for litigation. The forensics lead must ensure proper handling from the outset. What practices are most critical to ensure digital evidence is admissible in legal proceedings?$EXPL$
WHERE id = 3704;

-- ID 7808: Incident Response and Recovery (14 words)
-- ORIGINAL STEM: What is the primary purpose of a business impact analysis in disaster recovery planning?
UPDATE questions SET
  stem = $EXPL$Clearwater Energy''s board has directed management to develop a comprehensive disaster recovery plan for all critical systems. The CIO recommends beginning with a business impact analysis before designing any recovery procedures. What is the primary purpose of a business impact analysis in disaster recovery planning?$EXPL$
WHERE id = 7808;

-- ID 7917: Incident Response and Recovery (14 words)
-- ORIGINAL STEM: What is the primary goal of the recovery phase in the incident response lifecycle?
UPDATE questions SET
  stem = $EXPL$Following a ransomware attack, Redstone Logistics has completed containment and eradication. The incident response team is now transitioning to the next phase of NIST SP 800-61. What is the primary goal of the recovery phase in the incident response lifecycle?$EXPL$
WHERE id = 7917;

-- ID 860: Incident Response and Recovery (15 words)
-- ORIGINAL STEM: Under NIST SP 800-61, which incident response phase addresses lessons learned and long-term systemic improvements?
UPDATE questions SET
  stem = $EXPL$After resolving a phishing attack that compromised 200 employee credentials, Thornton Aerospace''s CISO schedules a post-incident review to identify root causes and prevent recurrence. Under NIST SP 800-61, which incident response phase addresses lessons learned and long-term systemic improvements?$EXPL$
WHERE id = 860;

-- ============================================================
-- IT AUDIT FRAMEWORKS (4 questions)
-- ============================================================

-- ID 12951: IT Audit Frameworks (12 words)
-- ORIGINAL STEM: What characteristic distinguishes a risk register from a one-time risk assessment report?
UPDATE questions SET
  stem = $EXPL$Belmont Financial Services completed an enterprise-wide IT risk assessment last quarter and documented findings in a static report. The internal audit director now recommends maintaining a risk register as a separate artifact. What characteristic distinguishes a risk register from a one-time risk assessment report?$EXPL$
WHERE id = 12951;

-- ID 1063: IT Audit Frameworks (13 words)
-- ORIGINAL STEM: In the COBIT 2019 capability maturity model, what does Level 3 (Established) mean?
UPDATE questions SET
  stem = $EXPL$During an IT governance assessment, an external reviewer rates Maplewood Corp''s change management process at COBIT 2019 Capability Level 3. Management asks what this rating signifies. In the COBIT 2019 capability maturity model, what does Level 3 (Established) mean?$EXPL$
WHERE id = 1063;

-- ID 3833: IT Audit Frameworks (13 words)
-- ORIGINAL STEM: In COBIT 2019, what is the distinction between governance objectives and management objectives?
UPDATE questions SET
  stem = $EXPL$Hartwell Industries is adopting COBIT 2019 to formalize its IT governance structure. The board chair asks the CIO to clarify which responsibilities belong to the board versus IT management. In COBIT 2019, what is the distinction between governance objectives and management objectives?$EXPL$
WHERE id = 3833;

-- ID 3836: IT Audit Frameworks (13 words)
-- ORIGINAL STEM: Which of the following is an example of a COBIT 2019 focus area?
UPDATE questions SET
  stem = $EXPL$Waverly Consulting is tailoring COBIT 2019 to its clients'' specific compliance needs and asks a governance specialist to identify relevant focus areas within the framework. Which of the following is an example of a COBIT 2019 focus area?$EXPL$
WHERE id = 3836;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (2 questions)
-- ============================================================

-- ID 3433: IT Infrastructure and Architecture (17 words)
-- ORIGINAL STEM: Which TCP/IP protocol operates at the transport layer and provides reliable, ordered delivery of data between applications?
UPDATE questions SET
  stem = $EXPL$Crestline Software is designing a file transfer module that must guarantee every packet arrives intact and in sequence. The network architect evaluates transport-layer protocols for the task. Which TCP/IP protocol operates at the transport layer and provides reliable, ordered delivery of data between applications?$EXPL$
WHERE id = 3433;

-- ID 3453: IT Infrastructure and Architecture (17 words)
-- ORIGINAL STEM: Which of the following BEST describes the function of UDP compared to TCP at the transport layer?
UPDATE questions SET
  stem = $EXPL$Luminar Media streams live video to thousands of concurrent viewers. The engineering team selects UDP over TCP for this use case, citing a specific advantage. Which of the following best describes the function of UDP compared to TCP at the transport layer?$EXPL$
WHERE id = 3453;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (3 questions)
-- ============================================================

-- ID 847: Privacy Requirements and Data Protection (17 words)
-- ORIGINAL STEM: Under the Health Insurance Portability and Accountability Act (HIPAA), to which entities does the Privacy Rule apply?
UPDATE questions SET
  stem = $EXPL$A regional hospital partners with a cloud-based billing company to process patient claims. The hospital''s privacy officer reviews HIPAA obligations for all parties involved in handling protected health information. Under HIPAA, to which entities does the Privacy Rule apply?$EXPL$
WHERE id = 847;

-- ID 856: Privacy Requirements and Data Protection (17 words)
-- ORIGINAL STEM: A company receives a GDPR data subject access request (DSAR). What is the maximum timeframe for responding?
UPDATE questions SET
  stem = $EXPL$On March 1, 2026, an EU customer submits a formal data subject access request to Evergreen Analytics, a U.S.-based firm with European operations. The privacy team asks legal counsel about the regulatory deadline. Under the GDPR, what is the maximum timeframe for responding to a data subject access request?$EXPL$
WHERE id = 856;

-- ID 1297: Privacy Requirements and Data Protection (17 words)
-- ORIGINAL STEM: Under HIPAA's privacy provisions, the minimum necessary standard requires covered entities to do which of the following?
UPDATE questions SET
  stem = $EXPL$Lakeside Medical Center''s compliance officer discovers that front-desk staff can view full medical records for every patient, even those not under their care. She evaluates the situation against HIPAA''s minimum necessary standard. Under HIPAA''s privacy provisions, the minimum necessary standard requires covered entities to do which of the following?$EXPL$
WHERE id = 1297;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 13291: Security and Control Frameworks (13 words)
-- ORIGINAL STEM: What does the acronym ISMS stand for in the context of ISO 27001?
UPDATE questions SET
  stem = $EXPL$Vertex Technologies is pursuing ISO 27001 certification and must establish a formal system for managing information security risks across the enterprise. The project lead refers to this system by its acronym. What does the acronym ISMS stand for in the context of ISO 27001?$EXPL$
WHERE id = 13291;

-- ID 811: Security and Control Frameworks (14 words)
-- ORIGINAL STEM: Which of the following is a key difference between ISO 27001 and ISO 27002?
UPDATE questions SET
  stem = $EXPL$Prism Consulting advises a client to obtain ISO 27001 certification while also referencing ISO 27002 for detailed implementation guidance. The client asks why both standards are necessary. Which of the following is a key difference between ISO 27001 and ISO 27002?$EXPL$
WHERE id = 811;

-- ID 3576: Security and Control Frameworks (14 words)
-- ORIGINAL STEM: Under the NIST CSF, which core function encompasses continuous security monitoring and anomaly detection?
UPDATE questions SET
  stem = $EXPL$Bridgeport Logistics deploys a SIEM platform to continuously monitor network traffic and flag suspicious activity patterns. The security team maps this capability to the NIST Cybersecurity Framework. Under the NIST CSF, which core function encompasses continuous security monitoring and anomaly detection?$EXPL$
WHERE id = 3576;

-- ID 3583: Security and Control Frameworks (14 words)
-- ORIGINAL STEM: In COBIT 2019, which of the following is an example of a design factor?
UPDATE questions SET
  stem = $EXPL$Meridian Corp is tailoring its COBIT 2019 governance system to reflect its unique operating environment. The governance team identifies enterprise-specific characteristics that influence how the framework is configured. In COBIT 2019, which of the following is an example of a design factor?$EXPL$
WHERE id = 3583;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 837: Security Controls and Monitoring (12 words)
-- ORIGINAL STEM: Which network activity pattern is a common indicator of potential data exfiltration?
UPDATE questions SET
  stem = $EXPL$Sentinel Financial''s SIEM alerts the security operations center to an unusual spike in outbound traffic from an internal database server at 2:00 AM. The analyst investigates whether this indicates a threat. Which network activity pattern is a common indicator of potential data exfiltration?$EXPL$
WHERE id = 837;

-- ID 836: Security Controls and Monitoring (13 words)
-- ORIGINAL STEM: What distinguishes an Intrusion Prevention System (IPS) from an Intrusion Detection System (IDS)?
UPDATE questions SET
  stem = $EXPL$After a recent breach, Westbrook Manufacturing is upgrading its network defenses. The IT director evaluates whether to deploy an IDS or an IPS at the network perimeter. What distinguishes an Intrusion Prevention System (IPS) from an Intrusion Detection System (IDS)?$EXPL$
WHERE id = 836;

-- ID 3653: Security Controls and Monitoring (13 words)
-- ORIGINAL STEM: In a Public Key Infrastructure (PKI), which entity issues and signs digital certificates?
UPDATE questions SET
  stem = $EXPL$Atlas Corp is implementing PKI to secure email communications between its offices. A newly hired security engineer asks which trusted entity is responsible for issuing the digital certificates employees will use. In a Public Key Infrastructure (PKI), which entity issues and signs digital certificates?$EXPL$
WHERE id = 3653;

-- ID 3671: Security Controls and Monitoring (13 words)
-- ORIGINAL STEM: What is the recommended default firewall rule posture according to security best practices?
UPDATE questions SET
  stem = $EXPL$Irongate Systems is configuring a new perimeter firewall for its data center. The network security team debates whether the default rule should permit or block all traffic before specific exceptions are added. What is the recommended default firewall rule posture according to security best practices?$EXPL$
WHERE id = 3671;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 3756: SOC Engagements (14 words)
-- ORIGINAL STEM: Which of the following best describes the service auditor's responsibility in a SOC engagement?
UPDATE questions SET
  stem = $EXPL$Jensen & Park LLP has been engaged to perform a SOC 2 Type II examination of CloudSync''s hosting services. During the planning phase, the engagement partner clarifies the firm''s role. Which of the following best describes the service auditor''s responsibility in a SOC engagement?$EXPL$
WHERE id = 3756;

-- ID 13972: SOC Engagements (14 words)
-- ORIGINAL STEM: What type of organization is a SOC for Supply Chain engagement designed to evaluate?
UPDATE questions SET
  stem = $EXPL$A pharmaceutical company''s audit committee wants assurance over the controls at a contract manufacturer that produces and distributes its drug products. The external auditor recommends a specialized SOC engagement. What type of organization is a SOC for Supply Chain engagement designed to evaluate?$EXPL$
WHERE id = 13972;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (2 questions)
-- ============================================================

-- ID 13410: SOC Report Content and Structure (13 words)
-- ORIGINAL STEM: In the SOC 2 common criteria framework, CC9 (Risk Mitigation) addresses which area?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 readiness assessment, Nexus Data Services maps its business continuity plan, vendor management program, and cyber insurance policy to the common criteria. In the SOC 2 common criteria framework, CC9 (Risk Mitigation) addresses which area?$EXPL$
WHERE id = 13410;

-- ID 4948: SOC Report Content and Structure (15 words)
-- ORIGINAL STEM: What is the PRIMARY difference between a SOC 1 report and a SOC 2 report?
UPDATE questions SET
  stem = $EXPL$A payroll processor currently holds a SOC 1 Type II report. A prospective cloud-hosting client asks whether that same report would address its security and availability concerns. What is the primary difference between a SOC 1 report and a SOC 2 report?$EXPL$
WHERE id = 4948;

-- ============================================================
-- SOC REPORTING (3 questions)
-- ============================================================

-- ID 1225: SOC Reporting (14 words)
-- ORIGINAL STEM: What is the practitioner's responsibility regarding management's response to exceptions in a SOC report?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 Type II examination of Apex Cloud Services, the practitioner identifies an exception in quarterly access reviews. Management includes a written response describing planned remediation. What is the practitioner''s responsibility regarding management''s response to exceptions in a SOC report?$EXPL$
WHERE id = 1225;

-- ID 3885: SOC Reporting (14 words)
-- ORIGINAL STEM: Under AICPA SOC guidance, when is an adverse opinion issued in a SOC report?
UPDATE questions SET
  stem = $EXPL$A SOC 2 Type II examination of Sterling IT Services reveals pervasive control failures across change management, access controls, and incident response — affecting multiple trust services criteria. Under AICPA SOC guidance, when is an adverse opinion issued in a SOC report?$EXPL$
WHERE id = 3885;

-- ID 3887: SOC Reporting (14 words)
-- ORIGINAL STEM: Which of the following sections is included in a SOC 1 Type II report?
UPDATE questions SET
  stem = $EXPL$Conway & Reed LLP is completing a SOC 1 Type II examination for a benefits administration provider. A new associate asks what sections the final report must contain. Which of the following sections is included in a SOC 1 Type II report?$EXPL$
WHERE id = 3887;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (2 questions)
-- ============================================================

-- ID 3798: SOC Reporting and Trust Services Criteria (15 words)
-- ORIGINAL STEM: The security category in the Trust Services framework is addressed through which of the following?
UPDATE questions SET
  stem = $EXPL$DataVault Corp is undergoing a SOC 2 Type II examination. The engagement team maps the security criterion to the underlying framework used for evaluating the organization''s control environment. The security category in the Trust Services framework is addressed through which of the following?$EXPL$
WHERE id = 3798;

-- ID 885: SOC Reporting and Trust Services Criteria (16 words)
-- ORIGINAL STEM: Which Trust Services Criteria category addresses whether system processing is complete, valid, accurate, timely, and authorized?
UPDATE questions SET
  stem = $EXPL$A financial transaction processor''s SOC 2 report must address whether its automated clearing calculations produce correct and timely results for client banks. Which Trust Services Criteria category addresses whether system processing is complete, valid, accurate, timely, and authorized?$EXPL$
WHERE id = 885;

-- ============================================================
-- SOC TESTING CONTROLS (3 questions)
-- ============================================================

-- ID 3860: SOC Testing Controls (16 words)
-- ORIGINAL STEM: Which procedures are commonly used to test the design of a control in a SOC engagement?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 Type I examination of a managed hosting provider, the practitioner needs to evaluate whether the firewall configuration control is suitably designed. Which procedures are commonly used to test the design of a control in a SOC engagement?$EXPL$
WHERE id = 3860;

-- ID 3865: SOC Testing Controls (16 words)
-- ORIGINAL STEM: Which factor would lead a SOC auditor to select a larger sample size for control testing?
UPDATE questions SET
  stem = $EXPL$A SOC 2 Type II practitioner is determining sample sizes for testing access review controls at Pinnacle Cloud. In the prior period, several exceptions were noted for this same control. Which factor would lead a SOC auditor to select a larger sample size for control testing?$EXPL$
WHERE id = 3865;

-- ID 13718: SOC Testing Controls (16 words)
-- ORIGINAL STEM: Which element is essential when evaluating whether a control is suitably designed in a SOC engagement?
UPDATE questions SET
  stem = $EXPL$An engagement team is performing a SOC 2 Type I examination of Orion SaaS. For each control, the team must assess whether it would achieve its objective if operated as described. Which element is essential when evaluating whether a control is suitably designed in a SOC engagement?$EXPL$
WHERE id = 13718;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (5 questions)
-- ============================================================

-- ID 3547: System Availability and Change Management (12 words)
-- ORIGINAL STEM: What does the Recovery Time Objective (RTO) represent in disaster recovery planning?
UPDATE questions SET
  stem = $EXPL$After a power failure takes down its order management system, Lakeshore Distributors activates its disaster recovery plan. Management asks how quickly the system must be restored to avoid unacceptable business impact. What does the Recovery Time Objective (RTO) represent in disaster recovery planning?$EXPL$
WHERE id = 3547;

-- ID 3562: System Availability and Change Management (12 words)
-- ORIGINAL STEM: Why must back-out plans be tested before a production change is implemented?
UPDATE questions SET
  stem = $EXPL$Granite Corp''s Change Advisory Board requires a documented rollback procedure for every production deployment. A developer asks why the team must verify the rollback works before going live. Why must back-out plans be tested before a production change is implemented?$EXPL$
WHERE id = 3562;

-- ID 3564: System Availability and Change Management (12 words)
-- ORIGINAL STEM: What is the appropriate response when the change success rate declines significantly?
UPDATE questions SET
  stem = $EXPL$Hawthorne Retail''s IT metrics dashboard shows the change success rate dropped from 92% to 74% over the past quarter, with several deployments causing production incidents. What is the appropriate response when the change success rate declines significantly?$EXPL$
WHERE id = 3564;

-- ID 3568: System Availability and Change Management (12 words)
-- ORIGINAL STEM: What risk do undocumented servers that are missing from the CMDB present?
UPDATE questions SET
  stem = $EXPL$During a routine audit, Prescott Energy''s IT team discovers three application servers in the data center that do not appear in the Configuration Management Database. What risk do undocumented servers that are missing from the CMDB present?$EXPL$
WHERE id = 3568;

-- ID 13624: System Availability and Change Management (12 words)
-- ORIGINAL STEM: What segregation of duties principle applies to the change management approval process?
UPDATE questions SET
  stem = $EXPL$At Fieldstone Corp, a senior developer submits a change request for a critical production update and then approves the same request without additional review. The IT auditor flags this as a control weakness. What segregation of duties principle applies to the change management approval process?$EXPL$
WHERE id = 13624;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (2 questions)
-- ============================================================

-- ID 818: Threats, Attacks, and Vulnerabilities (14 words)
-- ORIGINAL STEM: Which of the following threats is MOST difficult to prevent with technical controls alone?
UPDATE questions SET
  stem = $EXPL$Despite deploying firewalls, endpoint protection, and email filtering, Corbin Financial experiences a security incident after an employee is persuaded by a phone caller to reveal network credentials. Which of the following threats is most difficult to prevent with technical controls alone?$EXPL$
WHERE id = 818;

-- ID 817: Threats, Attacks, and Vulnerabilities (15 words)
-- ORIGINAL STEM: Which type of attack involves inserting malicious database commands into a web application's input fields?
UPDATE questions SET
  stem = $EXPL$A penetration tester discovers that Glenbrook Retail''s e-commerce site does not sanitize user inputs on the product search page. By entering crafted commands, the tester extracts customer records from the backend database. Which type of attack involves inserting malicious database commands into a web application''s input fields?$EXPL$
WHERE id = 817;

COMMIT;
