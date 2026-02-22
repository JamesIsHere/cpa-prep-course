-- Migration: Citation backfill — ISC batch 9 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 5419: Change Management
UPDATE questions SET
  explanation = 'Per ITIL 4 Change Enablement practice, a baseline is a formally reviewed and agreed-upon specification or configuration that serves as a reference point for detecting and evaluating subsequent changes. Establishing baselines allows organizations to compare current system states against documented, approved known-good configurations and to trace exactly what changed over time. Unlike deleting outdated CMDB records (which is a data hygiene task) or performing an initial software installation (which is a deployment activity), baseline identification specifically captures and freezes a reference state for ongoing change control.'
WHERE id = 5419;

-- ID 5420: Change Management
UPDATE questions SET
  explanation = 'Per ITIL 4 Change Enablement practice, all changes must undergo appropriate authorization and review before deployment to production. Direct commits to the production branch without peer code review bypass this critical preventive control, allowing untested, defective, or unauthorized code to reach production and increasing the risk of system outages and security vulnerabilities. Although this practice may appear to speed development, the primary risk is undetected defects reaching live systems, whereas licensing costs and CAB meeting frequency are not directly affected.'
WHERE id = 5420;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (3 questions)
-- ============================================================

-- ID 3516: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per COBIT 2019 DSS06 (Manage Business Process Controls), joining tables without specifying JOIN conditions produces a Cartesian product that combines every row from one table with every row from the other, causing an exponential explosion of meaningless combinations. Two tables of 1,000 rows each yield one million rows, consuming excessive resources and returning inaccurate results. Unlike a properly constrained join that filters matching records, a Cartesian product is not automatically corrected by the database engine, whereas some incorrectly assume the DBMS will infer the missing relationship.'
WHERE id = 3516;

-- ID 3517: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per COBIT 2019 APO01.06 and NIST SP 800-18 Section 3.1, the data owner—typically a business executive or department head—is accountable for determining data classification levels and authorizing who may access the data asset. This role makes strategic decisions about acceptable use policies and information lifecycle management. Although the data custodian implements technical controls such as backups and encryption, that role does not make classification or access authorization decisions, unlike the data owner who holds ultimate accountability for the asset.'
WHERE id = 3517;

-- ID 3518: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per NIST SP 800-88 (Guidelines for Media Sanitization), standard reformatting only removes file system metadata without overwriting actual data blocks on the disk, leaving the underlying information fully recoverable by forensic tools. Secure data destruction requires cryptographic erasure, degaussing, multi-pass overwriting, or physical destruction such as shredding. Unlike these approved sanitization methods that render data unrecoverable, simple reformatting merely clears directory pointers, whereas forensic recovery tools can readily reconstruct files from residual magnetic patterns on the platters.'
WHERE id = 3518;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5440: Data Protection Technologies
UPDATE questions SET
  explanation = 'Per NIST SP 800-188 (De-Identification of Personal Information), static data masking creates a permanent copy of a database with sensitive values replaced by fictitious but structurally similar data for use in non-production environments. This technique preserves data format and referential integrity while eliminating exposure of real customer information. Unlike dynamic data masking, which applies masking rules at query time without modifying stored data, static masking permanently transforms the copy, whereas tokenization substitutes values with random tokens stored in a separate vault.'
WHERE id = 5440;

-- ID 5441: Data Protection Technologies
UPDATE questions SET
  explanation = 'Per NIST SP 800-52 Rev. 2 (Guidelines for TLS Implementations), TLS (Transport Layer Security) is the standard protocol for encrypting data in transit between web browsers and servers, providing confidentiality, integrity, and server authentication for HTTPS connections. TLS negotiates cipher suites and manages certificate-based authentication to establish secure communication channels. Although AES is a symmetric encryption algorithm frequently used within TLS sessions, it is not itself a transport protocol, whereas IPSec operates at the network layer for VPN tunnels rather than application-layer web traffic.'
