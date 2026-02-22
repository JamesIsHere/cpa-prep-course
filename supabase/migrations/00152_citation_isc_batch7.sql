-- Migration: Citation backfill — ISC batch 7 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 5417: Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Change Enablement, emergency changes require retrospective documentation and Change Advisory Board (CAB) review after the urgent fix is deployed. This post-implementation step ensures the change is formally recorded, assessed for residual risk, and reflected in the configuration management database. While reversing a successful emergency fix would be counterproductive and taking no action creates audit gaps, proper emergency change procedures mandate retrospective review to maintain change control integrity.'
WHERE id = 5417;

-- ID 5418: Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Change Enablement, impact assessment requires identifying all affected configuration items, dependencies, and integration points before approving a change for production deployment. The untested dependency that caused two hours of downtime indicates that this assessment phase failed to map the full scope of downstream effects and integration risks. While change request submission and scheduling are important procedural steps, they would not have prevented this failure, which stems specifically from inadequate dependency analysis during impact assessment.'
WHERE id = 5418;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (3 questions)
-- ============================================================

-- ID 3509: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'ETL (Extract, Transform, Load) is the standard data integration process for populating a data warehouse, as described in COBIT 2019 DSS06 (Manage Business Process Controls). Data is extracted from heterogeneous source systems, transformed to reconcile differing formats and classifications, and loaded into the target warehouse for analytical use. While OLAP cube construction supports analytical querying after the warehouse is populated, it does not address the initial data standardization and loading step required for the migration.'
WHERE id = 3509;

-- ID 3510: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under COBIT 2019 APO03 (Manage Enterprise Architecture), a star schema organizes a data warehouse with a central fact table containing quantitative measures surrounded by denormalized dimension tables providing descriptive context. The fact table''s foreign keys connect to dimension tables for date, product, customer, and geography, creating the characteristic star pattern optimized for analytical queries. Unlike a normalized OLTP schema designed for transactional integrity, the star schema sacrifices normalization to achieve faster query performance for reporting workloads.'
WHERE id = 3510;

-- ID 3511: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'OLAP (Online Analytical Processing) systems are purpose-built for complex aggregate queries across large volumes of historical data, as described in COBIT 2019 APO03 (Manage Enterprise Architecture). OLAP supports dimensional modeling and read-heavy analytical workloads without degrading transactional system performance. Unlike deploying a second OLTP instance, which would replicate a schema optimized for row-level writes and ACID compliance, OLAP provides the multi-year cross-tabulation and drill-down capabilities the analytics team requires.'
WHERE id = 3511;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 3478: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under the COSO Internal Control — Integrated Framework (Principle 10, Segregation of Duties), the purchasing department must review the requisition, select a vendor, and issue an approved purchase order as the next step in a properly controlled expenditure cycle. This separation ensures the person requesting goods is not the same person authorizing the purchase, providing independent oversight. Unlike having the warehouse manager directly contact vendors, routing through purchasing maintains segregation of duties and prevents unauthorized procurement.'
WHERE id = 3478;

-- ID 3479: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under COBIT 2019 DSS06.03 (Manage Roles, Responsibilities, Access Privileges, and Levels of Authority), automated matching thresholds must be calibrated to detect manipulation patterns such as invoice splitting. The clustering of invoices just below the $10,000 threshold suggests deliberate circumvention, warranting a lower threshold combined with analytics to flag unusual patterns. While increasing the threshold would reduce false positives, it would worsen the control gap by allowing more potentially manipulated invoices to bypass review entirely.'
WHERE id = 3479;

-- ID 3480: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under the COSO Internal Control — Integrated Framework (Control Activities component), application controls are embedded within specific business applications to ensure the completeness, accuracy, authorization, and validity of individual transactions processed by that application. These include input validation, processing rules, and output reconciliation checks specific to each system. Unlike IT general controls, which operate broadly across all systems to support the infrastructure environment, application controls target transaction-level risks within a single application.'
WHERE id = 3480;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (3 questions)
-- ============================================================

-- ID 3692: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-86 (Guide to Integrating Forensic Techniques into Incident Response), digital evidence must be collected in order of volatility from most to least volatile: CPU registers and cache, RAM, network connections and process state, then hard drive data. Collecting the most volatile evidence first preserves data that would otherwise be permanently lost at power-off or state change. Unlike starting with hard drive imaging, which captures persistent storage that remains intact without power, delaying volatile evidence collection risks irreversible loss of transient forensic artifacts.'
WHERE id = 3692;

