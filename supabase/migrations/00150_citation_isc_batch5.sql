-- Migration: Citation backfill — ISC batch 5 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 5415: Change Management
UPDATE questions SET
  explanation = 'A big bang deployment implements a change across the entire organization simultaneously, as described in ITIL 4 Change Enablement practices. This approach carries higher risk because all users are affected at once but avoids the complexity of maintaining parallel systems during transition. Unlike a canary deployment, which releases changes to a small subset of users first for validation before wider rollout, a big bang strategy provides no incremental feedback loop before full exposure.'
WHERE id = 5415;

-- ID 5416: Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Change Enablement guidance, a tested rollback plan is the most critical pre-deployment control because it ensures a verified recovery path if a production change causes unexpected failures. Without rollback capability, a failed deployment could cause extended outages with no remediation option. While project charters and satisfaction surveys serve administrative purposes, they do not directly mitigate the operational risk of a failed production deployment.'
WHERE id = 5416;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (3 questions)
-- ============================================================

-- ID 787: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Tiered storage, as outlined in NIST SP 800-209 (Security Guidelines for Storage Infrastructure), classifies data by access frequency and moves older, less-accessed records to lower-cost storage tiers while maintaining retrieval capability for compliance purposes. This strategy balances the 10-year regulatory retention requirement with cost efficiency by reserving high-performance storage for active data. Unlike data purging, which permanently deletes records and would violate retention requirements, tiered storage preserves all data across cost-appropriate media.'
WHERE id = 787;

-- ID 3501: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'A relational database management system (RDBMS) organizes data into structured tables linked through primary and foreign key relationships and uses SQL for data manipulation, as defined in the ANSI/ISO SQL standard (ISO/IEC 9075). This architecture enforces referential integrity and supports complex queries across related tables. Unlike flat-file systems, which store data in unstructured text without defined relationships or SQL query capability, an RDBMS provides the structured organization the CTO requires.'
WHERE id = 3501;

-- ID 3502: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Database normalization decomposes tables to eliminate redundancy and prevent update, insertion, and deletion anomalies, as formalized by Codd''s relational model and codified in ANSI/ISO database standards. Storing each data element in one authoritative location ensures consistency across the system. Unlike maintaining redundant copies in multiple tables, which caused update anomalies when addresses changed, normalization stores each address once so a single update propagates consistently.'
WHERE id = 3502;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5434: Data Protection Technologies
UPDATE questions SET
  explanation = 'Under GDPR Article 4(5), pseudonymization replaces direct identifiers with artificial pseudonyms while retaining a separately stored mapping key that permits re-identification when needed. Anonymization, by contrast, irreversibly transforms data so re-identification is not reasonably possible. This distinction carries significant regulatory weight: whereas pseudonymized data remains personal data subject to full GDPR obligations, truly anonymized data falls outside GDPR scope entirely (Recital 26).'
WHERE id = 5434;

-- ID 5435: Data Protection Technologies
UPDATE questions SET
  explanation = 'Crypto-shredding (cryptographic erasure) destroys encryption keys to render encrypted data permanently irrecoverable, as recommended by NIST SP 800-88 Rev. 1 (Guidelines for Media Sanitization) for environments where physical media access is limited. This method is particularly effective in cloud environments where tenants cannot physically access storage hardware. Unlike overwriting, which may not reach all data copies across distributed cloud storage, crypto-shredding ensures complete data destruction by eliminating the decryption capability itself.'
WHERE id = 5435;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 3472: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Master data management (MDM) maintains a single authoritative source for critical reference data such as customers, vendors, and chart of accounts, consistent with COBIT 2019 DSS06 (Manage Business Process Controls). MDM ensures data consistency and accuracy across all integrated ERP modules and downstream systems. Without MDM, duplicate or conflicting master records cause reconciliation errors, whereas a centralized MDM approach enforces data integrity at the source.'
WHERE id = 3472;

-- ID 3473: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'A system rule requiring balanced debits and credits before posting is a processing control, as classified under COBIT 2019 DSS06 (Manage Business Process Controls). Processing controls validate data accuracy and completeness during computation and updating to prevent erroneous transactions from entering the ledger. Unlike check digit verification, which is an input control that validates data entry accuracy at the point of capture, processing controls operate during the transaction processing phase itself.'
WHERE id = 3473;

