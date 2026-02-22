-- Migration: Citation backfill — ISC batch 12 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 5425: Change Management
UPDATE questions SET
  explanation = 'Post-implementation review (PIR) is a required stage under ITIL 4 Change Enablement practice and COBIT 2019 BAI06.01, designed to evaluate whether changes achieved their objectives. Skipping PIR eliminates the feedback loop needed to identify patterns in failed changes, measure effectiveness, and refine future change procedures. While procurement costs and CMDB backup concerns are legitimate operational issues, they are unrelated to the specific risk of omitting the review stage in a change workflow.'
WHERE id = 5425;

-- ID 5426: Change Management
UPDATE questions SET
  explanation = 'Under AICPA AT-C Section 320 and SSAE 18, change management is recognized as one of the primary categories of IT general controls (ITGCs), alongside logical access, computer operations, and program development. As an ITGC, change management ensures that modifications to applications, infrastructure, and configurations are properly authorized, tested, and documented. However, it does not replace or serve as a superset of other ITGCs, as each category addresses distinct control objectives within the IT environment.'
WHERE id = 5426;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (4 questions)
-- ============================================================

-- ID 3526: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per NIST SP 800-57 Part 1 (Recommendation for Key Management), encryption keys must be securely stored, backed up, and maintained throughout the entire data retention period. Without the correct decryption keys, modern encryption algorithms render data permanently inaccessible, as brute-force recovery is computationally infeasible. Unlike corrupted storage media where partial recovery may be possible, lost encryption keys eliminate any path to data retrieval regardless of the physical condition of the archived tapes.'
WHERE id = 3526;

-- ID 3527: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per COBIT 2019 APO14 (Managed Data) and the DAMA-DMBOK framework, consistency is the data quality dimension violated when the same data field contains multiple representations of the same value (e.g., CA, California, Calif.). Remediation requires establishing canonical reference data and cleansing existing records to match a standard format. While accuracy relates to whether data correctly represents the real-world entity it models, consistency specifically addresses uniform formatting and representation across records.'
WHERE id = 3527;

-- ID 3528: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under COBIT 2019 APO14.06 (Manage Data Quality), a data catalog serves as a searchable inventory of an organization''s data assets, providing metadata, descriptions, ownership, lineage, and quality scores. It empowers business users and analysts to discover relevant data, understand its meaning, and assess its suitability for their analytical needs. Unlike deduplication tools that eliminate redundant records, a data catalog indexes metadata about data assets without modifying or consolidating the underlying data itself.'
WHERE id = 3528;

-- ID 3529: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'According to NIST SP 800-88 Rev. 1 (Guidelines for Media Sanitization), degaussing is effective only for magnetic storage media because it uses strong magnetic fields to erase data. SSDs store data using electrical charges in NAND flash memory cells, which are completely unaffected by magnetic fields. Rather than relying on degaussing for SSDs, organizations must use cryptographic erasure, ATA Secure Erase commands, or physical destruction such as shredding to ensure complete data sanitization.'
WHERE id = 3529;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5445: Data Protection Technologies
UPDATE questions SET
  explanation = 'Per NIST SP 800-188 (De-Identifying Government Datasets) and PCI DSS v4.0 Requirement 3.5, tokenization replaces sensitive data with a randomly generated substitute token that has no mathematical relationship to the original value. The mapping between tokens and original values is stored in a secure token vault separate from the tokenized data. Unlike encryption, which transforms data using a mathematical algorithm and key—making the relationship between plaintext and ciphertext mathematically derivable—tokenization provides no cryptographic path from token back to original value without vault access.'
WHERE id = 5445;

-- ID 5446: Data Protection Technologies
UPDATE questions SET
  explanation = 'Per NIST SP 800-188 and AICPA Trust Services Criteria CC6.1, dynamic data masking applies obfuscation rules at query time so unauthorized users see masked values while the original data remains intact in the database. Authorized users with appropriate privileges see real values, enabling role-based data access without modifying stored data. Unlike static masking, which permanently replaces sensitive data in a copy of the database, dynamic masking operates transparently at retrieval without altering the underlying records.'
