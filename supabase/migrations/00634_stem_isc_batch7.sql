-- Migration: Stem expansion — ISC batch 7 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 4922: Change Management (16 words)
-- ORIGINAL STEM: Which of the following BEST describes the relationship between change management and IT general controls (ITGCs)?
UPDATE questions SET
  stem = $EXPL$During an IT audit of Redstone Manufacturing, the engagement team is mapping the company''s change management procedures to the broader ITGC framework. Which of the following BEST describes the relationship between change management and IT general controls?$EXPL$
WHERE id = 4922;

-- ID 13553: Change Management (16 words)
-- ORIGINAL STEM: What is the primary deliverable of the planning phase of the System Development Life Cycle (SDLC)?
UPDATE questions SET
  stem = $EXPL$Clearwater Health Systems is initiating a project to replace its legacy patient billing application. The project manager has assembled a team to complete the first phase of the SDLC. What is the primary deliverable of the planning phase?$EXPL$
WHERE id = 13553;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (3 questions)
-- ============================================================

-- ID 786: Data Management and Lifecycle (15 words)
-- ORIGINAL STEM: Which technique provides the strongest assurance that data has not been tampered with during transmission?
UPDATE questions SET
  stem = $EXPL$Prism Financial Services transmits daily settlement files to its clearing bank over an encrypted channel. The IT security team wants to add a control that verifies file integrity upon receipt. Which technique provides the strongest assurance that data has not been tampered with during transmission?$EXPL$
WHERE id = 786;

-- ID 3504: Data Management and Lifecycle (15 words)
-- ORIGINAL STEM: What advantage does a NoSQL document database offer over a relational database for unstructured data?
UPDATE questions SET
  stem = $EXPL$Vantage Media is building a content management platform that must store articles, images, and user-generated posts with varying data structures. The CTO is evaluating database technologies. What advantage does a NoSQL document database offer over a relational database for this unstructured data?$EXPL$
WHERE id = 3504;

-- ID 775: Data Management and Lifecycle (16 words)
-- ORIGINAL STEM: In a four-tier data classification scheme, which classification applies to the most sensitive personally identifiable information?
UPDATE questions SET
  stem = $EXPL$Cascade Insurance is implementing a four-tier data classification framework to categorize its information assets. The security team must determine the correct tier for files containing customer Social Security numbers and protected health information. Which classification applies to this most sensitive personally identifiable information?$EXPL$
WHERE id = 775;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5867: Data Protection Technologies (14 words)
-- ORIGINAL STEM: What are the three recognized states of data that information security controls must protect?
UPDATE questions SET
  stem = $EXPL$During a security assessment, Beacon Consulting asks the IT director at Hartwell Corp. to confirm that encryption and access controls cover data in all recognized states. What are the three recognized states of data that information security controls must protect?$EXPL$
WHERE id = 5867;

-- ID 5868: Data Protection Technologies (14 words)
-- ORIGINAL STEM: What does a digital certificate issued by a certificate authority (CA) primarily bind together?
UPDATE questions SET
  stem = $EXPL$Northgate Bank is deploying TLS certificates for its online banking portal and has engaged a trusted certificate authority to issue the certificates. What does a digital certificate issued by a certificate authority primarily bind together?$EXPL$
WHERE id = 5868;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 13481: ERP and Accounting Information Systems (16 words)
-- ORIGINAL STEM: Which of the following is a primary benefit of implementing an ERP system across an organization?
UPDATE questions SET
  stem = $EXPL$Meridian Industries currently uses separate software systems for accounting, inventory, and human resources, leading to frequent data inconsistencies. The CFO proposes consolidating onto a single ERP platform. Which of the following is a primary benefit of implementing an ERP system across the organization?$EXPL$
WHERE id = 13481;

-- ID 769: ERP and Accounting Information Systems (17 words)
-- ORIGINAL STEM: When a single user can create vendors, approve invoices, and process payments, which control principle is violated?
UPDATE questions SET
  stem = $EXPL$An IT auditor at Westbrook Distribution discovers that one accounts payable clerk can create new vendor records, approve invoices, and initiate payment runs without any secondary approval. Which control principle is violated by this access configuration?$EXPL$