WHERE id = 5441;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 3484: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI06 (Manage IT Changes) and ITIL 4 Change Enablement, critical security patches should be tested in a production-mirror environment before deployment to balance urgency with operational stability. Testing verifies the patch does not introduce regressions or break existing functionality while minimizing the vulnerability exposure window. Unlike applying a patch directly to production without testing—which risks system breakage—or delaying until the next quarterly maintenance window, which leaves the vulnerability exposed, a staging environment test provides rapid, controlled validation.'
WHERE id = 3484;

-- ID 3485: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per the AICPA Audit Guide on transaction cycles, a materials requisition authorizes the warehouse to release specific raw materials to the production floor, creating an auditable record for inventory tracking and cost allocation within the accounting information system. This document links the production cycle to inventory management. Unlike a sales order (which initiates the revenue cycle) or a purchase order (which initiates the expenditure cycle), a materials requisition specifically authorizes internal material transfers, whereas a bill of lading documents external shipments to customers.'
WHERE id = 3485;

-- ID 3486: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 DSS06.03 (Manage Roles, Responsibilities, Access Privileges) and AICPA AU-C Section 315, the combination of vendor creation, invoice entry, and payment initiation in a single role represents the highest fraud risk because it grants end-to-end control over the entire disbursement process. A user with these combined privileges could create fictitious vendors, enter fake invoices, and authorize payments to themselves. Although other role combinations may involve related functions, they lack complete payment cycle control, whereas view-only access does not create comparable fraud opportunity.'
WHERE id = 3486;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (3 questions)
-- ============================================================

-- ID 3697: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide) Section 3.1, minimizing detection and response times is critical because prolonged dwell time directly correlates with increased breach severity and cost. A 45-day MTTD allows attackers extensive time for lateral movement, privilege escalation, and data exfiltration before the organization even becomes aware of the compromise. Unlike industry leaders who target detection in hours to days, a combined 75-day timeline indicates severely inadequate detection and response capabilities, whereas automated monitoring tools can dramatically reduce these metrics.'
WHERE id = 3697;

-- ID 3698: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 Section 3.3, the eradication phase focuses on completely removing the threat from the environment, including eliminating malware, closing backdoors, removing unauthorized accounts, and patching exploited vulnerabilities. Thorough eradication ensures no persistence mechanisms remain that could enable re-compromise of affected systems. Unlike the recovery phase, which focuses on restoring normal operations and verifying system integrity after the threat is eliminated, eradication specifically targets threat removal, whereas notification and cost analysis are separate post-incident activities.'
WHERE id = 3698;

-- ID 3699: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-86 (Guide to Integrating Forensic Techniques) Section 4.3, cryptographic hash values such as SHA-256 create a unique digital fingerprint that verifies a forensic disk image is an exact bit-for-bit copy of the original drive. Any alteration, even a single changed bit, produces a completely different hash value, ensuring evidence integrity for legal proceedings. Unlike file size comparison, which cannot detect bit-level modifications within files, or visual inspection, which is impractical for large data volumes, hash verification provides mathematically provable integrity assurance.'
WHERE id = 3699;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 3846: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Per COBIT 2019 Framework: Governance and Management Objectives, the EDM (Evaluate, Direct, and Monitor) domain encompasses the governing body''s responsibilities for evaluating stakeholder needs and environmental conditions, setting strategic direction through prioritization and decision-making, and monitoring performance against agreed-upon objectives. This domain is distinct from the four management domains (APO, BAI, DSS, MEA). Unlike operational management activities that execute day-to-day processes, EDM responsibilities belong exclusively to the governing body, whereas confusing governance with management undermines effective IT oversight.'
WHERE id = 3846;

-- ID 3847: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Per ITIL 4 Foundation (Service Value Chain), the six activities are plan, improve, engage, design and transition, obtain/build, and deliver and support, which can be combined in various value streams to address specific organizational needs. Depreciate is a financial accounting concept unrelated to IT service management. Although each of the six actual activities directly contributes to converting demand into value through service management practices, "depreciate" does not appear in the ITIL 4 framework, whereas it is commonly encountered only in asset accounting contexts.'
WHERE id = 3847;