WHERE id = 5446;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 3493: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under COBIT 2019 BAI05.05 (Enable Operation and Use), reconciliation is the most critical data migration control because comparing trial balances, transaction counts, and key totals between legacy and new systems verifies completeness and accuracy of transferred data. This validation ensures financial reporting integrity is maintained across the system transition. Whereas deleting legacy data immediately after migration removes the ability to verify results, retaining the source system during a parallel-run period provides a safety net for identifying discrepancies.'
WHERE id = 3493;

-- ID 3494: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI05 and standard ERP module architecture, the Accounts Receivable (AR) module maintains the customer subledger that tracks individual customer balances, invoice details, payment history, and aging of outstanding receivables. It feeds summary totals to the General Ledger to keep control accounts current. Unlike the General Ledger, which maintains aggregated control account balances, the AR module provides the granular transaction-level detail needed for collections management and customer account analysis.'
WHERE id = 3494;

-- ID 3495: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under the COSO Internal Control—Integrated Framework (2013), Principle 16, an exception report identifying journal entries posted without required approval is classified as a detective control because it identifies control violations after they occur. Detective controls provide assurance that preventive controls are functioning and flag breakdowns requiring corrective action. Although a preventive control that blocks unapproved entries entirely would be preferable, the exception report serves as a critical compensating mechanism when prevention fails or is bypassed.'
WHERE id = 3495;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (2 questions)
-- ============================================================

-- ID 3705: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2, Section 3.4 (Post-Incident Activity), lessons-learned reports should address root causes and recommend systemic improvements to prevent recurrence. The root cause here was not the vulnerability itself but the failure of the vulnerability management process to ensure timely remediation. The report should recommend establishing SLAs for remediation by severity, creating accountability mechanisms, and implementing tracking per NIST SP 800-40 Rev. 4, rather than merely documenting the technical vulnerability that was exploited.'
WHERE id = 3705;

-- ID 3706: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2, Section 2.4 (Incident Response Team Structure), the incident commander leads the response effort by coordinating activities across technical, legal, communications, and management teams. The commander makes key decisions on containment strategies, escalation, and external notifications while serving as the central communication point. While the incident commander delegates technical forensic analysis to specialized team members, the commander''s primary role is unified command and cross-functional coordination rather than hands-on investigation or post-incident report writing.'
WHERE id = 3706;

-- ============================================================
-- IT AUDIT FRAMEWORKS (2 questions)
-- ============================================================

-- ID 3854: IT Audit Frameworks
UPDATE questions SET
  explanation = 'COBIT 2019 defines four management domains: APO (Align, Plan and Organize), BAI (Build, Acquire and Implement), DSS (Deliver, Service and Support), and MEA (Monitor, Evaluate and Assess). Together with the governance domain EDM (Evaluate, Direct and Monitor), these five domains cover all 40 governance and management objectives. While the NIST Cybersecurity Framework uses Identify, Protect, Detect, Respond, and Recover as its five functions, these are distinct from COBIT''s domain structure and should not be confused with it.'
WHERE id = 3854;

-- ID 3855: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Under the ITIL 4 Foundation framework, continual improvement is a core practice that operates at all organizational levels to ensure services and practices remain aligned with changing business needs. It uses methods such as the ITIL continual improvement model and a continual improvement register (CIR) to track and prioritize improvement opportunities systematically. Unlike one-time process redesign initiatives, continual improvement is a recurring organizational activity embedded in the service value system that drives ongoing incremental and transformational enhancements.'
WHERE id = 3855;

-- ============================================================
-- IT GENERAL CONTROLS (2 questions)
-- ============================================================

-- ID 3828: IT General Controls
UPDATE questions SET
  explanation = 'Under ITIL 4 Change Enablement practice and COBIT 2019 BAI06.01, a change advisory board (CAB) evaluates proposed changes to assess risk, potential impact on services, resource requirements, and appropriate scheduling. The CAB provides multi-perspective review including stakeholders from operations, security, and business units to ensure changes are properly vetted. However, the CAB authorizes and advises on changes rather than developing or testing them, as implementation and testing responsibilities belong to the technical teams proposing the change.'
WHERE id = 3828;

-- ID 3829: IT General Controls
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5, control families AC (Access Control) and SC (System and Communications Protection), data loss prevention (DLP) controls address the logical access and data protection objective within IT general controls. DLP monitors data in motion, at rest, and in use to detect and prevent unauthorized transmission of sensitive information across email, USB, and cloud channels. Unlike traditional access controls that restrict who can access systems, DLP focuses on the data itself by monitoring content and enforcing policies regardless of the access path.'
WHERE id = 3829;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (4 questions)
-- ============================================================