WHERE id = 769;

-- ID 13468: ERP and Accounting Information Systems (17 words)
-- ORIGINAL STEM: Which of the following is one of the six fundamental components of an accounting information system (AIS)?
UPDATE questions SET
  stem = $EXPL$The controller at Pinnacle Retail is documenting the company''s accounting information system for an upcoming audit. She needs to identify each fundamental component that makes up the AIS. Which of the following is one of the six fundamental components of an accounting information system?$EXPL$
WHERE id = 13468;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (4 questions)
-- ============================================================

-- ID 861: Incident Response and Recovery (15 words)
-- ORIGINAL STEM: During a security incident, who should handle external communications according to incident response best practices?
UPDATE questions SET
  stem = $EXPL$Atlas Logistics has confirmed a ransomware attack affecting its shipment tracking system. Media outlets are calling for a statement and customers are demanding updates. According to incident response best practices, who should handle external communications during this security incident?$EXPL$
WHERE id = 861;

-- ID 870: Incident Response and Recovery (15 words)
-- ORIGINAL STEM: Which type of incident response exercise tests the plan through discussion without disrupting production systems?
UPDATE questions SET
  stem = $EXPL$The CISO at Ridgeline Corp. wants to evaluate the incident response team''s readiness by walking through a simulated breach scenario in a conference room setting, without affecting any live systems. Which type of incident response exercise tests the plan through discussion without disrupting production?$EXPL$
WHERE id = 870;

-- ID 3682: Incident Response and Recovery (15 words)
-- ORIGINAL STEM: What are the four phases of the incident response lifecycle defined by NIST SP 800-61?
UPDATE questions SET
  stem = $EXPL$Sterling Technologies is developing a formal incident response plan aligned with NIST SP 800-61 guidance. The security director asks the team to organize the plan around the standard lifecycle phases. What are the four phases of the incident response lifecycle defined by NIST SP 800-61?$EXPL$
WHERE id = 3682;

-- ID 3695: Incident Response and Recovery (15 words)
-- ORIGINAL STEM: Under NIST SP 800-61, why should organizations establish relationships with external parties before incidents occur?
UPDATE questions SET
  stem = $EXPL$The incident response team at Greystone Financial has no prior contacts with law enforcement or external forensics firms. After a recent near-miss security event, the CISO references NIST SP 800-61 recommendations. Why should organizations establish relationships with external parties before incidents occur?$EXPL$
WHERE id = 3695;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 3850: IT Audit Frameworks (13 words)
-- ORIGINAL STEM: Which risk response involves eliminating the activity that gives rise to the risk?
UPDATE questions SET
  stem = $EXPL$After a risk assessment, Oakmont Corp.''s management decides to shut down an aging legacy application that cannot be adequately secured rather than invest in additional controls. Which risk response involves eliminating the activity that gives rise to the risk?$EXPL$
WHERE id = 3850;

-- ID 3854: IT Audit Frameworks (13 words)
-- ORIGINAL STEM: Which of the following correctly lists the four management domains in COBIT 2019?
UPDATE questions SET
  stem = $EXPL$Silverline Corp.''s IT governance committee is adopting COBIT 2019 and needs to map existing processes to the framework''s management domains. Which of the following correctly lists the four management domains in COBIT 2019?$EXPL$
WHERE id = 3854;

-- ID 3856: IT Audit Frameworks (13 words)
-- ORIGINAL STEM: Evaluating whether the organization considers emerging threats relates to which risk management step?
UPDATE questions SET
  stem = $EXPL$During an assessment of Lakeview Health''s risk management program, the auditor examines whether management reviews threat intelligence feeds and evaluates emerging cybersecurity risks on a recurring basis. This activity relates to which step of the NIST Risk Management Framework?$EXPL$
WHERE id = 3856;

-- ============================================================
-- IT GENERAL CONTROLS (2 questions)
-- ============================================================