-- ID 3848: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Per COBIT 2019 Designing an Information and Technology Governance Solution (Design Factor 4: Compliance Requirements), operating in a highly regulated industry is a contextual design factor that directly influences governance system configuration. This requires prioritizing compliance-related processes, potentially elevating capability level targets, and implementing additional controls to meet regulatory obligations. Unlike organizations in less-regulated environments that may weight efficiency or innovation factors more heavily, highly regulated entities must prioritize compliance design factors, whereas underweighting regulatory requirements could result in governance gaps and non-compliance penalties.'
WHERE id = 3848;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 3820: IT General Controls
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI07.04 and NIST SP 800-53 SC-28 (Protection of Information at Rest), when production data is needed for debugging, it must be copied to a lower environment after being masked or anonymized to protect sensitive information such as personal data and financial records. This preserves environment separation while enabling effective troubleshooting. Unlike granting developers direct access to production, which violates the principle of least privilege and environment segregation, data masking ensures sensitive information remains protected, whereas unmasked production data in development environments creates unnecessary exposure risk.'
WHERE id = 3820;

-- ID 3821: IT General Controls
UPDATE questions SET
  explanation = 'Per NIST SP 800-63B Section 4.2, multi-factor authentication requires combining at least two different authentication factor types: something you know (password or PIN), something you have (hardware token or authenticator app), or something you are (biometric). A password combined with an authenticator app code correctly uses two distinct factor categories. Although two passwords or a password paired with a security question may seem like multiple factors, both rely solely on knowledge factors, whereas true MFA requires credentials from at least two different categories to provide defense-in-depth.'
WHERE id = 3821;

-- ID 3822: IT General Controls
UPDATE questions SET
  explanation = 'Per ITIL 4 Change Enablement practice and COBIT 2019 BAI06.01, emergency changes allow critical fixes to be deployed quickly, but the most important compensating control is retrospective review—requiring documentation, assessment, and formal approval after implementation within a defined timeframe. This ensures accountability and brings the change into compliance with normal standards. Unlike pre-implementation CAB approval (which the emergency process bypasses by design), retrospective review maintains governance without sacrificing response speed, whereas skipping post-implementation review would leave emergency changes permanently outside normal controls.'
WHERE id = 3822;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (3 questions)
-- ============================================================

-- ID 3448: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-145 (The NIST Definition of Cloud Computing) and the shared responsibility model, IaaS tenants are responsible for everything from the operating system upward—including OS patching, middleware, runtime, and application management—while the cloud provider manages physical infrastructure, networking, and the hypervisor layer. This clear division of responsibility is fundamental to cloud security planning. Unlike PaaS, where the provider manages the OS and runtime, or SaaS, where the provider manages the entire stack, IaaS places OS patching squarely on the tenant, whereas assuming the provider handles all patching creates a critical security gap.'
WHERE id = 3448;

-- ID 3449: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-146 (Cloud Computing Synopsis and Recommendations) Section 5.2, a multi-cloud strategy''s primary risk management benefit is reducing dependence on any single provider, mitigating the impact of provider-wide outages on all critical systems simultaneously. Distributing workloads across providers also prevents vendor lock-in and provides negotiating leverage. Although multi-cloud architecture improves resilience, it does not guarantee zero downtime or eliminate the need for disaster recovery planning, whereas assuming automatic data synchronization across providers is incorrect because cross-cloud integration requires deliberate design.'
WHERE id = 3449;

-- ID 3450: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-57 Part 1 (Recommendation for Key Management) and FIPS 140-2, organizations migrating to IaaS must evaluate cloud-based Hardware Security Module (HSM) services—such as AWS CloudHSM or Azure Dedicated HSM—to meet compliance requirements for hardware-level cryptographic key management. These dedicated HSM services provide FIPS-validated hardware-based operations in the cloud without requiring on-premises infrastructure. Unlike removing encryption requirements or assuming software-based alternatives are equivalent, cloud HSM services maintain the same security assurance level, whereas software key storage lacks the tamper-resistance guarantees of hardware modules.'
WHERE id = 3450;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (3 questions)
-- ============================================================