-- ID 3458: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-145 (The NIST Definition of Cloud Computing), a community cloud is shared infrastructure provisioned for exclusive use by a specific community of organizations with shared concerns such as compliance requirements, security policies, or mission objectives. Healthcare organizations sharing HIPAA-compliant cloud infrastructure exemplifies this model precisely. Unlike a private cloud that serves a single organization or a public cloud available to the general public, a community cloud balances shared costs with the specialized compliance and security needs of its member organizations.'
WHERE id = 3458;

-- ID 3459: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-190 (Application Container Security Guide), container orchestration platforms like Kubernetes provide automated deployment, horizontal scaling, load balancing, and self-healing by automatically restarting failed containers. This significantly reduces manual operational overhead compared to managing individual server OS instances. While Kubernetes delivers substantial operational benefits through automation, it does not eliminate the need for networking configuration or application updates, and it uses shared infrastructure rather than requiring dedicated physical servers for each workload.'
WHERE id = 3459;

-- ID 3460: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5, control PE-11 (Emergency Power), redundant systems must use diverse physical paths to avoid common mode failure—also known as single point of failure. Routing both primary and backup power through the same electrical conduit means that damage to that conduit (from fire, water, or physical impact) eliminates both power sources simultaneously. Unlike independent routing where each power feed follows a separate physical path, shared conduit routing defeats the purpose of redundancy by creating a single failure point that can disable both supplies at once.'
WHERE id = 3460;

-- ID 3461: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-145 (The NIST Definition of Cloud Computing), Platform as a Service (PaaS) provides a managed environment including infrastructure, operating system, middleware, and runtime where developers deploy application code without managing the underlying layers. This accelerates development by abstracting infrastructure complexity while retaining control over application logic and data. Unlike IaaS, which provides only raw compute, storage, and networking resources requiring the customer to manage everything above the hypervisor, PaaS handles the full platform stack beneath the application layer.'
WHERE id = 3461;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (4 questions)
-- ============================================================

-- ID 3737: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'GDPR Article 28 requires a written data processing agreement that specifies the subject matter, duration, nature, and purpose of processing, the types of personal data, categories of data subjects, and the controller''s obligations and rights. The processor must process data only on documented instructions from the controller and cannot use the data for its own purposes. Unlike general service agreements that may broadly reference data handling, Article 28 mandates specific contractual provisions addressing security measures, sub-processor engagement, and data subject rights support.'
WHERE id = 3737;

-- ID 3738: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'GDPR Article 25 (Data Protection by Design and by Default) requires that by default only personal data necessary for each specific processing purpose is collected and processed. Settings must be configured to maximum privacy by default, meaning users should not be required to take affirmative action to protect their data. Unlike opt-in consent models where users affirmatively choose to share data, an opt-out model that automatically enrolls users into location sharing with advertisers violates the principle of data protection by default.'
WHERE id = 3738;

-- ID 3739: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Following the Schrems II ruling (CJEU Case C-311/18), organizations relying on Standard Contractual Clauses (SCCs) under GDPR Chapter V must conduct a transfer impact assessment (TIA) to evaluate whether the recipient country''s legal framework provides essentially equivalent data protection. If the assessment reveals that local surveillance laws undermine the SCCs'' effectiveness, supplementary technical or organizational measures must be implemented. Although SCCs remain a valid transfer mechanism, they alone are insufficient without the additional TIA step mandated by the Court of Justice of the European Union.'
WHERE id = 3739;

-- ID 3740: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under the CCPA/CPRA (California Civil Code Section 1798.140), the law applies to for-profit entities doing business in California that meet at least one threshold: annual gross revenue exceeding $25 million, annually buying, selling, or sharing personal information of 100,000 or more consumers or households, or deriving 50% or more of revenue from selling or sharing personal information. Unlike the GDPR, which applies broadly regardless of entity type, the CCPA/CPRA excludes nonprofits and government agencies from its requirements.'
WHERE id = 3740;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3603: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per CIS Controls v8, aligned with NIST SP 800-53 Rev. 5 asset management controls (CM-8), Controls 1 and 2 (Enterprise Asset and Software Inventory) are listed first because they are foundational to every other security activity. Without knowing what hardware and software exists in the environment, organizations cannot effectively apply patches, manage configurations, or monitor for threats. While some might assume the ordering reflects regulatory mandate or ease of implementation, CIS explicitly designs the control numbering to reflect logical dependency, with asset visibility as the prerequisite for all downstream controls.'
WHERE id = 3603;

