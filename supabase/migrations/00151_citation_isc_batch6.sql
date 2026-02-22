-- Migration: Citation backfill — ISC batch 6 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 3503: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'A foreign key constraint enforces referential integrity by requiring every value in the child column to match an existing value in the parent table, per COBIT 2019 DSS06.02 (Control of Information Processing). Because supplier_id 5050 does not exist in the suppliers table, the foreign key rejects the insert and prevents orphaned records. While a check constraint validates values against specific conditions such as numeric ranges, it cannot verify that a referenced row exists in another table.'
WHERE id = 3503;

-- ID 3504: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'A NoSQL document database stores data as flexible JSON-like documents where each document can have a different structure, per COBIT 2019 APO03.02 (Define Reference Architecture). This schema flexibility accommodates varying sensor field types—temperature, coordinates, and percentages—without requiring a rigid predefined schema. However, relational databases provide stronger ACID transaction enforcement, whereas most NoSQL document stores trade strict ACID compliance for scalability and schema flexibility.'
WHERE id = 3504;

-- ID 3505: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Data archival involves moving inactive data that must be retained for legal or regulatory reasons to cost-effective long-term storage, per COBIT 2019 DSS06.06 (Secure Information Assets) and NIST SP 800-88 Rev. 1 (Guidelines for Media Sanitization). Archived data is typically read-only and infrequently accessed, matching the firm''s 10-year retention requirement. Unlike data destruction, which permanently eliminates data after the retention period expires, archival preserves records while reducing active storage costs.'
WHERE id = 3505;

-- ID 3506: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Retaining data beyond its required retention period increases breach exposure, expands legal discovery obligations, and may violate data minimization requirements, per NIST SP 800-53 Rev. 5 SI-12 (Information Management and Retention) and GDPR Article 5(1)(e). The accumulated data provides no compliance benefit once the regulatory period is satisfied. Although storage cost is a valid concern, the greater risks are the expanded breach surface and legal liability from maintaining data with no business or regulatory justification.'
WHERE id = 3506;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5436: Data Protection Technologies
UPDATE questions SET
  explanation = 'AES-256 is the most widely adopted symmetric encryption standard for protecting data at rest, as recommended by NIST SP 800-175B (Guideline for Using Cryptographic Standards) and NIST SP 800-111 (Guide to Storage Encryption). Its 256-bit key length provides strong confidentiality with efficient performance for bulk data encryption. Unlike RSA-2048, which is an asymmetric algorithm typically used for key exchange rather than bulk encryption, AES-256 is optimized for high-throughput data-at-rest protection.'
WHERE id = 5436;

-- ID 5437: Data Protection Technologies
UPDATE questions SET
  explanation = 'A "block and notify" DLP policy prevents the data transfer, displays a notification to the user explaining why the action was blocked, and logs the event for security review, per NIST SP 800-53 Rev. 5 AC-4 (Information Flow Enforcement). DLP agents enforce data flow policies at the endpoint to prevent unauthorized exfiltration of sensitive data. Unlike a quarantine action that isolates the file on the target device, block and notify stops the transfer at the source and alerts both the user and the security team.'
WHERE id = 5437;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 3475: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Comparing the aging report total to the general ledger balance is an output reconciliation control that verifies the accuracy and completeness of processed information, per COBIT 2019 DSS06.02 (Control of Information Processing). Output controls ensure that results are accurate, complete, and distributed only to authorized recipients. While input validation is an input control that checks data at the point of entry, it does not verify the accuracy of processed output reports.'
WHERE id = 3475;

-- ID 3476: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'XML uses self-describing tags that label each data element, making the structure both human-readable and machine-parseable, per COBIT 2019 BAI03.03 (Develop Solution Components). New fields can be added without breaking existing integrations that ignore unknown tags, providing superior extensibility. In contrast, fixed-format flat files rely on positional fields that are brittle to structural changes—adding or removing a field requires updating every system that reads the file.'
WHERE id = 3476;

