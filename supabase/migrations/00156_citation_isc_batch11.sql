-- Migration: Citation backfill — ISC batch 11 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 5423: Change Management
UPDATE questions SET
  explanation = 'Under AT-C Section 205.34, the service auditor must evaluate identified deviations to determine their nature, cause, and effect on operating effectiveness of controls. Three deviations out of 40 (7.5%) must be individually assessed for root cause rather than automatically dismissed or used to invalidate the entire control. While some may assume a fixed pass/fail threshold applies, AT-C requires judgment-based evaluation of whether deviations represent isolated incidents or a systematic control deficiency.'
WHERE id = 5423;

-- ID 5424: Change Management
UPDATE questions SET
  explanation = 'COBIT 2019 BAI10 (Manage Configuration) requires that configuration records be verified against the actual IT environment to ensure accuracy and completeness. Reconciling CMDB records against automated discovery tool scans is the most effective procedure because it identifies discrepancies between documented and actual configurations. Unlike reviewing procedures or checking access controls, which address process governance rather than data accuracy, discovery-tool reconciliation directly validates that the CMDB reflects the real production environment.'
WHERE id = 5424;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (3 questions)
-- ============================================================

-- ID 3523: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'The correct answer is the SELECT statement with FROM and WHERE clauses. Per COBIT 2019 DSS06 (Manage Business Process Controls), understanding how data is queried and retrieved is fundamental to data management. SELECT specifies columns, FROM identifies the source table, and WHERE filters rows by condition. Unlike INSERT INTO, which adds new records to a table, or CREATE TABLE, which defines a new table structure, SELECT is the standard SQL command for data retrieval operations.'
WHERE id = 3523;

-- ID 3524: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'OLAP cube analysis is the most appropriate technique, as recognized by COBIT 2019 APO14 (Manage Data). OLAP enables multidimensional exploration of aggregated data, allowing the CFO to drill down from annual to quarterly revenue, slice by product lines, and dice across regions interactively. While OLTP systems handle transaction processing rather than analytical queries, and full table scans are inefficient for large datasets, OLAP is specifically designed for the complex multi-dimensional analysis this scenario requires.'
WHERE id = 3524;

-- ID 3525: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'The correct answer is that data lineage documents data''s complete journey from origin through all transformations to final reporting. Per COBIT 2019 APO14 (Manage Data), data lineage enables traceability from reported figures back to source transactions and supports impact analysis when upstream changes occur. Unlike audit logs, which track user access events, or infrastructure topology diagrams, which describe server locations, data lineage specifically maps the flow and transformation history of data across systems.'
WHERE id = 3525;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (1 questions)
-- ============================================================

-- ID 5444: Data Protection Technologies
UPDATE questions SET
  explanation = 'K-anonymity with k=5 means every combination of quasi-identifiers in the dataset has at least five matching records, as described in NIST SP 800-188 (De-Identifying Government Datasets). This ensures no individual can be distinguished from at least four others sharing the same attribute values, providing protection against re-identification attacks. However, unlike l-diversity or t-closeness, basic k-anonymity does not protect against attribute disclosure when sensitive values lack diversity within an equivalence class.'
WHERE id = 5444;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 3490: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Automated authorization controls are most critical in the financing cycle, consistent with COBIT 2019 DSS06.02 (Control the Processing of Information). Financing transactions such as debt issuance, stock repurchases, and dividend declarations are high-value events requiring board or executive-level approval. Automated authorization ensures these significant commitments cannot be processed without proper approval levels. Unlike input validation or batch totals, which address data accuracy rather than approval authority, authorization controls prevent unauthorized financial commitments.'
WHERE id = 3490;

-- ID 3491: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI05 (Manage Organizational Change), a big bang ERP implementation activates all modules simultaneously, creating higher risk because a problem in any module can disrupt all business functions at once with no fallback. This approach requires more extensive pre-go-live testing and contingency planning. In contrast, a phased rollout reduces risk by implementing modules sequentially, allowing lessons learned and issue resolution before subsequent modules go live, though it requires managing temporary interfaces between old and new systems.'
WHERE id = 3491;

-- ID 3492: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 DSS06.02 (Control the Processing of Information), automated duplicate detection controls should validate all relevant matching fields to prevent erroneous or fraudulent payments. When the duplicate check ignores invoice amount, a vendor or internal actor could resubmit the same invoice with a modified dollar amount, bypassing the control and causing overpayment. Unlike a two-field check limited to vendor and invoice number alone, a three-field match including amount catches this manipulation and strengthens payment integrity.'
WHERE id = 3492;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (3 questions)
-- ============================================================