-- ID 3474: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Role-based access controls (RBAC) enforce segregation of duties by restricting users to defined roles with non-overlapping permissions, as prescribed by NIST SP 800-53 AC-5 (Separation of Duties). Separating vendor creation, invoice entry, and payment approval into distinct roles prevents a single individual from executing an end-to-end fraudulent transaction. Unlike strong password policies, which authenticate user identity but do not restrict what authorized users can do, RBAC directly mitigates the segregation-of-duties weakness.'
WHERE id = 3474;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (3 questions)
-- ============================================================

-- ID 3682: Incident Response and Recovery
UPDATE questions SET
  explanation = 'NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide) defines four incident response phases: Preparation; Detection and Analysis; Containment, Eradication, and Recovery; and Post-Incident Activity. This lifecycle ensures organizations systematically build IR capability, identify incidents, remediate threats, and capture lessons learned. Unlike generic project management phases such as planning, execution, review, and closure, the NIST SP 800-61 phases are specifically designed for cybersecurity incident management.'
WHERE id = 3682;

-- ID 3687: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Under NIST SP 800-61 Rev. 2, the recovery portion of Phase 3 (Containment, Eradication, and Recovery) involves restoring systems to normal operation through verified backups, system rebuilds, and integrity validation before returning services to production. Recovery bridges the gap between threat removal and full operational status while monitoring for persistent compromise. Unlike containment, which focuses on isolating affected systems to prevent further damage, recovery restores verified-clean systems to their pre-incident operational state.'
WHERE id = 3687;

-- ID 3689: Incident Response and Recovery
UPDATE questions SET
  explanation = 'According to NIST SP 800-86 (Guide to Integrating Forensic Techniques into Incident Response) and RFC 3227, volatile evidence including RAM contents, running processes, and active network connections must be collected first because it is lost when the system is powered off. The order of volatility prioritizes the most ephemeral data to preserve critical forensic artifacts. Unlike hard drive data, which persists after shutdown and can be imaged later, volatile memory evidence is irrecoverable once power is removed.'
WHERE id = 3689;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 3834: IT Audit Frameworks
UPDATE questions SET
  explanation = 'COBIT 2019 identifies seven governance system components: processes, organizational structures, principles/policies/frameworks, information, culture/ethics/behavior, people/skills/competencies, and services/infrastructure/applications (COBIT 2019 Framework, Section 4). All seven must function holistically for effective IT governance. Unlike an approach limited to technology infrastructure and documented processes alone, COBIT 2019 requires organizations to also address culture, skills, and information flows as equally essential governance components.'
WHERE id = 3834;

-- ID 3835: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Design factors in COBIT 2019 enable organizations to tailor their governance system based on enterprise strategy, risk profile, compliance requirements, and technology adoption patterns (COBIT 2019 Framework, Section 5). This customization ensures the framework scales appropriately to the organization''s unique context and priorities. Unlike a prescriptive one-size-fits-all mandate of controls, design factors allow organizations to align governance implementation with their specific growth strategy and cloud-heavy environment.'
WHERE id = 3835;

-- ID 3837: IT Audit Frameworks
UPDATE questions SET
  explanation = 'ITIL 4''s central organizing concept is the Service Value System (SVS), which describes how all organizational components work together to create value through IT-enabled services (ITIL 4 Foundation, Chapter 4). The SVS integrates the service value chain, practices, guiding principles, governance, and continual improvement into a cohesive model. Unlike incident management, which is one of 34 individual ITIL practices, the SVS is the overarching framework that connects demand to value creation holistically.'
WHERE id = 3837;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 3808: IT General Controls
UPDATE questions SET
  explanation = 'Privileged Access Management (PAM) is essential for controlling high-risk administrative accounts, as required by NIST SP 800-53 AC-6 (Least Privilege) and AC-2 (Account Management). PAM solutions provide just-in-time access provisioning, session recording, credential vaulting, and comprehensive audit trails for administrative activities. Unlike shared administrator accounts, which eliminate individual accountability and violate the principle of least privilege, PAM ensures every privileged action is attributable to a specific individual.'
