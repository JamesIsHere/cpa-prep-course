-- Migration: Citation backfill — ISC batch 8 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 3512: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under COBIT 2019 APO14 (Data Management), data lakes employ a schema-on-read approach, storing raw data in its native format without requiring predefined structure at ingestion. This flexibility allows analysts to apply different schemas as analytical needs evolve, making schema-on-read the primary advantage over traditional data warehouses. Unlike data warehouses that enforce schema-on-write and require upfront structural decisions, data lakes defer schema definition until query time, enabling greater analytical adaptability.'
WHERE id = 3512;

-- ID 3513: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per COBIT 2019 APO14.03, metadata is descriptive information about data assets — including definitions, data types, relationships, lineage, ownership, and quality metrics. It enables data discovery and governance by providing context about an organization''s data without being the actual business data itself. Unlike operational or transactional data that contains the core business records, metadata serves as the catalog layer that makes data assets findable, understandable, and manageable across the enterprise.'
WHERE id = 3513;

-- ID 3514: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per NIST SP 800-122, Section 4.2, personally identifiable information such as Social Security numbers must be protected through encryption at rest (e.g., AES-256) or tokenization combined with access restriction. Immediate remediation eliminates the exposure that plain-text storage creates for regulatory violations and breach risk. Although relocating servers to a different facility may seem protective, it does not address the fundamental vulnerability of unencrypted sensitive data, which remains readable regardless of physical location.'
WHERE id = 3514;

-- ID 3515: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under COBIT 2019 APO14.02, data stewards manage day-to-day data quality and standards within their domain, enforcing naming conventions, resolving quality issues, managing metadata, and ensuring compliance with governance policies on behalf of data owners. They are the operational guardians of data integrity and consistency. Unlike data custodians who manage the physical infrastructure and technical storage environments, data stewards focus on data meaning, quality rules, and business-level governance.'
WHERE id = 3515;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5438: Data Protection Technologies
UPDATE questions SET
  explanation = 'Per NIST SP 800-210 (General Access Control Guidance for Cloud Systems), a Cloud Access Security Broker (CASB) provides application-level visibility and control for cloud services, including DLP enforcement within SaaS applications, shadow IT detection, and granular identity-based access policies. This cloud-aware inspection capability distinguishes CASBs from traditional controls. While traditional network firewalls filter traffic by IP addresses and port numbers at the network layer, CASBs understand cloud application context and can enforce data protection policies within those applications.'
WHERE id = 5438;

-- ID 5439: Data Protection Technologies
UPDATE questions SET
  explanation = 'Under GDPR Article 35, a Data Protection Impact Assessment (DPIA) systematically identifies, assesses, and mitigates privacy risks to data subjects before high-risk processing begins. The DPIA evaluates necessity, proportionality, and compliance measures for the proposed processing activity, making risk identification its primary objective. Unlike infrastructure cost analyses that focus on technical expenditures or competitive benchmarking, a DPIA is specifically concerned with protecting the rights and freedoms of individuals whose personal data will be processed.'
WHERE id = 5439;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 3481: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI05 and ASC 360-10 (Property, Plant, and Equipment), the fixed assets module''s depreciation configuration directly impacts financial statement accuracy. Depreciation methods, useful lives, and salvage values must align with the entity''s accounting policies under GAAP to produce correct depreciation expense and net book values. Incorrect configuration produces materially misstated financial statements, whereas proper alignment with accounting standards ensures that automated calculations flow accurately through all related accounts.'
WHERE id = 3481;

-- ID 3482: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 DSS06.02 (Process Business Controls), an automated credit limit check functions as a preventive control and is most effective during sales order entry, before goods are committed or shipped. Verifying creditworthiness at the earliest transaction point prevents extending credit to high-risk customers. Unlike placing the check at the billing or cash collection stage — which occurs after goods have already left the warehouse — early-stage verification avoids irrecoverable losses from shipping to uncreditworthy customers.'
WHERE id = 3482;

