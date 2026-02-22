-- Migration: Citation backfill — ISC batch 2 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 5411: Change Management
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section BAI06 (Managed IT Changes) and NIST SP 800-53 Section CM-5, separation of duties in change management requires that the person who develops code is not the same person who deploys it to production. A separate operations or release management team provides independent verification before production release. Allowing the developer to deploy their own code, however, violates separation of duties and eliminates the independent check that prevents unauthorized modifications.'
WHERE id = 5411;

-- ID 5412: Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Section 5.2 (Change Enablement), the Change Advisory Board (CAB) is a cross-functional group that assesses, prioritizes, and authorizes proposed changes based on risk, impact, and resource requirements. The CAB ensures changes are properly evaluated before implementation to minimize service disruption. Writing application code, however, is a development team responsibility — the CAB authorizes changes rather than implementing them.'
WHERE id = 5412;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (3 questions)
-- ============================================================

-- ID 777: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section DSS06 (Managed Business Process Controls), referential integrity enforced through foreign key constraints ensures that a value in one table must match a valid record in the referenced table, preventing orphaned records and maintaining cross-table data consistency. A primary key constraint, however, only uniquely identifies each record within its own table and does not enforce relationships between separate tables.'
WHERE id = 777;

-- ID 778: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section APO14 (Managed Data), completeness requires that all mandatory data elements are present and populated. Null values in a required beneficiary_name field indicate missing information, directly undermining data completeness and the reliability of policyholder records. Timeliness, unlike completeness, measures whether data is available when needed for decision-making rather than whether mandatory fields contain values.'
WHERE id = 778;

-- ID 779: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Under NIST SP 800-53 Section SI-12 (Information Management and Retention), retaining data indefinitely increases breach exposure, complicates compliance with privacy regulations requiring data minimization such as GDPR, and expands legal discovery obligations without corresponding benefit. Organizations must establish retention schedules aligned with regulatory and business requirements. Indefinite retention, rather than simplifying compliance, makes it harder because regulations like GDPR require deletion of data no longer needed for its original purpose.'
WHERE id = 779;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (1 questions)
-- ============================================================

-- ID 5431: Data Protection Technologies
UPDATE questions SET
  explanation = 'Under NIST SP 800-88 Section 4 (Guidelines for Media Sanitization), destroying media through physical disintegration, melting, incineration, or shredding renders data recovery infeasible even with state-of-the-art laboratory techniques by making the storage medium itself unusable. Destruction is the strongest of the three sanitization levels. Clearing, unlike destroying, only protects against simple data recovery tools and is not resistant to advanced laboratory-level forensic techniques.'
WHERE id = 5431;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 767: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under the ISACA CISA Review Manual Section 5 (Audit Techniques), parallel simulation uses independent audit software to reprocess actual transaction data and compare results with the system''s output, directly testing whether automated calculations produce accurate results. This provides strong evidence of processing integrity for the depreciation module. Interviews, unlike parallel simulation, provide evidence about system design intent but cannot mathematically verify that calculations are producing accurate results.'
WHERE id = 767;

-- ID 770: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section BAI03 (Managed Solutions Identification and Build), the Material Requirements Planning (MRP) module tracks bills of materials, production orders, labor costs, and overhead allocation — all essential for calculating work-in-process inventory values at each production stage. MRP integrates with the financial module for accurate inventory valuation. A CRM module, unlike MRP, focuses on customer interactions and sales pipeline management rather than production costing or inventory valuation.'
WHERE id = 770;

-- ID 771: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section BAI05 (Managed Organizational Change), creating a unified chart of accounts mapping before ERP migration ensures data consistency and comparability by transforming legacy account structures during the migration process. Pre-migration mapping prevents post-go-live reconciliation problems across the merged entity. Importing inconsistent data as-is, rather than mapping first, creates reporting and reconciliation problems that are far more costly to resolve after go-live.'
WHERE id = 771;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (3 questions)
-- ============================================================