-- ID 3693: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide), this incident is classified as an unauthorized disclosure because sensitive PII was transmitted to an unauthorized external recipient regardless of intent. Accidental disclosures of Social Security numbers may trigger state breach notification laws and regulatory reporting requirements identical to those for malicious breaches. While the disclosure was unintentional rather than the result of a cyberattack, the exposure of sensitive PII requires the same urgency in containment, notification, and remediation procedures.'
WHERE id = 3693;

-- ID 3694: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide), Severity 1 (critical) incidents involve confirmed compromise of highly sensitive data or threats to the organization''s ability to operate, requiring immediate executive-level response and maximum resource allocation. These incidents demand the shortest response timeframes and full incident team mobilization. Unlike a blocked phishing email, which was successfully prevented and warrants low severity at most, a confirmed data breach of critical production systems poses active organizational risk requiring urgent escalation.'
WHERE id = 3694;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 3841: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019 EDM03 (Ensured Risk Optimization), purchasing cyber insurance is classified as risk transfer because it shifts the financial impact of a potential data breach to a third-party insurer through contractual arrangements. This strategy does not reduce the likelihood of a breach occurring but mitigates its financial consequences. Unlike risk avoidance, which eliminates the risk-creating activity entirely, risk transfer accepts that the adverse event may occur while redirecting its financial burden to another party.'
WHERE id = 3841;

-- ID 3842: IT Audit Frameworks
UPDATE questions SET
  explanation = 'The COBIT 2019 process capability model, aligned with ISO/IEC 33000, defines six capability levels (0 through 5): Incomplete, Performed, Managed, Established, Predictable, and Optimizing. Each level builds incrementally on the previous, with Level 0 indicating processes not implemented and Level 5 representing continuous improvement. Unlike a three-level model, COBIT 2019''s six levels provide granular differentiation for assessing process maturity and identifying targeted improvement actions across the governance framework.'
WHERE id = 3842;

-- ID 3843: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019 MEA01 (Managed Performance and Conformance Monitoring), an IT balanced scorecard measures governance performance across multiple perspectives: business contribution, user orientation, operational excellence, and future orientation. This tool links IT metrics directly to strategic business objectives, providing a holistic assessment beyond purely financial or operational measures. Unlike a single-dimension audit checklist, the balanced scorecard evaluates alignment across complementary perspectives to identify where IT governance supports or falls short of business goals.'
WHERE id = 3843;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 3814: IT General Controls
UPDATE questions SET
  explanation = 'Under COBIT 2019 DSS01.01 (Perform Operational Procedures), batch job scheduling controls must ensure that critical processing jobs execute in the correct sequence, complete successfully, and produce expected results. Monitoring for job failures with documented exception-handling procedures prevents processing gaps that could affect financial reporting integrity. While manual processing may serve as a temporary workaround, automated scheduling with proper monitoring controls is more reliable and reduces the risk of sequencing errors or missed processing windows.'
WHERE id = 3814;

-- ID 3815: IT General Controls
UPDATE questions SET
  explanation = 'Under COBIT 2019 DSS04.07 (Manage Backup Arrangements), regular restoration testing is essential to verify that backup data is complete, intact, and recoverable in the current production environment. Without periodic testing, an organization may discover that backups are corrupt or incompatible only during an actual disaster recovery event when it is too late. Unlike simply maintaining offsite backup copies, which addresses storage location risk, restoration testing validates the end-to-end recoverability process and confirms that recovery time objectives can actually be met.'
WHERE id = 3815;

-- ID 3816: IT General Controls
UPDATE questions SET
  explanation = 'Under COBIT 2019 DSS01.04 (Manage the Environment), sustained high resource utilization is a capacity management concern requiring proactive monitoring, trend analysis, and upgrade planning before performance degradation impacts service delivery. Capacity management forecasts future resource needs based on utilization trends and business growth projections. Unlike incident management, which responds to acute service disruptions caused by sudden failures, capacity management addresses gradual resource exhaustion through planned infrastructure adjustments and optimization.'