-- ID 3483: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 DSS06.03 (Manage Roles, Responsibilities, Access Privileges and Levels of Authority), automated recurring journal entries still require proper authorization of the underlying templates. The auditor should review who authorized the templates, verify the calculations, and trace sample entries to supporting documentation. Although system-generated entries may appear inherently reliable, misconfigured templates can produce incorrect amounts, unlike manually reviewed entries where errors may be caught during the human approval process.'
WHERE id = 3483;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (2 questions)
-- ============================================================

-- ID 3695: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61, Section 2.3.4, organizations should establish relationships with external parties — including law enforcement, forensic firms, and legal counsel — before incidents occur, because assembling these resources during a crisis causes critical delays. Pre-established contacts enable faster and more coordinated response when incidents arise. However, these external relationships are intended to supplement rather than replace the internal incident response team, which retains responsibility for initial detection and containment activities.'
WHERE id = 3695;

-- ID 3696: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61, Section 3.1.2, tabletop exercises are discussion-based simulations where the incident response team walks through a realistic scenario to test the IR plan, clarify roles, identify communication gaps, and validate decision-making without impacting production systems. The primary purpose is procedural readiness evaluation. Unlike technical recovery drills that test backup restoration speeds or network throughput through hands-on execution, tabletop exercises focus specifically on team coordination and decision-making processes.'
WHERE id = 3696;

-- ============================================================
-- IT AUDIT FRAMEWORKS (2 questions)
-- ============================================================

-- ID 3844: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Under ITIL 4 (AXELOS, Section 5), IT management activities are organized into 34 practices spanning general management, service management, and technical management categories. Incident management is a key service management practice focused on restoring normal service operation as quickly as possible following a disruption. Unlike ITIL v3''s narrower process-based structure, ITIL 4 uses the broader concept of practices to holistically encompass people, technology, and process dimensions of IT management.'
WHERE id = 3844;

-- ID 3845: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Per AT-C Section 205.35, evaluating control objectives involves assessing whether controls are suitably designed to achieve their intended objectives (design adequacy) and whether they operated effectively during the evaluation period (operating effectiveness). Defined criteria or control objectives serve as the benchmarks for this evaluation. Unlike financial statement preparation, which is a management responsibility, or tax computation, which falls outside IT audit scope, control objective evaluation is a core IT audit activity.'
WHERE id = 3845;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 3817: IT General Controls
UPDATE questions SET
  explanation = 'Per COBIT 2019 DSS05.05 (Manage Physical Access to IT Assets), badge-access doors, security cameras, environmental monitoring, and visitor logs constitute physical and environmental controls that protect the infrastructure supporting information systems. These controls restrict unauthorized physical entry and detect environmental threats to computing resources. Although logical access controls protect digital resources through authentication and authorization, physical controls address the distinct risk of unauthorized physical proximity to hardware and data center equipment.'
WHERE id = 3817;

-- ID 3818: IT General Controls
UPDATE questions SET
  explanation = 'Per COBIT 2019 DSS05.04 (Manage Identity and Build Access Rights), user access must be promptly revoked upon employee termination as part of the access management ITGC domain. Fifteen active accounts for former employees — some dating back 8 months — represent a failure in user de-provisioning controls. Unlike password policy violations that affect currently active employees, stale accounts belonging to terminated personnel create unauthorized access vectors with no legitimate business purpose and elevated fraud risk.'
WHERE id = 3818;

-- ID 3819: IT General Controls
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI07 (Manage IT Change Acceptance and Transitioning), the testing and quality assurance phase verifies that the developed solution meets specified requirements through unit, integration, system, and user acceptance testing. This phase identifies defects before production deployment, reducing the risk of introducing errors into the live environment. Unlike the requirements gathering phase that defines what the solution should accomplish, the testing phase validates whether the implemented solution actually meets those specifications.'
WHERE id = 3819;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (4 questions)
-- ============================================================

-- ID 3444: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-204 (Security Strategies for Microservices), an API gateway acts as a reverse proxy that handles cross-cutting concerns including request routing to backend services, authentication enforcement, rate limiting, and protocol translation. It centralizes these functions so individual microservices need not implement them independently. However, an API gateway does not replace network firewalls or modify databases directly, unlike application servers that may perform direct data manipulation operations.'
WHERE id = 3444;