-- ID 3727: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Per GDPR Article 7 and Recital 32, when a controller relies on consent as the lawful basis for processing, consent must be freely given, specific, informed, and demonstrated by a clear affirmative action. The controller must be able to prove that consent was obtained, and the data subject may withdraw consent at any time as easily as it was given. Unlike pre-ticked boxes, silence, or inactivity—which do not constitute valid consent under GDPR—affirmative opt-in requires a deliberate, unambiguous action, whereas bundling consent with unrelated terms undermines the "freely given" requirement.'
WHERE id = 3727;

-- ID 3728: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Per GDPR Article 12(3), a data controller must respond to a data subject access request (DSAR) under Article 15 without undue delay and within one month of receipt. This period may be extended by two additional months for complex or numerous requests, provided the data subject is informed of the extension and its reasons within the initial one-month period. Unlike the 72-hour timeframe that applies to breach notification under Article 33, the one-month DSAR response window allows adequate time for locating and compiling personal data, whereas failing to communicate an extension within the first month constitutes non-compliance.'
WHERE id = 3728;

-- ID 3729: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Per GDPR Article 45, a European Commission adequacy decision determines that a third country provides an adequate level of data protection, enabling personal data to flow from the EU to that country without additional safeguards such as standard contractual clauses or binding corporate rules. The decision reflects an assessment of the country''s legal framework and enforcement mechanisms. Unlike a blanket exemption from GDPR obligations, an adequacy decision only facilitates cross-border transfers, whereas companies in adequacy countries must still comply with GDPR when processing EU residents'' personal data.'
WHERE id = 3729;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (3 questions)
-- ============================================================

-- ID 3593: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5, the Personnel Security (PS) family includes controls for personnel screening (PS-3), termination (PS-4), transfer (PS-5), access agreements (PS-6), and third-party personnel security (PS-7), all of which directly affect information system security posture. Moderate-impact systems require these controls because people are the primary users and administrators of information systems, making personnel vetting essential to the security baseline. Unlike viewing PS as solely an HR administrative function, these controls are integral to IT security, whereas omitting personnel security from a moderate-impact system would leave a critical gap in the control framework.'
WHERE id = 3593;

-- ID 3594: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per ISO/IEC 27001:2022 Clause 9.2 (Internal Audit) and Clause 9.3 (Management Review), formal certification specifically requires assessment by an accredited third-party certification body that verifies the Information Security Management System meets all standard requirements. While an organization can implement ISO 27001 controls and self-declare alignment, only an independent external audit constitutes formal certification. Unlike self-assessment, which demonstrates intent and internal conformance, certification requires external validation by an accredited body, whereas claiming certification without such assessment is inaccurate and potentially misleading to stakeholders.'
WHERE id = 3594;

-- ID 3595: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per COBIT 2019 Process Assessment Model (PAM), Capability Level 0 (Incomplete) means the process either does not exist or fails to achieve its intended purpose, with little or no evidence of systematic achievement of process outcomes. This is the lowest level in COBIT''s six-level capability scale (0-5) and signals a critical gap requiring management attention. Unlike Level 3 (Established), which indicates defined metrics and consistent execution, or Level 5 (Optimizing), which represents continuous improvement, Level 0 reflects a fundamental absence of process capability, whereas any measured achievement would elevate the process to at least Level 1.'
WHERE id = 3595;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (3 questions)
-- ============================================================

-- ID 3662: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5 SC-7 (Boundary Protection) and industry DLP frameworks, Data Loss Prevention solutions monitor data in three states: data at rest (stored in databases and file shares), data in motion (transmitted over networks), and data in use (actively accessed by applications). Each state requires different monitoring techniques such as endpoint agents for data at rest and network sensors for data in motion. Unlike encrypted, compressed, and archived—which describe data formats rather than monitoring states—the three-state model provides comprehensive coverage, whereas created, modified, and deleted describe database operations rather than DLP categories.'
WHERE id = 3662;

