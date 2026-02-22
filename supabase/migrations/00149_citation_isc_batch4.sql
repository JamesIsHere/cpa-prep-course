-- Migration: Citation backfill — ISC batch 4 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (1 questions)
-- ============================================================

-- ID 5414: Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Section 5.2.11 (Service Configuration Management), a configuration item (CI) is any component—hardware, software, documentation, or service—that must be managed to deliver an IT service. CIs are tracked in the CMDB with their attributes, versions, and relationships to other CIs, enabling impact analysis and change management. Unlike the misconception that CIs are limited to physical hardware, the ITIL definition encompasses all components necessary for IT service delivery, including virtual resources and documentation.'
WHERE id = 5414;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 783: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under COSO Section IC-1 (Information and Communication), management must implement controls that verify the completeness and accuracy of data processing, including reconciliation controls comparing record counts and key financial totals between source and target systems after each ETL run. A 2% record loss could be material depending on which transactions were dropped. Unlike setting an arbitrary acceptance threshold, which ignores the nature and materiality of lost records, reconciliation controls address the root cause by detecting and enabling correction of data loss at each processing stage.'
WHERE id = 783;

-- ID 784: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under GDPR Article 33 Section 1, a data controller must notify the supervisory authority within 72 hours of becoming aware of a personal data breach, unless the breach is unlikely to result in a risk to individuals'' rights and freedoms. This 72-hour window balances timely notification with allowing the controller to gather initial breach facts. Unlike the 24-hour deadline sometimes associated with other regulatory frameworks, GDPR specifically mandates 72 hours, making March 8 the correct deadline for a breach discovered on March 5.'
WHERE id = 784;

-- ID 785: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section DSS05 (Manage Security Services), table partitioning by date range enables partition pruning, where the database engine scans only the partitions matching the query''s date filter rather than the full 800-million-row table. This dramatically reduces I/O and query execution time for date-filtered queries. Unlike indexing alone, which partitioning complements rather than replaces, partition pruning eliminates entire data segments from consideration before index lookups even begin.'
WHERE id = 785;

-- ID 786: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under NIST FIPS 180-4 Section 1 (Secure Hash Standard) and FIPS 186-5 (Digital Signature Standard), combining a cryptographic hash with a digital signature provides both integrity verification and sender authentication. The hash detects any file tampering during transmission, while the digital signature uses asymmetric cryptography to verify the sender''s identity and provide non-repudiation. Unlike CRCs, which detect only accidental transmission errors and offer no protection against deliberate tampering, cryptographic hashes and digital signatures guard against intentional modification.'
WHERE id = 786;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 3469: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section APO09 (Manage Service Agreements), batch processing collects transactions over a period and processes them together, providing efficient resource utilization for high-volume routine operations like vendor payments. The primary trade-off is delayed data availability—account balances and reports remain outdated until the batch completes. Unlike real-time processing, which updates records immediately upon each transaction but requires more system resources, batch processing sacrifices data currency for processing efficiency and reduced resource contention.'
WHERE id = 3469;

-- ID 3470: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section BAI03 (Manage Solutions Identification and Build), EDI transmits business documents such as purchase orders and invoices in standardized electronic formats (e.g., ANSI X12, EDIFACT) between trading partners'' systems, significantly reducing manual data entry errors and processing time. The primary advantage is the elimination of re-keying data, which reduces transcription errors and accelerates the order-to-payment cycle. Unlike manual document exchange, which requires human interpretation and data entry at each stage, EDI enables automated validation and straight-through processing.'
WHERE id = 3470;

-- ID 3471: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section BAI03 (Manage Solutions Identification and Build), real-time API integration ensures that data changes in one system are immediately reflected in connected systems, enabling accurate and timely business decisions. For CRM-to-ERP integration, credit limit updates and customer changes are instantly available for order processing. Unlike batch file transfers, which introduce latency between synchronization windows and risk decisions based on stale data, real-time APIs maintain continuous data currency across integrated systems.'
WHERE id = 3471;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (2 questions)
-- ============================================================

-- ID 870: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Under NIST SP 800-84 Section 3 (Guide to Test, Training, and Exercise Programs), a tabletop exercise is a discussion-based session where participants walk through a simulated incident scenario, reviewing roles, decision points, and communication procedures without executing actions on production systems. This low-risk format enables teams to identify gaps in plans and coordination. Unlike a full interruption test, which involves shutting down production systems to validate recovery capabilities and introduces real operational risk, a tabletop exercise carries no impact to live environments.'
WHERE id = 870;