-- ID 3702: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 Section 3.5, full-scale simulations (functional exercises) involve the IR team executing actual technical response actions—isolating systems, conducting forensics, and deploying countermeasures—in a realistic environment. This validates both procedural knowledge and hands-on technical capability under pressure. Unlike tabletop exercises, which discuss responses theoretically through guided scenarios without taking physical actions, full-scale simulations reveal gaps in tools, skills, and coordination that only surface during active response.'
WHERE id = 3702;

-- ID 3703: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 Section 3.4 (Post-Incident Activity), reconstructing a detailed attack timeline is a critical post-incident analysis artifact. The timeline maps the full sequence of attacker activities—from initial phishing compromise through persistence, lateral movement, privilege escalation, and data access—to identify all affected systems and security gaps. Unlike a simple incident summary providing a high-level overview, the attack timeline enables root-cause analysis and reveals the detection failures that allowed three months of undetected access.'
WHERE id = 3703;

-- ID 3704: Incident Response and Recovery
UPDATE questions SET
  explanation = 'The correct answer is maintaining chain of custody with write-blocking and documentation. Per NIST SP 800-86 Section 3.1 (Forensic Process), digital evidence admissibility requires write-blocking devices to prevent modification, an unbroken chain of custody, and thorough documentation of all forensic procedures. While fast forensic tools may expedite analysis, speed is irrelevant to admissibility—proper procedure determines acceptance. Unlike analyzing original media directly, which risks altering evidence, forensic best practice requires working from verified copies.'
WHERE id = 3704;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 3851: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Per ITIL 4 Foundation (Section 4.3), the "focus on value" guiding principle emphasizes that every organizational activity should link back, directly or indirectly, to value for stakeholders. Value is co-created with service consumers and encompasses functionality, reliability, assurance, and experience. Unlike cost-reduction or efficiency-focused principles that assume organizational perspective, "focus on value" requires first understanding what stakeholders actually value and then aligning all activities accordingly.'
WHERE id = 3851;

-- ID 3852: IT Audit Frameworks
UPDATE questions SET
  explanation = 'The correct answer is that Level 2 (Managed) indicates a process is planned, monitored, and adjusted with appropriately controlled work products. Per COBIT 2019''s capability maturity model (based on ISO/IEC 33000), Level 2 represents the transition from ad hoc execution to managed performance. Unlike Level 0 (Incomplete), where the process fails to achieve its purpose, Level 2 demonstrates active management oversight. However, organizational-level standardization occurs at Level 3 (Established), not Level 2.'
WHERE id = 3852;

-- ID 3853: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Per COBIT 2019 MEA03 (Managed Compliance with External Requirements) and ISACA ITAF Standard 1202, a risk-based audit approach allocates resources based on assessed risk levels across IT areas. Areas with higher inherent risk, greater control risk, or significant prior findings receive more intensive audit procedures. This ensures effort focuses where it provides the most value. Unlike compliance-based approaches that test every control uniformly regardless of risk, the risk-based method prioritizes high-risk areas and allocates resources proportionally.'
WHERE id = 3853;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 3825: IT General Controls
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI06.01 (Evaluate, Prioritize, and Authorize Change Requests), changes must be tested in an environment mirroring production before deployment. A staging environment identifies compatibility issues, performance problems, and functional defects under production-like conditions before changes reach live systems. Without staging-environment testing, defects may not surface until they affect users and business operations. Unlike code reviews or developer testing alone, which occur in isolated environments, staging validates changes against the full production configuration stack.'
WHERE id = 3825;

-- ID 3826: IT General Controls
UPDATE questions SET
  explanation = 'This represents a segregation of duties conflict, as addressed by AICPA Trust Services Criteria CC6.1 and COBIT 2019 DSS06.03. Having both payroll processing and vendor account approval capabilities allows the clerk to create a fictitious vendor, approve the account, and route fraudulent payments. Unlike least-privilege violations, which involve excessive access within a single function, segregation of duties conflicts combine incompatible functions that enable fraud without requiring collusion. Access reviews should identify and remediate such incompatible role combinations.'
WHERE id = 3826;