-- ID 3663: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-83 Rev. 1 (Guide to Malware Incident Prevention) and NIST SP 800-53 SI-4 (System Monitoring), Endpoint Detection and Response provides continuous behavioral monitoring of endpoint activities—including process execution, file operations, and network connections—combined with forensic investigation capabilities and automated response actions. EDR detects unknown threats through behavioral analysis rather than relying solely on known signatures. Unlike traditional antimalware that primarily uses signature-based detection of known threats, EDR identifies anomalous behaviors indicative of novel attacks, whereas signature-only approaches cannot detect zero-day exploits or fileless malware.'
WHERE id = 3663;

-- ID 3664: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5 SC-7 (Boundary Protection) and NIST SP 800-41 (Firewall and Firewall Policy Guidelines), network segmentation''s primary security benefit is limiting the blast radius of a security incident by isolating network zones through firewalls and access control lists. If an attacker compromises one segment, segmentation prevents direct lateral movement to segments containing sensitive data. Unlike performance optimization, which is only an incidental benefit, segmentation is fundamentally a security control, whereas the assertion that it simplifies network management is incorrect because segmentation typically adds administrative complexity in exchange for improved security posture.'
WHERE id = 3664;

-- ============================================================
-- SOC ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 3763: SOC Engagements
UPDATE questions SET
  explanation = 'Per SSAE No. 18 (AT-C Section 320.35), the system description in a SOC engagement must include the types of services provided, principal service commitments and system requirements, system components (infrastructure, software, people, procedures, and data), and the boundaries of the system including any subservice organizations. This comprehensive description enables user entities to understand the scope and nature of the controls examined. Unlike a high-level marketing overview, the system description must be sufficiently detailed for user entities'' understanding, whereas omitting subservice organizations or system boundaries would render the description incomplete.'
WHERE id = 3763;

-- ID 3764: SOC Engagements
UPDATE questions SET
  explanation = 'Per AICPA SOC 3 guidance (AT-C Section 205), a SOC 3 report is a general-use report providing a summary-level opinion on controls without detailed test results, making it suitable for public distribution including website trust marks. Service organizations can display a SOC 3 seal to demonstrate that their controls have been independently evaluated by a CPA. Unlike SOC 1 and SOC 2 reports, which are restricted-use and contain detailed control descriptions and test results not intended for public distribution, SOC 3 is specifically designed for broad, unrestricted dissemination to prospective customers and the general public.'
WHERE id = 3764;

-- ID 3765: SOC Engagements
UPDATE questions SET
  explanation = 'Per SSAE No. 18 (AT-C Section 320.56), the gap between the examination period end date and report issuance creates a risk that controls may have changed or new issues may have arisen during the interval. User entities should evaluate whether significant changes occurred after the period end and may request a bridge letter to cover the gap. Unlike assuming the report''s conclusions remain fully valid through the issuance date, the service auditor''s opinion specifically covers only the stated examination period, whereas events occurring after period-end are unexamined and could materially affect the control environment.'
WHERE id = 3765;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (2 questions)
-- ============================================================

-- ID 5460: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Per SSAE No. 18 (AT-C Section 320.34), management''s assertion that the system description "fairly presents" means it is prepared in accordance with the applicable description criteria and does not omit or distort information relevant to user entities'' understanding of the system and controls in place. This provides assurance of completeness and accuracy at an appropriate level of detail. Unlike a warranty that no control weaknesses exist, fair presentation addresses the description''s fidelity to the actual system, whereas omitting material information—even if remaining statements are technically accurate—would undermine the fair presentation standard.'
WHERE id = 5460;

-- ID 5461: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Per AT-C Section 205.19 (SSAE No. 18), a SOC 2 Type I report opinion addresses two elements as of a specific point in time: (1) whether the system description fairly presents the system, and (2) whether controls are suitably designed to meet the applicable trust services criteria. Type I does not address operating effectiveness over a period. Unlike a Type II report, which evaluates both design suitability and operating effectiveness over an examination period, Type I provides only a point-in-time snapshot of control design, whereas GDPR compliance and user entity control assessments fall outside the Type I opinion scope.'
WHERE id = 5461;

-- ============================================================
-- SOC REPORTING (1 questions)
-- ============================================================

