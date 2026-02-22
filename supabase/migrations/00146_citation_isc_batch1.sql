-- Migration: Citation backfill — ISC batch 1 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (1 questions)
-- ============================================================

-- ID 5410: Change Management
UPDATE questions SET
  explanation = 'A request for change (RFC) formally initiates the change management process by documenting the proposed modification, business justification, and risk assessment (ITIL 4 Section 5.2, Change Enablement Practice). The RFC ensures all stakeholders evaluate the change''s scope and impact before any development or deployment begins. A post-implementation review, however, is incorrect because it occurs after deployment to assess outcomes rather than initiating the process.'
WHERE id = 5410;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (3 questions)
-- ============================================================

-- ID 774: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Data governance is the enterprise-wide framework of policies, roles, and standards that ensures data quality, security, and compliance throughout its lifecycle (COBIT 2019 Section APO14, Managed Data). It assigns accountability through defined roles such as data owners who set policies, stewards who enforce quality standards, and custodians who manage technical storage. Database administration, however, is incorrect because it is a narrow technical function focused on storage and performance rather than the broad policy-driven management framework that governance encompasses.'
WHERE id = 774;

-- ID 775: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Patient Social Security numbers should receive the Restricted classification tier, the highest sensitivity level under ISO 27001 Section A.8 (Information Classification). Data whose unauthorized disclosure could cause identity theft, regulatory penalties, and significant individual harm warrants the strongest access controls, encryption, and monitoring. The Confidential tier, while a high sensitivity level, is incorrect because it does not reflect the maximum protections required for data carrying identity theft and severe harm risk.'
WHERE id = 775;

-- ID 776: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Data destruction is the appropriate lifecycle phase under NIST SP 800-88 Section 4 (Guidelines for Media Sanitization) for securely eliminating records that have exceeded their retention period. Sanitization methods such as cryptographic erasure, degaussing, or physical destruction ensure data cannot be recovered after disposal. Data archival, however, is incorrect because it moves data to long-term storage for preservation rather than permanently eliminating it as required when retention periods expire.'
WHERE id = 776;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (1 questions)
-- ============================================================

-- ID 5430: Data Protection Technologies
UPDATE questions SET
  explanation = 'Network DLP monitors data in motion by inspecting outbound traffic at egress points such as email gateways and web proxies to detect and block unauthorized transmission of sensitive data (NIST SP 800-53 Section SC-7, Boundary Protection). It provides centralized visibility into data leaving the organization''s network perimeter. Endpoint DLP, however, is incorrect because it operates on individual devices to monitor local actions like USB transfers and print jobs rather than network-level traffic inspection.'
WHERE id = 5430;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 760: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'An ERP system integrates multiple business functions — finance, HR, procurement, production, and sales — into a single platform with a shared database, eliminating data silos and enabling real-time cross-departmental visibility (COBIT 2019 Section BAI03, Managed Solutions Identification and Build). This unified architecture ensures data consistency across all operations. A standalone general ledger, however, is incorrect because it handles only financial transactions without providing the cross-functional integration needed for HR, procurement, and production.'
WHERE id = 760;

-- ID 761: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Excessive ERP customization creates technical debt that makes future vendor upgrades and security patches difficult to apply because custom code may conflict with standard updates (COBIT 2019 Section BAI03, Managed Solutions Identification and Build). Each upgrade requires extensive regression testing of all modified modules, delaying critical security patches. Improved system performance is incorrect because customization typically adds complexity and processing overhead rather than enhancing efficiency.'
WHERE id = 761;

-- ID 766: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'The most appropriate immediate action is to correct the configuration error in the approval workflow and verify the fix through testing, per COBIT 2019 Section DSS06 (Managed Business Process Controls), which requires that automated controls operate as designed. Addressing the root cause restores the preventive control and prevents further unauthorized postings. Switching to manual journal entry processing, however, is incorrect because it creates unnecessary operational disruption rather than resolving the underlying system configuration problem.'
WHERE id = 766;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (3 questions)
-- ============================================================