-- ID 3477: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Independently comparing the payroll register to the HR active employee master file detects names on payroll that do not correspond to real, active employees, per COBIT 2019 DSS06.03 (Manage Roles, Responsibilities, Access Privileges and Levels of Authority). Ghost employee fraud involves paying fictitious employees, and this cross-referencing control is the most direct detection method. Unlike encryption or direct deposit, which protect data confidentiality and payment delivery, neither addresses whether the payee is a legitimate employee.'
WHERE id = 3477;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (2 questions)
-- ============================================================

-- ID 3690: Incident Response and Recovery
UPDATE questions SET
  explanation = 'A forensic image is a bit-for-bit copy of the entire storage device, capturing all data including deleted files, slack space, and unallocated space, per NIST SP 800-86 Section 4.2 (Guide to Integrating Forensic Techniques into Incident Response). The original drive is write-protected during imaging, and cryptographic hash values verify the image is an exact copy. Unlike a standard backup that copies only active files, a forensic image preserves all data sectors to ensure no potential evidence is missed.'
WHERE id = 3690;

-- ID 3691: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Chain of custody documentation tracks the complete lifecycle of evidence—who collected it, when, how it was stored, and each transfer—to demonstrate that evidence has not been tampered with, per NIST SP 800-86 Section 3.3 (Collection). This unbroken chain is essential for evidence admissibility in legal proceedings. Although identifying the attacker is a key investigative goal, chain of custody documents evidence handling procedures rather than attribution of the attack itself.'
WHERE id = 3691;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 3838: IT Audit Frameworks
UPDATE questions SET
  explanation = '"Start where you are" is one of ITIL 4''s seven guiding principles, directing organizations to assess the current state before making changes so they can reuse and build upon existing processes rather than starting from scratch (ITIL 4 Foundation, Section 4.3). This avoids waste and leverages prior investments in processes and tools. In contrast, "keep it simple and practical" is a separate guiding principle focused on eliminating unnecessary complexity, not on evaluating the current state before transformation.'
WHERE id = 3838;

-- ID 3839: IT Audit Frameworks
UPDATE questions SET
  explanation = 'The IT risk management process begins with risk identification—cataloging potential threats, vulnerabilities, and scenarios that could affect IT systems and data, per NIST SP 800-39 Section 3.1 (Managing Information Security Risk). Identification must precede analysis, evaluation, and treatment because controls cannot be selected without first understanding what risks exist. Unlike risk treatment, which involves implementing controls to mitigate identified risks, identification is the foundational first step in the risk management lifecycle.'
WHERE id = 3839;

-- ID 3840: IT Audit Frameworks
UPDATE questions SET
  explanation = 'IT risk analysis produces a risk assessment that combines the likelihood of each identified risk event with its potential impact to assign a risk rating, per NIST SP 800-30 Rev. 1 (Guide for Conducting Risk Assessments). These ratings are documented in a risk register that prioritizes risks for resource allocation and treatment decisions. Unlike a financial budget, which is an operational planning document addressing resource allocation, a risk assessment is the direct analytical output of combining likelihood and impact.'
WHERE id = 3840;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 3811: IT General Controls
UPDATE questions SET
  explanation = 'Proper program change controls require testing in a separate environment and formal approval before deployment to production, per COBIT 2019 BAI06.01 (Evaluate, Prioritize, and Authorize Change Requests). This lifecycle—development, testing, approval, documentation, and controlled migration—ensures changes are validated before impacting production systems. Unlike deploying directly to production without independent testing, a structured change control process maintains system integrity and enforces proper segregation of duties.'
WHERE id = 3811;

-- ID 3812: IT General Controls
UPDATE questions SET
  explanation = 'Segregation of duties ensures no single individual controls all phases of a critical process, per COBIT 2019 DSS06.03 (Manage Roles, Responsibilities, Access Privileges and Levels of Authority). Separating the development, approval, and deployment roles reduces the risk of unauthorized or untested changes reaching the production environment. Unlike least privilege, which restricts individual access to the minimum necessary for their role, segregation of duties specifically prevents one person from performing conflicting functions within the same process.'
WHERE id = 3812;

-- ID 3813: IT General Controls
UPDATE questions SET
  explanation = 'Version control systems maintain a complete history of all code changes, including who made each change and when, providing an audit trail per COBIT 2019 BAI06.01 (Evaluate, Prioritize, and Authorize Change Requests). This enables rollback to previous versions if issues are discovered and supports compliance verification. Unlike manual change logs that can be incomplete or inconsistent, version control automatically records every modification with timestamps and authorship for reliable change tracking.'