-- ID 862: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Under NIST SP 800-86 Section 3 (Guide to Integrating Forensic Techniques into Incident Response), preserving evidence with a documented chain of custody supports potential legal proceedings, regulatory breach notification requirements, insurance claims, and thorough root cause analysis. Proper forensic handling ensures digital evidence remains admissible and reliable. Immediately restoring systems without preserving evidence, however, destroys forensic artifacts needed for prosecution, compliance reporting, and understanding the attack''s full scope.'
WHERE id = 862;

-- ID 863: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Section 3 (Contingency Planning Guide), the Recovery Point Objective defines the maximum tolerable data loss measured in time. Lakewood''s 4-hour RPO required backups at least every 4 hours, but the 11-hour-old backup shows backup frequency was insufficient, resulting in 7 hours of unrecoverable data loss. The Recovery Time Objective, unlike the RPO, measures how quickly the system is restored to operation rather than how much data is lost.'
WHERE id = 863;

-- ID 864: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Under NIST SP 800-61 Section 3.3 (Computer Security Incident Handling Guide), the eradication phase requires completely removing the attacker''s presence by resetting compromised credentials, patching exploited vulnerabilities, eliminating malware artifacts, and scanning for similar weaknesses across the environment. These actions ensure the threat is fully neutralized before recovery begins. Preparation, unlike eradication, involves building incident response capability before incidents occur rather than actively removing threats from a confirmed compromise.'
WHERE id = 864;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 1059: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Under NIST SP 800-30 Section 3 (Guide for Conducting Risk Assessments), Annualized Loss Expectancy is calculated as Single Loss Expectancy multiplied by Annualized Rate of Occurrence: $750,000 × 0.4 = $300,000. This quantitative metric enables comparison of expected annual losses against the cost of proposed controls to support risk-based investment decisions. Dividing SLE by ARO, rather than multiplying, reverses the formula and produces an inflated figure that does not represent the expected annualized loss.'
WHERE id = 1059;

-- ID 1060: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Under NIST SP 800-30 Section 3 (Guide for Conducting Risk Assessments), risk transfer shifts the financial impact of a risk to a third party, most commonly through insurance policies or contractual arrangements with vendors. Clearwater''s $5 million flood insurance policy transfers the financial consequences of a flood event to the insurance carrier. Risk mitigation, unlike transfer, involves implementing controls such as flood barriers to directly reduce the likelihood or impact of the risk event.'
WHERE id = 1060;

-- ID 1061: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Under ITIL 4 Foundation Section 4.3 (Guiding Principles), ''Start where you are'' advises organizations to assess the current state and leverage existing services, processes, and tools before building something new from scratch. This avoids unnecessary rework and preserves proven capabilities. ''Focus on value,'' unlike ''Start where you are,'' emphasizes ensuring that every activity contributes to stakeholder outcomes rather than evaluating existing capabilities as a starting point.'
WHERE id = 1061;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 1049: IT General Controls
UPDATE questions SET
  explanation = 'Under NIST SP 800-53 Section AC-2 (Account Management), timely deprovisioning requires prompt revocation of all access rights when an employee is terminated. Active credentials for terminated employees create unauthorized access risk and represent one of the most common ITGC audit findings. Program change controls, unlike logical access controls, govern modifications to application code and system configurations rather than user account provisioning and deprovisioning.'
WHERE id = 1049;

-- ID 1050: IT General Controls
UPDATE questions SET
  explanation = 'Under ITIL 4 Section 5.2 (Change Enablement), the Change Advisory Board (CAB) evaluates proposed changes for risk, impact, and resource requirements, then approves, defers, or rejects them. The CAB functions as an advisory and authorization body, not an implementation team. Writing application code, unlike evaluating change requests, is a development team responsibility — the CAB provides governance oversight rather than performing technical implementation work.'
WHERE id = 1050;