WHERE id = 3816;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (4 questions)
-- ============================================================

-- ID 3440: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-123 (Guide to General Server Security), NAS devices share files using standard network file-sharing protocols such as SMB/CIFS for Windows environments or NFS for Unix/Linux systems over TCP/IP networks. These protocols enable multiple clients to access shared file storage transparently across the network at the file level. Unlike iSCSI and Fibre Channel, which are block-level protocols used by SAN architectures for raw disk access, SMB/CIFS and NFS operate at the file level and are purpose-built for network-attached shared file access.'
WHERE id = 3440;

-- ID 3441: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-183 (Networks of Things), edge computing places processing nodes closer to data sources to reduce latency and minimize bandwidth consumption on wide-area networks. Pre-processing transactions locally at each retail store accelerates authorization times and reduces the volume of data transmitted to the central data center. Unlike centralized cloud computing, where all processing occurs at a remote data center introducing round-trip latency, edge computing distributes compute resources to the network periphery for time-sensitive workloads.'
WHERE id = 3441;

-- ID 3442: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-44 (Guidelines on Securing Public Web Servers), a CDN distributes cached copies of static content across geographically dispersed edge servers, reducing latency by serving investor requests from the nearest location. When stakeholders access earnings reports and SEC filings, content is delivered from a proximate edge server rather than the origin server. Unlike a web application firewall, which filters malicious traffic to protect the origin server, a CDN''s primary function is performance optimization through geographic content distribution and reduced origin server load.'
WHERE id = 3442;

-- ID 3443: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-204 (Security Strategies for Microservices-based Application Systems), authentication and authorization are the most critical controls for APIs exposing sensitive financial data. Authentication verifies the API consumer''s identity, while authorization restricts access to only permitted data and operations. Although rate limiting protects against abuse and denial-of-service attacks, it does not address the fundamental risk of unauthorized access to sensitive accounting data that proper authentication and authorization controls mitigate.'
WHERE id = 3443;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (4 questions)
-- ============================================================

-- ID 3719: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under the California Privacy Rights Act (CPRA, Civil Code §1798.140(ae)), aligned with the AICPA Trust Services Criteria privacy category, biometric data is explicitly classified as sensitive personal information along with precise geolocation, racial or ethnic origin, and other enumerated categories. Consumers have the right to limit the use and disclosure of their sensitive personal information under CPRA''s enhanced protections. Unlike general personal information such as name or email address, sensitive personal information triggers additional business obligations including prominent opt-out mechanisms and restrictions on secondary use.'
WHERE id = 3719;

-- ID 3720: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under HIPAA (45 CFR §160.103), as referenced in the AICPA Trust Services Criteria privacy category, covered entities are defined as health plans, healthcare clearinghouses, and healthcare providers who transmit health information electronically in connection with covered transactions. A health plan that provides or pays for medical care meets this definition and bears primary compliance obligations under the Privacy and Security Rules. Unlike software vendors or accounting firms, which may qualify as business associates through contractual arrangements, covered entities have direct regulatory accountability for protecting PHI.'
WHERE id = 3720;

-- ID 3721: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under HIPAA (45 CFR §164.502(e)), as addressed in the AICPA Trust Services Criteria privacy category, covered entities must execute a business associate agreement (BAA) with any third party that creates, receives, maintains, or transmits protected health information on their behalf. The BAA must specify permitted uses and disclosures of PHI and require appropriate administrative, physical, and technical safeguards. Unlike a standard vendor contract, a BAA imposes HIPAA-specific obligations including breach notification duties and restrictions on PHI use beyond the contracted services.'
WHERE id = 3721;

-- ID 3722: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under HIPAA (45 CFR §164.502(b)(2)), consistent with AICPA Trust Services Criteria privacy principles on individual access rights, the minimum necessary standard does not apply when a covered entity discloses PHI to the individual who is the subject of the information. When a patient requests their own records, the covered entity must provide access to the designated record set without applying minimum necessary restrictions. While the minimum necessary standard applies to disclosures for payment, healthcare operations, and other routine uses, it is explicitly exempted for individual access requests under the Privacy Rule.'
WHERE id = 3722;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3585: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under the CIS Controls framework (v8), mapped to NIST SP 800-53 controls, Implementation Group 2 (IG2) is designed for enterprises with dedicated IT staff managing infrastructure and handling sensitive client or enterprise data subject to regulatory requirements. IG2 adds controls for configuration management, data protection, and enhanced access control beyond IG1''s essential cyber hygiene baseline. While IG1 provides the minimum safeguard set for all enterprises regardless of size, it does not address the additional controls required for organizations managing sensitive financial data with dedicated IT personnel.'
WHERE id = 3585;