-- ID 858: Incident Response and Recovery
UPDATE questions SET
  explanation = 'These activities represent the Preparation phase under NIST SP 800-61 Section 3.1 (Computer Security Incident Handling Guide), which involves establishing the IR team, creating response playbooks, deploying forensic tools, and conducting tabletop exercises before any incidents occur. Preparation builds organizational readiness to handle future security events effectively. Detection and Analysis is incorrect because that phase focuses on identifying and validating actual incidents through monitoring and log correlation, not the initial program buildout.'
WHERE id = 858;

-- ID 860: Incident Response and Recovery
UPDATE questions SET
  explanation = 'These activities fall under the Post-Incident Activity phase of NIST SP 800-61 Section 3.4, where the IR team conducts lessons-learned analysis, documents findings, and implements long-term improvements such as updated playbooks and mandatory training programs. This phase ensures organizational learning from each incident. Eradication is incorrect because it is a sub-step within Containment, Eradication, and Recovery focused on removing the attacker''s immediate access, not implementing broader systemic improvements.'
WHERE id = 860;

-- ID 861: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Under NIST SP 800-61 Section 2.4, external communications during a security incident should be handled by a designated spokesperson — typically from public relations — who coordinates with legal counsel to ensure consistent, accurate, and legally appropriate messaging. Controlled communication protects the organization from liability and misinformation. The SOC analyst who detected the breach is incorrect because technical staff may lack media training and could inadvertently disclose forensic details or speculate about scope.'
WHERE id = 861;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 1056: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section EDM (Evaluate, Direct, and Monitor), board-level activities of evaluating, directing, and monitoring IT fall within the governance domain, which is distinct from the four management domains (COBIT 2019, Governance and Management Objectives). EDM ensures the governing body sets direction and oversees IT alignment with strategic objectives. The APO (Align, Plan, and Organize) domain is incorrect because it is a management function performed by executives, not a governance function reserved for the board.'
WHERE id = 1056;

-- ID 1057: IT Audit Frameworks
UPDATE questions SET
  explanation = 'ITIL 4 is the IT service management framework built around the Service Value System, which includes the service value chain, guiding principles, governance, practices, and continual improvement (ITIL 4 Foundation, Section 4). It optimizes how IT delivers value from demand through value realization at each stage. COBIT 2019 is incorrect because it focuses on IT governance and management objectives across five domains rather than centering on a service value chain concept for end-to-end service delivery.'
WHERE id = 1057;

-- ID 1058: IT Audit Frameworks
UPDATE questions SET
  explanation = 'The officer is following the NIST Risk Management Framework as defined in NIST SP 800-37 Section 3, which prescribes seven steps: Prepare, Categorize, Select, Implement, Assess, Authorize, and Monitor for federal information systems. This lifecycle ensures systematic risk-based authorization of IT systems. The sequence Identify, Protect, Detect, Respond, and Recover is incorrect because those are the five core functions of the NIST Cybersecurity Framework (CSF), a separate outcomes-based framework rather than a system authorization lifecycle.'
WHERE id = 1058;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 1046: IT General Controls
UPDATE questions SET
  explanation = 'The principle of least privilege, defined in NIST SP 800-53 Section AC-6 (Least Privilege), requires that users be granted only the minimum level of access necessary to perform their assigned job functions. Restricting access reduces the risk of unauthorized actions, accidental modifications, and data exposure. Pre-granting access for potential future needs is incorrect because providing more access than currently required directly violates least privilege and unnecessarily expands the attack surface.'
WHERE id = 1046;

-- ID 1047: IT General Controls
UPDATE questions SET
  explanation = 'This arrangement violates segregation of duties, which requires that no single individual control both development and production deployment (COBIT 2019 Section DSS06, Managed Business Process Controls). Separating these roles ensures independent review prevents unauthorized or untested code from reaching production systems. Encryption at rest is incorrect because it is a data confidentiality control that protects stored information through cryptographic methods, not a control addressing the separation of development and deployment responsibilities.'
WHERE id = 1047;

