-- Migration: Citation backfill — ISC batch 10 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 5421: Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-128 (Security-Focused Configuration Management), change implementations should use controlled deployment strategies that limit blast radius. Canary deployment releases changes to a small subset of users first and monitors for issues before gradually expanding to the full population. Unlike blue-green deployment, which maintains two identical environments and switches all traffic simultaneously, canary deployment uses incremental traffic shifting to detect problems early with minimal user impact.'
WHERE id = 5421;

-- ID 5422: Change Management
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI06 (Manage IT Changes), organizations should track the percentage of successful changes as a key process performance indicator. The change success rate directly measures whether the change management process delivers reliable outcomes by comparing changes completed without unplanned incidents to total changes attempted. While the volume of change requests measures process throughput, it does not indicate whether changes are being planned, tested, and implemented effectively.'
WHERE id = 5422;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 3519: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per NIST SP 800-60 (Guide for Mapping Types of Information and Information Systems to Security Categories), data progresses through creation, storage, use, archival, and destruction, each phase requiring appropriate governance controls. Proper lifecycle management ensures data receives protection proportionate to its classification at every stage. Unlike ETL processes, which address data integration and transformation rather than full lifecycle governance, the lifecycle framework encompasses all data handling from origination through authorized disposal.'
WHERE id = 3519;

-- ID 3520: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per COBIT 2019 APO01 (Manage the IT Management Framework), a cross-functional data governance council provides strategic oversight by balancing business, regulatory, and technical perspectives when setting enterprise-wide data policies. The council resolves cross-domain disputes and monitors data quality metrics to ensure organizational alignment. Unlike operational tasks such as performing daily backups, which fall under IT operations responsibilities, the governance council focuses on policy direction and strategic data management objectives.'
WHERE id = 3520;

-- ID 3521: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per IRS regulations under IRC Section 6109 and AICPA guidance on information reporting controls, payers must include correct taxpayer identification numbers on information returns including Form 1099. Missing vendor TINs prevent accurate regulatory filing and may trigger backup withholding requirements and penalties under IRC Section 3406. Unlike ERP system crashes, which involve technical malfunctions unrelated to data completeness, missing TINs create a regulatory compliance gap that exposes the organization to IRS enforcement actions.'
WHERE id = 3521;

-- ID 3522: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per COBIT 2019 DSS06 (Manage Business Process Controls), data processing controls must include validation checks to confirm transformations complete successfully before loading downstream systems. A silent ETL transform failure loads untransformed data into the warehouse, causing currency mismatches, inconsistent date formats, and duplicate records that inflate financial totals. Unlike detected failures that trigger alerts and halt processing, silent failures are particularly dangerous because downstream reports appear normal while containing materially inaccurate data.'
WHERE id = 3522;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5442: Data Protection Technologies
UPDATE questions SET
  explanation = 'Per NIST SP 800-122 (Guide to Protecting the Confidentiality of PII), organizations should implement content inspection controls to identify sensitive data patterns in transit and at rest. Regular expression pattern matching detects sensitive data by searching for predefined structural formats such as SSN patterns (XXX-XX-XXXX) or credit card structures validated by the Luhn algorithm. Unlike exact data matching, which compares content against a known database of specific sensitive values, regex matching identifies any data conforming to the structural pattern regardless of prior enumeration.'
WHERE id = 5442;

-- ID 5443: Data Protection Technologies
UPDATE questions SET
  explanation = 'Per NIST SP 800-57 (Recommendation for Key Management), encryption keys must be stored separately from the data they protect using dedicated key management systems with independent access controls. Storing AES-256 keys on the same backup tapes as encrypted data completely undermines confidentiality because an attacker who obtains the tapes possesses both ciphertext and decryption keys. Unlike proper key management where keys reside in a separate hardware security module or key management system, co-locating keys with encrypted data renders the encryption ineffective.'
WHERE id = 5443;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 3487: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 DSS06 (Manage Business Process Controls), integrated ERP systems should process transactions in real time to maintain accurate, current records across all modules. When a POS sale simultaneously updates inventory quantities and records the COGS journal entry, this demonstrates real-time transaction processing through the ERP''s shared database architecture. Unlike batch processing, which accumulates transactions and processes them at scheduled intervals, real-time processing ensures inventory and financial records reflect each transaction immediately upon occurrence.'
WHERE id = 3487;

