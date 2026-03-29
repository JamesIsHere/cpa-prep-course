-- Migration: Stem expansion — ISC batch 3 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 13539: Change Management (11 words)
-- ORIGINAL STEM: In change management, what is the role of the change owner?
UPDATE questions SET
  stem = $EXPL$Granite Financial Services recently formalized its IT change management process after an audit finding. Each approved change request is now assigned to a designated individual who is accountable for its successful completion. In change management, what is the role of this change owner?$EXPL$
WHERE id = 13539;

-- ID 13529: Change Management (12 words)
-- ORIGINAL STEM: What is a forward schedule of changes (FSC) in IT service management?
UPDATE questions SET
  stem = $EXPL$Oakmont Insurance''s IT operations team maintains a calendar that consolidates all upcoming approved changes across production systems. The team uses this calendar to coordinate deployment windows and minimize conflicts. What is a forward schedule of changes (FSC) in IT service management?$EXPL$
WHERE id = 13529;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 3520: Data Management and Lifecycle (11 words)
-- ORIGINAL STEM: What is the primary purpose of a cross-functional data governance council?
UPDATE questions SET
  stem = $EXPL$Meridian Healthcare recently established a committee comprising representatives from finance, compliance, IT, and clinical operations to oversee enterprise data policies. What is the primary purpose of a cross-functional data governance council?$EXPL$
WHERE id = 3520;

-- ID 13441: Data Management and Lifecycle (11 words)
-- ORIGINAL STEM: What is a legal hold in the context of data retention?
UPDATE questions SET
  stem = $EXPL$Trident Manufacturing''s general counsel notifies the records management team that a former employee has filed a wrongful termination lawsuit. The counsel instructs that all relevant electronic records be preserved regardless of normal retention schedules. What is a legal hold in the context of data retention?$EXPL$
WHERE id = 13441;

-- ID 781: Data Management and Lifecycle (12 words)
-- ORIGINAL STEM: Which data protection technique replaces sensitive values with realistic but non-reversible substitutes?
UPDATE questions SET
  stem = $EXPL$Cascade Analytics needs to provide customer records to its development team for testing but must prevent exposure of actual Social Security numbers. The security team proposes replacing each SSN with a realistic but fictitious value that cannot be reversed to recover the original. Which data protection technique does this describe?$EXPL$
WHERE id = 781;

-- ID 3501: Data Management and Lifecycle (12 words)
-- ORIGINAL STEM: Which of the following BEST describes a relational database management system (RDBMS)?
UPDATE questions SET
  stem = $EXPL$Pinnacle Corp''s controller is evaluating database platforms for the company''s new accounting system. The primary requirement is strong data integrity through enforced relationships between tables and ACID-compliant transaction processing. Which of the following BEST describes a relational database management system (RDBMS)?$EXPL$
WHERE id = 3501;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5763: Data Protection Technologies (11 words)
-- ORIGINAL STEM: Which three states of data do information security controls typically address?
UPDATE questions SET
  stem = $EXPL$Redstone Financial''s CISO is presenting a data protection strategy to the board, organized around the different states data can exist in throughout its lifecycle. Which three states of data do information security controls typically address?$EXPL$
WHERE id = 5763;

-- ID 5793: Data Protection Technologies (11 words)
-- ORIGINAL STEM: Which statement BEST describes symmetric encryption as a data protection technique?
UPDATE questions SET
  stem = $EXPL$Vanguard Logistics uses AES-256 to encrypt customer financial records stored on its database servers. A new IT auditor asks how this encryption method works. Which statement BEST describes symmetric encryption as a data protection technique?$EXPL$
WHERE id = 5793;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (2 questions)
-- ============================================================

-- ID 763: ERP and Accounting Information Systems (13 words)
-- ORIGINAL STEM: Which batch control technique is most effective for ensuring completeness of transaction processing?
UPDATE questions SET
  stem = $EXPL$Elkhart Manufacturing processes accounts payable invoices in nightly batches of approximately 500 transactions. The accounting supervisor needs a control to verify that every submitted invoice was processed and none were lost during the batch run. Which batch control technique is most effective for ensuring completeness of transaction processing?$EXPL$
