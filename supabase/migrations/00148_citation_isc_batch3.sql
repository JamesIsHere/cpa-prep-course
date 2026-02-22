-- Migration: Citation backfill — ISC batch 3 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (1 questions)
-- ============================================================

-- ID 5413: Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Section 5.2 (Change Enablement), the unauthorized change rate tracks the percentage of changes deployed without documented approval. A high rate signals a control deficiency in authorization workflows, requiring root-cause analysis and process remediation. However, change lead time measures the duration from request to deployment and does not address authorization compliance, while mean time to restore service measures incident recovery speed rather than change control effectiveness.'
WHERE id = 5413;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (3 questions)
-- ============================================================

-- ID 780: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section DSS06.03 (Managed Business Process Controls), change data capture and temporal tables record every modification to database records, preserving before and after values with timestamps and user identification for comprehensive audit trails. This creates an immutable change history supporting accountability and regulatory compliance. Although indexing improves query performance by creating ordered lookup structures, it does not record or track data modifications and therefore cannot provide audit trail functionality.'
WHERE id = 780;

-- ID 781: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under NIST SP 800-188 Section 4 (De-Identifying Government Datasets), data masking replaces sensitive data with realistic but fictitious values in a non-reversible manner, making it ideal for non-production environments where developers need realistic test data without access to actual sensitive information. Unlike encryption, which is reversible with the correct key and could allow the development team to recover original values, masking permanently removes the link to the source data.'
WHERE id = 781;

-- ID 782: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under NIST SP 800-18 Section 3 (Guide for Developing Security Plans), the data owner — typically a business manager — is accountable for data classification, access authorization policies, and data quality. The data custodian, typically IT staff, implements the owner''s directives through technical controls such as backups, access provisioning, and encryption. While both roles are essential, the custodian does not set policy — rather, the custodian executes the protection requirements established by the data owner.'
WHERE id = 782;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5432: Data Protection Technologies
UPDATE questions SET
  explanation = 'Patient medical records containing protected health information require the highest classification level — Restricted — because unauthorized disclosure triggers severe legal liability and regulatory penalties under HIPAA (45 CFR Section 164.530). The Restricted tier applies to data whose breach would cause the most significant organizational harm. Although the Confidential level also limits access, it typically applies to less sensitive personal data that does not carry the same regulatory mandates and breach notification obligations as PHI.'
WHERE id = 5432;

-- ID 5433: Data Protection Technologies
UPDATE questions SET
  explanation = 'Format-preserving encryption (FPE), standardized in NIST SP 800-38G Section 3 (FF1 and FF3 modes), encrypts data while maintaining the original format and length — for example, a 16-digit credit card number encrypts to another 16-digit number. This allows existing applications and database schemas to function without modification. Unlike data masking, which replaces values with fictitious substitutes that cannot be reversed, FPE is a reversible encryption method that lets authorized applications recover the original values.'
WHERE id = 5433;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 773: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'The most efficient approach is to review ERP configuration settings and test a sample of assets to verify calculations match the accounting policy, consistent with AU-C 315 guidance on understanding automated controls. This combines configuration verification with substantive testing for reasonable assurance. Recalculating every asset is impractical and unnecessary, whereas accepting system output without any testing provides no assurance over configuration accuracy.'
WHERE id = 773;

-- ID 3467: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section APO14 (Managed Data), the defining characteristic of an ERP system is its integrated, shared database across all modules. When a transaction is recorded, all related modules update simultaneously from the same data source, eliminating redundant data entry and ensuring consistency. Unlike standalone applications that maintain independent databases per module and require manual data transfer, an ERP''s single database architecture enforces real-time data integrity across the entire organization.'
WHERE id = 3467;

-- ID 3468: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'The sales invoice initiates revenue recognition and accounts receivable recording in the revenue transaction cycle, as outlined in AU-C 315 guidance on understanding transaction flows. The invoice documents the sale of goods or services and triggers the journal entry for revenue and the corresponding receivable. A purchase requisition, however, initiates the expenditure cycle rather than the revenue cycle, while a receiving report documents goods received in the purchasing process.'
WHERE id = 3468;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (3 questions)
-- ============================================================