-- ID 3827: IT General Controls
UPDATE questions SET
  explanation = 'A data center failure directly tests business continuity and disaster recovery controls, as defined in COBIT 2019 DSS04 (Manage Continuity). Effective BC/DR controls include offsite backups, alternate processing facilities, documented recovery procedures, regular testing, and defined RTO/RPO objectives within IT general controls. Unlike program change management or logical access controls, which address ongoing operational risks, BC/DR controls specifically ensure the organization can resume critical operations after a catastrophic infrastructure failure.'
WHERE id = 3827;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (3 questions)
-- ============================================================

-- ID 3455: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under the shared responsibility model described in NIST SP 800-145 and the AICPA Trust Services Criteria, SaaS customers are responsible for user access governance, authentication management, and data handling within the application. The provider manages the entire technology stack—infrastructure, operating system, middleware, and application code. Unlike IaaS or PaaS models where customer responsibilities extend to OS or runtime configuration, SaaS limits customer responsibility to access controls and how the application is used.'
WHERE id = 3455;

-- ID 3456: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'This architecture pattern is fog computing, as defined by NIST SP 500-325 (Fog Computing Conceptual Model). Fog computing extends cloud capabilities to the network edge, processing data locally near IoT devices before sending aggregated results to the cloud for further analysis. Unlike pure edge computing, which processes data entirely at the device level without a middle coordination layer, fog computing provides an intermediary tier between IoT sensors and cloud platforms, optimizing bandwidth and reducing latency for real-time processing.'
WHERE id = 3456;

-- ID 3457: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-175B (Guideline for Using Cryptographic Standards), DES with 56-bit keys is deprecated because modern computing power makes brute-force attacks feasible. NIST requires a minimum of AES-128 or AES-256 encryption for protecting sensitive data in transit, including VPN connections. Financial data transmitted using DES encryption is vulnerable to interception and decryption. Unlike AES, which uses 128-bit or larger keys providing significantly stronger resistance to brute-force attacks, DES''s 56-bit key space is computationally trivial to exhaust.'
WHERE id = 3457;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (3 questions)
-- ============================================================

-- ID 3734: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Article 17(3), a controller may refuse a right-to-erasure request when processing is necessary for compliance with a legal obligation, exercise of freedom of expression, public health purposes, archiving in the public interest, or establishment of legal claims. These statutory exceptions recognize that certain legal requirements override the data subject''s erasure right. Unlike factors such as investment in data collection or data age, which are not valid grounds for refusal, Article 17(3) exceptions are narrowly defined and legally justified.'
WHERE id = 3734;

-- ID 3735: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Cross-site tracking for targeted advertising requires consent under GDPR Article 6(1)(a) and ePrivacy Directive Article 5(3). The European Data Protection Board has clarified that legitimate interests alone generally cannot justify behavioral tracking across websites due to its intrusive nature. A compliant cookie consent mechanism providing clear information and obtaining affirmative opt-in consent is required. Unlike contractual necessity, which covers processing essential to service delivery, advertising tracking is not necessary for the core service and thus requires explicit consent.'
WHERE id = 3735;

-- ID 3736: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Per NIST SP 800-66 Rev. 2 (Implementing the HIPAA Security Rule) and 45 CFR § 164.308(a)(1)(ii)(A), covered entities must conduct a thorough assessment of potential risks and vulnerabilities to the confidentiality, integrity, and availability of electronic protected health information (ePHI). This risk analysis is the foundation of the security management process and drives selection of appropriate safeguards. Unlike a gap analysis focused on compliance checkboxes, the HIPAA risk analysis requires identifying and evaluating specific threats to ePHI in the entity''s environment.'
WHERE id = 3736;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (3 questions)
-- ============================================================

-- ID 3600: Security and Control Frameworks
UPDATE questions SET
  explanation = 'The correct answer is Organizational, People, Physical, and Technological. ISO 27002:2022 Sections 5 through 8 reorganized 93 controls into these four themes: Organizational (37 controls), People (8 controls), Physical (14 controls), and Technological (34 controls), replacing the previous 14-domain structure. Unlike Administrative/Technical/Physical/Operational, which is a generic control classification, ISO 27002:2022 uses its own specific taxonomy. Preventive/Detective/Corrective/Compensating describes control functions, not the ISO framework''s organizational structure.'
WHERE id = 3600;

-- ID 3601: Security and Control Frameworks
UPDATE questions SET
  explanation = 'The correct answer is that COBIT 2019 and NIST CSF are complementary frameworks with different scopes. COBIT 2019 addresses the full range of IT governance and management across 40 objectives, while NIST CSF focuses specifically on cybersecurity risk management through five core functions (Identify, Protect, Detect, Respond, Recover). Organizations commonly map controls between them for comprehensive coverage. Unlike the claim that COBIT fully replicates NIST CSF, each framework has unique elements, and NIST CSF is widely used by both public and private sector organizations.'