-- ID 3604: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per COBIT 2019 EDM01 (Ensured Governance Framework Setting and Maintenance) and ISACA governance guidance, having the CISO report directly to the CIO creates a conflict of interest because IT operational priorities may override security requirements. Best practices recommend the CISO have independent reporting to the CEO, board, or a risk committee to prevent security being subordinated to operational pressures. Although reporting to the CFO is sometimes proposed as an alternative, it does not fully address the independence concern since the CISO needs a direct line to executive governance.'
WHERE id = 3604;

-- ID 3605: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5, control PM-1 (Information Security Program Plan), security policies should be reviewed and updated regularly—typically at least annually—to reflect changes in the threat landscape, technology environment, and business operations. Stale policies create gaps between documented expectations and actual practices, leading to inconsistent control implementation and increased organizational risk. Although some organizations adopt a three-year review cycle, this is insufficient because the rapidly evolving threat landscape demands at minimum annual policy reviews to maintain effective security posture.'
WHERE id = 3605;

-- ID 3607: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST SP 800-12 Rev. 1 (An Introduction to Information Security), Section 4.4, standards define mandatory requirements that support policies and must be followed by all applicable personnel and systems. Guidelines, in contrast, provide recommended best practices that offer flexibility and allow alternative approaches when justified. While failure to meet a mandatory standard constitutes a control deficiency that must be remediated, departure from a guideline may be acceptable provided the organization documents the rationale for choosing an alternative approach.'
WHERE id = 3607;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 3672: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-77 Rev. 1 (Guide to IPsec VPNs), a VPN creates an encrypted tunnel between a remote device and the corporate network, ensuring that all traffic traversing untrusted networks is protected from eavesdropping and tampering using protocols such as IPsec or SSL/TLS. This encryption protects data confidentiality and integrity during transmission over public networks. However, VPNs protect only data in transit and do not prevent all cyberattacks or protect data at rest on the endpoint device, which requires separate endpoint security controls.'
WHERE id = 3672;

-- ID 3673: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-92 (Guide to Computer Security Log Management), Section 4.2, log retention periods must meet regulatory and organizational requirements, and organizations should implement tiered storage to balance cost and accessibility. A 30-day SIEM retention period is insufficient when regulations mandate one-year retention. The recommended approach uses tiered storage where recent logs remain in fast, searchable hot storage within the SIEM, while older logs move to cost-effective cold storage that can still be retrieved for investigations or audits as needed.'
WHERE id = 3673;

-- ID 3674: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-52 Rev. 2 (Guidelines for TLS Implementations), certificate pinning hardcodes or embeds the expected server certificate or its public key hash in the application, preventing man-in-the-middle attacks even when a legitimate but compromised certificate authority issues a fraudulent certificate. The application rejects any connection presenting a certificate that does not match the pinned value. Unlike SQL injection, which exploits application-layer input validation flaws, or brute force attacks targeting authentication credentials, certificate pinning specifically defends the TLS certificate verification process.'
WHERE id = 3674;

-- ID 3675: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5, control AC-2 (Account Management), organizations must review user accounts periodically to ensure access rights remain appropriate as personnel change roles or responsibilities. Privilege creep occurs when users accumulate permissions over time from previous roles that are never revoked, creating excessive access that violates the principle of least privilege. Unlike intentional privilege escalation by an attacker, privilege creep results from inadequate access governance processes and can be mitigated through regular access reviews and role-based provisioning that automatically adjusts permissions with job changes.'
WHERE id = 3675;

-- ============================================================
-- SOC ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 3772: SOC Engagements
UPDATE questions SET
  explanation = 'Per SSAE 18 (AT-C Section 320) for SOC 1 and AT-C Section 205 for SOC 2, the fundamental difference between these engagements is their focus. SOC 1 examines controls relevant to user entities'' internal control over financial reporting (ICFR) using control objectives defined by the service organization. SOC 2 evaluates controls against the AICPA Trust Services Criteria covering security, availability, processing integrity, confidentiality, and privacy. Although both engagement types can be issued as Type I (design only) or Type II (design and operating effectiveness), their scope and criteria differ significantly.'