WHERE id = 3813;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (4 questions)
-- ============================================================

-- ID 3435: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'A hybrid cloud model combines private and public cloud infrastructure, allowing compliance-sensitive workloads to run on dedicated private hardware while leveraging public cloud scalability for other services, per NIST SP 800-145 (The NIST Definition of Cloud Computing). This satisfies both the regulatory requirement for dedicated hardware and the need for public cloud flexibility. Unlike multi-cloud, which uses multiple public cloud providers without necessarily including private infrastructure, hybrid cloud specifically addresses the private-public split.'
WHERE id = 3435;

-- ID 3436: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'A Type 1 (bare-metal) hypervisor runs directly on physical hardware without a host operating system, providing better performance and security for enterprise virtualization, per NIST SP 800-125 Section 2.1 (Guide to Security for Full Virtualization Technologies). A Type 2 (hosted) hypervisor runs as an application on top of a conventional OS. Unlike Type 2 hypervisors that depend on the host OS for hardware access, Type 1 hypervisors interact directly with hardware, eliminating the overhead and attack surface of an underlying operating system.'
WHERE id = 3436;

-- ID 3437: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Stale VM snapshots containing sensitive financial data represent a data governance and retention risk, per NIST SP 800-125 Section 4.3 (Guide to Security for Full Virtualization Technologies). Unmanaged snapshots preserve point-in-time copies that may include pre-correction data and could violate retention and disposal policies. Although performance degradation from accumulated snapshots is a valid operational concern, the primary audit issue is uncontrolled retention of sensitive data outside the organization''s data lifecycle management policies.'
WHERE id = 3437;

-- ID 3438: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Containers share the host operating system kernel, making them significantly lighter than virtual machines with faster startup times and higher deployment density, per NIST SP 800-190 Section 2.1 (Application Container Security Guide). This allows rapid provisioning in seconds rather than minutes and more efficient resource utilization. Unlike VMs, which provide stronger isolation through separate kernels for each instance, containers trade some isolation for efficiency by sharing the host OS kernel across all containers.'
WHERE id = 3438;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (4 questions)
-- ============================================================

-- ID 3715: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'The right to data portability under GDPR Article 20 allows data subjects to receive their personal data in a structured, commonly used, and machine-readable format and to have it transmitted directly to another controller where technically feasible. This right applies when processing is based on consent or contract and carried out by automated means. Unlike the right of access under Article 15, which only grants the right to obtain a copy of personal data, data portability specifically requires transmission capability between controllers.'
WHERE id = 3715;

-- ID 3716: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'The right to rectification under GDPR Article 16 allows data subjects to obtain correction of inaccurate personal data without undue delay. The controller must also complete incomplete personal data if requested by the data subject. Unlike the right to erasure under Article 17, which requires deletion of personal data entirely, rectification preserves the data relationship while correcting specific inaccuracies in the data subject''s records.'
WHERE id = 3716;

-- ID 3717: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'GDPR Article 37 requires appointment of a Data Protection Officer when processing is carried out by a public authority, when core activities involve regular and systematic monitoring of data subjects on a large scale, or when core activities involve large-scale processing of special categories of data. The requirement is triggered by the nature and scale of processing activities. Unlike company size thresholds used by some national laws, GDPR''s DPO requirement is based on the type and scale of data processing, not organizational headcount.'
WHERE id = 3717;

-- ID 3718: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'The CCPA, as amended by the CPRA (California Civil Code Section 1798.120), grants consumers the right to opt out of the sale or sharing of their personal information. Businesses must provide a clear "Do Not Sell or Share My Personal Information" link on their website. Unlike the GDPR right to erasure, which requires deletion of data upon request, the CCPA opt-out right specifically addresses the ongoing sale and sharing of personal information rather than its complete removal from business systems.'
WHERE id = 3718;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3581: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under ISO 27001 Section 10.1 and the Plan-Do-Check-Act (PDCA) cycle, the Check phase involves monitoring, measuring, analyzing, and evaluating the ISMS through internal audits and management reviews. These activities determine whether the system is operating as intended and identify areas for improvement. Unlike the Act phase, which takes corrective action based on findings from the Check phase, the Check phase performs the evaluation itself before any remediation begins.'
WHERE id = 3581;