-- ID 3488: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 DSS06 (Manage Business Process Controls), automated workflow controls must enforce proper authorization thresholds to maintain segregation of duties. When purchase orders exceeding $50,000 are approved by directors instead of VPs, the most likely cause is misconfigured workflow threshold settings or improperly assigned role permissions in the ERP system. Unlike a system capability limitation, which would prevent enforcement entirely, this deficiency represents a configuration error where the system can enforce dollar-based routing but the authorization rules are incorrectly defined.'
WHERE id = 3488;

-- ID 3489: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 DSS06 (Manage Business Process Controls), input validation controls should verify that entered values fall within predetermined acceptable boundaries before processing. A reasonableness check (also called a range or limit check) validates whether data falls within expected parameters, such as capping weekly hours at 80. Unlike a check digit, which validates identification numbers through mathematical algorithms to detect transcription errors, a reasonableness check evaluates whether a numeric value is plausible given the business context.'
WHERE id = 3489;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (2 questions)
-- ============================================================

-- ID 3700: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide), Section 2.3.4, incident response plans must define communication and notification requirements specifying who must be informed, through what channels, and within what timeframes during a breach. Clear notification procedures prevent delays that could increase legal liability and regulatory penalties. Unlike technical containment procedures, which focus on isolating affected systems and stopping the attack, communication requirements address stakeholder notification obligations to regulators, law enforcement, and affected individuals.'
WHERE id = 3700;

-- ID 3701: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-86 (Guide to Integrating Forensic Techniques into Incident Response), Section 4.1, forensic analysts must distinguish between volatile and non-volatile evidence to prioritize collection order appropriately. Files stored on hard drives are non-volatile evidence that persists after system shutdown, remaining recoverable during later forensic analysis. Unlike RAM contents, active network connections, and running processes — all of which are volatile and lost upon power-off — hard drive data remains intact and can be collected using forensic imaging at any time.'
WHERE id = 3701;

-- ============================================================
-- IT AUDIT FRAMEWORKS (2 questions)
-- ============================================================

-- ID 3849: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Per COBIT 2019 APO12 (Manage Risk), risk criteria are established based on the organization''s risk appetite, risk tolerance levels, legal and regulatory requirements, and stakeholder expectations. These criteria provide the benchmarks against which analyzed risks are evaluated and prioritized for treatment. Unlike factors such as staffing headcount or competitor market capitalization, which bear no relation to risk thresholds, risk criteria reflect the organization''s unique tolerance for potential loss and its regulatory compliance obligations.'
WHERE id = 3849;

-- ID 3850: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Per NIST SP 800-39 (Managing Information Security Risk), Section 3.2, risk avoidance eliminates the activity or condition that gives rise to the risk entirely by discontinuing the associated business function or process. This response is appropriate when the risk exceeds the organization''s risk appetite and other responses are insufficient. Unlike risk mitigation, which reduces the likelihood or impact of a risk while continuing the underlying activity, risk avoidance removes the risk source completely by ceasing the activity altogether.'
WHERE id = 3850;

-- ============================================================
-- IT GENERAL CONTROLS (2 questions)
-- ============================================================

-- ID 3823: IT General Controls
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5, AC-2 (Account Management) and AC-3 (Access Enforcement), role-based access control (RBAC) assigns permissions to defined roles rather than individual users. Users are then assigned to roles based on their job functions, supporting least privilege and simplifying periodic access reviews. Unlike discretionary access control (DAC), where resource owners grant permissions to individual users at their own discretion, RBAC centralizes permission management through standardized role definitions aligned with organizational responsibilities.'
WHERE id = 3823;

-- ID 3824: IT General Controls
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5, AC-5 (Separation of Duties) and AC-6 (Least Privilege), privileged access management controls must prevent administrators from unilaterally granting themselves elevated access without independent approval. Self-granting privileges violates segregation of duties, a fundamental IT general control requiring separate approval for access changes. Unlike a change management failure, which involves unauthorized system modifications to production environments, this deficiency specifically represents a breakdown in access management controls where the same individual both requests and approves privilege escalation.'
WHERE id = 3824;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (4 questions)
-- ============================================================