-- ID 13122: IT General Controls (14 words)
-- ORIGINAL STEM: What is the role of a Change Advisory Board (CAB) in IT general controls?
UPDATE questions SET
  stem = $EXPL$Summit Financial''s IT department recently formed a Change Advisory Board after an unauthorized configuration change caused a two-hour outage of the general ledger system. What is the role of a Change Advisory Board in IT general controls?$EXPL$
WHERE id = 13122;

-- ID 13124: IT General Controls (14 words)
-- ORIGINAL STEM: Which of the following correctly identifies the four categories of IT General Controls (ITGCs)?
UPDATE questions SET
  stem = $EXPL$An external auditor at Thornton & Associates is planning the ITGC testing scope for a financial statement audit of Birchwood Electronics. The auditor needs to confirm the standard ITGC categories. Which of the following correctly identifies the four categories of IT General Controls?$EXPL$
WHERE id = 13124;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (2 questions)
-- ============================================================

-- ID 13600: IT Infrastructure and Architecture (17 words)
-- ORIGINAL STEM: Which OSI layer provides network services directly to end-user applications such as email clients and web browsers?
UPDATE questions SET
  stem = $EXPL$A network engineer at Crestline Logistics is troubleshooting connectivity issues with the company''s web-based inventory portal and email system. She determines the problem occurs at the OSI layer that interfaces directly with end-user applications. Which OSI layer provides network services directly to applications such as email clients and web browsers?$EXPL$
WHERE id = 13600;

-- ID 749: IT Infrastructure and Architecture (18 words)
-- ORIGINAL STEM: Which of the following is a characteristic of a private cloud deployment model compared to a public cloud?
UPDATE questions SET
  stem = $EXPL$Ellison Healthcare is evaluating whether to migrate its electronic health records system to a private cloud rather than a public cloud, citing regulatory data residency concerns. Which of the following is a characteristic of a private cloud deployment model compared to a public cloud?$EXPL$
WHERE id = 749;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (3 questions)
-- ============================================================

-- ID 3717: Privacy Requirements and Data Protection (17 words)
-- ORIGINAL STEM: Under the GDPR, which of the following organizations is required to appoint a Data Protection Officer (DPO)?
UPDATE questions SET
  stem = $EXPL$A multinational consulting firm is assessing its GDPR compliance obligations across several EU subsidiaries. The compliance officer needs to determine which entities must formally designate a Data Protection Officer. Under the GDPR, which of the following organizations is required to appoint a DPO?$EXPL$
WHERE id = 3717;

-- ID 3729: Privacy Requirements and Data Protection (17 words)
-- ORIGINAL STEM: A European Commission adequacy decision regarding a non-EU country means which of the following for GDPR purposes?
UPDATE questions SET
  stem = $EXPL$DataVault Inc., a U.S.-based cloud provider, needs to receive personal data from its EU clients. The legal team discovers that the European Commission has issued an adequacy decision for a specific non-EU country. For GDPR purposes, what does an adequacy decision mean?$EXPL$
WHERE id = 3729;

-- ID 3718: Privacy Requirements and Data Protection (18 words)
-- ORIGINAL STEM: Under the CCPA as amended by the CPRA, which of the following rights is available to California consumers?
UPDATE questions SET
  stem = $EXPL$BrightPath Marketing, a California company with $40 million in annual revenue, collects personal information from over 200,000 state residents. A consumer contacts the company citing CCPA/CPRA protections. Which of the following rights is available to California consumers under the CCPA as amended by the CPRA?$EXPL$
WHERE id = 3718;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (5 questions)
-- ============================================================

-- ID 3584: Security and Control Frameworks (14 words)
-- ORIGINAL STEM: Under the CIS Controls, which implementation group represents the minimum standard for all enterprises?
UPDATE questions SET
  stem = $EXPL$A small accounting firm with limited IT staff is adopting the CIS Controls framework and wants to begin with the baseline set of safeguards appropriate for every organization. Under the CIS Controls, which implementation group represents the minimum standard for all enterprises?$EXPL$
