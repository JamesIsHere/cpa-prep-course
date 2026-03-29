-- Migration: Stem expansion — ISC batch 8 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 4918: Change Management (17 words)
-- ORIGINAL STEM: Which of the following change management metrics BEST measures the overall effectiveness of the change management process?
UPDATE questions SET
  stem = $EXPL$Primewell Financial''s IT director is preparing the quarterly governance report and wants a single metric that reflects how well the change management process is performing. Which of the following change management metrics BEST measures the overall effectiveness of the change management process?$EXPL$
WHERE id = 4918;

-- ID 12620: Change Management (17 words)
-- ORIGINAL STEM: What should happen to emergency production access granted to a developer after an urgent issue is resolved?
UPDATE questions SET
  stem = $EXPL$During a weekend outage at Holbrook Insurance, a developer was granted emergency access to the production ERP environment to apply a critical patch. The issue was resolved Sunday evening. What should happen to the emergency production access granted to the developer?$EXPL$
WHERE id = 12620;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 776: Data Management and Lifecycle (16 words)
-- ORIGINAL STEM: Which phase of the data lifecycle involves securely eliminating data that has exceeded its retention period?
UPDATE questions SET
  stem = $EXPL$Ridgeline Healthcare''s compliance officer determined that archived patient billing records from 2017 have exceeded the required seven-year retention period. The officer initiates a process to permanently remove the records. Which phase of the data lifecycle does this activity represent?$EXPL$
WHERE id = 776;

-- ID 778: Data Management and Lifecycle (16 words)
-- ORIGINAL STEM: Which data quality dimension is at risk when a database permits null values in mandatory fields?
UPDATE questions SET
  stem = $EXPL$An auditor reviewing Cornerstone Manufacturing''s customer database finds that 12% of records have blank entries in the "billing address" field, which is designated as required. Which data quality dimension is most directly at risk?$EXPL$
WHERE id = 778;

-- ID 780: Data Management and Lifecycle (16 words)
-- ORIGINAL STEM: Which database feature records every modification to a record, preserving before and after values with timestamps?
UPDATE questions SET
  stem = $EXPL$After discovering an unauthorized vendor master file change at Baxter Logistics, the IT manager needs to determine who altered the bank routing number and what the previous value was. Which database feature would provide this information?$EXPL$
WHERE id = 780;

-- ID 3532: Data Management and Lifecycle (16 words)
-- ORIGINAL STEM: Which category of data is generally classified at the highest sensitivity level under data governance policies?
UPDATE questions SET
  stem = $EXPL$Clearwater Financial Services is implementing a four-tier data classification framework. The data governance team must determine which data assets require the most stringent controls, including encryption and multi-factor authentication. Which category of data is generally classified at the highest sensitivity level?$EXPL$
WHERE id = 3532;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5785: Data Protection Technologies (17 words)
-- ORIGINAL STEM: Which data protection technique involves concealing secret information within ordinary-looking digital files such as images or audio?
UPDATE questions SET
  stem = $EXPL$A cybersecurity analyst at Mercer Defense Consulting discovers that proprietary design files appear to have been exfiltrated by embedding them inside routine JPEG photos posted to an external blog. Which data protection technique was used to conceal the information?$EXPL$
WHERE id = 5785;

-- ID 5865: Data Protection Technologies (17 words)
-- ORIGINAL STEM: What is the PRIMARY function of a Trusted Platform Module (TPM) chip installed on a computer motherboard?
UPDATE questions SET
  stem = $EXPL$Kellner Accounting is deploying new laptops with Trusted Platform Module chips soldered onto the motherboards. The IT manager explains the security benefit to the managing partner. What is the PRIMARY function of a TPM chip?$EXPL$
WHERE id = 5865;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (2 questions)
-- ============================================================