-- ID 3451: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-34 Rev. 1 (Contingency Planning Guide), Section 3.4, organizations must identify and mitigate single points of failure that threaten system availability. A single server hosting accounting, email, and file services creates concentrated availability risk because any hardware failure disables all services simultaneously. Unlike distributed architectures with redundant components, which allow continued operation when one component fails, this single-server configuration provides no failover capability and violates the AICPA Trust Services Criteria for availability (A1.2).'
WHERE id = 3451;

-- ID 3452: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-144 (Guidelines on Security and Privacy in Public Cloud Computing), Section 4, data in transit between cloud and on-premises environments may traverse the public internet, creating interception risk for sensitive information. When the database tier is on-premises and the application tier runs in a public cloud, sensitive financial data requires encrypted tunnels such as VPN or dedicated interconnects. Unlike selecting different cloud providers or using specific database technologies, which represent normal architectural choices, unprotected data transit across network boundaries presents the greatest security concern.'
WHERE id = 3452;

-- ID 3453: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-41 Rev. 1 (Guidelines on Firewalls and Firewall Policy), UDP is a connectionless transport protocol that sends datagrams without establishing sessions, ordering guarantees, or delivery confirmation, making it faster with lower latency. This makes UDP suitable for real-time applications like video streaming and DNS lookups where occasional packet loss is acceptable. Unlike TCP, which uses a three-way handshake to establish reliable, ordered connections with delivery acknowledgment, UDP sacrifices reliability for speed by omitting connection state overhead.'
WHERE id = 3453;

-- ID 3454: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-145 (The NIST Definition of Cloud Computing) and software-defined infrastructure guidance, hyperconverged infrastructure (HCI) combines compute, storage, and networking into a unified, software-defined platform that scales horizontally by adding identical nodes. HCI simplifies management and eliminates the need for separate SAN infrastructure. Unlike traditional converged infrastructure, which bundles pre-configured but still discrete compute, storage, and network components requiring individual management, HCI delivers a fully integrated solution managed through a single software layer.'
WHERE id = 3454;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (4 questions)
-- ============================================================

-- ID 3730: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Per the HIPAA Privacy Rule (45 CFR Section 160.103), protected health information (PHI) includes individually identifiable health information relating to a person''s past, present, or future health condition, healthcare provision, or payment for healthcare. A patient''s name linked to their diagnosis constitutes PHI because it combines an individual identifier with health information. Unlike de-identified data or aggregate statistics, which cannot be traced to specific individuals and fall outside HIPAA''s PHI definition, named patient records retain the identifying link to health status.'
WHERE id = 3730;

-- ID 3731: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Per CCPA/CPRA (California Civil Code Section 1798.105(d)), a business may deny a verified deletion request when the data is necessary to complete a transaction, detect security incidents, comply with legal obligations, or conduct public interest research. These statutory exceptions balance consumer privacy rights against legitimate business needs and legal requirements. Unlike claims of marketing preference value or technical inconvenience, which are not recognized exceptions under the statute, legal compliance obligations represent a valid basis for retaining personal information despite a deletion request.'
WHERE id = 3731;

-- ID 3732: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Per GDPR Article 56 (Competence of the Lead Supervisory Authority), a company operating across multiple EU member states reports breaches to its lead supervisory authority, determined by the location of its main establishment where data processing decisions are made. The one-stop-shop mechanism ensures consistent, efficient regulatory oversight across jurisdictions. Unlike reporting to every affected country''s supervisory authority independently, which would create duplicative and potentially conflicting regulatory proceedings, the lead authority mechanism streamlines cross-border breach response through structured inter-authority cooperation.'
WHERE id = 3732;

-- ID 3733: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Per GDPR Article 5(1)(c), the data minimization principle requires that personal data be adequate, relevant, and limited to what is necessary for the stated processing purposes. Collecting extensive data while using only a small fraction directly violates this requirement. Unlike the purpose limitation principle in Article 5(1)(b), which restricts how already-collected data may be used beyond its original purpose, data minimization specifically restricts the scope and volume of data collected in the first place.'
WHERE id = 3733;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3596: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST Cybersecurity Framework (CSF), Section 2.3, a Framework Profile represents the alignment of the framework''s functions, categories, and subcategories with an organization''s specific business requirements, risk tolerance, and available resources. Organizations create Current and Target Profiles to identify and prioritize improvement opportunities through gap analysis. Unlike team rosters or organizational charts, which document personnel assignments rather than security posture, a Framework Profile maps the organization''s cybersecurity capabilities against the framework''s desired outcomes.'
WHERE id = 3596;