-- ID 871: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Under NIST SP 800-61 Section 3.4 (Computer Security Incident Handling Guide), restored systems must be verified clean before reconnection through malware scanning with updated signatures, file integrity verification against known-good baselines, and isolated testing. This multi-step verification prevents reinfection from dormant malware surviving the restoration process. Unlike simply reconnecting systems after a backup restore without verification, which risks reintroducing the attacker''s foothold, proper scanning and integrity checks ensure no residual malicious artifacts remain in the environment.'
WHERE id = 871;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 1065: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section APO12 (Manage Risk), the risk owner should compare residual risk against the organization''s defined risk appetite and tolerance levels to determine whether additional controls or risk treatment is warranted. Even with strong existing controls, moderate residual risk may exceed the organization''s acceptable threshold depending on its risk tolerance. Unlike simply accepting the current risk level without evaluation, the risk owner must verify that residual risk aligns with the board-approved risk appetite before deciding on further action or formal acceptance.'
WHERE id = 1065;

-- ID 3832: IT Audit Frameworks
UPDATE questions SET
  explanation = 'COBIT 2019 is developed and maintained by ISACA (Information Systems Audit and Control Association), providing 40 governance and management objectives for enterprise information and technology (COBIT 2019, Section 1: Introduction and Methodology). ISACA designed COBIT as a comprehensive IT governance and management framework used globally by audit professionals. Unlike NIST, which develops the Cybersecurity Framework and SP 800-series publications focused primarily on security controls and risk management, ISACA''s COBIT addresses the broader scope of enterprise IT governance and management.'
WHERE id = 3832;

-- ID 3833: IT Audit Frameworks
UPDATE questions SET
  explanation = 'COBIT 2019 separates governance (Evaluate, Direct, Monitor) from management (Plan, Build, Run, Monitor) to ensure strategic oversight by the board remains distinct from operational execution (COBIT 2019, Section 3: Governance System Principles). This separation prevents conflicts of interest where the same body both sets direction and executes activities. Unlike reversing the roles so that management sets direction and governance handles operations, COBIT''s structure ensures the board retains strategic oversight while management implements aligned operational activities.'
WHERE id = 3833;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 1055: IT General Controls
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Section 5 (Contingency Planning Guide), restoring from incremental backups requires the most recent full backup plus all subsequent incremental backups applied in chronological order, since each incremental captures only changes since the last backup. For a Thursday failure with Sunday full backups, the team needs Sunday''s full backup plus Monday through Thursday''s incrementals. Unlike differential backups, which capture all changes since the last full backup and require only two restore operations, incremental restores require every intervening backup applied in sequence.'
WHERE id = 1055;

-- ID 3806: IT General Controls
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section DSS05.04 (Manage User Identity and Logical Access), the user provisioning lifecycle begins with a formal, documented access request specifying the employee''s role, the systems and access levels needed, and management authorization. This ensures access is granted based on the principle of least privilege with proper approval documentation. Unlike copying access from another employee, which risks perpetuating inappropriate or excessive permissions accumulated through role changes, a formal request process ensures each user receives only the access required for their specific role.'
WHERE id = 3806;

-- ID 3807: IT General Controls
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section DSS05.04 (Manage User Identity and Logical Access), periodic access reviews verify that user access rights remain appropriate for each individual''s current role and responsibilities. Reviews identify users who have changed roles, departed the organization, or accumulated excessive privileges through role transitions. Unlike granting initial access, which is a one-time provisioning event, ongoing access reviews are a detective control that identifies and remediates privilege creep and orphaned accounts to maintain the principle of least privilege.'
WHERE id = 3807;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (4 questions)
-- ============================================================

-- ID 758: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under NIST SP 800-128 Section 2 (Guide for Security-Focused Configuration Management), Infrastructure as Code (IaC) manages and provisions computing infrastructure through machine-readable definition files such as Terraform or CloudFormation templates, enabling version control, repeatability, and automated deployments. IaC treats infrastructure configuration as software artifacts subject to the same development lifecycle controls. Unlike manual hardware configuration or interactive setup tools, IaC ensures consistent, auditable, and reproducible infrastructure provisioning across all environments.'
WHERE id = 758;