WHERE id = 3808;

-- ID 3809: IT General Controls
UPDATE questions SET
  explanation = 'NIST SP 800-63B (Digital Identity Guidelines, Section 5.1.1.2) recommends against mandatory periodic password expiration because it drives users toward predictable password variations that weaken security. Instead, organizations should implement compromised-credential monitoring through breach databases and threat intelligence, requiring changes only upon evidence of compromise. Unlike mandatory 90-day rotation, which creates a false sense of security while degrading password quality, evidence-based password changes maintain stronger security without increasing user burden.'
WHERE id = 3809;

-- ID 3810: IT General Controls
UPDATE questions SET
  explanation = 'Single sign-on (SSO) reduces credential fatigue by centralizing authentication to a single identity provider, consistent with NIST SP 800-63C (Federation and Assertions). By authenticating once, users avoid managing multiple passwords across applications, which decreases the likelihood of weak passwords and credential reuse. However, unlike eliminating the need for multi-factor authentication, SSO should be paired with MFA to prevent a single compromised credential from granting access to all connected applications.'
WHERE id = 3810;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (4 questions)
-- ============================================================

-- ID 3431: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'SD-WAN provides centralized, policy-driven management of wide-area network traffic across multiple connection types including broadband, LTE, and MPLS, consistent with NIST SP 800-77 Rev. 1 networking principles. It intelligently routes traffic based on application requirements and real-time link performance, optimizing cost and reliability for multi-site organizations. Unlike traditional MPLS, which requires dedicated circuits with fixed bandwidth allocations, SD-WAN dynamically selects the best available path per application.'
WHERE id = 3431;

-- ID 3432: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'In a flat network with no segmentation, any compromised device has unrestricted lateral movement capability across the entire broadcast domain, violating the defense-in-depth principle outlined in NIST SP 800-53 SC-7 (Boundary Protection). Without network boundaries, malware or an attacker on one workstation can directly reach financial servers and databases. Unlike a segmented network with VLAN isolation and access control lists, a flat design provides no internal barriers to contain a breach.'
WHERE id = 3432;

-- ID 3433: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'TCP (Transmission Control Protocol) operates at the transport layer (Layer 4) of the TCP/IP model and provides reliable, connection-oriented delivery with sequencing, error checking, and flow control, as defined in IETF RFC 793. TCP establishes a three-way handshake before data transfer and guarantees ordered delivery through sequence numbers and acknowledgments. Unlike HTTP, which operates at the application layer and relies on TCP for its underlying transport, TCP itself provides the reliable delivery mechanism.'
WHERE id = 3433;

-- ID 3434: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'An on-premises private cloud is dedicated to a single organization and hosted within the company''s own data center, providing maximum control over infrastructure and data residency, as defined in NIST SP 800-145 (The NIST Definition of Cloud Computing). This model satisfies the CFO''s requirements for dedicated infrastructure under organizational control. Unlike a public cloud, which uses shared multi-tenant infrastructure managed by a third-party provider, a private cloud ensures exclusive resource allocation and data sovereignty.'
WHERE id = 3434;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (4 questions)
-- ============================================================

-- ID 3711: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Article 4(7), a data controller is the entity that determines the purposes and means of processing personal data and bears primary responsibility for compliance, including lawful basis determination, data protection impact assessments, and breach notification. The controller makes the fundamental decisions about why and how data is processed. Unlike a data processor, which processes personal data solely on behalf of and under instructions from the controller, the controller retains ultimate accountability for data protection.'
WHERE id = 3711;

-- ID 3712: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'GDPR Article 6 enumerates six exclusive lawful bases for processing personal data: consent, contract performance, legal obligation, vital interests, public task, and legitimate interests. Valid consent under Article 7 requires a clear affirmative action that is freely given, specific, informed, and unambiguous. Unlike explicit opt-in consent, implied agreement through mere website use does not meet GDPR''s consent standard because it lacks the affirmative, unambiguous indication of the data subject''s wishes.'
WHERE id = 3712;