WHERE id = 763;

-- ID 764: ERP and Accounting Information Systems (13 words)
-- ORIGINAL STEM: Which of the following describes a master file in an accounting information system?
UPDATE questions SET
  stem = $EXPL$During an IT audit of Brighton Retail''s ERP system, the auditor identifies a file containing vendor names, addresses, payment terms, and bank account details that is referenced every time a purchase order is created. Which of the following describes a master file in an accounting information system?$EXPL$
WHERE id = 764;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (4 questions)
-- ============================================================

-- ID 858: Incident Response and Recovery (12 words)
-- ORIGINAL STEM: According to NIST SP 800-61, which phase of incident response comes first?
UPDATE questions SET
  stem = $EXPL$Crestview Bank''s board has directed the CISO to build a formal incident response program aligned with NIST SP 800-61. The CISO is mapping out the phases the team must follow when a security event occurs. According to NIST SP 800-61, which phase of incident response comes first?$EXPL$
WHERE id = 858;

-- ID 865: Incident Response and Recovery (12 words)
-- ORIGINAL STEM: Which of the following disaster recovery strategies provides the FASTEST recovery time?
UPDATE questions SET
  stem = $EXPL$Sterling Payments processes $4.2 million in credit card transactions daily and has an RTO of 15 minutes for its core processing platform. The CTO is evaluating disaster recovery site options. Which of the following disaster recovery strategies provides the FASTEST recovery time?$EXPL$
WHERE id = 865;

-- ID 3696: Incident Response and Recovery (12 words)
-- ORIGINAL STEM: What is the primary purpose of a tabletop exercise in incident response?
UPDATE questions SET
  stem = $EXPL$Northfield Health Systems schedules a two-hour session where its incident response team gathers in a conference room to walk through a simulated ransomware scenario without touching any live systems. What is the primary purpose of a tabletop exercise in incident response?$EXPL$
WHERE id = 3696;

-- ID 3698: Incident Response and Recovery (12 words)
-- ORIGINAL STEM: During the eradication phase of incident response, what is the PRIMARY objective?
UPDATE questions SET
  stem = $EXPL$After containing a malware outbreak that compromised three servers, Apex Financial''s incident response team moves to the next phase. The team must ensure the threat is completely eliminated before restoring normal operations. During the eradication phase of incident response, what is the PRIMARY objective?$EXPL$
WHERE id = 3698;

-- ============================================================
-- IT AUDIT FRAMEWORKS (4 questions)
-- ============================================================

-- ID 1059: IT Audit Frameworks (11 words)
-- ORIGINAL STEM: In quantitative risk analysis, how is Annualized Loss Expectancy (ALE) calculated?
UPDATE questions SET
  stem = $EXPL$Lakewood Credit Union''s risk analyst has determined that its loan processing server (valued at $400,000) faces a threat with a single loss expectancy of $120,000 and an estimated occurrence of 0.5 times per year. In quantitative risk analysis, how is Annualized Loss Expectancy (ALE) calculated?$EXPL$
WHERE id = 1059;

-- ID 3834: IT Audit Frameworks (11 words)
-- ORIGINAL STEM: Under COBIT 2019, what are the components of a governance system?
UPDATE questions SET
  stem = $EXPL$Highland Industries'' board is adopting COBIT 2019 to structure its IT governance program. The CIO needs to identify all the interconnected elements that make up an effective governance system. Under COBIT 2019, what are the components of a governance system?$EXPL$
WHERE id = 3834;