-- ID 13486: ERP and Accounting Information Systems (17 words)
-- ORIGINAL STEM: What is the defining characteristic that distinguishes an ERP system from a collection of standalone business applications?
UPDATE questions SET
  stem = $EXPL$Trident Industries currently runs separate applications for accounting, inventory, and HR, each with its own database. The CFO is evaluating a move to a single ERP platform. What is the defining characteristic that distinguishes an ERP system from standalone business applications?$EXPL$
WHERE id = 13486;

-- ID 13477: ERP and Accounting Information Systems (18 words)
-- ORIGINAL STEM: What four elements does a complete audit trail in an ERP system capture for each transaction or event?
UPDATE questions SET
  stem = $EXPL$During fieldwork at Westbridge Manufacturing, an auditor asks the IT director to demonstrate the ERP system''s audit trail capabilities by tracing a journal entry to its originating source document. What four elements does a complete ERP audit trail capture for each transaction?$EXPL$
WHERE id = 13477;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (4 questions)
-- ============================================================

-- ID 3683: Incident Response and Recovery (16 words)
-- ORIGINAL STEM: Under NIST SP 800-61, what is the primary focus of the preparation phase of incident response?
UPDATE questions SET
  stem = $EXPL$Granite Bank''s newly appointed CISO is building the institution''s incident response program from scratch, starting with the first phase of the NIST SP 800-61 framework. What is the primary focus of the preparation phase?$EXPL$
WHERE id = 3683;

-- ID 867: Incident Response and Recovery (17 words)
-- ORIGINAL STEM: What does it indicate when a system's Recovery Time Objective (RTO) exceeds its Maximum Tolerable Downtime (MTD)?
UPDATE questions SET
  stem = $EXPL$Pinnacle Retail''s BIA shows that its order processing system has an RTO of 36 hours, but the maximum tolerable downtime is only 24 hours. What does this gap indicate?$EXPL$
WHERE id = 867;

-- ID 868: Incident Response and Recovery (17 words)
-- ORIGINAL STEM: In digital forensics, what is the primary purpose of creating a bit-for-bit forensic image of affected drives?
UPDATE questions SET
  stem = $EXPL$Following a suspected data breach at Silverline Payments, the incident response team''s forensic specialist immediately creates bit-for-bit images of the compromised server''s hard drives before beginning analysis. What is the primary purpose of this step?$EXPL$
WHERE id = 868;

-- ID 3685: Incident Response and Recovery (17 words)
-- ORIGINAL STEM: After confirming a ransomware infection on a workstation, the incident response team's FIRST containment action should be:
UPDATE questions SET
  stem = $EXPL$A security analyst at Oakdale Credit Union confirms that a workstation in the loan department is actively encrypting files due to a ransomware infection. The incident response team is activated. The team''s FIRST containment action should be:$EXPL$
WHERE id = 3685;

-- ============================================================
-- IT AUDIT FRAMEWORKS (4 questions)
-- ============================================================

-- ID 12962: IT Audit Frameworks (13 words)
-- ORIGINAL STEM: In quantitative risk analysis, what does the Annualized Rate of Occurrence (ARO) represent?
UPDATE questions SET
  stem = $EXPL$Redwood Financial''s risk manager is building a quantitative risk model for phishing attacks and needs to estimate how frequently the threat event is expected to occur each year. In quantitative risk analysis, what does the Annualized Rate of Occurrence represent?$EXPL$
WHERE id = 12962;

-- ID 1064: IT Audit Frameworks (14 words)
-- ORIGINAL STEM: How do COBIT and ITIL complement each other in IT governance and service management?
UPDATE questions SET
  stem = $EXPL$Hartwell Insurance is adopting both COBIT and ITIL for its IT department. The CIO asks the internal audit team to explain how the two frameworks work together. How do COBIT and ITIL complement each other?$EXPL$
WHERE id = 1064;

-- ID 3851: IT Audit Frameworks (14 words)
-- ORIGINAL STEM: In ITIL 4, the "focus on value" guiding principle emphasizes which of the following?
UPDATE questions SET
  stem = $EXPL$Northgate Solutions is adopting ITIL 4 to improve its service desk operations. The IT director begins training staff on the framework''s seven guiding principles. The "focus on value" principle emphasizes which of the following?$EXPL$