-- ID 3713: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'GDPR Article 33 requires data controllers to notify the relevant supervisory authority of a personal data breach without undue delay and, where feasible, within 72 hours of becoming aware of it. If notification occurs after 72 hours, the controller must provide a reasoned justification for the delay. Unlike longer notification windows found in other regulatory frameworks, the GDPR''s 72-hour requirement reflects the urgency of enabling supervisory authorities to assess risk and protect affected individuals promptly.'
WHERE id = 3713;

-- ID 3714: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Article 4(12), a personal data breach includes any security incident leading to unauthorized access, loss, alteration, or unavailability of personal data. The ransomware-caused unavailability of patient records qualifies as a reportable breach. Per Article 33, the hospital must notify the supervisory authority within 72 hours if the breach is likely to result in risk to individuals'' rights and freedoms. Unlike incidents involving only encrypted data with no availability impact, the 36-hour inaccessibility poses clear risk to patient welfare.'
WHERE id = 3714;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3577: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under the NIST Cybersecurity Framework (CSF), the Recover function (RC) covers activities to restore capabilities or services impaired during a cybersecurity incident, including recovery planning, improvements, and stakeholder communications (NIST CSF, Section 4.5). These activities ensure timely return to normal operations after containment is complete. Unlike the Respond function, which addresses containment, analysis, and mitigation during the active incident phase, the Recover function governs post-containment restoration and communication of recovery timelines.'
WHERE id = 3577;

-- ID 3578: Security and Control Frameworks
UPDATE questions SET
  explanation = 'The Contingency Planning (CP) control family in NIST SP 800-53 Rev. 5 addresses system backup procedures (CP-9), contingency plan testing (CP-4), alternate processing sites (CP-7), and system recovery strategies (CP-10). These controls ensure organizations can maintain and restore operations during disruptions. Unlike the Access Control (AC) family, which governs user authentication, authorization, and access enforcement, the CP family specifically addresses continuity, backup, and disaster recovery requirements.'
WHERE id = 3578;

-- ID 3579: Security and Control Frameworks
UPDATE questions SET
  explanation = 'FIPS 199 (Standards for Security Categorization of Federal Information and Information Systems) establishes security categories based on the potential impact — low, moderate, or high — to confidentiality, integrity, and availability if a breach occurs. This mandatory categorization drives the baseline selection of security controls from NIST SP 800-53. Unlike NIST SP 800-53 itself, which provides the control catalog for implementation, FIPS 199 provides the categorization methodology that determines which control baseline applies to a given system.'
WHERE id = 3579;

-- ID 3580: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under ISO/IEC 27001:2022, Clause 6.1.3(d), the Statement of Applicability (SoA) is a required document listing all Annex A controls, stating whether each is applicable, justifying inclusions and exclusions based on the risk assessment, and noting implementation status. The SoA bridges risk assessment findings to control selection decisions for certification purposes. Unlike an access control matrix, which documents specific user permissions for operational purposes, the SoA is a governance-level certification document required by the ISO 27001 standard.'
WHERE id = 3580;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (3 questions)
-- ============================================================

-- ID 3648: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Under NIST SP 800-53 Rev. 5 (Security Control Tailoring), a compensating control is an alternative security measure that provides comparable protection when the primary control cannot be implemented due to technical or operational constraints. Sterling''s combination of complex passwords and IP-restricted access compensates for the unavailable smart-card authentication. Unlike a corrective control, which remediates the impact of a detected incident after it occurs, a compensating control proactively substitutes for a primary preventive measure that cannot be deployed.'
WHERE id = 3648;

-- ID 3649: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'AES (Advanced Encryption Standard) is a symmetric encryption algorithm that uses the same secret key for both encryption and decryption, as specified in NIST FIPS 197. AES-256 employs a 256-bit key and is the standard for protecting data at rest in federal and commercial systems. Unlike asymmetric encryption algorithms such as RSA, which use separate public and private key pairs, AES relies on a single shared key — matching the vault-managed key model the credit union''s architect is implementing.'
WHERE id = 3649;