-- ID 3849: IT Audit Frameworks (11 words)
-- ORIGINAL STEM: In IT risk evaluation, what are risk criteria typically based on?
UPDATE questions SET
  stem = $EXPL$Pacific Mutual''s risk committee is establishing the thresholds and benchmarks it will use to determine whether identified IT risks are acceptable or require treatment. In IT risk evaluation, what are risk criteria typically based on?$EXPL$
WHERE id = 3849;

-- ID 3852: IT Audit Frameworks (11 words)
-- ORIGINAL STEM: What does Level 2 (Managed) indicate in a capability maturity model?
UPDATE questions SET
  stem = $EXPL$An external assessor rates Beacon Technology''s change management process at Level 2 under a CMMI-based maturity model. The IT director asks what this rating signifies about the organization''s process maturity. What does Level 2 (Managed) indicate in a capability maturity model?$EXPL$
WHERE id = 3852;

-- ============================================================
-- IT GENERAL CONTROLS (1 questions)
-- ============================================================

-- ID 13133: IT General Controls (12 words)
-- ORIGINAL STEM: What is a baseline configuration in the context of IT general controls?
UPDATE questions SET
  stem = $EXPL$Summit Corp''s IT audit team discovers that production server settings differ from the documented, approved standard that was established after the last system deployment. The auditor references the original approved state for comparison. What is a baseline configuration in the context of IT general controls?$EXPL$
WHERE id = 13133;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (2 questions)
-- ============================================================

-- ID 13617: IT Infrastructure and Architecture (14 words)
-- ORIGINAL STEM: Which OSI layer is responsible for data format translation, encryption, and compression between applications?
UPDATE questions SET
  stem = $EXPL$Benton Corp''s network engineer is troubleshooting an issue where data exchanged between two applications requires format conversion and TLS encryption before transmission. The engineer identifies the OSI layer responsible for these functions. Which OSI layer handles data format translation, encryption, and compression between applications?$EXPL$
WHERE id = 13617;

-- ID 748: IT Infrastructure and Architecture (15 words)
-- ORIGINAL STEM: Which network design isolates sensitive systems from the general network while still allowing controlled access?
UPDATE questions SET
  stem = $EXPL$Prism Financial''s web servers must be accessible to external customers, but the internal database servers containing financial records must remain protected from direct internet traffic. The network architect proposes a design that creates an isolated zone between the external and internal networks. Which network design does this describe?$EXPL$
WHERE id = 748;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (3 questions)
-- ============================================================

-- ID 1298: Privacy Requirements and Data Protection (13 words)
-- ORIGINAL STEM: Which of the following entities would be classified as a HIPAA business associate?
UPDATE questions SET
  stem = $EXPL$Clearview Regional Hospital contracts with DataVault Solutions, a cloud hosting company, to store and manage electronic patient health records on its servers. Under HIPAA, which of the following entities would be classified as a business associate?$EXPL$
WHERE id = 1298;

-- ID 3720: Privacy Requirements and Data Protection (13 words)
-- ORIGINAL STEM: Under HIPAA, which of the following entities is classified as a covered entity?
UPDATE questions SET
  stem = $EXPL$A compliance consultant is reviewing several organizations to determine which fall directly under HIPAA''s regulatory requirements for protecting health information. Under HIPAA, which of the following entities is classified as a covered entity?$EXPL$
WHERE id = 3720;

-- ID 13207: Privacy Requirements and Data Protection (13 words)
-- ORIGINAL STEM: Under GDPR, what does the "right to be informed" require of data controllers?
UPDATE questions SET
  stem = $EXPL$NovaTech Solutions, a Berlin-based SaaS provider, collects personal data from EU users during account registration. A data subject submits a request citing their right to be informed. Under GDPR, what does this right require of data controllers?$EXPL$
WHERE id = 13207;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (5 questions)
-- ============================================================

-- ID 3585: Security and Control Frameworks (12 words)
-- ORIGINAL STEM: Which type of organization is CIS Implementation Group 2 (IG2) designed for?
UPDATE questions SET
  stem = $EXPL$A mid-sized financial services firm with a dedicated IT security team is evaluating which tier of the CIS Controls framework to implement. The firm has moderate risk exposure and resources beyond a basic small-business level. Which type of organization is CIS Implementation Group 2 (IG2) designed for?$EXPL$