-- ID 1048: IT General Controls
UPDATE questions SET
  explanation = 'Automated log review and monitoring alerts constitute a detective control under NIST SP 800-53 Section AU-6 (Audit Record Review, Analysis, and Reporting) because they identify anomalies and security events after they occur and trigger notification for investigation. Detective controls focus on discovery and alerting rather than prevention. Requiring supervisor approval before execution is incorrect because that describes a preventive control, which blocks unauthorized activity before it happens rather than detecting it afterward.'
WHERE id = 1048;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (4 questions)
-- ============================================================

-- ID 746: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'A hypervisor manages and allocates physical hardware resources — CPU, memory, storage, and networking — to each virtual machine, enabling multiple operating systems to run concurrently on a single physical host (NIST SP 800-125 Section 2, Guide to Security for Full Virtualization Technologies). This improves resource utilization while maintaining isolation between tenants. Encrypting network traffic is incorrect because that function is handled by protocols such as TLS or IPsec, not by the hypervisor''s resource allocation mechanism.'
WHERE id = 746;

-- ID 747: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Infrastructure as a Service (IaaS) provides virtualized computing resources where the customer manages the operating system, middleware, runtime, and applications, delivering maximum control over the technology stack (NIST SP 800-145 Section 2, The NIST Definition of Cloud Computing). The provider manages only the underlying physical infrastructure. SaaS is incorrect because it manages the entire stack from infrastructure through application, giving the customer the least control over OS and middleware configurations.'
WHERE id = 747;

-- ID 748: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'VLANs with access control lists provide network segmentation that logically isolates sensitive systems while permitting controlled access through defined traffic rules (NIST SP 800-41 Section 3, Guidelines on Firewalls and Firewall Policy). This design balances security requirements with operational accessibility for authorized clinicians. An air-gapped network is incorrect because it provides complete physical isolation with no connectivity, which would prevent the authorized clinician access that the healthcare organization requires.'
WHERE id = 748;

-- ID 749: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'A private cloud provides dedicated infrastructure for a single organization, offering greater control over data residency, security configurations, and regulatory compliance (NIST SP 800-145 Section 3, Cloud Deployment Models). This is critical for regulated industries such as banking that require data to remain on-premises. Lower upfront capital expenditure is incorrect because private clouds typically require higher initial investment for dedicated infrastructure, whereas reduced upfront costs are a characteristic of the public cloud model.'
WHERE id = 749;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (4 questions)
-- ============================================================

-- ID 844: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'The General Data Protection Regulation (GDPR) establishes comprehensive data protection rights for EU individuals, including rights of access, rectification, erasure, data portability, and objection to processing (GDPR Section IV, Articles 12–23). It applies to any organization processing EU residents'' personal data regardless of the organization''s location. HIPAA is incorrect because it is a United States law governing healthcare data privacy and security, with no jurisdiction over EU data protection rights.'
WHERE id = 844;

-- ID 845: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Article 6 (Section II, Principles), the six lawful bases for processing personal data are consent, contract performance, legal obligation, vital interests, public task, and legitimate interests. Commercial revenue maximization is not among them and cannot serve as a lawful basis for processing. While legitimate interests exists as a lawful basis, it is incorrect to equate it with profit maximization because legitimate interests requires a documented balancing test weighing the organization''s interests against the individual''s rights and freedoms.'
WHERE id = 845;

-- ID 847: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'HIPAA''s Privacy Rule applies to covered entities — health plans, healthcare providers conducting electronic transactions, and healthcare clearinghouses — as well as their business associates who handle protected health information (HIPAA Privacy Rule, 45 CFR Section 160.103). The cloud storage provider qualifies as a business associate under this definition. Applying HIPAA to all businesses processing personal data is incorrect because HIPAA''s scope is limited to health-related entities and their business associates, not organizations generally.'
WHERE id = 847;

-- ID 848: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'This practice most likely violates the purpose limitation principle under GDPR Article 5(1)(b) (Section II, Principles), which requires that personal data be collected for specified, explicit, and legitimate purposes and not further processed in a manner incompatible with those original purposes. Using order confirmation email addresses for unsolicited marketing constitutes incompatible further processing. The data minimization principle, although related, is incorrect because it addresses collecting only necessary data rather than restricting use to the original stated purpose.'
WHERE id = 848;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 802: Security and Control Frameworks
UPDATE questions SET
  explanation = 'The NIST Cybersecurity Framework (CSF) organizes cybersecurity activities into five core functions — Identify, Protect, Detect, Respond, and Recover — providing a voluntary, risk-based structure for managing cybersecurity risk (NIST CSF Section 2, Framework Core). It is widely adopted across both government and private sectors for cybersecurity program design. COBIT 2019 is incorrect because it is an IT governance and management framework published by ISACA that uses five domains (EDM, APO, BAI, DSS, MEA), not a NIST cybersecurity-specific framework.'