-- ID 3597: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST CSF Section 3.2 (Establishing or Improving a Cybersecurity Program), gap analysis between Current and Target Profiles should drive a prioritized, risk-based action plan that allocates resources to the highest-impact improvements first. Not all gaps carry equal urgency, so organizations evaluate each against potential business impact and threat likelihood. Unlike implementing all improvements simultaneously, which ignores resource constraints and risk prioritization, a risk-based approach ensures the most critical security gaps receive attention first.'
WHERE id = 3597;

-- ID 3598: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5, Appendix D, RA designates the Risk Assessment family (controls for assessing risk to organizational operations and assets) and IA designates the Identification and Authentication family (controls for verifying user and device identities). Each control family groups related security and privacy requirements under a standardized abbreviation. Unlike AC, which stands for Access Control rather than Audit Control as some answer choices suggest, the NIST naming conventions use specific, well-defined abbreviations that must be correctly interpreted.'
WHERE id = 3598;

-- ID 3599: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per COSO Internal Control — Integrated Framework (2013), Principle 16, the Monitoring Activities component requires both ongoing monitoring built into daily operations and separate periodic evaluations to assess whether controls continue to function effectively over time. Without monitoring, control degradation or failure goes undetected. Unlike the Control Environment component, which establishes the organizational tone and commitment to ethical values and integrity, Monitoring Activities specifically addresses the continuous assessment and validation of control performance.'
WHERE id = 3599;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 3665: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-94 (Guide to Intrusion Detection and Prevention Systems), Section 2.1, the key functional difference is response capability. An Intrusion Detection System (IDS) monitors traffic passively and generates alerts for security personnel to investigate without taking action on the traffic. An Intrusion Prevention System (IPS) operates inline and can automatically block, drop, or modify malicious packets in real time. Unlike an IDS, which only detects and reports suspicious activity for human review, an IPS provides active automated prevention.'
WHERE id = 3665;

-- ID 3666: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-57 Part 1 (Recommendation for Key Management), Section 5.3, regular key rotation limits the cryptoperiod, reducing the exposure window if a key is compromised and limiting the volume of ciphertext available for cryptanalysis against any single key. Shorter cryptoperiods contain the potential impact of key compromise to a bounded timeframe. Unlike extending key usage periods, which increases the amount of data at risk and provides more ciphertext material for cryptanalytic attacks, regular rotation bounds the blast radius of any single key compromise.'
WHERE id = 3666;

-- ID 3667: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-57 Part 1, Table 2, ECC achieves equivalent security to RSA with significantly smaller key sizes — a 256-bit ECC key provides comparable security to a 3,072-bit RSA key. This results in faster cryptographic operations, smaller certificates, and reduced bandwidth requirements, which is particularly beneficial for constrained environments. Unlike RSA, which requires increasingly large key sizes to maintain equivalent security as computational power advances, ECC''s elliptic curve mathematics deliver strong security with compact keys.'
WHERE id = 3667;

-- ID 3668: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5, AC-6(2) (Non-Privileged Access for Nonsecurity Functions), a Privileged Access Workstation (PAW) is a dedicated, hardened workstation used exclusively for administrative tasks, isolating privileged operations from general computing activities like email and web browsing. This separation reduces the attack surface for credential theft through malware or phishing. Unlike general-purpose workstations where administrative and daily tasks share the same environment, PAWs prevent compromise of one activity from reaching administrative credentials used for the other.'
WHERE id = 3668;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 3766: SOC Engagements
UPDATE questions SET
  explanation = 'Per SSAE No. 18 (AT-C Section 320.14), when the carve-out method is used for a subservice organization, the system description must identify the subservice organization, describe the nature of services provided, and disclose the types of controls expected to be in place. The service auditor does not test the subservice organization''s controls under this method. Unlike the inclusive method, where the service auditor directly tests the subservice organization''s controls within the engagement scope, the carve-out method excludes those controls from the examination.'