-- ID 865: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Section 3.4 (Contingency Planning Guide), a hot site with real-time synchronous replication provides the fastest recovery time by maintaining a fully operational duplicate of the primary environment, enabling near-instantaneous failover with minimal data loss. This strategy meets near-zero recovery requirements for critical financial processing. Although a warm site has pre-installed hardware, it requires data restoration from backups, introducing recovery delays that cannot satisfy near-zero RTO requirements.'
WHERE id = 865;

-- ID 867: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Section 3.2 (Contingency Planning Guide), when the RTO exceeds the MTD, the organization cannot restore the system before unacceptable business impacts occur. The 12-hour gap means order fulfillment stops before recovery completes, requiring improved recovery capabilities such as faster backups or a higher-tier DR site. Increasing the MTD to match a slow RTO, however, does not reduce actual business impact — it merely relabels the same loss as acceptable rather than addressing the recovery deficiency.'
WHERE id = 867;

-- ID 868: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Under NIST SP 800-86 Section 3 (Guide to Integrating Forensic Techniques into Incident Response), creating a bit-for-bit forensic image preserves evidence in its original state, ensuring all analysis is conducted on the copy to maintain integrity and chain of custody. SHA-256 hashes verify the image is an exact replica of the source drives. Restoring the server to production, however, would overwrite volatile evidence and compromise the investigation''s evidentiary foundation, rendering the original data inadmissible.'
WHERE id = 868;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 1062: IT Audit Frameworks
UPDATE questions SET
  explanation = 'The COSO Internal Control — Integrated Framework Section 1 defines five components — control environment, risk assessment, control activities, information and communication, and monitoring activities — as the standard for evaluating internal control over financial reporting in the United States (COSO, 2013). Auditors apply these components to assess ICFR effectiveness during integrated audits. While ITIL 4 provides a comprehensive IT service management framework, it focuses on service delivery operations rather than financial reporting controls.'
WHERE id = 1062;

-- ID 1063: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section MEA01 (Process Capability Assessment), Level 3 (Established) requires that a process be formally documented, standardized across all business units, and supported by a defined process owner with training requirements. This represents consistent enterprise-wide implementation. Level 2 (Managed), in contrast, indicates a process that is planned and monitored within individual business areas but has not yet achieved cross-organizational standardization — the key distinction from Level 3.'
WHERE id = 1063;

-- ID 1064: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section EDM01 and ITIL 4 Section 4.1, COBIT provides the governance structure and strategic objectives — the "what" — while ITIL provides detailed operational service management practices — the "how." Organizations commonly deploy both because COBIT addresses enterprise-wide IT governance and ITIL focuses on service delivery. Reversing the frameworks'' roles is incorrect because COBIT handles governance rather than day-to-day operations, and ITIL handles service management rather than board-level strategy.'
WHERE id = 1064;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 1052: IT General Controls
UPDATE questions SET
  explanation = 'Privilege creep, also called access accumulation, occurs when users retain permissions from previous roles after transferring between departments, violating the principle of least privilege defined in NIST SP 800-53 Section AC-2 (Account Management). Without periodic access recertification, users accumulate excessive privileges that create segregation-of-duties violations. Although role-based access control assigns permissions by job function, it does not automatically revoke prior role assignments — organizations must implement access reviews to detect and remediate accumulated privileges.'
WHERE id = 1052;

-- ID 1053: IT General Controls
UPDATE questions SET
  explanation = 'When IT general controls over logical access are ineffective, the auditor cannot rely on automated application controls within those systems and must expand substantive testing, per PCAOB AS 2201.18 (Audit of Internal Control Over Financial Reporting). ITGCs underpin all automated controls because compromised logical access could allow unauthorized modifications to programs or data. However, weak ITGCs do not automatically render the financial statements misstated — rather, they require the auditor to perform additional procedures to determine whether material misstatements exist.'