WHERE id = 3584;

-- ID 3608: Security and Control Frameworks (14 words)
-- ORIGINAL STEM: In COBIT 2019, which domain covers the governance activities of evaluating, directing, and monitoring?
UPDATE questions SET
  stem = $EXPL$The board of directors at Horizon Energy has tasked the IT steering committee with adopting COBIT 2019 for enterprise IT governance. The committee is identifying which domain encompasses board-level oversight activities. In COBIT 2019, which domain covers the governance activities of evaluating, directing, and monitoring?$EXPL$
WHERE id = 3608;

-- ID 802: Security and Control Frameworks (15 words)
-- ORIGINAL STEM: Which framework was published by NIST specifically to help organizations manage and reduce cybersecurity risk?
UPDATE questions SET
  stem = $EXPL$Following a board directive to formalize its cybersecurity program, Trident Manufacturing''s CISO is selecting a recognized framework to structure risk identification, protection, and response activities. Which framework was published by NIST specifically to help organizations manage and reduce cybersecurity risk?$EXPL$
WHERE id = 802;

-- ID 812: Security and Control Frameworks (15 words)
-- ORIGINAL STEM: In the NIST Risk Management Framework (RMF), what is the purpose of the Assess step?
UPDATE questions SET
  stem = $EXPL$A federal contractor has implemented security controls for its procurement system and is now progressing to the Assess step of the NIST Risk Management Framework before seeking authorization to operate. What is the purpose of the Assess step in the NIST RMF?$EXPL$
WHERE id = 812;

-- ID 3577: Security and Control Frameworks (15 words)
-- ORIGINAL STEM: Under the NIST CSF, which core function covers restoring capabilities impaired by a cybersecurity incident?
UPDATE questions SET
  stem = $EXPL$After containing a malware outbreak that disabled its order processing system, Faulkner Wholesale is now focused on bringing affected servers back online and updating its recovery procedures. Under the NIST Cybersecurity Framework, which core function covers restoring capabilities impaired by a cybersecurity incident?$EXPL$
WHERE id = 3577;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (5 questions)
-- ============================================================

-- ID 12757: Security Controls and Monitoring (13 words)
-- ORIGINAL STEM: What is the PRIMARY purpose of a demilitarized zone (DMZ) in network architecture?
UPDATE questions SET
  stem = $EXPL$Kenworth Solutions hosts a public-facing customer portal that must be accessible from the internet while keeping internal databases isolated from external traffic. The network team proposes placing the portal in a DMZ. What is the primary purpose of a demilitarized zone in network architecture?$EXPL$
WHERE id = 12757;

-- ID 12780: Security Controls and Monitoring (13 words)
-- ORIGINAL STEM: What does the False Rejection Rate (FRR) measure in a biometric authentication system?
UPDATE questions SET
  stem = $EXPL$Ashford Data Center recently installed fingerprint scanners at its server room entrance. Several authorized employees report being denied entry despite scanning correctly. The security manager reviews the biometric system''s error metrics. What does the False Rejection Rate measure in a biometric authentication system?$EXPL$
WHERE id = 12780;

-- ID 12781: Security Controls and Monitoring (13 words)
-- ORIGINAL STEM: What is the PRIMARY purpose of bollards installed around a data center facility?
UPDATE questions SET
  stem = $EXPL$NovaTech''s new data center is located adjacent to a busy public road. As part of the physical security design, the facilities team recommends installing reinforced concrete bollards along the building perimeter. What is the primary purpose of bollards installed around a data center facility?$EXPL$
WHERE id = 12781;

-- ID 840: Security Controls and Monitoring (14 words)
-- ORIGINAL STEM: What type of attacks is a Web Application Firewall (WAF) specifically designed to mitigate?
UPDATE questions SET
  stem = $EXPL$After discovering attempted SQL injection and cross-site scripting attacks against its e-commerce site, Westfield Retail''s security team recommends deploying a Web Application Firewall. What type of attacks is a WAF specifically designed to mitigate?$EXPL$