WHERE id = 3585;

-- ID 3586: Security and Control Frameworks (12 words)
-- ORIGINAL STEM: Which COSO component most directly addresses the design of IT application controls?
UPDATE questions SET
  stem = $EXPL$An IT auditor at Waverly Corp is mapping the company''s automated three-way match and system-enforced approval limits to the COSO Internal Control framework. Which COSO component most directly addresses the design of IT application controls?$EXPL$
WHERE id = 3586;

-- ID 3589: Security and Control Frameworks (12 words)
-- ORIGINAL STEM: What is the primary benefit of micro-segmentation in a zero trust architecture?
UPDATE questions SET
  stem = $EXPL$Keystone Bank is implementing a zero trust architecture and plans to create granular network segments around individual workloads rather than relying solely on perimeter firewalls. What is the primary benefit of micro-segmentation in this architecture?$EXPL$
WHERE id = 3589;

-- ID 3601: Security and Control Frameworks (12 words)
-- ORIGINAL STEM: What is the relationship between COBIT 2019 and the NIST Cybersecurity Framework?
UPDATE questions SET
  stem = $EXPL$Ridgeline Enterprises currently uses COBIT 2019 for IT governance and is considering adopting the NIST Cybersecurity Framework for its security program. The CIO asks how the two frameworks relate to each other. What is the relationship between COBIT 2019 and the NIST Cybersecurity Framework?$EXPL$
WHERE id = 3601;

-- ID 3604: Security and Control Frameworks (12 words)
-- ORIGINAL STEM: What governance concern arises when the CISO reports directly to the CIO?
UPDATE questions SET
  stem = $EXPL$Atlas Corp''s organizational chart shows the Chief Information Security Officer reporting directly to the Chief Information Officer, with no independent reporting line to the board or audit committee. What governance concern arises from this reporting structure?$EXPL$
WHERE id = 3604;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 3668: Security Controls and Monitoring (10 words)
-- ORIGINAL STEM: What is the purpose of a Privileged Access Workstation (PAW)?
UPDATE questions SET
  stem = $EXPL$Fortis Bank''s IT security team requires domain administrators to perform all privileged tasks from dedicated, hardened machines that are isolated from general internet browsing and email. What is the purpose of a Privileged Access Workstation (PAW)?$EXPL$
WHERE id = 3668;

-- ID 3672: Security Controls and Monitoring (10 words)
-- ORIGINAL STEM: What security function does a VPN provide for remote workers?
UPDATE questions SET
  stem = $EXPL$Evergreen Consulting''s employees frequently access the corporate network from home and public Wi-Fi hotspots. The IT department deploys a technology that creates an encrypted tunnel over the public internet. What security function does a VPN provide for these remote workers?$EXPL$
WHERE id = 3672;

-- ID 3674: Security Controls and Monitoring (10 words)
-- ORIGINAL STEM: What does certificate pinning in a mobile application protect against?
UPDATE questions SET
  stem = $EXPL$Apex Mobile Banking''s development team configures the app to accept only a specific, pre-defined server certificate rather than trusting any certificate signed by a recognized authority. What does certificate pinning in a mobile application protect against?$EXPL$
WHERE id = 3674;

-- ID 3679: Security Controls and Monitoring (10 words)
-- ORIGINAL STEM: What type of security control is Network Access Control (NAC)?
UPDATE questions SET
  stem = $EXPL$Orion Technologies deploys a system that evaluates each device''s security posture—including patch level and antivirus status—before allowing it onto the corporate network. What type of security control is Network Access Control (NAC)?$EXPL$