-- ID 1051: IT General Controls
UPDATE questions SET
  explanation = 'Under ITIL 4 Section 5.2 (Change Enablement) and COBIT 2019 Section BAI06 (Managed IT Changes), emergency changes bypass normal pre-approval processes but must be retroactively documented, tested, and submitted for formal post-implementation review. This ensures governance is maintained while allowing rapid response to critical outages. Exempting emergency changes from all controls, however, would create a loophole for unauthorized modifications that circumvents the change management process entirely.'
WHERE id = 1051;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (4 questions)
-- ============================================================

-- ID 750: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under NIST SP 800-95 Section 3 (Guide to Secure Web Services), the application tier (middle/logic tier) in a three-tier architecture processes business rules and logic between the presentation and data tiers. This separation allows each tier to be developed, scaled, and secured independently. The presentation tier, unlike the application tier, handles user interface display and formatting rather than enforcing business rules or processing logic.'
WHERE id = 750;

-- ID 751: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under NIST SP 800-53 Section CM-2 (Baseline Configuration) and COBIT 2019 Section BAI07, production and development environments must be logically or physically separated to prevent resource contention and unauthorized data exposure. Collocating both on one server without isolation risks resource-intensive development queries degrading production system availability. Although data leakage is also a concern, the primary risk is performance degradation, whereas proper environment separation as a fundamental IT general control addresses both availability and security.'
WHERE id = 751;

-- ID 752: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under NIST SP 800-53 Section AC-17 (Remote Access) and Section IA-3 (Device Identification and Authentication), Network Access Control (NAC) evaluates devices attempting to connect by verifying identity, security posture, and authorization before granting network access. NAC enforces endpoint compliance policies at the point of connection. NAT, unlike NAC, only translates IP addresses between network segments and does not evaluate or enforce device security posture or authorization requirements.'
WHERE id = 752;

-- ID 753: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Under NIST SP 800-123 Section 5 (Guide to General Server Security), Storage Area Networks provide centralized storage management, high availability through built-in redundancy, and scalability by adding capacity without disrupting connected servers. These advantages over direct-attached storage improve both operational efficiency and data availability for financial databases. Direct-attached storage, unlike SAN, limits scalability because adding capacity requires physical modifications to individual servers rather than centralized pool expansion.'
WHERE id = 753;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (4 questions)
-- ============================================================

-- ID 849: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Article 35, Section 1, a Data Protection Impact Assessment (DPIA) is a mandatory risk assessment evaluating the impact of proposed data processing activities on individuals'' privacy rights. A DPIA is required before processing likely to result in high risk, such as systematic profiling, large-scale processing of sensitive data, or public area monitoring. A standard privacy notice, unlike a DPIA, merely informs data subjects about processing activities rather than assessing and mitigating privacy risks.'
WHERE id = 849;

-- ID 850: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Recital 26 and NIST SP 800-188 Section 3 (De-Identifying Government Datasets), data anonymization through aggregation and k-anonymity techniques allows analysis of patterns while preventing identification of individuals. Aggregation combines individual records into group statistics, and k-anonymity ensures each record is indistinguishable from at least k-1 others. Publishing raw personal data, unlike anonymized data, violates privacy principles by enabling direct identification of individuals from the dataset.'
WHERE id = 850;

-- ID 851: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under GDPR Article 46, Section 2(c), Standard Contractual Clauses (SCCs) are pre-approved contractual terms issued by the European Commission providing appropriate safeguards for transferring personal data to countries without an adequacy decision. Following the Schrems II ruling, SCCs supplemented with technical measures are the most widely used transfer mechanism. Simple notification to data subjects, unlike SCCs, does not provide the legal safeguards required by GDPR for international data transfers.'
WHERE id = 851;

-- ID 852: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Under CCPA Section 1798.105(d), businesses may retain personal information despite a consumer deletion request when the data is necessary to complete a transaction, detect security incidents, comply with legal obligations, or conduct research in the public interest. These statutory exceptions balance consumer rights against legitimate business and legal needs. Retaining data merely for marketing preferences, unlike the statutory exceptions, is not a valid basis to deny a consumer''s deletion request under the CCPA.'
WHERE id = 852;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (4 questions)
-- ============================================================