WHERE id = 3851;

-- ID 13816: IT Audit Frameworks (14 words)
-- ORIGINAL STEM: Under FIPS 199, what does a "moderate" impact level indicate for an information system?
UPDATE questions SET
  stem = $EXPL$A federal agency is categorizing its internal financial reporting application under FIPS 199 to determine the appropriate baseline security controls. The system is assigned a "moderate" impact level. What does this classification indicate?$EXPL$
WHERE id = 13816;

-- ============================================================
-- IT GENERAL CONTROLS (2 questions)
-- ============================================================

-- ID 1046: IT General Controls (15 words)
-- ORIGINAL STEM: Which of the following BEST describes the principle of least privilege in IT access controls?
UPDATE questions SET
  stem = $EXPL$During an IT audit of Summit Pharmaceuticals, the auditor notes that several accounts payable clerks have administrator-level access to the general ledger module. The auditor cites a violation of the principle of least privilege. Which of the following BEST describes this principle?$EXPL$
WHERE id = 1046;

-- ID 1049: IT General Controls (16 words)
-- ORIGINAL STEM: Failure to promptly revoke a terminated employee's system access is a deficiency in which ITGC area?
UPDATE questions SET
  stem = $EXPL$An auditor at Lakeview Distribution discovers that three employees terminated in January still have active VPN accounts in March. Failure to promptly revoke their access is a deficiency in which ITGC area?$EXPL$
WHERE id = 1049;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (2 questions)
-- ============================================================

-- ID 3430: IT Infrastructure and Architecture (18 words)
-- ORIGINAL STEM: Which layer of the OSI model is responsible for establishing, managing, and terminating sessions between two communicating devices?
UPDATE questions SET
  stem = $EXPL$An IT consultant at Orion Technologies is troubleshooting an issue where the connection between the ERP client and the database server keeps dropping mid-transaction. The problem occurs at the layer responsible for establishing, managing, and terminating sessions. Which OSI layer is involved?$EXPL$
WHERE id = 3430;

-- ID 3439: IT Infrastructure and Architecture (18 words)
-- ORIGINAL STEM: Which type of storage architecture connects storage devices directly to a server without any network infrastructure in between?
UPDATE questions SET
  stem = $EXPL$Bowman Engineering''s file server has an external hard drive array connected via a dedicated cable, with no switches or network infrastructure between the storage and the server. Which type of storage architecture does this represent?$EXPL$
WHERE id = 3439;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (2 questions)
-- ============================================================

-- ID 846: Privacy Requirements and Data Protection (19 words)
-- ORIGINAL STEM: The California Consumer Privacy Act (CCPA) grants consumers several rights. Which of the following is a right under CCPA?
UPDATE questions SET
  stem = $EXPL$Brightpath Media, a digital advertising company with $40 million in annual revenue, collects personal data from California residents through its website. Under the California Consumer Privacy Act, which of the following is a right granted to these consumers?$EXPL$
WHERE id = 846;

-- ID 857: Privacy Requirements and Data Protection (19 words)
-- ORIGINAL STEM: Under PCI DSS, which of the following is a requirement for organizations that store, process, or transmit cardholder data?
UPDATE questions SET
  stem = $EXPL$Gateway Commerce processes approximately 50,000 credit card transactions per month through its e-commerce platform. The company is preparing for its annual PCI DSS compliance assessment. Which of the following is a PCI DSS requirement?$EXPL$
WHERE id = 857;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3605: Security and Control Frameworks (15 words)
-- ORIGINAL STEM: What risk do outdated security policies that have not been reviewed for several years create?
UPDATE questions SET
  stem = $EXPL$An IT auditor at Fairmont Industries discovers that the company''s information security policies were last reviewed and updated in 2021. No revisions have been made despite significant cloud migration and remote work adoption since then. What risk does this create?$EXPL$
WHERE id = 3605;