-- ID 3582: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019, governance objectives in the EDM (Evaluate, Direct, and Monitor) domain are performed by the board and address direction-setting, oversight, and monitoring. Management objectives across APO, BAI, DSS, and MEA domains are executed by management for planning, building, and delivering IT services. Unlike design factors, which tailor the governance system to specific organizational characteristics, the governance-management distinction defines structural accountability at different organizational levels.'
WHERE id = 3582;

-- ID 3583: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019, 11 design factors tailor the governance system to the enterprise''s specific context, including enterprise strategy, IT role, risk profile, and compliance requirements. Enterprise strategy—such as growth, innovation, or cost leadership—influences which governance and management objectives are prioritized. Unlike maturity levels, which measure process capability on a CMMI-derived scale, design factors are contextual inputs that shape the initial governance system configuration rather than assess its performance.'
WHERE id = 3583;

-- ID 3584: Security and Control Frameworks
UPDATE questions SET
  explanation = 'CIS Implementation Group 1 (IG1) represents essential cyber hygiene and is the minimum standard recommended for all enterprises, aligned with NIST Cybersecurity Framework categories and the CIS Controls v8 framework. IG1 contains the most fundamental safeguards against common cyberattacks and is appropriate for organizations with limited IT resources and cybersecurity expertise. Unlike IG2, which adds controls for enterprises with dedicated IT staff managing infrastructure and handling sensitive data, IG1 is specifically designed as the starting baseline for all organizations.'
WHERE id = 3584;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 3651: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Transport Layer Security (TLS) encrypts data in transit between endpoints, protecting against eavesdropping and tampering through authenticated encryption, per NIST SP 800-52 Rev. 2 (Guidelines for the Selection, Configuration, and Use of TLS Implementations). TLS 1.3 provides forward secrecy and removes legacy cipher suites for enhanced protection. Unlike full-disk encryption, which protects data at rest on storage media, TLS specifically secures data while it traverses the network between client and server.'
WHERE id = 3651;

-- ID 3652: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Digital signatures provide authentication, integrity, and non-repudiation, per NIST SP 800-89 (Recommendation for Obtaining Assurances for Digital Signature Applications). Authentication verifies the signer''s identity via their private key, integrity detects post-signature alteration through hash comparison, and non-repudiation prevents the signer from denying the signature. Unlike the AAA framework components—authorization, authentication, and accounting—digital signatures specifically provide identity verification, tamper detection, and undeniability as their three core properties.'
WHERE id = 3652;

-- ID 3653: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'The Certificate Authority (CA) is the trusted PKI entity that verifies identities, issues digitally signed certificates, and manages the certificate lifecycle including renewal and revocation, per NIST SP 800-57 Part 1 Rev. 5 (Recommendation for Key Management). The CA binds public keys to verified identities through digital certificates. Unlike a Registration Authority (RA), which performs preliminary identity verification and forwards approved requests to the CA, the RA does not itself issue or digitally sign certificates.'
WHERE id = 3653;

-- ID 3654: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'The three authentication factor categories are something you know, something you have, and something you are, per NIST SP 800-63B Section 4 (Digital Identity Guidelines—Authentication and Lifecycle Management). True multi-factor authentication requires factors from at least two distinct categories to provide layered security. Unlike using three credentials from the same category—such as username, password, and security question, which are all something you know—genuine MFA combines factors across different categories.'
WHERE id = 3654;

-- ============================================================
-- SOC ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 3755: SOC Engagements
UPDATE questions SET
  explanation = 'When a service organization uses a subservice organization, SSAE 18 (AT-C Section 320.14) provides two approaches: the inclusive method, where the subservice organization''s controls are included in scope and tested, or the carve-out method, where they are excluded but identified in the system description. The choice depends on engagement circumstances and practical considerations. Unlike having the subservice organization issue its own separate report, these two methods address how the primary SOC report handles subservice organization controls.'