-- ID 759: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under NIST SP 800-190 Section 3 (Application Container Security Guide), containers sharing the host operating system kernel represents the greatest audit concern because a kernel vulnerability could compromise all containers on that host simultaneously. This shared-kernel architecture creates a single point of failure absent in traditional virtualization. Unlike virtual machines, which each run a separate OS instance providing hardware-level isolation through a hypervisor, containers rely on kernel-level namespaces and cgroups that offer weaker isolation boundaries between workloads.'
WHERE id = 759;

-- ID 3429: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under NIST SP 800-77 Section 3 (Guide to IPsec VPNs), a site-to-site VPN over dedicated WAN links provides encrypted, reliable connectivity between geographically separated offices, ensuring confidentiality of sensitive data in transit while maintaining consistent bandwidth. This approach combines encryption with dedicated throughput for reliable performance. Unlike public Wi-Fi, which lacks reliability guarantees and exposes traffic to interception on shared networks, a dedicated VPN tunnel maintains consistent security and throughput for inter-office financial data transmission.'
WHERE id = 3429;

-- ID 3430: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under the ISO/IEC 7498-1 Section 7.5 (OSI Reference Model), the Session layer (Layer 5) is responsible for establishing, managing, and terminating communication sessions between applications, including session checkpointing and recovery capabilities. This layer coordinates dialogue control and synchronization between communicating systems. Unlike the Transport layer (Layer 4), which handles end-to-end data delivery, segmentation, and flow control, the Session layer manages the logical connections that organize and synchronize the exchange of data between applications.'
WHERE id = 3430;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (4 questions)
-- ============================================================

-- ID 857: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under PCI DSS Section 1 (Install and Maintain Network Security Controls), organizations storing, processing, or transmitting cardholder data must implement network segmentation to isolate the cardholder data environment (CDE) from untrusted networks. While not strictly mandatory, segmentation is strongly recommended because without it the entire network falls in scope for PCI DSS compliance. Unlike encrypting data at rest alone, which addresses only storage security, network segmentation reduces the overall compliance scope and limits potential attack paths to cardholder data.'
WHERE id = 857;

-- ID 1296: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under HIPAA 45 CFR Section 160.103, Protected Health Information (PHI) is any individually identifiable health information created, received, maintained, or transmitted by a covered entity or business associate. PHI encompasses medical records, billing data, and any information linking a patient''s identity to their health condition, treatment, or payment history. Unlike de-identified health data, which has had all 18 HIPAA identifiers removed and is no longer subject to HIPAA protections, PHI retains personal identifiers and requires safeguards under the Privacy and Security Rules.'
WHERE id = 1296;

-- ID 1297: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under HIPAA 45 CFR Section 164.502(b), the minimum necessary standard requires covered entities to limit the use, disclosure, and request of PHI to the minimum amount needed to accomplish the intended purpose. This principle restricts employee access to only the PHI required for their specific job functions. Unlike providing all staff with unrestricted access to patient records for operational convenience, the minimum necessary standard enforces least-privilege access, reducing the risk of unauthorized exposure of sensitive health information.'
WHERE id = 1297;

-- ID 1298: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under HIPAA 45 CFR Section 160.103, a business associate is any person or entity that performs functions involving the use or disclosure of PHI on behalf of a covered entity. A cloud hosting provider storing patient records for a hospital is a classic business associate requiring a Business Associate Agreement (BAA). Unlike hospital employees, who are part of the covered entity''s workforce and governed directly by the entity''s own policies, business associates are separate legal entities that must independently comply with HIPAA security requirements.'
WHERE id = 1298;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 814: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under NIST SP 800-53 Section 3.18 (Security and Privacy Controls), deterrent controls discourage potential violators by making them aware of surveillance and consequences. Visible security cameras, login warning banners, and published disciplinary policies are designed to prevent security violations through psychological deterrence. Unlike detective controls, which identify and record violations after they occur for investigation and remediation purposes, deterrent controls operate before an incident by influencing behavior and discouraging intentional policy violations.'
WHERE id = 814;

-- ID 815: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under NIST SP 800-53 Section SC-3 (Security and Privacy Controls), defense in depth employs multiple overlapping layers of security controls—network, host, application, data, and monitoring—so that if one layer fails, others continue providing protection. This layered approach minimizes single points of failure in the security architecture. Unlike relying on a single perimeter firewall, which creates one point of failure that exposes the entire environment if breached, defense in depth ensures that compromise of any individual control does not result in complete security failure.'
WHERE id = 815;