-- ID 3610: Security and Control Frameworks (15 words)
-- ORIGINAL STEM: What is the primary advantage of using COBIT 2019 as an umbrella IT governance framework?
UPDATE questions SET
  stem = $EXPL$Vanguard Energy already uses NIST CSF for cybersecurity and ITIL for service management. The board is considering adopting COBIT 2019 to unify IT governance across these initiatives. What is the primary advantage of using COBIT 2019 as an umbrella framework?$EXPL$
WHERE id = 3610;

-- ID 3611: Security and Control Frameworks (15 words)
-- ORIGINAL STEM: In a security program, which document type provides step-by-step instructions for performing a specific task?
UPDATE questions SET
  stem = $EXPL$Ashford Consulting''s CISO is organizing the firm''s security documentation hierarchy into policies, standards, guidelines, and procedures. A new document provides step-by-step instructions for configuring firewall rules. Which document type does this represent?$EXPL$
WHERE id = 3611;

-- ID 807: Security and Control Frameworks (16 words)
-- ORIGINAL STEM: Under the COSO Internal Control framework, which component is considered the foundation for all other components?
UPDATE questions SET
  stem = $EXPL$During an integrated audit of Langford Manufacturing, the engagement team evaluates internal controls using the COSO framework. The team begins with the component that sets the tone for the entire organization. Under COSO, which component is considered the foundation for all other components?$EXPL$
WHERE id = 807;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 3676: Security Controls and Monitoring (14 words)
-- ORIGINAL STEM: What is the primary benefit of a SOAR platform in a security operations center?
UPDATE questions SET
  stem = $EXPL$Cascade Financial''s security operations center handles over 2,000 alerts daily, and analysts are overwhelmed by manual triage and response tasks. Management is evaluating a SOAR platform. What is the primary benefit of deploying this technology?$EXPL$
WHERE id = 3676;

-- ID 13662: Security Controls and Monitoring (14 words)
-- ORIGINAL STEM: What is the PRIMARY purpose of configuring automatic session timeouts on a web application?
UPDATE questions SET
  stem = $EXPL$Sterling Bank''s information security team configures its online banking portal to automatically log users out after 10 minutes of inactivity. What is the PRIMARY purpose of this automatic session timeout?$EXPL$
WHERE id = 13662;

-- ID 13665: Security Controls and Monitoring (14 words)
-- ORIGINAL STEM: What is the PRIMARY security improvement that WPA3 provides over WPA2 for wireless networks?
UPDATE questions SET
  stem = $EXPL$Meridian Accounting is upgrading its office wireless network from WPA2 to WPA3 as part of an annual infrastructure refresh. The IT manager explains the security improvement to the partners. What is the PRIMARY security improvement that WPA3 provides over WPA2?$EXPL$
WHERE id = 13665;

-- ID 13666: Security Controls and Monitoring (14 words)
-- ORIGINAL STEM: What is the PRIMARY security function of an API gateway in a microservices architecture?
UPDATE questions SET
  stem = $EXPL$Nexus Software deploys a microservices architecture with 40 internal services exposed through a centralized API gateway. The security architect explains the gateway''s role to the audit team. What is the PRIMARY security function of an API gateway in this architecture?$EXPL$
WHERE id = 13666;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 877: SOC Engagements (16 words)
-- ORIGINAL STEM: What is the user auditor's responsibility regarding CUECs listed in a SOC 1 Type II report?
UPDATE questions SET
  stem = $EXPL$Dunbar & Associates is auditing a client that outsources payroll to a third-party processor. The processor''s SOC 1 Type II report lists several complementary user entity controls. What is Dunbar''s responsibility regarding these CUECs?$EXPL$
WHERE id = 877;

-- ID 3770: SOC Engagements (17 words)
-- ORIGINAL STEM: In a SOC engagement, the inclusive method for addressing a subservice organization requires which of the following?
UPDATE questions SET
  stem = $EXPL$CloudFirst SaaS hosts its platform on a third-party data center provider. For its upcoming SOC 2 report, CloudFirst elects to use the inclusive method for addressing the data center as a subservice organization. This method requires which of the following?$EXPL$