WHERE id = 802;

-- ID 803: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under the NIST Cybersecurity Framework, the Protect function encompasses access control, awareness training, data security, and protective technology — all safeguards designed to limit or contain the impact of potential cybersecurity events (NIST CSF Section PR, Protect Category). MFA, RBAC, and security awareness training are core Protect activities. The Identify function is incorrect because it focuses on understanding the organization''s assets, business environment, and risk tolerance rather than implementing protective controls.'
WHERE id = 803;

-- ID 804: Security and Control Frameworks
UPDATE questions SET
  explanation = 'COBIT 2019 is built on six governance system principles: Provide Stakeholder Value, Holistic Approach, Dynamic Governance System, Governance Distinct from Management, Tailored to Enterprise Needs, and End-to-End Governance System (COBIT 2019 Section 3, Governance System Principles). These principles guide the design and continuous improvement of IT governance frameworks. Confidentiality, Integrity, and Availability (the CIA triad) is incorrect because it defines information security objectives rather than IT governance principles.'
WHERE id = 804;

-- ID 805: Security and Control Frameworks
UPDATE questions SET
  explanation = 'ISO 27001 requires organizations to establish, implement, maintain, and continually improve an Information Security Management System (ISMS) using a risk-based approach, selecting applicable controls from Annex A and documenting exclusions in the Statement of Applicability (ISO 27001 Section 6.1.3). This ensures controls match the organization''s specific risk profile. Implementing all 93 Annex A controls is incorrect because ISO 27001 mandates a risk-based selection process, not blanket adoption of every control regardless of applicability.'
WHERE id = 805;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (3 questions)
-- ============================================================

-- ID 830: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Multi-factor authentication combining a password (something you know) with a hardware token generating a one-time code (something you have) provides the strongest protection against credential-based attacks (NIST SP 800-63B Section 4, Authentication Assurance Level 2). Compromising one factor alone is insufficient for unauthorized access under this model. A complex password with rotation is incorrect because it still represents a single authentication factor and remains vulnerable to phishing and credential-stuffing attacks.'
WHERE id = 830;

-- ID 831: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Role-based access control (RBAC) assigns permissions to roles that map to job functions, ensuring all users in the same role receive identical, auditable permissions through a single assignment (NIST SP 800-53 Section AC-2, Account Management and Section AC-3, Access Enforcement). This simplifies administration across large user populations. Discretionary access control (DAC) is incorrect because it requires resource owners to grant permissions individually, creating inconsistency and significant administrative burden across 450 users.'
WHERE id = 831;

-- ID 832: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'A Security Information and Event Management (SIEM) system collects, normalizes, and correlates log data from diverse sources — firewalls, IDS/IPS, servers, and applications — to detect threats and generate prioritized alerts (NIST SP 800-92 Section 3, Log Management Infrastructure). It provides centralized visibility across the entire infrastructure. Endpoint detection and response (EDR) is incorrect because it monitors activity on individual devices without aggregating or correlating events across network infrastructure and application layers.'
WHERE id = 832;

-- ============================================================
-- SOC ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 872: SOC Engagements
UPDATE questions SET
  explanation = 'In the assurance context, SOC stands for System and Organization Controls, the AICPA''s reporting framework under SSAE 18 (AT-C Section 320) through which independent auditors examine a service organization''s controls. SOC reports come in three types: SOC 1 for financial reporting controls, SOC 2 for trust services criteria, and SOC 3 for general use. Security Operations Center is incorrect because that is a separate use of the SOC acronym referring to a cybersecurity monitoring facility, not an assurance reporting framework.'
WHERE id = 872;