WHERE id = 3601;

-- ID 3602: Security and Control Frameworks
UPDATE questions SET
  explanation = 'The correct answer is identifying and classifying all assets and mapping data flows. Per NIST SP 800-207 Section 2 (Zero Trust Architecture), implementation begins with comprehensive visibility—discovering all assets, data flows, and user populations—before defining access policies. Without this foundational inventory, the organization cannot create meaningful access rules. Unlike deploying micro-segmentation first, which requires knowing what assets exist before defining segments, or changing authentication methods, which requires understanding the user population, asset discovery must precede all other zero trust steps.'
WHERE id = 3602;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (3 questions)
-- ============================================================

-- ID 3669: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'The correct answer is enabling detection of multi-stage attacks across systems. Per NIST SP 800-92 Section 4 (Log Management Infrastructure), centralized log aggregation in a SIEM provides a unified timeline of events across the entire environment, enabling correlation of individually benign events that reveal attack patterns. An attacker may probe a firewall, exploit a web server, and move laterally—events only recognizable as an attack when correlated. Unlike the claim that aggregation reduces log volume, it consolidates logs without reducing what is generated at the source.'
WHERE id = 3669;

-- ID 3670: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'The correct answer is separation of duties. Per AICPA Trust Services Criteria CC6.1 and CC6.3, separation of duties divides critical functions among different individuals to prevent fraud, errors, and abuse. Requiring different people to initiate and approve transactions ensures that committing fraud requires collusion. Unlike least privilege, which limits each user to minimum access needed for their role but does not address splitting duties, or mandatory access control, which classifies resources by sensitivity level, separation of duties prevents one person from controlling an entire transaction.'
WHERE id = 3670;

-- ID 3671: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'The correct answer is deny all traffic unless explicitly permitted (default-deny). Per NIST SP 800-41 Rev. 1 Section 4.1 (Firewall Policy), best practice mandates a default-deny posture where only authorized, known traffic passes through explicitly configured rules. All unknown or potentially malicious traffic is blocked by default. Unlike a default-allow posture, which permits any traffic not specifically blocked and creates an overly permissive environment, default-deny ensures the firewall only passes traffic the organization has intentionally approved.'
WHERE id = 3671;

-- ============================================================
-- SOC ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 3769: SOC Engagements
UPDATE questions SET
  explanation = 'Per AT-C Section 320.09 (Reporting on an Examination of Controls), the scope of a SOC 1 engagement includes all services relevant to user entities'' internal control over financial reporting. Payroll processing, benefits administration, and tax filing all generate transactions and data flowing into user entities'' financial statements, so all three services are in scope. Unlike limiting scope to the highest-volume service alone, AT-C 320 requires that every service potentially affecting ICFR be included in the engagement boundaries.'
WHERE id = 3769;

-- ID 3770: SOC Engagements
UPDATE questions SET
  explanation = 'Per AT-C Section 320.20 and the AICPA SOC 1 Guide, the inclusive method requires the service auditor to include the subservice organization''s relevant controls within the scope of the examination. The service auditor tests these controls and includes them in the system description, control objectives, and testing results. Unlike the carve-out method, which excludes subservice organization controls from testing and instead identifies them as complementary subservice organization controls (CSOCs), the inclusive method provides user entities with comprehensive control coverage in a single report.'
WHERE id = 3770;

-- ID 3771: SOC Engagements
UPDATE questions SET
  explanation = 'Per AU-C Section 402.12 and AT-C Section 320, when a SOC report does not cover the user entity''s full reporting period, the user auditor must evaluate whether controls changed after the report period ended. The auditor should perform additional procedures—such as inquiring about changes, reviewing subsequent reports, or requesting a bridge letter—to address the gap between June 30 and December 31. Unlike assuming the report automatically covers the full fiscal year, the auditor must obtain evidence that controls operated consistently during the uncovered period.'
WHERE id = 3771;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (2 questions)
-- ============================================================

-- ID 5463: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Per AT-C Section 320.35(b) and the AICPA SOC 2 Guide, complementary subservice organization controls (CSOCs) are controls the service organization''s system assumes the subservice organization has implemented for overall control objectives to be achieved. Under the carve-out method, CSOCs are identified so user entities understand that additional controls outside the report''s scope are necessary. Unlike complementary user entity controls (CUECs), which describe responsibilities of the user entity itself, CSOCs apply specifically to the subservice organization''s expected control environment.'
WHERE id = 5463;