-- ID 3575: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under the NIST Cybersecurity Framework Section 2.1 (Identify), the Identify function is the foundation for developing an organizational understanding of cybersecurity risk to systems, assets, data, and capabilities. It encompasses asset management, business environment analysis, governance, risk assessment, and risk management strategy. Unlike the Protect function, which focuses on implementing safeguards such as access controls, awareness training, and data security measures, the Identify function establishes the baseline risk understanding needed to prioritize all other cybersecurity activities.'
WHERE id = 3575;

-- ID 3576: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under the NIST Cybersecurity Framework Section 2.3 (Detect), the Detect function encompasses activities to identify cybersecurity events in a timely manner, including continuous security monitoring, anomaly detection, and event correlation. A SIEM platform that correlates log data and generates real-time alerts directly supports this function. Unlike the Identify function, which focuses on cataloging assets and understanding the organization''s risk posture as a foundational planning activity, the Detect function provides ongoing operational monitoring to discover cybersecurity incidents as they occur.'
WHERE id = 3576;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 841: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Under NIST SP 800-50 Section 3 (Building an Information Technology Security Awareness Program), effective security awareness requires both threat recognition and incident reporting behaviors. The 5% reporting rate is the greatest concern because without timely reports, the security team cannot detect and contain compromises quickly. Even with a high click rate, rapid reporting enables effective incident response. Unlike focusing solely on the 35% click rate, which measures user susceptibility, the reporting rate indicates whether the organization can detect and respond to social engineering attacks through its human sensor network.'
WHERE id = 841;

-- ID 842: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Under NIST SP 800-92 Section 3 (Guide to Computer Security Log Management), database audit trail logs capture DML operations (INSERT, UPDATE, DELETE) along with the executing user, affected rows, old and new values, and timestamps, providing the most direct evidence for investigating unauthorized record modifications. These logs enable precise forensic reconstruction of what changed and by whom. Unlike web server access logs, which capture HTTP request metadata but not the specific SQL operations or row-level changes performed on the database, audit trail logs record the exact modifications the investigator needs.'
WHERE id = 842;

-- ID 843: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Under NIST SP 800-115 Section 4 (Technical Guide to Information Security Testing), vulnerability scans are automated tools that identify known weaknesses by comparing system configurations against databases of known vulnerabilities, while penetration tests employ skilled testers to actively exploit those vulnerabilities and demonstrate real-world attack impact. The key difference is active exploitation versus passive identification. Unlike vulnerability scans, which produce a list of potential weaknesses without confirming exploitability, penetration tests validate whether vulnerabilities can be chained into actual attack paths with measurable business impact.'
WHERE id = 843;

-- ID 3647: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Under NIST SP 800-53 Section 3 (Security and Privacy Controls), controls are categorized by when they operate in the incident lifecycle: preventive controls stop events before occurrence, detective controls identify events during or after occurrence, and corrective controls remediate impact after detection. Badge readers prevent unauthorized entry, cameras detect suspicious activity for review, and rapid account disablement corrects an active compromise. Unlike classifying all three as preventive, this categorization recognizes each control operates at a fundamentally different stage of the security event timeline.'
WHERE id = 3647;

-- ============================================================
-- SOC ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 3749: SOC Engagements
UPDATE questions SET
  explanation = 'Under AICPA SSAE 18 (AT-C Section 320), a SOC 2 report is a restricted-use report intended only for management of the service organization, user entities, business partners, and prospective user entities with sufficient knowledge of the system. This restriction exists because the report contains detailed control descriptions and test results requiring adequate context to interpret. Unlike a SOC 3 report, which is a general-use report suitable for public distribution and marketing purposes, a SOC 2 report''s detailed content requires readers to have sufficient understanding of the system.'
WHERE id = 3749;

-- ID 3750: SOC Engagements
UPDATE questions SET
  explanation = 'Under AICPA SSAE 18 (AT-C Section 320), a SOC 3 report is a general-use report that contains the service auditor''s opinion but omits the detailed description of tests performed and their results. It is suitable for broad audiences and can be displayed publicly, such as a SOC 3 seal on a website. Unlike a SOC 2 report, which includes comprehensive test descriptions, results, and detailed system descriptions and is restricted to parties with sufficient knowledge, a SOC 3 report provides assurance without exposing detailed control information.'