WHERE id = 3772;

-- ID 3773: SOC Engagements
UPDATE questions SET
  explanation = 'Per SSAE 18 (AT-C Section 320.15), before beginning a SOC engagement the service auditor must obtain a sufficient understanding of the service organization''s system by touring facilities, interviewing key personnel, reviewing system documentation and policies, and examining IT infrastructure. This understanding is essential for evaluating the system description''s completeness and planning the testing approach. Unlike financial statement audits where the auditor may focus primarily on transaction flows, SOC engagements require comprehensive understanding of the technology environment, people, procedures, and data that comprise the service organization''s system.'
WHERE id = 3773;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (2 questions)
-- ============================================================

-- ID 5465: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Per AU-C Section 402 (Audit Considerations Relating to an Entity Using a Service Organization), the user entity''s external auditor does not need to re-perform all of the service auditor''s control tests, as that would defeat the purpose of relying on the SOC report. Instead, the auditor should evaluate the service auditor''s competence and independence, assess relevance of tested controls to financial statement assertions, review deviations, and consider CUECs. Although the auditor must exercise professional judgment about the report''s reliability, duplicating the entire testing program is neither required nor efficient.'
WHERE id = 5465;

-- ID 5466: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Per SSAE 18 (AT-C Section 320.A28), the system description must define clear system boundaries that delineate which components—services, infrastructure, software, people, procedures, and data—are included in and excluded from the SOC examination. These boundaries establish the scope so user entities understand exactly what the report covers. Unlike geographic restrictions or user entity limitations, system boundaries specifically identify the technological and operational perimeter of the engagement, ensuring stakeholders do not make assumptions about coverage beyond what was actually examined.'
WHERE id = 5466;

-- ============================================================
-- SOC REPORTING (1 questions)
-- ============================================================

-- ID 3906: SOC Reporting
UPDATE questions SET
  explanation = 'Per AICPA Guide: SOC 2 Reporting on an Examination of Controls and AT-C Section 205.A45, SOC 2 reports are restricted-use reports intended only for parties who have sufficient knowledge and a legitimate business need—typically management, user entities, and their auditors. A potential investor without a service relationship would not typically qualify for access. Unlike a SOC 3 general-use report that is designed for broad public distribution and marketing purposes, SOC 2 reports contain detailed control descriptions and test results that carry explicit distribution restrictions.'
WHERE id = 3906;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (2 questions)
-- ============================================================

-- ID 3800: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Per the AICPA 2017 Trust Services Criteria (TSC), CC4 maps to COSO Component 5 (Monitoring Activities), which includes ongoing and separate evaluations of internal control and communication of deficiencies. CC5 maps to COSO Component 3 (Control Activities), covering the selection and development of controls, general controls over technology, and deployment through policies and procedures. While all five COSO components are represented across the common criteria, CC4 and CC5 specifically correspond to monitoring and control activities respectively, not to risk assessment or the control environment.'
WHERE id = 3800;

-- ID 3801: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Per SSAE 18 (AT-C Section 320.A30), complementary user entity controls (CUECs) are controls that the service organization assumes user entities will implement to achieve overall control objectives. When a user entity fails to implement identified CUECs, the overall control environment may have gaps because the service organization''s controls were designed with the assumption that these complementary controls would be in place. Although the SOC report itself is not invalidated by unimplemented CUECs, the user entity''s auditor must assess the resulting risk and determine whether compensating controls exist.'
WHERE id = 3801;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 3882: SOC Testing Controls
UPDATE questions SET
  explanation = 'Per SSAE 18 (AT-C Section 320.34), for controls that operate infrequently—such as annually—the service auditor must test every occurrence within the examination period. For an annual control with only one occurrence, that single instance must be tested in its entirety. Unlike frequently occurring controls where sampling 25 items is a common guideline, infrequently operating controls have populations too small for statistical sampling, requiring the auditor to examine each occurrence rather than extrapolating from a subset.'
WHERE id = 3882;