-- ID 806: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section EDM01 and the NIST Cybersecurity Framework, these two frameworks are complementary: COBIT provides comprehensive IT governance and management covering the full IT function, while NIST CSF specifically addresses cybersecurity risk management through its Identify, Protect, Detect, Respond, and Recover functions. Organizations often implement both for complete coverage. NIST CSF, although robust for cybersecurity, does not replace COBIT because it does not address broader IT governance concerns such as resource optimization and value delivery.'
WHERE id = 806;

-- ID 807: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under the COSO Internal Control — Integrated Framework Section 1, the Control Environment is the foundational component encompassing governance structure, ethical values, management philosophy, organizational structure, and accountability standards. All other components — Risk Assessment, Control Activities, Information and Communication, and Monitoring — operate within this foundation. Risk Assessment, unlike the Control Environment, identifies and analyzes risks but depends on the tone and organizational structure that the Control Environment establishes.'
WHERE id = 807;

-- ID 808: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under ISO 27001 Section 6.1.2, organizations must perform a formal information security risk assessment before selecting controls from Annex A. Controls must be justified by identified risks, ensuring resources target actual threats rather than arbitrary compliance checkboxes. Simply mapping controls to Annex A domains without conducting a risk assessment, however, means the organization may have implemented unnecessary controls while missing critical ones specific to their unique risk profile.'
WHERE id = 808;

-- ID 809: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section APO01 (Managed IT Management Framework), the IT governance hierarchy flows from broadest to most specific: policies (high-level statements of intent), standards (mandatory requirements supporting policies), procedures (step-by-step instructions implementing standards), and guidelines (recommended practices). Each level provides increasing operational detail. Guidelines, unlike standards, are recommended rather than mandatory — organizations may deviate from guidelines when justified, whereas standards must be followed.'
WHERE id = 809;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (4 questions)
-- ============================================================

-- ID 833: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Under NIST SP 800-53 Section AC-2 (Account Management), user deprovisioning requires prompt revocation of all access rights upon termination. The former employee''s continued VPN access three days after termination indicates a deprovisioning control failure in the identity lifecycle. Provisioning controls, unlike deprovisioning controls, govern initial access assignment during onboarding and are unrelated to the post-termination unauthorized access that occurred here.'
WHERE id = 833;

-- ID 834: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Under NIST SP 800-111 Section 3 (Guide to Storage Encryption Technologies), Transparent Data Encryption (TDE) protects data at rest by encrypting database files at the storage level — including data files, log files, and backups — without requiring application changes. TDE uses symmetric keys managed by the database engine to prevent unauthorized access to physical media. TLS 1.3, unlike TDE, encrypts data in transit between endpoints during communication sessions rather than data stored in a database.'
WHERE id = 834;

-- ID 835: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Under NIST SP 800-53 Section AC-6 (Least Privilege), Privileged Access Management (PAM) solutions control and monitor privileged accounts through credential vaulting, just-in-time provisioning, session recording, and approval workflows. PAM eliminates shared static passwords by attributing every privileged session to a named administrator. Single sign-on (SSO), unlike PAM, federates standard user authentication but does not provide credential vaulting, session recording, or just-in-time elevation for privileged accounts.'
WHERE id = 835;

-- ID 836: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Under NIST SP 800-94 Section 4 (Guide to Intrusion Detection and Prevention Systems), an intrusion prevention system (IPS) is deployed inline and actively blocks malicious traffic in real time by matching packets against known attack signatures and behavioral baselines. The inline position enables the IPS to drop packets before they reach target servers. An IDS, unlike an IPS, monitors traffic passively from a network tap or mirror port and generates alerts but cannot drop packets because it is not positioned inline.'
WHERE id = 836;