WHERE id = 3755;

-- ID 3756: SOC Engagements
UPDATE questions SET
  explanation = 'The service auditor''s responsibility under SSAE 18 (AT-C Section 320.35) is to express an opinion on whether the system description is fairly presented, controls are suitably designed, and—for Type II engagements—controls operated effectively during the specified period. The auditor obtains evidence through testing and evaluation procedures. Unlike management, which is responsible for designing controls, preparing the system description, and asserting their effectiveness, the auditor provides independent assurance rather than guaranteeing outcomes.'
WHERE id = 3756;

-- ID 3757: SOC Engagements
UPDATE questions SET
  explanation = 'A SOC 2 Type II engagement evaluates controls related to the AICPA Trust Services Criteria (security, availability, processing integrity, confidentiality, and privacy) and tests their operating effectiveness over a period, per SSAE 18 (AT-C Section 320). For a cloud provider demonstrating security and availability to customers, SOC 2 Type II is the most appropriate engagement. Unlike SOC 1, which focuses on controls relevant to user entities'' internal control over financial reporting, SOC 2 specifically addresses operational trust services criteria.'
WHERE id = 3757;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 5455: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Under the carve-out method per SSAE 18 (AT-C Section 320.14), the subservice organization''s controls are excluded from the service organization''s SOC report scope. The report identifies the nature of services provided by the subservice organization but does not include testing of its controls. Unlike the inclusive method, which brings the subservice organization''s controls within scope for direct testing by the service auditor, the carve-out method requires user entities to obtain separate assurance over those excluded controls.'
WHERE id = 5455;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 3784: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'The system description in a SOC 2 report must include principal service commitments, system requirements, and the five system components—infrastructure, software, people, procedures, and data—per AICPA TSP Section 100 and AT-C Section 205. This provides context for understanding the controls being evaluated and the system boundaries. Unlike the auditor''s opinion section, which presents the assessment conclusion, the system description establishes the boundaries and components of the system under examination.'
WHERE id = 3784;

-- ID 3785: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Complementary user entity controls (CUECs) are controls that the service organization assumes are in place at user entities, as described in SSAE 18 (AT-C Section 320.A33). These controls complement the service organization''s controls and are necessary for overall criteria achievement—for example, user entities managing their own access provisioning within the service. Unlike complementary subservice organization controls (CSOCs), which apply to subservice organizations under the carve-out method, CUECs are responsibilities that fall on the user entities.'
WHERE id = 3785;

-- ID 3786: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Complementary subservice organization controls (CSOCs) are identified when the carve-out method is used, per SSAE 18 (AT-C Section 320.14). Since the subservice organization''s controls are excluded from scope under carve-out, the system description identifies controls the subservice organization is expected to maintain. Unlike the inclusive method, where the subservice organization''s controls are directly tested within the engagement scope, the carve-out method relies on CSOCs to document expected but untested controls.'
WHERE id = 3786;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 3870: SOC Testing Controls
UPDATE questions SET
  explanation = 'Observation provides evidence that a control is operating at the specific point in time when the auditor witnesses it, per SSAE 18 (AT-C Section 320.39) and AICPA testing guidance. However, a single observation does not demonstrate that the control operated consistently throughout the full examination period. Unlike inspection of documentary evidence, which can cover multiple dates and demonstrate consistent operation over time, observation is limited to the moment it is performed and must be supplemented with other procedures.'
WHERE id = 3870;

-- ID 3871: SOC Testing Controls
UPDATE questions SET
  explanation = 'The most effective approach combines inquiry with inspection of documentary evidence demonstrating the control was performed throughout the period, per SSAE 18 (AT-C Section 320.39). Inquiry explains how the daily review is performed, while inspection of dated initials, review notes, and follow-up documentation for a sample of days confirms consistent execution. Unlike inquiry alone, which provides only verbal assertions without corroboration, combining inquiry with inspection provides both understanding and documented proof of operating effectiveness.'