WHERE id = 1053;

-- ID 1054: IT General Controls
UPDATE questions SET
  explanation = 'Developers having write access to production databases constitutes a significant ITGC deficiency because it violates segregation of duties as required by NIST SP 800-53 Section AC-5 (Separation of Duties). Developers could modify data or programs without independent review or detection, undermining data integrity. Unlike a minor access control finding that compensating controls might mitigate, uncontrolled developer access to production represents a pervasive control weakness regardless of the database content or transaction volume.'
WHERE id = 1054;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (4 questions)
-- ============================================================

-- ID 754: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under NIST SP 800-145 Section 2 (Cloud Computing), a multi-region active-active deployment places compute and data resources close to each regional office, minimizing latency through geographic proximity while maintaining consistency through data replication. This architecture meets sub-50ms latency requirements for real-time financial transaction processing. A single-region CDN, however, accelerates static content delivery but cannot reduce latency for transaction processing that requires compute operations near each office.'
WHERE id = 754;

-- ID 755: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under NIST SP 800-204 Section 2 (Security Strategies for Microservices-based Application Systems), microservices architecture decomposes an application into small, independently deployable services that communicate via lightweight protocols such as REST APIs or message queues. Each service owns its data and can be developed, deployed, and scaled independently. Unlike monolithic architecture, where all components share a single codebase and must be deployed together, microservices enable targeted scaling and independent release cycles.'
WHERE id = 755;

-- ID 756: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under NIST SP 800-64 Section 3.4 (Security Considerations in the System Development Life Cycle), parallel running involves operating both the legacy and new systems simultaneously, processing the same transactions in both and comparing results to verify accuracy before decommissioning the old system. This strategy reduces migration risk by providing a fallback. Unlike a big-bang migration, which switches all users to the new system at once, parallel running allows discrepancies to be identified and resolved before the legacy system is retired.'
WHERE id = 756;

-- ID 757: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Section 3.4 (Contingency Planning Guide), asynchronous replication to a warm standby site achieves sub-hour RPO with replication lag and supports manual failover within a 4-hour RTO, satisfying both objectives. This configuration balances cost with recovery capability. Although synchronous replication with a hot site provides near-zero RPO and faster RTO, it exceeds the stated requirements and incurs significantly higher infrastructure costs without corresponding benefit to the specified recovery objectives.'
WHERE id = 757;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (4 questions)
-- ============================================================

-- ID 853: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under HIPAA''s Breach Notification Rule (45 CFR Section 164.404–164.408), breaches affecting 500 or more individuals require notification to affected individuals, the Department of Health and Human Services, and prominent media outlets serving the affected jurisdiction. Since 1,000 records exceeds the 500-person threshold, all three notification obligations apply. Although individual notification is required for any breach size, notification to HHS and media is only triggered at the 500-person threshold — smaller breaches require only individual notice and annual HHS logging.'
WHERE id = 853;

-- ID 854: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Data minimization, codified in GDPR Article 5 Section 1(c), requires that personal data be adequate, relevant, and limited to what is necessary for the specified processing purpose. Collecting SSNs and home addresses for a newsletter subscription far exceeds what is necessary for email delivery. While purpose limitation under GDPR Article 5 Section 1(b) restricts how previously collected data may be used for new purposes, it does not govern the volume of data collected at the point of collection — that constraint belongs to data minimization.'
WHERE id = 854;

-- ID 855: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Section 37–39 (Data Protection Officer), the DPO advises the organization on data protection obligations, monitors compliance with GDPR and internal policies, oversees data protection impact assessments, cooperates with supervisory authorities, and serves as a contact point for data subjects. The DPO must operate independently and report to the highest management level. Unlike a marketing or IT operations role, the DPO cannot receive instructions regarding the exercise of these compliance tasks, ensuring objectivity in oversight.'
WHERE id = 855;