-- ============================================================
-- SOC ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 879: SOC Engagements
UPDATE questions SET
  explanation = 'Under AT-C Section 205 (Examination Engagements), a qualified opinion on a SOC 2 Type II report indicates that, except for the specific matters described, controls were suitably designed and operated effectively during the examination period. The exceptions are significant enough to warrant qualification but not pervasive enough for an adverse opinion. An adverse opinion, unlike a qualified opinion, would indicate fundamental, pervasive control failures rather than isolated exceptions with limited scope.'
WHERE id = 879;

-- ID 880: SOC Engagements
UPDATE questions SET
  explanation = 'Under SSAE 18 (AT-C Section 320), management of the service organization provides a written assertion that its system description is fairly presented and that controls were suitably designed and, for Type II engagements, operated effectively during the examination period. The service auditor then examines this assertion and issues an independent opinion. The auditor''s opinion, unlike management''s assertion, is an independent evaluation rather than a representation by the party responsible for the controls.'
WHERE id = 880;

-- ID 881: SOC Engagements
UPDATE questions SET
  explanation = 'Under AT-C Section 320 and the AICPA Guide: SOC 2 Reporting, subservice organizations are addressed through either the inclusive method, where the subservice organization''s controls are included in scope and tested, or the carve-out method, where the subservice organization is excluded and the report describes expected controls. Both approaches are valid under SSAE 18. The inclusive method, unlike the carve-out method, provides user entities with direct assurance over the subservice organization''s controls rather than requiring separate evaluation.'
WHERE id = 881;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 890: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria (TSP Section 100), each SOC 2 criterion — Security, Availability, Processing Integrity, Confidentiality, and Privacy — addresses distinct control objectives. Coverage of Security and Availability does not extend to Processing Integrity. The user auditor must obtain assurance through alternative procedures, such as requesting expanded scope or performing independent testing. Relying solely on a Security-only report, however, is insufficient because Processing Integrity requires separate evaluation of completeness and accuracy controls.'
WHERE id = 890;

-- ID 891: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under the AICPA Trust Services Criteria Section CC2.3, the organization communicates with external parties about matters affecting the functioning of internal controls, including commitments, system requirements, and responsibilities to users, vendors, and regulators. This ensures stakeholders understand the service organization''s obligations and their own responsibilities. Section CC2.2, unlike CC2.3, addresses internal communication of control objectives and responsibilities to employees rather than communication with external parties.'
WHERE id = 891;

-- ID 892: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Under AT-C Section 320.35, management of the service organization is responsible for preparing the system description, which details system components, boundaries, commitments, and relevant controls. The service auditor examines the description and provides an opinion on whether it is fairly presented but does not prepare it. The service auditor''s role, unlike management''s, is to independently evaluate and opine on the description rather than to draft or prepare the system description itself.'
WHERE id = 892;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 1212: SOC Testing Controls
UPDATE questions SET
  explanation = 'Under the AICPA Guide: SOC 2 Reporting Section 3 (Sampling Guidance for Small Populations), when a control population is very small — such as four quarterly firewall reviews per year — the practitioner should test all occurrences because sampling fewer items would not provide sufficient evidence of consistent operation throughout the period. Testing the complete population eliminates sampling risk. Selecting only one item from a population of four, however, provides inadequate period coverage and cannot support a conclusion about consistent operation across the full examination period.'
WHERE id = 1212;

-- ID 1213: SOC Testing Controls
UPDATE questions SET
  explanation = 'Under the AICPA Guide: SOC 2 Reporting Section 4 (Evaluating Deviations), a deviation is any instance where a control did not operate as described for a specific test item, while an exception is a deviation the practitioner has evaluated and concluded represents a control failure to meet its objective. Not every deviation rises to exception status. Minor timing differences, unlike substantive control failures, may be classified as deviations without being reported as exceptions if compensating controls address the risk.'
WHERE id = 1213;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (4 questions)
-- ============================================================