-- ID 3445: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-204 (Security Strategies for Microservices-based Application Systems), microservices architecture excels when different components have varying scaling needs and must be independently deployable. With 15 subsidiaries having unique data formats and business rules, each integration can be developed, deployed, and scaled independently. While monolithic architectures are better suited for small teams with shared databases and tight deadlines, microservices provide the modularity required for complex, heterogeneous integration requirements.'
WHERE id = 3445;

-- ID 3446: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-41 and COBIT 2019 DSS05.02 (Manage Network and Connectivity Security), the absence of VLANs or network segmentation means all departments — including guest Wi-Fi — share the same broadcast domain, violating the principle of least privilege at the network level. This exposes sensitive financial and HR data to unauthorized access from any device on the network. Unlike concerns about equipment brand or power consumption, the lack of segmentation represents a fundamental security architecture deficiency enabling unrestricted lateral movement.'
WHERE id = 3446;

-- ID 3447: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per the OSI reference model (ISO/IEC 7498-1), the Network layer (Layer 3) handles logical addressing using IP addresses and routes packets between different networks. Routers operate at this layer to forward traffic across network boundaries based on destination addresses. Unlike the Data Link layer (Layer 2), which handles MAC addresses and local frame delivery within a single network segment, Layer 3 provides the inter-network routing capability that enables communication across distinct networks.'
WHERE id = 3447;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (4 questions)
-- ============================================================

-- ID 3723: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Article 35, a Data Protection Impact Assessment (DPIA) must be conducted before processing that is likely to result in high risk to the rights and freedoms of data subjects, particularly when using new technologies or processing personal data at large scale. The DPIA must describe the processing, assess necessity and proportionality, and identify risk mitigation measures. Unlike a general business risk assessment focused on organizational impact, a DPIA specifically evaluates privacy risks to the individuals whose data will be processed.'
WHERE id = 3723;

-- ID 3724: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Article 25, privacy by design requires embedding data protection safeguards into the design and architecture of systems and business practices from the earliest development stages. This proactive approach builds privacy into the foundation rather than adding it after development is complete. Unlike privacy by default — which ensures only necessary personal data is processed without requiring user intervention — privacy by design encompasses the broader architectural framework for integrating protection throughout the entire system lifecycle.'
WHERE id = 3724;

-- ID 3725: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Chapter V (Articles 44-49), cross-border transfers of personal data outside the EU require appropriate safeguards. Standard contractual clauses (SCCs) approved by the European Commission are a recognized transfer mechanism providing legally binding data protection commitments between the data exporter and importer. While verbal agreements or general privacy policies might appear sufficient, they lack the enforceable contractual obligations the GDPR requires to ensure adequate protection for transferred personal data.'
WHERE id = 3725;

-- ID 3726: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Article 47, binding corporate rules (BCRs) are internal data protection policies adopted by multinational groups to authorize intra-group transfers of personal data outside the EU. BCRs must be approved by the competent supervisory authority and provide enforceable data subject rights across all subsidiaries worldwide. Unlike standard contractual clauses that govern individual bilateral transfer relationships, BCRs provide a comprehensive group-wide framework specifically designed for regular, recurring intra-organizational data flows.'
WHERE id = 3726;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3589: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST SP 800-207 (Zero Trust Architecture), Section 2.1, micro-segmentation creates granular security zones with individual access policies, limiting lateral movement within the network so that if an attacker compromises one system, the segmented architecture contains the breach and minimizes blast radius. This containment is the primary security benefit. While traditional perimeter defenses focus on preventing initial intrusion, micro-segmentation assumes breach may occur, whereas simply reducing firewall count would weaken rather than strengthen the security posture.'
WHERE id = 3589;