WHERE id = 3750;

-- ID 3751: SOC Engagements
UPDATE questions SET
  explanation = 'Under AICPA SSAE 18 (AT-C Section 320), a SOC Type I engagement evaluates the suitability of the design of controls at a specific point in time (as of a specified date), assessing whether controls are suitably designed to meet applicable trust services criteria. It does not test operating effectiveness over a period. Unlike a SOC Type II engagement, which evaluates both design suitability and operating effectiveness of controls over a minimum six-month review period, a Type I provides only a point-in-time snapshot of control design.'
WHERE id = 3751;

-- ============================================================
-- SOC REPORTING (2 questions)
-- ============================================================

-- ID 3889: SOC Reporting
UPDATE questions SET
  explanation = 'Under AICPA SSAE 18 (AT-C Section 320.A27), the carve-out method excludes the subservice organization''s controls from the service auditor''s scope, identifying the subservice organization and describing the services it provides without extending the opinion to its controls. The report may reference a separate SOC report obtained by the subservice organization. Unlike the inclusive method, where the subservice organization''s controls are included within the engagement scope and tested by the service auditor, the carve-out method leaves a gap that user entities must evaluate independently.'
WHERE id = 3889;

-- ID 3891: SOC Reporting
UPDATE questions SET
  explanation = 'Under AICPA SSAE 18 (AT-C Section 320), SOC 2 reports are restricted-use reports intended for management of the service organization, user entities, business partners with contractual relationships, and prospective user entities with sufficient understanding to interpret the report. This restriction ensures readers have adequate context for the detailed technical content. Unlike SOC 3 reports, which are general-use reports suitable for public distribution including investors and the general public, SOC 2 reports require recipients to have a specific business relationship or informational need.'
WHERE id = 3891;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 3777: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria (TSC 2017, Section 100), the five categories are security, availability, processing integrity, confidentiality, and privacy. Security is the foundational category required in all SOC 2 engagements, while the other four are optional based on the service organization''s commitments. Profitability is not a Trust Services category. Unlike financial performance metrics such as profitability, the Trust Services Criteria focus exclusively on system-level controls that protect stakeholder interests in information security and processing reliability.'
WHERE id = 3777;

-- ID 3779: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria (TSC 2017, Section C1: Confidentiality), the confidentiality criteria address the protection of information designated as confidential per the entity''s commitments and agreements, including trade secrets, intellectual property, and sensitive business plans. Controls include access restrictions, encryption, and secure disposal. Unlike the privacy category, which specifically governs personal information collected from individuals and their consent rights, the confidentiality category covers broader categories of sensitive business information the organization has committed to protecting.'
WHERE id = 3779;

-- ID 3780: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria (TSC 2017, Section CC), the common criteria (CC1 through CC9) are deliberately mapped to the 17 principles of the COSO Internal Control—Integrated Framework (2013). CC1 maps to control environment, CC2 to communication, CC3 to risk assessment, and CC4 through CC9 to monitoring, control activities, access, operations, and change management. Unlike NIST or COBIT, which address IT-specific governance and security, the COSO alignment ensures the Trust Services framework builds on the widely accepted internal control foundation used in financial reporting.'
WHERE id = 3780;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 3865: SOC Testing Controls
UPDATE questions SET
  explanation = 'Under the AICPA Guide: SOC 2 Reporting on Controls (Section 3: Sample Size Determination), larger sample sizes are required when the expected deviation rate is higher or the tolerable deviation rate is lower, particularly for critical controls where greater testing precision is needed. A 3% expected deviation rate on a critical processing integrity control narrows the margin for error. Unlike automated controls with consistent execution that typically require smaller samples due to reduced variability, manual controls introduce human variability that demands more extensive testing to achieve comparable assurance.'
WHERE id = 3865;

-- ID 3867: SOC Testing Controls
UPDATE questions SET
  explanation = 'Under the AICPA Guide: SOC 2 Reporting on Controls (Section 4: Evaluating Deviations), the auditor must evaluate each exception by assessing its nature, cause, frequency, and potential impact on the control objective before determining the effect on the opinion. Three exceptions out of 25 samples (12% deviation rate) is significant and may indicate a systemic control weakness. Unlike automatically qualifying the opinion based solely on the exception count, the auditor must investigate whether the exceptions share a common root cause or represent isolated failures to determine the overall impact on the control environment.'