WHERE id = 3770;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (2 questions)
-- ============================================================

-- ID 4954: SOC Report Content and Structure (16 words)
-- ORIGINAL STEM: How does a SOC 3 report differ from a SOC 2 report in terms of distribution?
UPDATE questions SET
  stem = $EXPL$Vertex Cloud Services has completed both a SOC 2 and a SOC 3 engagement. The marketing team wants to post the report on the company''s website to attract prospective customers. How does a SOC 3 report differ from a SOC 2 report in terms of distribution?$EXPL$
WHERE id = 4954;

-- ID 4957: SOC Report Content and Structure (16 words)
-- ORIGINAL STEM: In a SOC 2 Type I report, the service auditor's opinion addresses which of the following?
UPDATE questions SET
  stem = $EXPL$DataVault Inc., a new cloud storage provider, engages a CPA firm to issue its first SOC 2 Type I report as of September 30, 2025. The service auditor''s opinion in this report addresses which of the following?$EXPL$
WHERE id = 4957;

-- ============================================================
-- SOC REPORTING (2 questions)
-- ============================================================

-- ID 1216: SOC Reporting (16 words)
-- ORIGINAL STEM: In a SOC report, which opinion type uses 'except for' language to identify specific control exceptions?
UPDATE questions SET
  stem = $EXPL$A service auditor completing a SOC 2 Type II engagement for Apex Payroll identifies that user access reviews were not performed for two of four quarters, but all other controls operated effectively. The auditor uses ''except for'' language in the opinion. Which opinion type does this represent?$EXPL$
WHERE id = 1216;

-- ID 13682: SOC Reporting (16 words)
-- ORIGINAL STEM: What do inherent limitations of controls refer to in a SOC report's independent service auditor's report?
UPDATE questions SET
  stem = $EXPL$While reviewing Beacon Data Center''s SOC 2 report, the user auditor notes a paragraph discussing "inherent limitations of controls" in the independent service auditor''s report. What do inherent limitations of controls refer to?$EXPL$
WHERE id = 13682;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (2 questions)
-- ============================================================

-- ID 3780: SOC Reporting and Trust Services Criteria (19 words)
-- ORIGINAL STEM: The common criteria (CC1 through CC9) in the Trust Services framework map closely to which of the following frameworks?
UPDATE questions SET
  stem = $EXPL$A SOC 2 practitioner at Whitfield & Ross is mapping common criteria CC1 through CC9 to an established internal control framework as part of the engagement planning. The common criteria map closely to which of the following frameworks?$EXPL$
WHERE id = 3780;

-- ID 3802: SOC Reporting and Trust Services Criteria (19 words)
-- ORIGINAL STEM: In the Trust Services framework, which category specifically addresses the collection, use, retention, disclosure, and disposal of personal information?
UPDATE questions SET
  stem = $EXPL$TalentBridge HR Solutions processes employee records for 200 client companies and is determining which Trust Services Criteria to include in its SOC 2 engagement. The company needs a category that specifically addresses the collection, use, retention, disclosure, and disposal of personal information. Which category applies?$EXPL$
WHERE id = 3802;

-- ============================================================
-- SOC TESTING CONTROLS (3 questions)
-- ============================================================

-- ID 1210: SOC Testing Controls (18 words)
-- ORIGINAL STEM: When IT general controls are effective, what is the most efficient approach for testing an automated application control?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 Type II engagement for Crestline Payments, the practitioner confirms that ITGCs over program changes and access are effective. The practitioner now plans testing of an automated three-way match control. What is the most efficient testing approach?$EXPL$
WHERE id = 1210;

-- ID 3879: SOC Testing Controls (18 words)
-- ORIGINAL STEM: What is the typical minimum sample size for testing a daily control over a 12-month Type II period?
UPDATE questions SET
  stem = $EXPL$A SOC 2 Type II engagement for Keystone Hosting covers January through December 2025. Control S-4.3 requires the security team to review failed login reports daily. The practitioner is determining sample size. What is the typical minimum sample size for testing this daily control?$EXPL$