-- ID 3900: SOC Reporting
UPDATE questions SET
  explanation = 'Per AU-C Section 402 (Audit Considerations Relating to Service Organizations), before relying on a SOC 1 Type II report, the user entity''s auditor must evaluate the service auditor''s competence and independence, whether the report covers the relevant period, whether the scope includes controls pertinent to the user entity''s audit, and any reported exceptions or findings. The auditor must also assess complementary user entity controls (CUECs) and determine if additional procedures are needed. Unlike accepting the report at face value, the user auditor retains responsibility for evaluating its relevance and sufficiency, whereas ignoring CUECs could leave critical control gaps unaddressed.'
WHERE id = 3900;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 3792: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Per the AICPA 2017 Trust Services Criteria (TSP Section 100), points of focus are characteristics that may be important to addressing a criterion but are not mandatory requirements. They provide guidance to help management design controls and help auditors evaluate whether controls sufficiently address each criterion. Although an entity should consider all relevant points of focus, it may satisfy a criterion without explicitly addressing every one if the criterion is otherwise met, whereas treating points of focus as rigid mandatory requirements would incorrectly constrain implementation flexibility and override professional judgment.'
WHERE id = 3792;

-- ID 3793: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Per the AICPA Trust Services Criteria CC2 (Communication and Information), an entity must obtain and generate relevant, quality information to support internal control functioning and communicate that information internally and externally as needed. This includes communicating control responsibilities to personnel, providing system information to user entities, and establishing channels for reporting control issues. Unlike CC1 (Control Environment), which focuses on governance and organizational structure, CC2 specifically addresses how information flows enable effective control operation, whereas inadequate communication channels undermine even well-designed controls.'
WHERE id = 3793;

-- ID 3794: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Per the AICPA Trust Services Criteria CC3 (Risk Assessment), an entity must specify clear objectives, identify and analyze risks to achieving those objectives—including fraud risks—and assess the potential for significant environmental changes that could affect the system of internal control. Risk assessment is an ongoing process that informs control design and implementation decisions. Unlike CC5 (Control Activities), which focuses on implementing specific control actions, CC3 addresses the identification and evaluation of risks that those controls must mitigate, whereas omitting fraud risk assessment would leave a critical gap in the risk management process.'
WHERE id = 3794;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 3876: SOC Testing Controls
UPDATE questions SET
  explanation = 'Per AT-C Section 320.39 (SSAE No. 18), using a scanning tool to verify encryption configurations constitutes inspection combined with reperformance—the auditor independently examines system settings using technical tools rather than relying on management representations alone, providing direct objective evidence of control operation. Unlike inquiry, which merely involves asking management about configurations without independent verification, technical scanning provides verifiable evidence of the actual system state, whereas observation involves watching a process being performed rather than running automated technical validation tools.'
WHERE id = 3876;

-- ID 3877: SOC Testing Controls
UPDATE questions SET
  explanation = 'Per AT-C Section 320.40 and the AICPA Audit Sampling Guide, selecting items from a population and testing them for specific attributes such as proper approval constitutes representative sampling, where the deviation rate observed in the sample is projected to draw conclusions about the likely deviation rate in the entire population. This approach provides efficient, statistically supportable audit evidence. Unlike census testing, which examines every item in the population, sampling tests a subset to reach conclusions efficiently, whereas haphazard selection describes only the item selection method rather than the overall attribute testing approach.'
WHERE id = 3877;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (5 questions)
-- ============================================================

-- ID 3550: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per ITIL 4 Change Enablement practice, a standard change is a pre-authorized, low-risk, well-understood change that follows a documented and proven procedure, requiring no individual Change Advisory Board approval. Routine account provisioning with a repeatable process and no incident history is a textbook standard change that can be streamlined through pre-authorization. Unlike an emergency change, which addresses critical issues requiring immediate fast-track approval and retrospective CAB review, standard changes are characterized by predictability and low risk, whereas normal changes still require individual assessment and authorization before implementation.'
WHERE id = 3550;