WHERE id = 3766;

-- ID 3768: SOC Engagements
UPDATE questions SET
  explanation = 'Per SSAE No. 18 (AT-C Section 320.35), when a control described in the system description has never been implemented, this constitutes a design deficiency affecting both the fairness of the system description and the suitability of the control design. The auditor must report this finding and evaluate its impact on the overall opinion. Unlike an operating effectiveness deficiency, where a control exists but occasionally fails to function as designed, a never-implemented control means the system description fundamentally misrepresents the actual control environment.'
WHERE id = 3768;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 5462: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Per SSAE No. 18 (AT-C Section 320.12), under the inclusive method, the subservice organization''s relevant controls are included within the scope of the service organization''s SOC report and tested by the service auditor. This eliminates the need for a separate SOC report from the subservice organization but requires auditor access to the subservice organization''s control environment. Unlike the carve-out method, where the subservice organization''s controls are excluded from the examination scope and may be addressed through a separate SOC report, the inclusive method consolidates all controls into one engagement.'
WHERE id = 5462;

-- ============================================================
-- SOC REPORTING (2 questions)
-- ============================================================

-- ID 3901: SOC Reporting
UPDATE questions SET
  explanation = 'Per SSAE No. 18 (AT-C Section 320.09), management of the service organization is responsible for establishing the control objectives in a SOC 1 report. These objectives describe what the controls are intended to achieve in relation to user entities'' internal control over financial reporting. Unlike the service auditor, who evaluates whether controls are suitably designed and operating effectively against those management-defined objectives, it is management''s responsibility to define the control objectives that frame the entire engagement scope.'
WHERE id = 3901;

-- ID 3902: SOC Reporting
UPDATE questions SET
  explanation = 'Per the AICPA Guide: SOC 2 Reporting on an Examination of Controls, Section 4.28, a SOC report reflects the system and controls during a specific examination period, and its relevance diminishes as time passes after the period ends. Prospective user entities should evaluate report age and inquire about any subsequent changes to controls or systems. Unlike the assumption that SOC reports remain valid indefinitely, their utility decreases over time because changes to controls, personnel, or systems may have occurred since the report period ended.'
WHERE id = 3902;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (2 questions)
-- ============================================================

-- ID 3795: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Per the AICPA Trust Services Criteria (2017), PI1.1 through PI1.5, supplemental criteria for processing integrity address whether the system processes data completely, accurately, timely, and in an authorized manner. This includes input validation, processing controls, output reconciliation, and error handling to ensure data integrity throughout the processing lifecycle. Unlike the availability category, which focuses on whether the system is operational and accessible for use, processing integrity specifically examines the accuracy and completeness of data transformations and outputs.'
WHERE id = 3795;

-- ID 3796: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Per the AICPA Trust Services Criteria (2017), CC9.1 and CC9.2, the Risk Mitigation common criterion addresses how the entity identifies, selects, and develops activities to mitigate risks, including insurance, vendor management programs, and business continuity planning. CC9 also encompasses managing risks arising from business relationships with vendors and partners. Unlike CC3 (Risk Assessment), which focuses on identifying and analyzing potential risks to the organization, CC9 specifically addresses the selection and implementation of activities to reduce identified risks to acceptable levels.'
WHERE id = 3796;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 3878: SOC Testing Controls
UPDATE questions SET
  explanation = 'Per SSAE No. 18 (AT-C Section 320.33), when a control is redesigned during the examination period, the auditor must test and report on both the predecessor and successor controls covering the full period. The predecessor control is evaluated for its period of operation, and the successor is tested from its implementation date forward. Unlike testing only the successor control, which would leave a coverage gap for the period the predecessor was in effect, dual testing ensures the entire examination period is properly addressed in the report.'
WHERE id = 3878;

-- ID 3879: SOC Testing Controls
UPDATE questions SET
  explanation = 'Per the AICPA Guide: SOC 2 Reporting on an Examination of Controls (Appendix B), professional guidance recommends a minimum sample of 25 items for daily controls over a 12-month Type II examination period, adjusted based on risk assessment and expected deviation rate. Testing 25 items with zero deviations provides high statistical confidence of a low population deviation rate. Unlike sampling only 5 items, which provides an insufficient statistical basis to draw reliable conclusions about 365 daily control occurrences, a sample of 25 appropriately balances assurance with efficiency.'