-- ID 3590: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST SP 800-12, Section 2.2, a security policy is a high-level document that expresses management''s intent, expectations, and mandatory directives for the organization''s information security program. The CISO''s document requiring MFA for remote access and encryption at rest reflects this management-level directive establishing mandatory requirements. Unlike procedures that provide detailed step-by-step implementation instructions for carrying out specific tasks, policies establish the mandatory requirements without specifying exactly how to implement them technically.'
WHERE id = 3590;

-- ID 3591: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST SP 800-12, Section 2.3, a standard defines mandatory, specific technical requirements that implement a policy — for example, requiring AES-256 for data at rest and TLS 1.3 for data in transit. Standards translate high-level policy directives into enforceable technical specifications. Unlike guidelines, which offer recommended but non-mandatory best practices that organizations may adopt at their discretion, standards are compulsory technical requirements that must be followed to maintain compliance with the security program.'
WHERE id = 3591;

-- ID 3592: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST SP 800-12, Section 2.4, a procedure provides detailed, step-by-step instructions for implementing standards and policies, including specific configuration commands and operational sequences that personnel must follow. Procedures ensure consistent execution of security tasks. Unlike policies that state management''s intent and direction at a high level without specifying implementation details, procedures specify the exact operational steps and technical commands required to achieve compliance with the organization''s security requirements.'
WHERE id = 3592;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 3658: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-41 Rev. 1 (Guidelines on Firewalls and Firewall Policy), next-generation firewalls (NGFWs) extend traditional stateful inspection with deep packet inspection, application-layer awareness, integrated intrusion prevention, and threat intelligence feeds. This enables security policies based on application identity and content rather than just network addresses. While traditional stateful firewalls filter traffic using only IP addresses and port numbers, NGFWs can identify and control specific applications regardless of the ports they use.'
WHERE id = 3658;

-- ID 3659: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-41 Rev. 1, a Web Application Firewall (WAF) operates at Layer 7 (Application) of the OSI model, inspecting HTTP/HTTPS traffic to detect and block web application attacks such as SQL injection and cross-site scripting by analyzing request content, headers, and parameters. Unlike Layer 3 devices that handle IP routing and packet forwarding without understanding application semantics, a WAF evaluates the content of web requests at the application protocol level to identify malicious patterns.'
WHERE id = 3659;

-- ID 3660: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-92 (Guide to Computer Security Log Management), event correlation is a core SIEM capability that analyzes relationships between events from multiple data sources to identify threat patterns that individual events alone would not reveal. For example, correlating a failed login from one location with a successful login from a distant location minutes later may indicate credential compromise. Unlike basic log storage that simply archives event records for later review, correlation actively identifies threats through cross-source analytical processing.'
WHERE id = 3660;

-- ID 3661: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-61, Section 3.2.4, excessive false positives create alert fatigue — a significant operational risk where analysts become desensitized and may dismiss or deprioritize alerts, potentially missing genuine security incidents among the noise. Effective SIEM tuning must balance detection sensitivity with specificity to minimize this risk. Although increasing alert volume might appear to improve detection coverage, the resulting analyst fatigue actually degrades the organization''s ability to identify and respond to real threats.'
WHERE id = 3661;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 3761: SOC Engagements
UPDATE questions SET
  explanation = 'Under SSAE 18 (AT-C Section 320), a SOC 1 report addresses controls at a service organization relevant to user entities'' internal control over financial reporting (ICFR). Since claims processing directly affects financial statement amounts, the vendor''s ICFR-relevant controls are the primary concern for the user entity''s auditor. Unlike a SOC 2 report that evaluates controls against the AICPA Trust Services Criteria (security, availability, processing integrity, confidentiality, privacy), SOC 1 is specifically designed for financial reporting control assurance.'
WHERE id = 3761;

-- ID 3762: SOC Engagements
UPDATE questions SET
  explanation = 'Under SSAE 18 (AT-C Section 320.08), a user entity is defined as an entity that uses the services provided by the service organization, where its internal control over financial reporting may be affected by the service organization''s controls. User entities and their auditors are the primary intended users of SOC 1 reports. Unlike the service organization that provides the outsourced services, the user entity is the client that relies on those services and must evaluate the related control implications for its own financial reporting.'