-- ID 856: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Article 12 Section 3, data controllers must respond to a data subject access request within one month of receiving the request. For complex or numerous requests, this deadline may be extended by two additional months, provided the controller notifies the data subject within the initial one-month period explaining the delay. Although 90 days is the timeframe associated with certain U.S. state privacy laws such as the CCPA, it does not reflect the GDPR''s one-month standard, and a 7-day requirement is not established by any GDPR provision.'
WHERE id = 856;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 810: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section MEA01 (Capability Model), Level 2 (Managed) indicates that processes are planned, monitored, and adjusted with work products appropriately managed, demonstrating structured oversight beyond basic task performance at Level 1. The organization has not yet achieved consistent enterprise-wide implementation with defined standards. However, Level 3 (Established) requires that the process be standardized and consistently implemented across the entire enterprise, which the assessor explicitly noted has not been achieved.'
WHERE id = 810;

-- ID 811: Security and Control Frameworks
UPDATE questions SET
  explanation = 'ISO/IEC 27001 Section 1 (Scope) specifies the requirements for establishing, implementing, and maintaining an information security management system and is the certifiable standard. ISO 27002 provides detailed implementation guidance and best practices for the controls listed in ISO 27001 Annex A. While organizations are certified against 27001, they use 27002 as a reference for control implementation — unlike 27001, ISO 27002 is not a certifiable standard and does not define ISMS requirements.'
WHERE id = 811;

-- ID 812: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under the NIST Risk Management Framework (NIST SP 800-37 Section 3.4), the Assess step evaluates whether security and privacy controls are implemented correctly, operating as intended, and producing the desired outcomes. This independent evaluation follows the Implement step and precedes the Authorize step. The Implement step, however, involves deploying and configuring controls — since implementation was completed in September, the October testing represents the subsequent Assess step rather than continued implementation activities.'
WHERE id = 812;

-- ID 813: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section APO02 (Managed Strategy), this objective specifically addresses aligning IT strategy with business objectives by defining how IT can best contribute to achieving business goals. It covers strategic planning, alignment analysis, and IT capability assessment. EDM01, in contrast, focuses on establishing and maintaining the overall governance framework structure rather than strategy alignment — it governs the governance system itself, not the strategic direction of IT investments.'
WHERE id = 813;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (3 questions)
-- ============================================================

-- ID 838: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'The principle of least privilege requires that users, processes, and systems receive only the minimum permissions necessary to perform their authorized functions, as defined in NIST SP 800-53 Section AC-6 (Least Privilege). Restricting the DBA from server-wide sysadmin to only the two databases in scope directly applies this principle. While separation of duties addresses dividing critical functions among multiple individuals to prevent fraud, it is a distinct control objective from minimizing any single account''s permission scope.'
WHERE id = 838;

-- ID 839: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Data Loss Prevention systems monitor data in motion, at rest, and in use, detecting sensitive content patterns such as Social Security numbers and blocking unauthorized disclosure, as specified in NIST SP 800-53 Section SC-7 (Boundary Protection). DLP applies content inspection rules to outbound email, web uploads, and file transfers. Although full-disk encryption protects data at rest on the storage volume, it does not inspect or block outbound transmissions of sensitive content and therefore cannot prevent unauthorized data exfiltration.'
WHERE id = 839;

-- ID 840: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'A web application firewall inspects HTTP/HTTPS traffic at the application layer (Layer 7) and blocks common web attacks including SQL injection and other OWASP Top 10 vulnerabilities, as aligned with NIST SP 800-53 Section SI-3 (Malicious Code Protection). A WAF analyzes request payloads for malicious patterns before they reach backend systems. Unlike a network firewall operating at Layer 3/4 that filters by IP, port, and protocol, a WAF can inspect application-layer content such as SQL injection strings embedded in HTTP POST parameters.'
WHERE id = 840;

-- ============================================================
-- SOC ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 882: SOC Engagements
UPDATE questions SET
  explanation = 'Best practice under SSAE 18 (AT-C Section 320) is to obtain a SOC 2 Type II report annually, covering a continuous 12-month examination period that aligns with the prior report''s end date to avoid coverage gaps. This provides user entity auditors with current, uninterrupted evidence of control operating effectiveness. Although monthly reporting would provide more frequent evidence, it is impractical and unnecessary — a five-year cycle, conversely, would leave user entities without current assurance for unacceptably long periods.'