WHERE id = 840;

-- ID 842: Security Controls and Monitoring (14 words)
-- ORIGINAL STEM: Which type of log provides the most direct evidence for investigating unauthorized database modifications?
UPDATE questions SET
  stem = $EXPL$An auditor at Crestwood Bank suspects that someone altered loan approval records in the production database over the weekend. The IT team is asked to identify who made the changes and when. Which type of log provides the most direct evidence for investigating unauthorized database modifications?$EXPL$
WHERE id = 842;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 3772: SOC Engagements (15 words)
-- ORIGINAL STEM: Which of the following is a key difference between SOC 1 and SOC 2 engagements?
UPDATE questions SET
  stem = $EXPL$A payroll processing company is deciding whether to obtain a SOC 1 or SOC 2 report for its clients'' auditors. Management asks the engagement partner to clarify the distinction. Which of the following is a key difference between SOC 1 and SOC 2 engagements?$EXPL$
WHERE id = 3772;

-- ID 874: SOC Engagements (16 words)
-- ORIGINAL STEM: Which SOC report type is a general-use report that can be freely distributed to prospective customers?
UPDATE questions SET
  stem = $EXPL$CloudSecure SaaS wants to post a summary of its controls assurance on its public website so prospective customers can review it without signing a non-disclosure agreement. Which SOC report type is a general-use report that can be freely distributed to prospective customers?$EXPL$
WHERE id = 874;

-- ============================================================
-- SOC REPORTING (3 questions)
-- ============================================================

-- ID 3893: SOC Reporting (14 words)
-- ORIGINAL STEM: What is the purpose of a bridge letter in the context of SOC reporting?
UPDATE questions SET
  stem = $EXPL$A user entity auditor notes that the service organization''s SOC 2 Type II report covers January through September, but the user entity''s fiscal year ends December 31. The auditor requests a bridge letter from the service organization. What is the purpose of a bridge letter in SOC reporting?$EXPL$
WHERE id = 3893;

-- ID 3886: SOC Reporting (15 words)
-- ORIGINAL STEM: Under AICPA SOC guidance, when is a disclaimer of opinion issued in a SOC report?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 engagement at Apex Cloud Services, the service organization restricts the practitioner''s access to certain system components and supporting documentation. The practitioner considers the impact on the report. Under AICPA SOC guidance, when is a disclaimer of opinion issued?$EXPL$
WHERE id = 3886;

-- ID 3919: SOC Reporting (15 words)
-- ORIGINAL STEM: What is the service auditor's responsibility regarding the other information section in a SOC report?
UPDATE questions SET
  stem = $EXPL$In its SOC 2 report, Granite Hosting includes a Section V with planned system enhancements and customer testimonials. A user entity auditor asks whether this information is covered by the practitioner''s opinion. What is the service auditor''s responsibility regarding the other information section in a SOC report?$EXPL$
WHERE id = 3919;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 3781: SOC Reporting and Trust Services Criteria (16 words)
-- ORIGINAL STEM: In the Trust Services framework, CC6 (Logical and Physical Access Controls) addresses which of the following?
UPDATE questions SET
  stem = $EXPL$A SOC 2 practitioner at Whitfield & Lane is mapping controls at a SaaS provider to the Trust Services common criteria. The team is evaluating controls under CC6. In the Trust Services framework, CC6 (Logical and Physical Access Controls) addresses which of the following?$EXPL$
WHERE id = 3781;

-- ID 893: SOC Reporting and Trust Services Criteria (17 words)
-- ORIGINAL STEM: Which of the following items must be included in the system description of a SOC 2 report?
UPDATE questions SET
  stem = $EXPL$Management at Keystone Data Services is drafting the system description for its first SOC 2 Type II report. The engagement partner reviews the draft to confirm all required elements are present. Which of the following items must be included in the system description of a SOC 2 report?$EXPL$
WHERE id = 893;