-- ID 874: SOC Engagements
UPDATE questions SET
  explanation = 'A SOC 3 report is a general-use report that can be freely distributed and published on a service organization''s website, providing a summary-level assurance opinion on the Trust Services Criteria without detailed control descriptions or test results (AICPA AT-C Section 205, Examination Engagements). This makes it suitable for public marketing purposes. A SOC 1 report is incorrect because it is a restricted-use document intended only for the service organization''s management, user entities, and their auditors under confidentiality agreements.'
WHERE id = 874;

-- ID 875: SOC Engagements
UPDATE questions SET
  explanation = 'A SOC 2 Type II report evaluates both the design suitability and operating effectiveness of controls over a specified period, typically 6 to 12 months (AICPA AT-C Section 205, Examination Engagements). Testing over time provides greater assurance that controls functioned consistently throughout the period. A SOC 2 Type I report, while useful, is less comprehensive because it evaluates only the suitability of control design at a single point in time without testing whether controls operated effectively over a period.'
WHERE id = 875;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 5454: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Security, known as the common criteria, is mandatory in every SOC 2 engagement because it forms the foundation upon which all other trust services criteria depend (AICPA TSP Section 100, Trust Services Criteria). The common criteria address logical access, system operations, change management, and risk mitigation controls. Availability is incorrect because it is an optional criterion that organizations may add based on the nature of their services and user entity needs, whereas Security must always be included.'
WHERE id = 5454;

-- ============================================================
-- SOC REPORTING (1 questions)
-- ============================================================

-- ID 1220: SOC Reporting
UPDATE questions SET
  explanation = 'A bridge letter (also called a gap letter) is a written management representation from the service organization covering the period between the SOC report end date and the user entity''s fiscal year-end (AICPA SSAE 18, AT-C Section 320 Reporting Guidance). It addresses whether significant changes occurred to the system, controls, or control environment during the gap period. Unlike a SOC report, a bridge letter is a management representation rather than an independent examination, providing less assurance but serving as the standard mechanism for addressing coverage gaps.'
WHERE id = 1220;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 886: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Redundant infrastructure with automated failover and defined SLAs is most relevant to the Availability criteria under the AICPA Trust Services Criteria (TSP Section 100, criterion A1.2), which address whether the system is operational and usable as committed or agreed. These controls ensure the system can withstand component failures and meet uptime commitments. Background checks relate to the Security criteria rather than Availability because they address personnel trustworthiness, not system uptime and operational resilience.'
WHERE id = 886;

-- ID 887: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'The Confidentiality criteria under the AICPA Trust Services Framework (TSP Section 100, criteria C1.1–C1.2) address the protection of information designated as confidential — such as business plans, intellectual property, or client data — from unauthorized access and disclosure. Controls include encryption, access restrictions, and data classification policies. The Privacy criteria, although related, are incorrect because they specifically govern the collection, use, retention, and disclosure of personal information rather than broadly designated confidential business data.'
WHERE id = 887;

-- ID 888: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'The Privacy criteria in the AICPA Trust Services Framework align with the Generally Accepted Privacy Principles (GAPP), covering notice, choice and consent, collection, use and retention, access, disclosure, security, and quality (AICPA TSP Section 100, Privacy Criteria). These principles provide a comprehensive structure for personal information governance. ISO 27001 is incorrect because it is an information security management standard focused on protecting information assets broadly, not a privacy-specific framework governing personal data handling practices.'
WHERE id = 888;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 1208: SOC Testing Controls
UPDATE questions SET
  explanation = 'For daily manual controls over a 12-month examination period, a sample of 25 to 40 items spread across the full period provides reasonable assurance of operating effectiveness (AICPA Guide: SOC 2 Reporting on Controls, AT-C Section 205 Sampling Guidance). Coverage must span the entire examination period to support a period-wide conclusion on control effectiveness. Testing only December is incorrect because sampling from a single month does not provide coverage of the remaining 11 months and cannot support a conclusion about year-round operating effectiveness.'
WHERE id = 1208;