WHERE id = 3879;

-- ID 3915: SOC Testing Controls (18 words)
-- ORIGINAL STEM: What is the minimum testing required for an automated application control that has not changed during the period?
UPDATE questions SET
  stem = $EXPL$During a SOC 2 Type II engagement for Ridgewell Financial, the practitioner identifies an automated input validation control that rejects transactions exceeding $50,000. ITGCs are effective and the control has not changed during the examination period. What is the minimum testing required?$EXPL$
WHERE id = 3915;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (5 questions)
-- ============================================================

-- ID 793: System Availability and Change Management (14 words)
-- ORIGINAL STEM: In business continuity planning, what is the purpose of classifying systems into recovery tiers?
UPDATE questions SET
  stem = $EXPL$Atlas Manufacturing''s BCP committee is categorizing its IT systems into Tier 1, Tier 2, and Tier 3 classifications based on the business impact analysis. What is the purpose of classifying systems into recovery tiers?$EXPL$
WHERE id = 793;

-- ID 796: System Availability and Change Management (14 words)
-- ORIGINAL STEM: Which type of disaster recovery test involves actually switching operations to the backup site?
UPDATE questions SET
  stem = $EXPL$Ironclad Insurance wants to conduct the most rigorous DR test possible, one that shuts down production systems and processes live transactions at the secondary data center. Which type of disaster recovery test does this describe?$EXPL$
WHERE id = 796;

-- ID 798: System Availability and Change Management (14 words)
-- ORIGINAL STEM: Which of the following BEST describes the purpose of a configuration management database (CMDB)?
UPDATE questions SET
  stem = $EXPL$After a failed server upgrade caused an unexpected outage, Belmont Financial''s IT director proposes implementing a centralized repository to track all hardware, software, and their interdependencies. Which of the following BEST describes the purpose of a configuration management database?$EXPL$
WHERE id = 798;

-- ID 1293: System Availability and Change Management (14 words)
-- ORIGINAL STEM: After implementing an emergency change in a production environment, the MOST important control is:
UPDATE questions SET
  stem = $EXPL$On Saturday night, a senior developer at Quorum Analytics deployed an emergency patch to the production database to fix a critical security vulnerability. The standard CAB review was bypassed due to urgency. After implementing the emergency change, the MOST important control is:$EXPL$
WHERE id = 1293;

-- ID 3537: System Availability and Change Management (14 words)
-- ORIGINAL STEM: Among hot, warm, and cold disaster recovery sites, which provides the fastest recovery time?
UPDATE questions SET
  stem = $EXPL$Sentinel Bank''s business impact analysis requires its core banking system to resume operations within 30 minutes of a primary site failure. The DR committee is evaluating site options. Among hot, warm, and cold DR sites, which provides the fastest recovery time?$EXPL$
WHERE id = 3537;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (2 questions)
-- ============================================================

-- ID 820: Threats, Attacks, and Vulnerabilities (15 words)
-- ORIGINAL STEM: Which type of malware encrypts a victim's files and demands payment for the decryption key?
UPDATE questions SET
  stem = $EXPL$Employees at Drake Construction arrive Monday morning to find all shared drive files inaccessible, with a pop-up message demanding $150,000 in cryptocurrency to restore access. Which type of malware is responsible for this attack?$EXPL$
WHERE id = 820;

-- ID 12893: Threats, Attacks, and Vulnerabilities (16 words)
-- ORIGINAL STEM: Which threat actor category is PRIMARILY motivated by political or social causes rather than financial gain?
UPDATE questions SET
  stem = $EXPL$A group claiming responsibility for defacing a petroleum company''s website states its goal is to raise public awareness about environmental harm, not to extract payment. Which threat actor category is PRIMARILY motivated by political or social causes?$EXPL$
WHERE id = 12893;

COMMIT;