WHERE id = 3762;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (2 questions)
-- ============================================================

-- ID 5458: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Under AT-C Section 205 and AICPA SOC reporting guidance, SOC 2 reports are restricted-use reports distributed only to user entities, their auditors, and specified parties typically under confidentiality agreements. SOC 3 reports are general-use reports containing a summary opinion suitable for unrestricted public distribution. While SOC 2 includes detailed control descriptions and test results that require restricted access, SOC 3 omits this detail to enable public sharing — such as posting on a service organization''s website.'
WHERE id = 5458;

-- ID 5459: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Under AT-C Section 320.A39 and AICPA SOC guidance, a bridge period (or gap period) occurs when the SOC report period does not extend through the user entity''s reporting date, creating a window without auditor-tested assurance over controls. The user entity may obtain a bridge letter to address this gap. Unlike the covered report period where the service auditor has directly tested control operating effectiveness, the bridge period requires additional procedures or representations to provide assurance about control continuity.'
WHERE id = 5459;

-- ============================================================
-- SOC REPORTING (2 questions)
-- ============================================================

-- ID 3898: SOC Reporting
UPDATE questions SET
  explanation = 'Under AT-C Section 320.31-33, the system description provides comprehensive information about the service organization''s services, system components (infrastructure, software, people, procedures, data), control environment, and system boundaries. This enables user entities to assess suitability and determine what complementary controls they need to implement. Unlike the engagement letter, which is an administrative document between the auditor and service organization not intended for user entity evaluation, the system description is specifically designed to inform user entity decision-making.'
WHERE id = 3898;

-- ID 3899: SOC Reporting
UPDATE questions SET
  explanation = 'Under AT-C Section 320.20-21, switching from the carve-out method to the inclusive method for a subservice organization is a significant change requiring disclosure in the system description. Under the inclusive method, the subservice organization''s relevant controls are now within scope, tested by the service auditor, and covered by the opinion. Whereas the carve-out method excludes the subservice organization''s controls from the service auditor''s testing and opinion, the inclusive method brings them under direct examination and reporting coverage.'
WHERE id = 3899;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (2 questions)
-- ============================================================

-- ID 3790: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria (2017), CC7 (System Operations) addresses how the entity manages system operations, detects anomalies and security events, and responds to incidents. It encompasses infrastructure monitoring, unauthorized activity detection, incident response procedures, and recovery from disruptions. Unlike CC6, which focuses on logical and physical access controls governing who can interact with systems, CC7 addresses the ongoing operational monitoring and incident handling that ensures systems continue to function as intended.'
WHERE id = 3790;

-- ID 3791: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under AT-C Section 205.73 and AICPA SOC guidance, when a SOC 2 Type II report includes exceptions in CC6 (Logical and Physical Access Controls), user entity management should evaluate the nature and significance of the reported exceptions against their own risk profile and control environment. This includes assessing whether complementary user entity controls (CUECs) mitigate the identified risks. Unlike simply disregarding the exceptions, proper evaluation ensures the user entity understands and addresses any residual risk from the service organization''s control deficiencies.'
WHERE id = 3791;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 3874: SOC Testing Controls
UPDATE questions SET
  explanation = 'Under AT-C Section 320.35, the service auditor evaluates how the service organization''s controls interact with complementary user entity controls (CUECs) and complementary subservice organization controls (CSOCs) to achieve control objectives. The service auditor identifies but does not directly test CUECs at user entities. Unlike the user entity''s own auditor, who is responsible for testing whether CUECs are actually implemented and operating effectively, the service auditor''s role is limited to identifying expected complementary controls and assessing design assumptions.'
WHERE id = 3874;

-- ID 3875: SOC Testing Controls
UPDATE questions SET
  explanation = 'Under AT-C Section 205.30-31, inquiry involves asking management and appropriate personnel about how controls are designed, implemented, and operated. While inquiry provides useful information and is an important component of testing, it is generally insufficient alone to provide evidence of operating effectiveness. Unlike inspection or reperformance — which directly examine control artifacts or re-execute control procedures to produce tangible evidence — inquiry relies on verbal representations that must be corroborated with other testing procedures.'