-- ID 3586: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under the COSO Internal Control — Integrated Framework, Control Activities (Principles 10–12) encompass the policies, procedures, and mechanisms that ensure management directives are implemented and risks are addressed at the operational level. IT application controls such as input validation, automated authorization checks, and processing controls are a specific subset of this component. Unlike the Control Environment component, which establishes the organizational tone through governance, ethical values, and oversight structure, Control Activities address specific enforcement mechanisms at the transaction level.'
WHERE id = 3586;

-- ID 3587: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under COSO''s Monitoring Activities component (Principle 16), ongoing monitoring involves continuous or near-real-time evaluations built into normal business operations to provide timely assurance over control effectiveness. Automated log analysis tools that continuously check for deviations and generate alerts are a prime example of ongoing IT monitoring. Unlike an annual SOC 2 audit, which constitutes a separate periodic evaluation performed at defined intervals, ongoing monitoring provides continuous assurance that controls remain effective during day-to-day operations.'
WHERE id = 3587;

-- ID 3588: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST SP 800-207 (Zero Trust Architecture), zero trust operates on the principle of "never trust, always verify," requiring every access request to be authenticated, authorized, and encrypted regardless of network location. This model eliminates implicit trust zones and assumes breach by default, verifying each transaction independently before granting access. Unlike perimeter-based defense, which grants implicit trust to all internal network traffic once a user passes the network boundary, zero trust treats internal and external requests with equal scrutiny.'
WHERE id = 3588;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (3 questions)
-- ============================================================

-- ID 3655: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-63B (Digital Identity Guidelines, §5.1), true multi-factor authentication requires combining authenticators from at least two different categories: something you know, something you have, or something you are. A password combined with a hardware token satisfies this requirement by spanning two distinct factor categories. Unlike using a password plus a security question, which employs the same knowledge-based category twice, true MFA ensures that compromise of one factor category does not automatically compromise another.'
WHERE id = 3655;

-- ID 3656: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Under the COSO Internal Control — Integrated Framework (Principle 10, Segregation of Duties), critical tasks must be divided among different individuals so that no single person controls all phases of a financial transaction. Separating invoice creation from payment approval in accounts payable ensures that fraudulent or erroneous payments require collusion between at least two individuals to succeed. Unlike relying solely on role-based access controls without functional separation, segregation of duties provides a fundamental preventive control against both fraud and unintentional processing errors.'
WHERE id = 3656;

-- ID 3657: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-162 (Guide to Attribute Based Access Control), ABAC evaluates multiple attributes — such as user department, clearance level, resource classification, time of day, and device posture — to make dynamic, context-aware access decisions at request time. This enables granular policies that adapt to changing conditions without requiring predefined role assignments. Unlike RBAC, which assigns static permissions based on predefined roles and cannot incorporate contextual factors, ABAC can enforce policies like restricting access to financial reports to business hours from corporate-managed devices.'
WHERE id = 3657;

-- ============================================================
-- SOC ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 3758: SOC Engagements
UPDATE questions SET
  explanation = 'Under AT-C Section 205 and the AICPA Trust Services Criteria (TSC 2017), the security category (common criteria CC1–CC9) is mandatory in every SOC 2 engagement and serves as the foundation for the Trust Services framework. The remaining categories — availability, processing integrity, confidentiality, and privacy — are optional and selected based on the service organization''s commitments and user entity needs. Unlike the optional categories that address specific service attributes, the security common criteria establish baseline controls required for all service organizations regardless of engagement scope.'
WHERE id = 3758;

-- ID 3759: SOC Engagements
UPDATE questions SET
  explanation = 'Under AT-C Section 320.08, a Type I engagement evaluates the suitability of the design of controls at a specific point in time, making it appropriate for organizations that have recently implemented controls and lack sufficient operating history. This allows the service organization to demonstrate proper control design before committing to an extended examination. Unlike a Type II engagement, which requires controls to have been operating effectively over a specified period of typically six months or more, a Type I report provides initial design assurance without requiring an extended operational track record.'