-- ID 3551: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per ITIL 4 Change Enablement practice and COBIT 2019 BAI06.01, an emergency change follows a fast-track approval path—implemented immediately through expedited authorization and then documented and reviewed retrospectively by the CAB to maintain accountability. This approach balances the urgency of critical production failures with governance requirements for oversight and documentation. Unlike a normal change that requires scheduled CAB review and a maintenance window before implementation, an emergency change prioritizes rapid resolution of time-critical failures, whereas waiting for the next scheduled window would prolong the outage and increase business impact.'
WHERE id = 3551;

-- ID 3552: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per ITIL 4 Change Enablement and COBIT 2019 BAI06 benchmarks, emergency changes should represent less than 5-10% of all changes; a high rate indicates systemic issues such as poor capacity planning, insufficient change management maturity, or developers bypassing normal controls by mislabeling changes as emergencies. This pattern signals a process breakdown requiring root cause analysis. Unlike the assumption that a high emergency rate reflects healthy organizational responsiveness, emergency changes that bypass normal review carry elevated risk of introducing defects, whereas mature change management processes maintain low emergency ratios through proactive planning.'
WHERE id = 3552;

-- ID 3553: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-34 Rev. 1 (Contingency Planning Guide) Section 3.4, recovery time objectives must account for all system layers because infrastructure failover and application-level recovery are separate processes with different timelines. Even with fast infrastructure switching, total service restoration includes application reconnection, session re-establishment, and cache warming at the application layer. Unlike the assumption that infrastructure failover alone restores full service, applications often require additional time to detect the failover and re-establish connections, whereas measuring only infrastructure recovery would significantly understate the true end-to-end RTO.'
WHERE id = 3553;

-- ID 3554: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-34 Rev. 1 and ISO/IEC 27031 (ICT Readiness for Business Continuity), Mean Time Between Failures (MTBF) measures the average operational time a system runs between failures, serving as a key reliability indicator where higher values signal greater dependability. MTBF is an actual measurement of historical system performance used for availability planning and capacity forecasting. Unlike Mean Time to Repair (MTTR), which measures restoration time after a failure occurs, or Recovery Time Objective (RTO), which is a target rather than an actual measurement, MTBF specifically quantifies operational intervals between failures, whereas RPO addresses acceptable data loss windows.'
WHERE id = 3554;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (3 questions)
-- ============================================================

-- ID 3628: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5 SA-12 (Supply Chain Protection) and NIST SP 800-161 (Supply Chain Risk Management), this scenario describes an Advanced Persistent Threat (APT) using a supply chain attack vector—compromising a trusted third-party IT provider to gain access to the ultimate target''s network. APTs are characterized by sophistication, persistence, specific targeting, and often nation-state sponsorship over extended timeframes. Unlike opportunistic attacks that exploit any available vulnerability without a specific target, APTs deliberately pursue particular organizations through carefully planned multi-stage campaigns, whereas simple malware infections lack the sustained, methodical approach characteristic of APT operations.'
WHERE id = 3628;

-- ID 3629: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-115 (Technical Guide to Information Security Testing) Section 5.2, vulnerability scanning uses automated tools to identify known weaknesses by comparing system attributes—such as OS versions, patch levels, and configurations—against databases of known vulnerabilities without attempting exploitation. This non-intrusive approach identifies vulnerabilities across the external attack surface for remediation prioritization. Unlike penetration testing, which actively attempts to exploit identified vulnerabilities to demonstrate real-world impact and attack chains, vulnerability scanning only identifies and reports potential weaknesses, whereas manual code review focuses on source code analysis rather than live system assessment.'
WHERE id = 3629;

-- ID 3630: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-115 Section 7.1 and the OWASP Testing Guide, vulnerability chaining demonstrates that individually low-severity weaknesses can be combined into a significant attack path, such as achieving unauthorized administrative access to an ERP system by exploiting a misconfiguration, an information disclosure flaw, and a weak access control together. This finding illustrates why penetration testing provides value beyond automated scanning. Unlike vulnerability scanning, which evaluates each finding in isolation based on individual CVSS scores, penetration testing reveals how multiple low-risk findings interact to create critical exploitation paths, whereas individual severity ratings alone fail to capture compound risk.'
WHERE id = 3630;

COMMIT;