-- ID 3650: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Asymmetric (public-key) encryption uses mathematically linked key pairs — a public key shared openly and a private key kept secret — to enable secure communication without prior key exchange, as described in NIST SP 800-57 Part 1 (Recommendation for Key Management). Two parties who have never communicated can exchange encrypted data using each other''s public keys. Unlike symmetric encryption, which requires both parties to already possess the same shared secret key, asymmetric encryption solves the key distribution problem.'
WHERE id = 3650;

-- ============================================================
-- SOC ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 3752: SOC Engagements
UPDATE questions SET
  explanation = 'A SOC 1 Type II report, issued under SSAE 18 (AT-C Section 320), evaluates both the design suitability and operating effectiveness of controls relevant to user entities'' internal control over financial reporting over a specified period, typically six to twelve months. This provides the user auditor assurance that controls operated consistently throughout the audit period. Unlike a Type I report, which evaluates control design only at a single point in time, a Type II report tests operating effectiveness across the full examination period.'
WHERE id = 3752;

-- ID 3753: SOC Engagements
UPDATE questions SET
  explanation = 'Scoping a SOC engagement under SSAE 18 (AT-C Section 320) requires defining the system boundaries — the infrastructure, software, people, procedures, and data that support the services provided to user entities. The system description must clearly delineate what is included in and excluded from the examination scope. Unlike revenue or employee headcount, which are organizational metrics irrelevant to engagement boundaries, the system components directly supporting service delivery determine the SOC examination scope.'
WHERE id = 3753;

-- ID 3754: SOC Engagements
UPDATE questions SET
  explanation = 'Under SSAE 18 (AT-C Section 320), service organization management provides a written assertion accompanying the system description. For a Type I engagement, management asserts the description fairly presents the system and that controls are suitably designed. For a Type II, management additionally asserts controls operated effectively throughout the period. Unlike the service auditor''s opinion, which provides independent assurance based on examination procedures, management''s assertion represents the organization''s own representations about its system and controls.'
WHERE id = 3754;

-- ============================================================
-- SOC REPORTING (1 questions)
-- ============================================================

-- ID 3893: SOC Reporting
UPDATE questions SET
  explanation = 'A bridge letter is a written management representation from the service organization addressing whether significant changes occurred to the system, controls, or control environment between the SOC report end date and a specified later date, as described in AICPA SOC reporting guidance. It helps the user auditor evaluate the gap period but does not extend formal assurance coverage. Unlike a new SOC examination engagement, which would provide independent auditor assurance over the uncovered period, a bridge letter provides only management representations about the intervening months.'
WHERE id = 3893;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 3781: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria (2017), CC6 (Logical and Physical Access Controls) addresses how the entity restricts logical and physical access, manages user credentials, prevents unauthorized access, and removes access rights when no longer appropriate. CC6 encompasses provisioning, authentication mechanisms, access reviews, and physical security measures. Unlike CC8, which governs change management processes for infrastructure and software modifications, CC6 focuses specifically on controlling who can access the system and its physical environment.'
WHERE id = 3781;

-- ID 3782: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria (2017), CC8 (Change Management) addresses how the entity authorizes, designs, develops, configures, documents, tests, approves, and implements changes to infrastructure, data, software, and procedures. Effective change management prevents changes from introducing vulnerabilities or disrupting service commitments. Unlike CC7, which governs system operations monitoring and incident detection and response, CC8 specifically ensures that all modifications to the system follow a controlled, authorized process.'
WHERE id = 3782;

-- ID 3783: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria (2017), the Availability category (A1) addresses whether the system is available for operation and use as committed or agreed in service-level agreements. Relevant controls include disaster recovery planning, business continuity procedures, redundant infrastructure, and performance monitoring. Unlike the Security category (CC-series), which focuses on protecting against unauthorized access and system threats, the Availability category specifically ensures system uptime and operational resilience meet committed service levels.'
WHERE id = 3783;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 3868: SOC Testing Controls
UPDATE questions SET
  explanation = 'Under SSAE 18 (AT-C Section 320) and AICPA SOC examination guidance, when a control is replaced during the Type II examination period, the auditor must test both the predecessor control for the period before implementation and the new control for the period after implementation. The system description should clearly document the change and effective dates of each control. Unlike testing only the current control at the report date, which would leave the earlier period unexamined, testing both controls provides assurance over the entire examination period.'