-- ID 3793: SOC Reporting and Trust Services Criteria (18 words)
-- ORIGINAL STEM: CC2 (Communication and Information) in the Trust Services framework requires the entity to do which of the following?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 examination of Orion Payroll Services, the practitioner is testing controls related to CC2 (Communication and Information). The criterion requires the entity to communicate security-related matters to internal and external parties. CC2 requires the entity to do which of the following?$EXPL$
WHERE id = 3793;

-- ============================================================
-- SOC TESTING CONTROLS (3 questions)
-- ============================================================

-- ID 1211: SOC Testing Controls (17 words)
-- ORIGINAL STEM: Which factor would cause a SOC practitioner to increase the extent of testing for a particular control?
UPDATE questions SET
  stem = $EXPL$While planning a SOC 2 Type II engagement for Stratos Cloud Hosting, the practitioner is determining sample sizes for each control. Several factors may require larger samples for certain controls. Which factor would cause the practitioner to increase the extent of testing for a particular control?$EXPL$
WHERE id = 1211;

-- ID 3882: SOC Testing Controls (17 words)
-- ORIGINAL STEM: What is the minimum number of occurrences to test for an annual control in a SOC engagement?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 Type II engagement, the practitioner identifies that the service organization performs a penetration test once per year. The team needs to determine how many occurrences to sample. What is the minimum number of occurrences to test for an annual control in a SOC engagement?$EXPL$
WHERE id = 3882;

-- ID 13717: SOC Testing Controls (17 words)
-- ORIGINAL STEM: How does higher inherent risk for a particular control area affect sample sizes in a SOC engagement?
UPDATE questions SET
  stem = $EXPL$A SOC practitioner assesses the access management control area at Vertex Payment Systems as having higher inherent risk due to the sensitivity of cardholder data and past exceptions. How does higher inherent risk for a particular control area affect sample sizes in a SOC engagement?$EXPL$
WHERE id = 13717;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (5 questions)
-- ============================================================

-- ID 13638: System Availability and Change Management (12 words)
-- ORIGINAL STEM: What is the primary purpose of a rollback plan in change management?
UPDATE questions SET
  stem = $EXPL$Before migrating a payroll module update to production this weekend, Linden Manufacturing''s Change Advisory Board requires the IT team to document a rollback plan. What is the primary purpose of a rollback plan in change management?$EXPL$
WHERE id = 13638;

-- ID 13640: System Availability and Change Management (12 words)
-- ORIGINAL STEM: What is the primary purpose of geographic redundancy in high availability architecture?
UPDATE questions SET
  stem = $EXPL$Coastal Credit Union replicates its core banking system across data centers in two different states to protect against regional disasters such as hurricanes. What is the primary purpose of geographic redundancy in high availability architecture?$EXPL$
WHERE id = 13640;

-- ID 3551: System Availability and Change Management (13 words)
-- ORIGINAL STEM: How does an emergency change differ from a normal change in change management?
UPDATE questions SET
  stem = $EXPL$On a Friday evening, Waverly Bank''s security team discovers a critical vulnerability in its online banking platform that requires an immediate patch, bypassing the normal CAB approval schedule. How does an emergency change differ from a normal change in change management?$EXPL$
WHERE id = 3551;

-- ID 13639: System Availability and Change Management (13 words)
-- ORIGINAL STEM: What activities occur during the maintenance phase of the System Development Life Cycle?
UPDATE questions SET
  stem = $EXPL$Bridgeport Corp. deployed a new inventory management system six months ago. The IT team is now monitoring performance, fixing defects reported by warehouse staff, and applying vendor patches. These activities occur during which SDLC phase, and what do they typically include?$EXPL$
WHERE id = 13639;

-- ID 790: System Availability and Change Management (14 words)
-- ORIGINAL STEM: Which of the following is the FIRST step in a formal change management process?
UPDATE questions SET
  stem = $EXPL$A developer at Ironclad Software identifies a needed enhancement to the accounts receivable module. Before any work begins, the IT manager directs the developer to follow the company''s formal change management process. Which of the following is the first step?$EXPL$
WHERE id = 790;

COMMIT;