-- ID 792: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Section 5.2 (Change Enablement), an emergency change addresses a critical issue — such as a security breach or data exposure — that requires immediate implementation and cannot wait for normal Change Advisory Board review. Emergency changes follow an abbreviated approval process but require post-implementation documentation and review to maintain governance. A standard change, unlike an emergency change, is a pre-approved routine modification that does not address critical security vulnerabilities requiring immediate deployment.'
WHERE id = 792;

-- ID 793: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under NIST SP 800-34 Section 3 (Contingency Planning Guide), system tiering assigns recovery priorities based on a business impact analysis. Tier 1 systems receive the fastest recovery targets and the most resources, ensuring essential business functions resume before less critical systems. This prioritized allocation enables effective resource deployment during recovery. Equal resource allocation across all tiers, unlike the BIA-driven tiered approach, would undermine business continuity by treating critical and non-critical systems identically.'
WHERE id = 793;

-- ID 794: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under COBIT 2019 Section BAI07 (Managed IT Change Acceptance and Transitioning), regression testing validates that new changes have not introduced unintended side effects in previously working functionality. Running regression tests on the invoicing module before deploying the tracking patch would have detected the incorrect totals. Unit testing, unlike regression testing, verifies individual code modules in isolation and would not have tested the cross-module interaction between the tracking patch and the invoicing system.'
WHERE id = 794;

-- ID 795: System Availability and Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 Section 5.2 (Change Enablement) and COBIT 2019 Section BAI06 (Managed IT Changes), emergency changes should represent a small fraction of total changes — industry benchmarks typically range from 5–10%. A 15% emergency change rate suggests potential process circumvention, where staff may classify routine changes as emergencies to bypass standard approval controls. Treating a 15% rate as normal, however, is incorrect because industry guidance considers rates above 10% a red flag warranting investigation into whether changes truly met emergency criteria.'
WHERE id = 795;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (4 questions)
-- ============================================================

-- ID 820: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Under NIST SP 800-83 Section 3 (Guide to Malware Incident Prevention and Handling), ransomware encrypts files on the victim''s system and demands payment — typically in cryptocurrency — for the decryption key, often spreading through phishing emails or unpatched vulnerabilities. The .locked extension and ransom note are classic ransomware indicators. Spyware, unlike ransomware, secretly monitors user activity to steal information but does not encrypt files or demand payment for decryption keys.'
WHERE id = 820;

-- ID 821: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Under NIST SP 800-39 Section 2 (Managing Information Security Risk), an Advanced Persistent Threat (APT) is a prolonged, targeted cyberattack in which a well-resourced attacker gains unauthorized access and remains undetected for an extended period while exfiltrating valuable data. APTs use sophisticated evasion techniques to avoid triggering security alerts. A denial-of-service attack, unlike an APT, aims to disrupt system availability through overwhelming traffic rather than maintaining prolonged stealth access for data exfiltration.'
WHERE id = 821;

-- ID 822: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Under NIST SP 800-52 Section 3 (Guidelines for TLS Implementations), unencrypted HTTP transmits data in plaintext, allowing an attacker positioned between the client and server to intercept, read, and modify data in transit through a man-in-the-middle attack. TLS/SSL encryption (HTTPS) prevents this by encrypting the communication channel. Strong passwords, unlike transport encryption, protect against unauthorized authentication but do not prevent interception of data already being transmitted in plaintext.'
WHERE id = 822;

-- ID 823: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Under NIST SP 800-40 Section 3 (Guide to Enterprise Patch Management Planning), the most appropriate response to a known remote code execution vulnerability is to apply the security patch or upgrade to a supported version through the organization''s change management process. Prompt patching eliminates the root vulnerability while maintaining system availability. Relying solely on a perimeter firewall, unlike patching, does not eliminate the vulnerability because attackers may bypass network controls through other vectors such as compromised internal hosts.'
WHERE id = 823;

COMMIT;