WHERE id = 3879;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 3555: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-128 (Guide for Security-Focused Configuration Management), Section 3.2, a rollback plan defines predefined steps to reverse a change and restore the system to its pre-change state if unexpected issues arise during or after implementation. It serves as a critical safety net ensuring quick recovery when changes introduce defects or instability. Unlike compliance documentation, which records change history for audit and regulatory purposes, a rollback plan is an operational recovery mechanism specifically designed to undo failed changes and minimize system downtime.'
WHERE id = 3555;

-- ID 3556: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-34 Rev. 1 (Contingency Planning Guide), Section 3.4, Maximum Tolerable Downtime (MTD) represents the absolute maximum time a business process can be unavailable before causing unacceptable damage. The Recovery Time Objective (RTO) must be set below the MTD to provide a safety margin ensuring recovery completes before the tolerance threshold is breached. Unlike setting RTO equal to MTD, which eliminates the safety buffer and risks exceeding tolerance if recovery encounters unexpected delays, maintaining RTO below MTD provides essential margin.'
WHERE id = 3556;

-- ID 3557: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI07 (Manage IT Change Acceptance and Transitioning), release management groups related changes into a coordinated deployment package, reducing production disruptions by consolidating multiple changes into a single maintenance window. This enables integration testing of changes that may interact and provides a unified rollback point. Unlike treating release management as a replacement for the change management process, which would bypass required approval workflows, release management operates within the change management framework to coordinate deployments effectively.'
WHERE id = 3557;

-- ID 3558: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-40 Rev. 4 (Guide to Enterprise Patch Management Planning), delayed application of critical security patches creates an expanding window of vulnerability exposure as attackers actively scan for unpatched systems. When patches are released, vulnerability details often become public through CVE disclosures, enabling targeted exploitation. Unlike the assumption that servers automatically shut down when patches are missed, the actual risk is exploitation of known, publicly documented vulnerabilities during the gap between patch availability and organizational application.'
WHERE id = 3558;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (4 questions)
-- ============================================================

-- ID 3631: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-177 Rev. 1 (Trustworthy Email) and NIST SP 800-61 Rev. 2 (Incident Handling Guide), whaling is a specialized spear-phishing attack that specifically targets senior executives using highly personalized content based on research about the target''s role and organizational activities. The use of board meeting details to target the CFO exemplifies this technique. Unlike general smishing attacks, which deliver mass SMS messages to broad audiences without personalization, whaling employs carefully crafted, individualized approaches aimed at high-value organizational leaders.'
WHERE id = 3631;

-- ID 3632: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide), smishing (SMS phishing) uses text messages to deceive recipients into revealing credentials or clicking malicious links by impersonating trusted entities such as the IT department. The mass text message campaign with a fake login page is a classic smishing vector exploiting the SMS channel. Unlike vishing, which uses voice calls to manipulate targets through direct verbal conversation and social pressure, smishing exploits the text message medium where recipients tend to act quickly on short, urgent-appearing messages.'
WHERE id = 3632;

-- ID 3633: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 and NIST SP 800-94 (Guide to IDPS), a SYN flood is a protocol-layer DDoS attack that exploits the TCP three-way handshake by sending a flood of SYN requests without completing the connection sequence. This exhausts the target server''s connection state table with half-open connections, rendering it unable to accept legitimate traffic. Unlike volumetric DDoS attacks, which overwhelm network bandwidth capacity through sheer traffic volume, protocol attacks exploit weaknesses in network protocol implementations to consume server state resources.'
WHERE id = 3633;

-- ID 3634: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-161 Rev. 1 (Cybersecurity Supply Chain Risk Management Practices), a supply chain attack compromises a trusted component in the software development or distribution pipeline to deliver malicious code to downstream consumers. Injecting a backdoor into the build server exploits the trust that customers place in vendor-distributed updates to achieve broad compromise. Unlike direct network intrusions, which target specific organizations individually and require separate attack campaigns, supply chain attacks leverage trusted distribution channels to compromise all customers who install the tainted update.'
WHERE id = 3634;

COMMIT;