WHERE id = 3679;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 3762: SOC Engagements (13 words)
-- ORIGINAL STEM: Under SSAE 18, a user entity is defined as which of the following?
UPDATE questions SET
  stem = $EXPL$CloudPay Solutions provides payroll processing to 300 client companies. During the SOC 1 engagement, the service auditor identifies the organizations that rely on CloudPay''s controls for their own financial reporting. Under SSAE 18, a user entity is defined as which of the following?$EXPL$
WHERE id = 3762;

-- ID 3775: SOC Engagements (13 words)
-- ORIGINAL STEM: In a SOC 1 engagement, control objectives are typically established by which party?
UPDATE questions SET
  stem = $EXPL$Meridian Payroll Services is preparing for its first SOC 1 Type II examination. The engagement team needs to determine who is responsible for defining the control objectives against which the service auditor will test. In a SOC 1 engagement, control objectives are typically established by which party?$EXPL$
WHERE id = 3775;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 13409: SOC Report Content and Structure (9 words)
-- ORIGINAL STEM: Which statement about SOC 3 report types is correct?
UPDATE questions SET
  stem = $EXPL$Vertex Cloud Hosting wants to post a summary of its SOC examination results on its public website to reassure prospective customers. The marketing director asks the compliance team about the appropriate report format. Which statement about SOC 3 report types is correct?$EXPL$
WHERE id = 13409;

-- ============================================================
-- SOC REPORTING (3 questions)
-- ============================================================

-- ID 1218: SOC Reporting (12 words)
-- ORIGINAL STEM: A Complementary User Entity Control (CUEC) in a SOC 2 report is:
UPDATE questions SET
  stem = $EXPL$Pinnacle SaaS''s SOC 2 Type II report states that its access controls are effective only when client organizations disable terminated employees'' accounts within 24 hours. This expectation placed on client organizations is an example of what? A Complementary User Entity Control (CUEC) in a SOC 2 report is:$EXPL$
WHERE id = 1218;

-- ID 3918: SOC Reporting (12 words)
-- ORIGINAL STEM: What does an adverse opinion communicate to users of a SOC report?
UPDATE questions SET
  stem = $EXPL$A user auditor receives the SOC 2 Type II report from DataStream Processing and notes that the service auditor issued an adverse opinion. The auditor needs to understand the implications for reliance. What does an adverse opinion communicate to users of a SOC report?$EXPL$
WHERE id = 3918;

-- ID 3884: SOC Reporting (13 words)
-- ORIGINAL STEM: What does a qualified opinion indicate in a SOC 2 Type II report?
UPDATE questions SET
  stem = $EXPL$After reviewing TechServe Inc.''s SOC 2 Type II report, the user auditor notes the service auditor issued a qualified opinion with an "except for" clause related to one specific control area. What does a qualified opinion indicate in a SOC 2 Type II report?$EXPL$
WHERE id = 3884;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 3800: SOC Reporting and Trust Services Criteria (13 words)
-- ORIGINAL STEM: CC4 and CC5 in the Trust Services framework relate to which COSO components?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 readiness assessment, Brightline Data Services is mapping its controls to the Trust Services common criteria. The consultant identifies CC4 and CC5 and needs to trace them to the underlying COSO framework. CC4 and CC5 in the Trust Services framework relate to which COSO components?$EXPL$
WHERE id = 3800;

-- ID 13778: SOC Reporting and Trust Services Criteria (13 words)
-- ORIGINAL STEM: What are the four main sections of a SOC 2 Type II report?
UPDATE questions SET
  stem = $EXPL$The audit committee at Franklin Corp receives a SOC 2 Type II report from its cloud hosting provider and asks the internal auditor to explain its structure. What are the four main sections of a SOC 2 Type II report?$EXPL$
WHERE id = 13778;

-- ID 887: SOC Reporting and Trust Services Criteria (14 words)
-- ORIGINAL STEM: Which of the following BEST describes the Confidentiality criteria in the Trust Services framework?
UPDATE questions SET
  stem = $EXPL$Stratos Consulting stores proprietary client financial models under strict access restrictions and contractual non-disclosure agreements. During a SOC 2 engagement, the auditor maps these protections to the applicable Trust Services criterion. Which of the following BEST describes the Confidentiality criteria in the Trust Services framework?$EXPL$