-- ID 5464: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Per AT-C Section 320.33 and the AICPA SOC 2 Guide, significant changes to the system environment during the examination period—such as a data center migration—mean controls may have operated differently before and after the change. The user entity auditor should evaluate whether the service auditor tested controls in both environments and whether the opinion adequately covers the entire period. Unlike assuming a mid-period change invalidates the report, the significance depends on whether the auditor addressed both environments in the testing and reporting.'
WHERE id = 5464;

-- ============================================================
-- SOC REPORTING (2 questions)
-- ============================================================

-- ID 3903: SOC Reporting
UPDATE questions SET
  explanation = 'The correct answer is to remediate deficiencies and operate improved controls throughout the next examination period. Per AT-C Section 205.72, a qualified opinion results from identified control deficiencies, and removal requires demonstrating sustained remediation over a full examination period. The organization should fix underlying issues, implement improved procedures, and operate them consistently. Unlike switching auditors, which does not remediate the underlying deficiency, or ceasing affected activities, which creates a control environment gap rather than addressing the root cause.'
WHERE id = 3903;

-- ID 3904: SOC Reporting
UPDATE questions SET
  explanation = 'The correct answer is services unrelated to the criteria being evaluated. Per AICPA SOC Guidance (DC Section 200) and AT-C Section 320.35, the system description must include all components relevant to in-scope services—infrastructure, software, people, procedures, and data—while services outside the engagement scope may be appropriately excluded. Unlike access controls for in-scope applications, which are directly relevant and must be included, or supporting infrastructure for in-scope services, which is part of the system boundary, unrelated services fall legitimately outside scope.'
WHERE id = 3904;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 3797: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'These controls are classified as complementary user entity controls (CUECs). Per the AICPA Trust Services Criteria and AT-C Section 320.35(a), CUECs are controls that user entities must implement at their own organizations for the service organization''s control objectives to be fully met. In this case, restricting access to authorized employees is the user entity''s responsibility. Unlike the service organization''s own controls or CSOCs (which apply to subservice organizations), CUECs specifically inform user entities of responsibilities they must fulfill.'
WHERE id = 3797;

-- ID 3798: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'The security category is addressed through the common criteria (CC1 through CC9), as defined by the AICPA 2017 Trust Services Criteria. Because security is the foundation of the Trust Services framework, it is the only mandatory category and is entirely addressed through these common criteria, which establish controls protecting the system from unauthorized access. Unlike availability, processing integrity, confidentiality, and privacy—which have their own supplemental criteria—security is embedded in the common criteria that apply to every SOC 2 engagement.'
WHERE id = 3798;

-- ID 3799: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Per the AICPA 2017 Trust Services Criteria, the supplemental confidentiality criteria (C1.1 and C1.2) address how the entity identifies confidential information and protects it from unauthorized access, disclosure, and improper disposal. Relevant controls include data classification schemes, access restrictions, encryption, secure disposal procedures, and contractual confidentiality agreements. Unlike the common criteria, which address security controls applicable to all SOC 2 engagements, the confidentiality supplemental criteria specifically govern the lifecycle management of information designated as confidential.'
WHERE id = 3799;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 3880: SOC Testing Controls
UPDATE questions SET
  explanation = 'Per AT-C Section 205.34 and the AICPA SOC 2 Guide, management overrides of controls require careful evaluation by the service auditor. The auditor must determine whether each override was authorized by appropriate personnel, documented with a valid business reason, and subsequently reviewed. If overrides lack proper authorization and documentation, they may constitute control deficiencies. Unlike treating all overrides as automatic failures, the auditor must exercise professional judgment to assess whether overrides were reasonable and properly governed.'
WHERE id = 3880;

-- ID 3881: SOC Testing Controls
UPDATE questions SET
  explanation = 'The correct answer is inspection (corroborating evidence across independent sources). Per AT-C Section 205.29, inspection involves examining records and documents to obtain audit evidence. Comparing a change log against a change management system verifies documented approvals through dual-source corroboration, which is more reliable than a single source. Unlike inquiry, which involves asking questions of knowledgeable personnel, or a walkthrough, which traces a single transaction through a process end-to-end, inspection systematically compares records from two independent systems.'
WHERE id = 3881;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (5 questions)
-- ============================================================