WHERE id = 882;

-- ID 883: SOC Engagements
UPDATE questions SET
  explanation = 'A SOC 2 Type I report evaluates the suitability of control design at a specific point in time and does not require an examination period, per SSAE 18 (AT-C Section 320.14). This allows a service organization to obtain a report immediately by selecting a snapshot date and demonstrating that controls are suitably designed. Unlike a Type II report, which tests operating effectiveness over a minimum six-to-twelve-month period and cannot be issued until that period elapses, a Type I requires only that controls exist as of the report date.'
WHERE id = 883;

-- ID 3748: SOC Engagements
UPDATE questions SET
  explanation = 'SOC 2 engagements evaluate a service organization''s controls based on the AICPA Trust Services Criteria (TSP Section 100, 2017). The five categories — security, availability, processing integrity, confidentiality, and privacy — provide the evaluation framework. While the Trust Services Criteria reference COSO internal control concepts, they are distinct criteria specific to the AICPA''s framework rather than a direct application of COSO or other general-purpose control frameworks.'
WHERE id = 3748;

-- ============================================================
-- SOC REPORTING (2 questions)
-- ============================================================

-- ID 1222: SOC Reporting
UPDATE questions SET
  explanation = 'Under the inclusive method per SSAE 18 (AT-C Section 320.14), the subservice organization''s relevant controls are included within the scope of the SOC examination, and the practitioner tests those controls directly. The resulting opinion covers the combined control environment of both the service and subservice organizations. In contrast, the carve-out method excludes subservice organization controls from the examination scope, requiring user auditors to obtain separate assurance over those excluded controls through the subservice organization''s own SOC report.'
WHERE id = 1222;

-- ID 1224: SOC Reporting
UPDATE questions SET
  explanation = 'Under the carve-out method per SSAE 18 (AT-C Section 320), the hosting provider''s controls are excluded from the examination scope, so the SOC report covers only the service organization''s monitoring controls over the provider. The actual controls at the hosting provider — including those that failed during the breach — are not tested. Although the report''s opinion is unqualified, it reflects only the tested controls; the user auditor should obtain the hosting provider''s own SOC report to evaluate the breach impact independently.'
WHERE id = 1224;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 893: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under AICPA SOC 2 guidance (TSP Section 100), the system description must include the types of services provided, system boundaries and components, principal service commitments, and relevant aspects of the five COSO components. This enables user entities to understand the examination scope and controls tested. Although financial performance metrics and staff compensation are important organizational data, they fall outside the system description scope — the SOC report addresses control effectiveness rather than financial or personnel matters.'
WHERE id = 893;

-- ID 894: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'The user auditor must evaluate the significance of the qualification to their audit, per AU-C Section 402 (Audit Considerations Relating to Service Organizations). This includes assessing the nature and duration of the control failure and determining whether compensating controls mitigate the risk for the affected four-month period. However, a qualification does not automatically result in a qualified opinion for the user entity — the auditor may conclude that expanded substantive procedures provide sufficient evidence despite the monitoring control gap.'
WHERE id = 894;

-- ID 895: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under AICPA''s SOC for Cybersecurity guidance (AT-C Section 205), this framework provides an entity-wide examination of the organization''s cybersecurity risk management program, whereas SOC 2 focuses on controls related to a specific system or service. The framework evaluates the overall cybersecurity posture across all systems. Unlike SOC 2, which uses the Trust Services Criteria for a defined system boundary, SOC for Cybersecurity assesses the entire risk management program using the AICPA description criteria.'
WHERE id = 895;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 1215: SOC Testing Controls
UPDATE questions SET
  explanation = 'SOC testing documentation must include the population definition, sample selection method and rationale, evidence obtained, test results including deviations, and the practitioner''s conclusion for each control, per AT-C Section 205.35 (Examination Engagements). These elements demonstrate that tests were properly planned and executed with sufficient evidence. Although competitive analysis, revenue predictions, and user entity evaluations may be relevant business documents, they are not required working paper elements for SOC control testing procedures.'