WHERE id = 887;

-- ============================================================
-- SOC TESTING CONTROLS (3 questions)
-- ============================================================

-- ID 1214: SOC Testing Controls (13 words)
-- ORIGINAL STEM: When deviations are found during control testing, what should the auditor evaluate first?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 Type II examination of Nexus Hosting, the service auditor finds that 2 of 15 sampled weekly access reviews were completed three days late. When deviations are found during control testing, what should the auditor evaluate first?$EXPL$
WHERE id = 1214;

-- ID 3861: SOC Testing Controls (13 words)
-- ORIGINAL STEM: What do tests of operating effectiveness determine in a SOC Type II engagement?
UPDATE questions SET
  stem = $EXPL$Clearpath IT Services is undergoing its annual SOC 2 Type II examination covering a 12-month period. The service auditor selects samples of daily and weekly controls to perform detailed testing. What do tests of operating effectiveness determine in a SOC Type II engagement?$EXPL$
WHERE id = 3861;

-- ID 13714: SOC Testing Controls (13 words)
-- ORIGINAL STEM: What effect do prior-period exceptions have on the current period's SOC testing approach?
UPDATE questions SET
  stem = $EXPL$Beacon Data Center''s prior-year SOC 2 report disclosed two exceptions related to user access reviews. The current-period service auditor is planning the testing approach for this year''s engagement. What effect do prior-period exceptions have on the current period''s SOC testing approach?$EXPL$
WHERE id = 13714;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (5 questions)
-- ============================================================

-- ID 3541: System Availability and Change Management (9 words)
-- ORIGINAL STEM: What is the primary function of a load balancer?
UPDATE questions SET
  stem = $EXPL$Velocity E-Commerce experiences traffic spikes of 50,000 concurrent users during flash sales. The infrastructure team deploys a device in front of its web server cluster to manage this demand. What is the primary function of a load balancer?$EXPL$
WHERE id = 3541;

-- ID 3565: System Availability and Change Management (9 words)
-- ORIGINAL STEM: What does auto-scaling provide in a cloud computing environment?
UPDATE questions SET
  stem = $EXPL$Nimbus SaaS hosts its application on a cloud platform that automatically adds or removes server instances based on real-time user demand, without manual intervention. What does auto-scaling provide in a cloud computing environment?$EXPL$
WHERE id = 3565;

-- ID 3570: System Availability and Change Management (9 words)
-- ORIGINAL STEM: What does interdependency analysis reveal about business process recovery?
UPDATE questions SET
  stem = $EXPL$During BCP planning, Westbrook Financial discovers that its loan origination system depends on three upstream applications and a third-party credit bureau feed. The BCP team maps these connections to determine recovery sequencing. What does interdependency analysis reveal about business process recovery?$EXPL$
WHERE id = 3570;

-- ID 3573: System Availability and Change Management (9 words)
-- ORIGINAL STEM: What is the primary benefit of synchronous database mirroring?
UPDATE questions SET
  stem = $EXPL$Atlas Trading implements synchronous mirroring between its primary transaction database and a standby server located 30 miles away, ensuring every write is confirmed on both servers before the transaction commits. What is the primary benefit of synchronous database mirroring?$EXPL$
WHERE id = 3573;

-- ID 3539: System Availability and Change Management (10 words)
-- ORIGINAL STEM: In business continuity planning, what does a tabletop exercise involve?
UPDATE questions SET
  stem = $EXPL$Granite Insurance''s business continuity coordinator assembles key stakeholders in a conference room to walk through a simulated data center outage scenario without activating any actual recovery procedures. In business continuity planning, what does a tabletop exercise involve?$EXPL$
WHERE id = 3539;

COMMIT;