-- ID 3559: System Availability and Change Management
UPDATE questions SET
  explanation = 'Geographic separation primarily mitigates regional disaster risk. Per NIST SP 800-34 Rev. 1 Section 3.4 (Contingency Planning Guide), separating primary and recovery sites geographically ensures that a single regional event—such as a natural disaster, flood, or widespread power outage—cannot simultaneously destroy both locations. Unlike software defects, which exist in code regardless of data center location, or employee turnover, which is a human resources issue, geographic separation specifically addresses the risk of co-located infrastructure being affected by the same physical event.'
WHERE id = 3559;

-- ID 3560: System Availability and Change Management
UPDATE questions SET
  explanation = 'This scenario illustrates maximum tolerable downtime (MTD). Per NIST SP 800-34 Rev. 1 Section 3.2, the business impact analysis quantifies how long critical systems can be unavailable before causing unacceptable business consequences. Here, the 2-day threshold before missing SEC filing deadlines establishes the GL system''s MTD during the close period, which then drives the recovery time objective (RTO). Unlike recovery point objective (RPO), which measures acceptable data loss in time, MTD establishes the outer boundary for total system unavailability.'
WHERE id = 3560;

-- ID 3561: System Availability and Change Management
UPDATE questions SET
  explanation = 'The correct answer is shutting down primary systems and failing over to the DR site. Per NIST SP 800-34 Rev. 1 Section 3.5.3, a full-interruption test is the most comprehensive DR test type—it involves actually ceasing primary operations and transferring processing to the recovery site to validate the entire recovery process end-to-end. Unlike a checklist review, which merely reviews documentation without activating systems, or a tabletop exercise, which is a verbal walkthrough of response procedures, a full-interruption test proves recoverability under real conditions.'
WHERE id = 3561;

-- ID 3562: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI06.01 (Manage Changes), back-out plans must be tested before production changes to validate that the rollback mechanism actually works when needed. An untested backup or rollback procedure creates a false sense of security—the plan is only as reliable as its last successful test restore. Unlike the assumption that back-out plans are optional or that low-risk changes need no rollback plan, COBIT requires validated rollback procedures for all production changes because any change carries a risk of unexpected failure.'
WHERE id = 3562;

-- ID 3563: System Availability and Change Management
UPDATE questions SET
  explanation = 'The correct answer is RAID (Redundant Array of Independent Disks). Per NIST SP 800-34 Rev. 1 Section 5.1.2, RAID distributes and replicates data across multiple storage devices to provide fault tolerance. Different RAID levels (1, 5, 6, 10) offer varying combinations of mirroring and striping with parity, ensuring data remains accessible if one drive fails. Unlike tape backups, which require manual restoration and do not provide real-time availability, RAID maintains continuous data access even during a single-disk failure.'
WHERE id = 3563;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (3 questions)
-- ============================================================

-- ID 3635: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'The primary risk is a confidentiality breach. Per NIST SP 800-83 Rev. 1 (Guide to Malware Incident Prevention and Handling), spyware capturing screenshots, audio, and email on executive laptops exposes sensitive strategic plans, financial data, M&A activities, and client information. Executives handle the organization''s most confidential data, making information exposure the critical risk. While spyware may also cause system performance degradation, the confidentiality impact of comprehensive surveillance on executive communications far outweighs any operational inconvenience.'
WHERE id = 3635;

-- ID 3636: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-40 Rev. 4 (Guide to Enterprise Patch Management Technologies), the primary concern is the combined exposure window. Quarterly scanning means new vulnerabilities may go undetected for up to 90 days, and 120-day remediation for critical vulnerabilities creates unacceptable risk exposure. Together, a critical vulnerability could persist over 200 days from introduction to remediation. NIST recommends continuous or monthly scanning with critical vulnerabilities remediated within 15–30 days. Unlike addressing scanning or remediation in isolation, the auditor must evaluate the total exposure timeline.'
WHERE id = 3636;

-- ID 3637: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'This is a supply chain attack. Per NIST SP 800-161 Rev. 1 Section 1.2 (Cybersecurity Supply Chain Risk Management), compromising a trusted third-party provider such as a CDN to inject malicious content targets the supply chain rather than the organization directly. Users receive malicious JavaScript through the trusted CDN channel, making detection difficult. Unlike a direct cross-site scripting (XSS) attack, which exploits vulnerabilities in the target application''s own code, a supply chain attack leverages trust in a third-party service to deliver the payload.'
WHERE id = 3637;

COMMIT;