WHERE id = 3759;

-- ID 3760: SOC Engagements
UPDATE questions SET
  explanation = 'Under AT-C Section 320.35, when a service auditor identifies a control deviation during a Type II examination, it must be reported in the description of tests performed and results thereof. The auditor evaluates the nature, cause, and extent of the deviation and its potential impact on user entities'' internal control over financial reporting. Unlike discovering that a control was never implemented, a temporary deviation caused by a software update does not automatically require a qualified opinion but must be assessed in context with the overall control environment and compensating controls.'
WHERE id = 3760;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 5457: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Under AT-C Section 320.35, a deviation in a SOC report indicates that the service auditor found one or more instances where a control did not operate as described in the system description during the examination period. The control may have functioned correctly in most instances but failed in specific cases, which the auditor must document in the test results. Unlike a control deficiency where the control was never properly designed or implemented, a deviation reflects an operating effectiveness gap that user entities must evaluate for nature, frequency, and compensating controls to assess impact on their own internal controls.'
WHERE id = 5457;

-- ============================================================
-- SOC REPORTING (2 questions)
-- ============================================================

-- ID 3895: SOC Reporting
UPDATE questions SET
  explanation = 'Under AT-C Section 320.14, a service organization may use different subservice organization presentation methods within the same SOC report based on engagement circumstances. The inclusive method brings the subservice organization''s controls into scope for direct testing by the service auditor, while the carve-out method identifies the excluded organization along with its complementary subservice organization controls (CSOCs). Unlike applying a single presentation method uniformly, using both methods in one report requires the system description to clearly delineate which subservice organization is included in testing and which is carved out with documented CSOCs.'
WHERE id = 3895;

-- ID 3896: SOC Reporting
UPDATE questions SET
  explanation = 'Under AT-C Section 320.53, the independent service auditor''s report must include the engagement scope, management''s responsibilities for the system description and controls, the auditor''s responsibilities, the criteria used, and the auditor''s opinion on fairness and control effectiveness. These elements provide the structured foundation for user entities'' reliance on the report. Unlike marketing materials or user entity financial statements, which fall entirely outside the engagement scope, the auditor''s report focuses exclusively on the service organization''s system description and control environment.'
WHERE id = 3896;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 3787: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria (2017), the privacy category is aligned with the AICPA''s Generally Accepted Privacy Principles (GAPP) and addresses personal information through criteria covering notice, choice and consent, collection, use, retention, access, disclosure, quality, and monitoring. These criteria incorporate requirements from applicable privacy laws and regulations throughout the data lifecycle. Unlike the security common criteria that focus on system-level access and infrastructure controls, the privacy criteria specifically address the lifecycle management of personal information from collection through disposal.'
WHERE id = 3787;

-- ID 3788: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria (2017), CC1 (Control Environment) aligns with COSO Principles 1–5 and includes points of focus related to the entity''s commitment to integrity and ethical values, board oversight responsibility, organizational structure, commitment to competence, and accountability. These elements establish the governance foundation upon which all other control components operate. Unlike CC5 (Control Activities), which addresses specific policies and procedures for risk mitigation at the operational level, CC1 defines the overarching governance tone and organizational culture that enables effective internal control.'
WHERE id = 3788;

-- ID 3789: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria (2017), the availability category includes supplemental criteria (A1.1–A1.3) that address controls for maintaining system performance, managing capacity, implementing redundancy, and defining recovery commitments beyond the common criteria baseline. These criteria ensure the system meets the entity''s specific availability commitments to user entities. Unlike the security common criteria, which establish baseline controls applicable across all Trust Services categories, the availability supplemental criteria specifically target uptime, failover, and disaster recovery capabilities.'
WHERE id = 3789;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 3872: SOC Testing Controls
UPDATE questions SET
  explanation = 'Under AT-C Section 320.41, roll-forward procedures extend interim testing conclusions to the end of the examination period by verifying that controls continued to operate effectively between the interim test date and period end. These procedures may include inquiry, observation, re-performance, and testing of additional transaction samples from the untested interval. Unlike initial interim testing, which establishes baseline operating effectiveness at an earlier point in the examination period, roll-forward procedures bridge the temporal gap to ensure no control deterioration occurred during the remaining untested interval.'