WHERE id = 3875;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 3545: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under the ITIL 4 Change Enablement practice (AXELOS), an unauthorized change is one that bypasses required change management controls including risk assessment, change advisory board (CAB) approval, and regression testing. Deploying a database schema change without submitting a change request or obtaining approval makes it unauthorized regardless of the developer''s system access level. While having valid system credentials grants the technical ability to make changes, authorization requires adherence to the established change management process, not merely possession of login credentials.'
WHERE id = 3545;

-- ID 3547: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Rev. 1, Section 3.4, the Recovery Time Objective (RTO) defines the maximum acceptable duration within which a system must be restored to operational status after a disruption. With recovery starting at 9:00 AM and a 4-hour RTO, the production scheduling system must be operational by 1:00 PM to avoid unacceptable business consequences. Unlike the Recovery Point Objective (RPO), which defines maximum acceptable data loss measured in time, the RTO focuses exclusively on the deadline for restoring system functionality.'
WHERE id = 3547;

-- ID 3548: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per the Uptime Institute Tier Classification and NIST SP 800-34, N+1 redundancy means operating one more component than the minimum number (N) required for normal operations. With four active CRAC units and one standby, the configuration is N+1 (4+1), providing automatic failover protection against any single unit failure while remaining cost-effective. Unlike 2N redundancy, which would require a complete duplicate set of eight units to fully mirror the active infrastructure, N+1 protects against single-point failures at lower cost.'
WHERE id = 3548;

-- ID 3549: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under the ITIL 4 Change Enablement practice (AXELOS), a post-implementation review (PIR) assesses whether a completed change met its stated objectives, identifies unintended side effects, evaluates whether the change process was followed correctly, and captures lessons learned for continuous improvement. The PIR is a constructive evaluation mechanism focused on organizational learning. Unlike a blame-assignment exercise that targets individual fault, a PIR emphasizes process improvement and knowledge sharing to enhance the effectiveness of future change implementations.'
WHERE id = 3549;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (4 questions)
-- ============================================================

-- ID 3624: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-83 Rev. 1 (Guide to Malware Incident Prevention and Handling), a rootkit operates at the kernel or firmware level to hide its presence and maintain persistent access by modifying system calls and OS functions. It can conceal files, processes, and network connections from standard detection tools, making it extremely difficult to identify and remove. Unlike a standard virus that attaches to host files and may be detectable by signature-based antivirus scanning, a rootkit operates below the level that most security tools monitor.'
WHERE id = 3624;

-- ID 3625: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-83 Rev. 1, Section 2.2, worms are self-propagating malware that spread across networks by exploiting vulnerabilities — such as flaws in the SMB protocol — without requiring any user interaction. This autonomous replication enables rapid, widespread infection across connected systems. Unlike viruses that require a host file and typically need user action to spread from system to system, worms replicate independently across network connections, making them capable of significantly faster and broader propagation.'
WHERE id = 3625;

-- ID 3626: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-83 Rev. 1, Section 2.1, a Trojan horse disguises itself as legitimate software to deceive users into installation, then executes hidden malicious functions — such as keystroke logging — alongside the expected application functionality. The dual nature of providing a useful function while concealing a malicious payload defines the Trojan category. Unlike worms that self-propagate across networks without user interaction, Trojans rely entirely on social engineering to trick users into voluntarily installing the malicious software.'
WHERE id = 3626;

-- ID 3627: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2, Section 2.3, and NIST SP 800-53 PS-4 (Personnel Termination), this scenario represents a classic insider threat where a former employee retains system access due to failures in the offboarding process. Insider threats are particularly dangerous because the individual possesses legitimate knowledge of systems and data locations. Unlike external attackers who must first gain access through technical exploitation or social engineering, insider threats exploit existing organizational knowledge and previously granted access rights to bypass security controls.'
WHERE id = 3627;

COMMIT;