-- ID 1209: SOC Testing Controls
UPDATE questions SET
  explanation = 'The auditor must evaluate each deviation''s nature, cause, and whether compensating controls mitigate the associated risk, per AICPA AT-C Section 205 (Examination Engagements, Evaluating Deviations). A deviation does not automatically result in a modified opinion — the root cause and compensating controls must be considered. Automatically issuing a qualified opinion based solely on the deviation count is incorrect because the auditor must assess whether the issue is systemic or isolated and evaluate compensating controls before reaching a conclusion.'
WHERE id = 1209;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 788: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Section 3 (Contingency Planning Guide), RPO defines the maximum acceptable data loss measured in time, which directly determines the minimum backup or replication frequency required. A 15-minute RPO requires data replication at intervals no greater than 15 minutes to limit potential transaction loss during an outage. Backup completion time after a disaster describes Recovery Time Objective (RTO), which is incorrect because RTO measures restoration speed rather than acceptable data loss.'
WHERE id = 788;

-- ID 789: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Section 3 (Contingency Planning Guide), backup frequency must be at least as frequent as the RPO to limit data loss within acceptable thresholds. An 8-hour backup interval with a 4-hour RPO means a failure could result in up to 8 hours of data loss — double the acceptable threshold. Relating the backup interval to RTO is incorrect because RTO measures system restoration time, whereas the mismatch here concerns data loss tolerance, which is governed by RPO.'
WHERE id = 789;

-- ID 790: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Section 5.2 (Change Enablement Practice), the first step in formal change management is submitting a change request that documents the proposed modification, business justification, risk assessment, and expected impact. This request must be reviewed and approved before any development or deployment activity proceeds. Performing regression testing first is incorrect because testing occurs after the change has been approved and developed, not as the initial step in the change management workflow.'
WHERE id = 790;

-- ID 791: System Availability and Change Management
UPDATE questions SET
  explanation = 'The CAB should prioritize the change''s potential impact on financial reporting accuracy, per ITIL 4 Section 5.2 (Change Enablement Practice), especially for a tax calculation module near year-end when errors could affect regulatory filings. Ensuring reliable rollback procedures exist is essential if the change causes unexpected issues. The programming language used for the modification is incorrect as the most important consideration because technical implementation details are secondary to the financial reporting integrity and business risk that the CAB must evaluate.'
WHERE id = 791;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (4 questions)
-- ============================================================

-- ID 816: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'This is a phishing attack, a social engineering technique that uses fraudulent communications appearing to come from a trusted source to trick individuals into revealing sensitive credentials (NIST SP 800-61 Section 3.2, Computer Security Incident Handling Guide). The use of company branding and official formatting increases perceived legitimacy. A Denial of Service attack is incorrect because it disrupts system availability by overwhelming resources with traffic rather than using deceptive communications to harvest credentials.'
WHERE id = 816;

-- ID 817: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'This is a SQL injection attack, where an attacker inserts malicious SQL statements into input fields that the application passes directly to the database without proper validation or parameterization (NIST SP 800-95 Section 4, Guide to Secure Web Services). This enables unauthorized data extraction, modification, or deletion from the backend database. Cross-site scripting (XSS) is incorrect because it injects malicious client-side scripts into web pages rendered for other users rather than executing database commands on the server.'
WHERE id = 817;

-- ID 818: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Social engineering is the threat most difficult to prevent with technical controls alone because it exploits human psychology rather than system vulnerabilities (NIST SP 800-53 Section AT-2, Literacy Training and Awareness). While email filters and MFA provide partial mitigation, the primary defense is security awareness training targeting human behavior. Malware is incorrect because it can be significantly mitigated through technical controls such as endpoint protection, patching, and application whitelisting without relying primarily on human judgment.'
WHERE id = 818;

-- ID 819: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'This is a Business Email Compromise (BEC) attack, a targeted form of spear phishing where attackers impersonate trusted executives using look-alike email domains to deceive employees with financial authority into making unauthorized wire transfers (NIST SP 800-177 Section 4, Trustworthy Email). BEC exploits urgency and authority to bypass normal approval controls. Ransomware is incorrect because it involves encrypting victim systems and demanding payment for decryption keys, not impersonating executives via deceptive email communications.'
WHERE id = 819;

COMMIT;