WHERE id = 3872;

-- ID 3873: SOC Testing Controls
UPDATE questions SET
  explanation = 'Under AT-C Section 320.35 and the AICPA Trust Services Criteria CC6.1 (Logical and Physical Access Controls), an effective access review must include not only the periodic review itself but also documented evidence of follow-up and remediation of identified issues. The lack of documented follow-up in three of four quarters indicates the control did not operate effectively throughout the examination period. Unlike a scheduling failure where reviews were missed entirely, this deviation reflects a more nuanced effectiveness gap where the review occurred but corrective action was not consistently executed or documented.'
WHERE id = 3873;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 3541: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5 (SC-5, Denial-of-Service Protection), a load balancer distributes incoming network traffic across multiple backend servers using algorithms such as round-robin, least connections, or weighted distribution to prevent individual server overload. This improves response times and provides availability through automatic failover if one server becomes unavailable. While TLS encryption may be a feature of some load balancers through SSL termination, it is not their primary function, which is traffic distribution and availability optimization.'
WHERE id = 3541;

-- ID 3542: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Change Enablement, the Change Advisory Board (CAB) is a cross-functional body comprising representatives from IT, security, operations, and business units that evaluates proposed changes by assessing risk, business impact, resource requirements, and rollback plans. CAB approval helps ensure changes do not introduce unintended disruptions to production environments. Unlike the development team, which is responsible for writing and testing application code, the CAB provides independent governance review and approval authority over proposed production changes.'
WHERE id = 3542;

-- ID 3543: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Change Enablement, the standard change management workflow follows a structured sequence: submit a request for change, assess risk and classify priority, obtain approval from the appropriate authority, implement during an approved maintenance window, and conduct a post-implementation review. This sequence ensures every change is properly documented, evaluated, and verified before and after deployment. Unlike implementing changes before submitting a request and obtaining approval, which bypasses all change management controls, the correct workflow enforces governance at each stage.'
WHERE id = 3543;

-- ID 3544: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Change Enablement, a comprehensive change impact assessment must evaluate all affected systems and services, identify risks with corresponding mitigation strategies, define required testing, establish the implementation timeline, and document a rollback plan. These elements collectively ensure the Change Advisory Board can make informed approval decisions. While cost estimation is one relevant factor, it alone is insufficient — the assessment must also address technical risk, testing requirements, service dependencies, and rollback procedures to protect operational continuity.'
WHERE id = 3544;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (3 questions)
-- ============================================================

-- ID 3621: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide), a Distributed Denial of Service (DDoS) attack uses multiple compromised systems — often a botnet — to flood a target with traffic, overwhelming its resources and making it unavailable to legitimate users. The distributed nature using thousands of IP addresses worldwide makes DDoS significantly harder to mitigate than single-source attacks. Unlike a standard DoS attack launched from a single source that can be blocked by filtering one IP address, a DDoS attack requires more sophisticated mitigation such as traffic scrubbing and CDN-based absorption.'
WHERE id = 3621;

-- ID 3622: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide), application layer (Layer 7) DDoS attacks target web applications by sending seemingly legitimate HTTP requests that consume disproportionate server resources such as CPU, memory, and database connections. These attacks are harder to detect because individual requests appear normal and pass standard network-level filtering. Unlike volumetric attacks that overwhelm bandwidth capacity with sheer traffic volume, application layer attacks exploit the asymmetry between lightweight requests and resource-intensive server-side processing.'
WHERE id = 3622;

-- ID 3623: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-63B (Digital Identity Guidelines), a man-in-the-middle (MitM) attack occurs when an attacker secretly intercepts and potentially alters communication between two parties who believe they are communicating directly. The attacker can eavesdrop on sensitive data, modify transactions, or inject malicious content without either party''s knowledge. Unlike a phishing attack that relies on social engineering to trick users into voluntarily revealing credentials, a MitM attack operates by intercepting legitimate communications in transit, making TLS encryption and certificate validation the primary defenses.'
WHERE id = 3623;

COMMIT;