WHERE id = 1215;

-- ID 3864: SOC Testing Controls
UPDATE questions SET
  explanation = 'Attribute sampling involves selecting a sample from a population and examining each item for the presence or absence of a specific characteristic, such as whether a transaction was approved or a backup completed, per AT-C Section 205 and AICPA Audit Sampling guidance. The results estimate the deviation rate in the entire population. Unlike variable sampling, which estimates a monetary amount or quantitative value, attribute sampling produces a binary outcome — the control attribute either exists or it does not — making it ideal for compliance testing.'
WHERE id = 3864;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 796: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Section 3.3 (Contingency Planning Guide), a full interruption test involves actually switching production operations to the backup site and processing real transactions there. This is the most rigorous form of DR testing because it validates recovery procedures under real-world conditions with live data. Unlike a tabletop exercise, which is discussion-based and does not involve shutting down production systems or processing transactions at the backup site, a full interruption test confirms actual recovery capability.'
WHERE id = 796;

-- ID 797: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Section 3.4 (Contingency Planning Guide), asynchronous replication introduces a lag between primary and secondary sites. Since the last successful replication completed at 2:00 PM and the failure occurred at 2:15 PM, any transactions processed during that 15-minute window are lost. Unlike synchronous replication, which confirms each write at both sites before acknowledging the transaction and would result in zero data loss, asynchronous replication accepts the risk of losing data generated between replication cycles.'
WHERE id = 797;

-- ID 798: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Section 5.2 (Configuration Management), a configuration management database maintains a comprehensive inventory of IT assets (configuration items), their attributes, and the relationships between them. This supports change management, incident management, and audit activities by providing visibility into the IT environment. Although asset management software tracks hardware and software inventory, a CMDB goes further by mapping dependencies and relationships between configuration items — enabling impact analysis before changes are implemented.'
WHERE id = 798;

-- ID 799: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section DSS01 (Managed Operations), system availability is calculated as MTBF / (MTBF + MTTR). With an MTBF of 720 hours and MTTR of 8 hours, availability equals 720 / 728, or approximately 98.9%, representing the proportion of total time the system is operational. Placing MTTR in the numerator, however, calculates the unavailability ratio — the proportion of downtime — which is the inverse of the availability metric the board report requires.'
WHERE id = 799;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (3 questions)
-- ============================================================

-- ID 824: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'A zero-day vulnerability is a security flaw known to attackers but not yet acknowledged by the software vendor, meaning no patch exists, as described in NIST SP 800-61 Section 3.2 (Computer Security Incident Handling Guide). The term refers to the vendor having had zero days to develop a remediation. A same-day patch, in contrast, describes a rapid vendor response where a fix is released the same day a flaw is disclosed — the opposite of the zero-day condition where no vendor acknowledgment or patch exists.'
WHERE id = 824;

-- ID 825: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Cross-site scripting allows an attacker to inject malicious scripts into web pages viewed by other users, enabling session hijacking, credential harvesting, and content manipulation, as classified in the OWASP Top 10 Section A03:2021 (Injection). The injected script executes in the victim''s browser context with their session privileges. Unlike SQL injection, which targets server-side databases through crafted queries, XSS targets the client-side browser — it cannot directly corrupt database records or cause server-side denial of service.'
WHERE id = 825;

-- ID 826: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'The pattern of 50,000 failed login attempts from 200 different IP addresses in 30 minutes is consistent with a distributed credential stuffing or brute force attack, as described in NIST SP 800-63B Section 5.2.2 (Digital Identity Guidelines). Attackers use stolen credentials from other breaches across many IP addresses to evade rate-limiting controls. Unlike a single-source brute force attack or application misconfiguration, which would generate attempts from one IP address, the distributed nature across 200 IPs indicates coordinated adversarial activity.'
WHERE id = 826;

COMMIT;