WHERE id = 3868;

-- ID 3869: SOC Testing Controls
UPDATE questions SET
  explanation = 'Under AICPA SOC examination guidance, benchmarking is a testing approach for automated controls in which the auditor verifies the control operates as configured at a point in time, then confirms through change management records that the configuration remained unchanged during the examination period (AT-C Section 320). This approach is efficient because automated controls produce identical results when configuration is static. Unlike re-performing the control across multiple sample dates, benchmarking leverages the inherent consistency of automated controls to reduce testing effort.'
WHERE id = 3869;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 1294: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Change Enablement practices, emergency changes should represent a small fraction of total changes, typically 5–10%. A 40% emergency change ratio indicates the standard change process may be too slow, cumbersome, or frequently circumvented, requiring process improvement (ITIL 4 Foundation, Change Enablement). Unlike a healthy change management environment where most changes follow standard authorization workflows, a high emergency ratio signals systemic process dysfunction rather than effective incident responsiveness.'
WHERE id = 1294;

-- ID 1295: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Service Configuration Management, a Configuration Management Database (CMDB) maintains records of all IT assets — called configuration items (CIs) — along with their attributes, configurations, and relationships to other CIs. The CMDB enables impact analysis by mapping interdependencies so that proposed changes can be assessed for downstream effects. Unlike license management systems, which track only software entitlements as a narrow subset, a CMDB provides comprehensive visibility across all hardware, software, and network CI relationships.'
WHERE id = 1295;

-- ID 3535: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Rev. 1 (Contingency Planning Guide for Federal Information Systems), a Business Impact Analysis (BIA) is the foundational first step in BCP development. The BIA identifies critical business processes, quantifies the financial and operational impact of disruption, and establishes recovery priorities and time objectives. Unlike purchasing recovery hardware before completing analysis, which risks spending without knowing which systems are most critical, the BIA ensures all subsequent decisions are informed by documented impact data.'
WHERE id = 3535;

-- ID 3536: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Rev. 1, Recovery Time Objective (RTO) defines the maximum acceptable duration to restore a system after disruption, while Recovery Point Objective (RPO) defines the maximum acceptable data loss measured in time. Together, these BIA-derived metrics dictate that Beacon must restore within 2 hours and replicate data at intervals of 30 minutes or less. Unlike uptime percentages and MTBF, which measure system reliability during normal operations, RTO and RPO specifically govern post-disruption recovery requirements.'
WHERE id = 3536;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (3 questions)
-- ============================================================

-- ID 3614: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'This attack is spear phishing using a homoglyph (look-alike) domain, a technique documented in NIST SP 800-177 Rev. 1 (Trustworthy Email) as a common email-based threat vector. The attacker registers a domain visually resembling the legitimate address by substituting similar characters (''rn'' for ''m'') to add credibility to the targeted email. Unlike vishing, which uses voice calls to deceive victims over the phone, this attack relies on a crafted email with a deceptive domain to target a specific individual.'
WHERE id = 3614;

-- ID 3615: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Pretexting is a social engineering technique in which the attacker fabricates a believable scenario to manipulate a victim into divulging information or performing an action, as described in NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide). By impersonating an executive, the attacker exploits the help desk technician''s trust and procedural compliance to obtain reset credentials. Unlike phishing, which uses electronic messages with malicious links or attachments to harvest credentials, pretexting relies on real-time verbal deception to extract information directly.'
WHERE id = 3615;

-- ID 3616: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Baiting is a social engineering attack that exploits human curiosity by leaving malware-infected physical media in accessible locations, as classified in NIST SP 800-82 Rev. 3 (Guide to OT Security) among physical social engineering threats. When a victim inserts the device, malware installs automatically or through enticing file names on the drive. Unlike tailgating, which exploits physical access by following an authorized person through a secured entry point, baiting relies on a victim voluntarily introducing a compromised device into the network.'
WHERE id = 3616;

COMMIT;