-- ID 3914: SOC Testing Controls
UPDATE questions SET
  explanation = 'Per SSAE 18 (AT-C Section 320.35), a missed occurrence of a periodic control represents a deviation that the service auditor must evaluate for cause, impact, and materiality. The auditor assesses whether the missed monthly reconciliation was an isolated staffing issue or indicative of a systemic weakness, and whether transactions during that month were properly processed through other means. Although one deviation out of twelve occurrences may not automatically be deemed material, the auditor cannot simply disregard it and must consider whether compensating procedures were performed to mitigate the gap.'
WHERE id = 3914;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 3564: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per ITIL 4 Change Enablement practice, root cause analysis of failed changes is the appropriate response when the change success rate declines significantly. This analysis identifies common patterns such as rushed implementations, insufficient testing, or resource constraints that enable targeted process improvements. While stopping all changes entirely would disrupt business operations, and redefining success metrics would merely mask the underlying problem rather than solving it, systematic root cause investigation addresses the actual drivers of change failure.'
WHERE id = 3564;

-- ID 3565: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-145 (The NIST Definition of Cloud Computing), auto-scaling is a cloud capability that automatically adjusts the number of active compute instances based on predefined metrics such as CPU utilization or request count. During demand peaks additional servers are provisioned, and when demand subsides instances are removed to reduce costs. Unlike backup operations that protect against data loss or encryption services that secure data at rest, auto-scaling specifically manages compute capacity to maintain performance while optimizing resource expenditure.'
WHERE id = 3565;

-- ID 3566: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI06.01 (Evaluate, Prioritize, and Authorize Change Requests) and ITIL 4 Change Enablement, a production change made without a request for change (RFC), approval, testing, or documentation constitutes an unauthorized change—a control deficiency regardless of technical correctness. Unauthorized changes bypass all safeguards designed to prevent production incidents and demonstrate that change management controls are not operating effectively. Although the change may not have caused immediate harm, the absence of governance constitutes a control failure that the auditor must report.'
WHERE id = 3566;

-- ID 3567: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-34 Rev. 1 (Contingency Planning Guide), Section 3.4, recovery site selection must align with established RPO and RTO objectives. With daily backups (24-hour RPO), maximum data loss is 24 hours, meeting the stated RPO. The warm site''s pre-installed hardware requires only data restoration (6 hours) plus configuration and startup, fitting within the 12-hour RTO. Unlike a cold site that would require hardware provisioning and likely exceed the RTO, a warm site with pre-installed equipment provides the balance between cost and recovery speed needed to meet both objectives.'
WHERE id = 3567;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (4 questions)
-- ============================================================

-- ID 3638: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide) and NIST SP 800-177, vishing (voice phishing) is a social engineering attack that uses telephone calls to deceive victims into divulging sensitive information or taking unauthorized actions. The attacker''s detailed knowledge of recent invoices adds credibility and suggests prior compromise of email or financial systems. Unlike smishing, which uses SMS text messages as the attack vector, vishing specifically exploits voice communication and the inherent trust people place in telephone conversations.'
WHERE id = 3638;

-- ID 3639: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5, control PE-3 (Physical Access Control), and NIST SP 800-61 Rev. 2, this scenario combines pretexting (creating a false identity as a delivery driver) with tailgating (following an authorized person through a secured entrance without independent authentication). The pretext provides a plausible reason for needing door assistance, increasing the likelihood that an employee will comply. Unlike purely technical attacks that exploit software vulnerabilities, combined physical social engineering techniques target human behavior and trust, making employee security awareness training the primary countermeasure.'
WHERE id = 3639;

-- ID 3640: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5, control SI-10 (Information Input Validation), directory traversal (also called path traversal) exploits insufficient input validation by manipulating file path references using sequences like ../ to access files outside the web application''s intended root directory. This can expose sensitive system files such as /etc/passwd, configuration files, and source code. Unlike SQL injection, which targets database query interpretation, or cross-site scripting, which injects malicious scripts into web pages, directory traversal specifically exploits the file system access layer through improper path sanitization.'
WHERE id = 3640;

-- ID 3641: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2, Section 3.2 (Containment Strategy), when a zero-day vulnerability is actively exploited and no vendor patch exists, organizations must implement compensating controls to reduce risk immediately. This includes applying vendor-recommended workarounds, increasing monitoring for indicators of compromise, restricting access to affected services, and adding network-level protections. Rather than waiting for a patch—which leaves the organization exposed to active exploitation—immediate compensating controls reduce the attack surface while the vendor develops and releases a permanent fix.'
WHERE id = 3641;

COMMIT;