WHERE id = 3867;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 800: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section BAI07 (Manage IT Change Acceptance and Transitioning), parallel testing involves running both old and new systems simultaneously, processing identical transactions through each, and comparing outputs to verify the new system produces correct results before decommissioning the legacy system. This approach provides the highest assurance of output accuracy during migration. Unlike pilot testing, which deploys the new system to a limited user group to evaluate functionality in a production subset, parallel testing validates data accuracy by comparing results from both systems on the same transactions.'
WHERE id = 800;

-- ID 801: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section BAI07 (Manage IT Change Acceptance and Transitioning), development, testing, and production environments must be isolated so that developers cannot directly modify production systems, preventing untested or unauthorized changes from affecting live data and services. This environment separation is a fundamental IT general control. Unlike separation of duties, which distributes responsibilities among different individuals to prevent fraud and error, separation of environments specifically isolates the technical infrastructure to ensure all changes pass through proper testing and approval gates.'
WHERE id = 801;

-- ID 1292: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Section 5.2 (Change Enablement), an emergency change is required when a critical issue—such as a zero-day vulnerability exposing cardholder data—demands immediate action that cannot wait for the standard Change Advisory Board (CAB) review cycle. The abbreviated process permits rapid deployment but mandates post-implementation documentation and review. Unlike a standard change, which is a pre-approved, low-risk routine change with established procedures suitable for recurring operations, an emergency change addresses urgent situations requiring expedited authorization and later retrospective review.'
WHERE id = 1292;

-- ID 1293: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Section 5.2 (Change Enablement), the most important control after an emergency change is mandatory post-implementation review and documentation. Because emergency changes bypass normal approval and testing processes, they carry elevated risk requiring retrospective governance to close the accountability gap. The review ensures the change is documented, tested retroactively, and assessed for unintended consequences. Unlike simply reverting the change, which may reintroduce the original critical vulnerability, post-implementation review maintains accountability while preserving the emergency fix.'
WHERE id = 1293;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (4 questions)
-- ============================================================

-- ID 827: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Under NIST SP 800-161 Section 2 (Cybersecurity Supply Chain Risk Management), a supply chain attack compromises a trusted vendor''s software development or distribution process to inject malicious code into legitimate updates, which customers then unknowingly deploy. The SolarWinds Orion attack of 2020 is a prominent example of this technique. Unlike a watering hole attack, which compromises websites frequently visited by the target group to deliver malware through the browser, a supply chain attack exploits the trust relationship between software vendors and their customers through the update mechanism.'
WHERE id = 827;

-- ID 828: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Under NIST SP 800-53 Section PM-12 (Insider Threat Program), insider threat likelihood depends on factors directly related to employees and their access: the breadth of access privileges, effectiveness of monitoring controls, separation of duties enforcement, and organizational history of policy violations. These human-centric factors drive the probability assessment. Unlike external infrastructure characteristics such as physical location or network bandwidth, insider threat assessment focuses on the people, privileges, and organizational culture that either enable or deter malicious or negligent insider behavior.'
WHERE id = 828;

-- ID 829: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Under NIST SP 800-30 Section 3 (Guide for Conducting Risk Assessments), when an active targeted threat exploits a specific known vulnerability in a product the organization uses, immediate mitigation through patching, compensating controls, and enhanced monitoring is the most appropriate response. The combination of high likelihood and severe impact demands rapid action to reduce exposure. Unlike risk acceptance, which is inappropriate when a known active threat directly targets the organization''s specific infrastructure, mitigation reduces both the likelihood of exploitation and the potential impact of a successful attack.'
WHERE id = 829;

-- ID 3613: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Under NIST SP 800-83 Section 4 (Guide to Malware Incident Prevention and Handling), double-extortion ransomware combines traditional file encryption with prior data exfiltration, creating two simultaneous pressure points: operational disruption from encryption and reputational harm from threatened data publication. This technique renders backup-only recovery strategies insufficient. Unlike traditional ransomware, which solely encrypts files and can be countered by restoring from clean backups, double-extortion variants maintain leverage through stolen data even if the victim successfully restores all encrypted systems.'
WHERE id = 3613;

COMMIT;