WHERE id = 3871;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 3537: System Availability and Change Management
UPDATE questions SET
  explanation = 'A hot site is a fully equipped, operational facility with current data maintained through real-time replication, enabling near-immediate failover, per NIST SP 800-34 Rev. 1 Section 5.1.3 (Contingency Planning Guide for Federal Information Systems). Hot sites provide the fastest recovery time and can meet aggressive RTOs such as 15 minutes. Unlike warm sites, which require data restoration and configuration after activation and typically take hours rather than minutes, hot sites maintain continuous data synchronization for rapid failover.'
WHERE id = 3537;

-- ID 3538: System Availability and Change Management
UPDATE questions SET
  explanation = 'Synchronous replication is the only strategy that achieves an RPO of zero because every write transaction must be committed at both the primary and secondary sites before the application acknowledges the write, per NIST SP 800-34 Rev. 1 Section 5.2.1. This ensures no data exists exclusively at the primary site at any point. Unlike asynchronous replication, which has an inherent lag where transactions processed during the replication window could be lost during a primary site failure, synchronous replication guarantees zero data loss.'
WHERE id = 3538;

-- ID 3539: System Availability and Change Management
UPDATE questions SET
  explanation = 'A tabletop exercise is a discussion-based test where participants verbally walk through their roles and decision-making during hypothetical disaster scenarios, per NIST SP 800-34 Rev. 1 Section 3.5.1. It identifies gaps in plans, unclear responsibilities, and communication breakdowns without disrupting production systems. Unlike a full interruption test, which involves actually shutting down production systems and failing over to the backup site, a tabletop exercise uses facilitated discussion to evaluate plan adequacy without operational risk.'
WHERE id = 3539;

-- ID 3540: System Availability and Change Management
UPDATE questions SET
  explanation = 'Server clustering groups multiple servers to function as a single system, providing automatic failover when one node fails, per NIST SP 800-34 Rev. 1 Section 5.1.1 and COBIT 2019 DSS01.05 (Manage Facilities). The surviving nodes absorb the failed node''s workload, minimizing or eliminating downtime through hardware redundancy. Unlike network load balancing, which distributes traffic across servers primarily for performance optimization, clustering specifically addresses server-level availability through redundant node failover.'
WHERE id = 3540;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (4 questions)
-- ============================================================

-- ID 3617: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Tailgating (piggybacking) occurs when an unauthorized person follows an authorized individual through a secured entrance without presenting their own credentials, per NIST SP 800-53 Rev. 5 PE-3 (Physical Access Control). This attack exploits social norms such as holding doors open and completely bypasses physical access controls. Unlike shoulder surfing, which involves visually observing someone entering credentials or viewing sensitive information on a screen, tailgating is a physical access exploit rather than an information-gathering technique.'
WHERE id = 3617;

-- ID 3618: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Stored (persistent) cross-site scripting occurs when malicious script is permanently saved on the target server and executes in every user''s browser who views the affected page, per OWASP Top 10 A03:2021 (Injection) and NIST SP 800-53 Rev. 5 SI-10 (Information Input Validation). The application''s failure to sanitize input allows script injection into the database. Unlike reflected XSS, which requires the victim to click a specially crafted link containing the malicious payload, stored XSS triggers automatically when any user views the compromised page.'
WHERE id = 3618;

-- ID 3619: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Cross-site request forgery (CSRF) exploits the trust a web application places in an authenticated user''s browser, per OWASP Top 10 and NIST SP 800-53 Rev. 5 SI-10 (Information Input Validation). The attacker crafts a malicious request that the victim''s browser sends automatically with valid session cookies, causing the application to process it as a legitimate action. Unlike XSS, which targets the user by executing malicious scripts in their browser, CSRF exploits the server''s trust in the user''s authenticated session to perform unauthorized actions.'
WHERE id = 3619;

-- ID 3620: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'SQL injection occurs because the application concatenates user input directly into SQL queries without parameterization, per OWASP Top 10 A03:2021 (Injection) and NIST SP 800-53 Rev. 5 SI-10 (Information Input Validation). The root cause is the failure to use parameterized queries (prepared statements) that separate SQL logic from user-supplied data. Unlike input validation alone, which can be bypassed through encoding tricks, parameterized queries fundamentally prevent the database engine from interpreting user input as executable SQL commands.'
WHERE id = 3620;

COMMIT;
