-- Migration: Citation backfill — ISC batch 14 (27 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 27 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (1 questions)
-- ============================================================

-- ID 5429: Change Management
UPDATE questions SET
  explanation = 'Detailed rollback steps and trigger criteria are the most critical addition to a release plan, as required by COBIT BAI06.01 (Evaluate, Prioritize, and Authorize Change Requests) and ITIL Change Management best practices. Without predefined rollback procedures, a failed deployment can result in extended outages because the team has no structured recovery path. While historical change lists and vendor documentation are useful references, they do not directly mitigate deployment failure risk, whereas rollback planning provides the essential safety net for production changes.'
WHERE id = 5429;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (2 questions)
-- ============================================================

-- ID 3533: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'SCD Type 2 creates a new row each time a dimension attribute changes, preserving complete history with effective start and end dates, consistent with COBIT APO14.06 (Manage Data Quality) and AICPA Trust Services Criteria CC7.1 on maintaining data integrity. This approach enables full historical trend analysis because every prior value is retained in a separate row with date ranges. Unlike SCD Type 1, which overwrites the previous value with no audit trail, and SCD Type 3, which only stores the current and one prior value, Type 2 maintains a complete chronological record of all changes.'
WHERE id = 3533;

-- ID 3534: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Timeliness measures whether data is current and available when needed for decision-making, as addressed by COBIT APO14.04 (Manage Data Quality) and AICPA Trust Services Criteria CC7.2 on monitoring data processing completeness and timeliness. Data that arrives after reporting deadlines fails this dimension even if it is otherwise accurate and complete, because its value depends on availability at the point of use. Unlike accuracy, which measures whether values correctly represent real-world facts, or completeness, which measures whether all required elements are present, timeliness specifically addresses the temporal availability of data.'
WHERE id = 3534;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (1 questions)
-- ============================================================

-- ID 5449: Data Protection Technologies
UPDATE questions SET
  explanation = 'Envelope encryption uses a two-tier key hierarchy as recommended by NIST SP 800-57 Part 1 (Recommendation for Key Management): data is encrypted with a data encryption key (DEK), and the DEK is then encrypted with a key encryption key (KEK). This approach enables efficient key rotation because the KEK can be changed without re-encrypting all underlying data, and the DEK never needs to be stored or transmitted in plaintext. Unlike single-key encryption, which requires re-encrypting all data during key rotation, envelope encryption separates the data protection layer from the key management layer for improved scalability and security.'
WHERE id = 5449;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (2 questions)
-- ============================================================

-- ID 3499: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'A system-enforced three-way match that blocks payment when the purchase order, receiving report, and invoice do not agree is an automated preventive control, consistent with COBIT APO13.01 and AICPA Trust Services Criteria CC6.1 on logical access and transaction controls. The control stops unauthorized or erroneous payments before they are processed by requiring agreement among all three documents. Unlike monthly exception reports, quarterly audits, or annual reviews, which are detective controls that identify discrepancies only after transactions have already occurred, the three-way match prevents the erroneous disbursement in real time.'
WHERE id = 3499;

-- ID 3500: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Healthcare ERP-EHR integration requires adherence to HL7 (Health Level Seven) and FHIR (Fast Healthcare Interoperability Resources) data standards, as emphasized by COBIT APO10.03 (Manage Supplier Relationships and Contracts) for third-party system integration. These standards ensure that patient demographics, diagnoses, procedures, and charges flow accurately between clinical and financial systems without data translation errors. Without standardized interfaces, unlike proprietary point-to-point connections, the integration is fragile and prone to billing inaccuracies, compliance violations, and rejected claims.'
WHERE id = 3500;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (1 questions)
-- ============================================================

-- ID 3710: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Evidence must be preserved before containment because containment actions can destroy volatile evidence, as specified in NIST SP 800-61 Rev. 2, Section 3.3 (Containment, Eradication, and Recovery). Volatile data such as RAM contents, active network connections, and running processes is lost when systems are isolated or shut down, so capturing forensic images first preserves the record needed for root cause analysis and potential legal proceedings. Unlike the claim that evidence preservation only serves insurance purposes, NIST guidance makes clear it is essential for effective investigation, whereas delaying evidence capture until after containment risks permanent loss of critical forensic artifacts.'
WHERE id = 3710;

-- ============================================================
-- IT AUDIT FRAMEWORKS (1 questions)
-- ============================================================

-- ID 3913: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Risk acceptance decisions must be formally documented with a risk acceptance statement, as required by NIST SP 800-39 Section 3.2 (Risk Assessment) and COBIT APO12.04 (Articulate Risk). The documentation should identify the specific risk, explain the rationale for acceptance, quantify residual risk, name the authorizing manager, and set a reassessment date. Unlike informal emails or verbal approvals, which lack the rigor and traceability required by governance frameworks, a formal risk acceptance record demonstrates due diligence and supports accountability during audits.'
WHERE id = 3913;

-- ============================================================
-- IT GENERAL CONTROLS (1 questions)
-- ============================================================

-- ID 3912: IT General Controls
UPDATE questions SET
  explanation = 'A CMDB provides a comprehensive inventory of IT assets, configurations, dependencies, and relationships, supporting IT general controls as described in COBIT BAI10 (Manage Configuration) and ITIL Service Asset and Configuration Management. This centralized repository enables effective change impact analysis, incident root cause identification, and access control scoping across all managed assets. Unlike standalone asset lists or spreadsheets, which lack relationship mapping and real-time updates, a CMDB integrates configuration data that supports multiple ITGC processes including change management, access management, and capacity planning.'
WHERE id = 3912;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (2 questions)
-- ============================================================

-- ID 3465: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Function as a Service (FaaS), also known as serverless computing, is the most appropriate model per NIST SP 800-145 (The NIST Definition of Cloud Computing), as it allows developers to deploy individual functions without provisioning or managing servers, containers, or infrastructure. The cloud provider handles all scaling, availability, and resource management, enabling the development team to focus solely on application logic. Unlike Platform as a Service (PaaS), which still requires developers to manage application runtime configuration and deployment environments, FaaS abstracts away all operational overhead below the function level.'
WHERE id = 3465;

-- ID 3466: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'When production and backup SANs share the same network switch without a dedicated storage fabric, a single point of failure is introduced that violates NIST SP 800-34 Rev. 1 (Contingency Planning Guide), Section 5.1 on eliminating single points of failure. A switch failure or severe congestion would simultaneously affect both production and backup storage, rendering the disaster recovery strategy ineffective. Unlike a dedicated fabric configuration, which isolates backup traffic from production to ensure independent availability, a shared switch means the backup becomes unreachable at precisely the moment it is needed most.'
WHERE id = 3466;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (2 questions)
-- ============================================================

-- ID 3744: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Valid cookie consent under GDPR requires a clear affirmative action that is freely given, specific, informed, and granular, as mandated by GDPR Article 7 and Recital 32. A compliant consent mechanism must provide separate options for each processing purpose with no pre-checked boxes, allowing users to accept or reject each category independently. Unlike pre-checked boxes, implied consent through browsing, or consent bundled into terms of service, which all fail the ''freely given'' and ''specific'' requirements, a granular opt-in mechanism with no pre-selections satisfies the regulation''s affirmative action standard.'
WHERE id = 3744;

-- ID 3745: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'The accountability principle under GDPR Article 5(2) requires data controllers not only to comply with data protection principles but also to demonstrate that compliance through documented evidence. This includes maintaining records of processing activities (Article 30), conducting Data Protection Impact Assessments where required (Article 35), and implementing appropriate technical and organizational measures (Article 24). Unlike mere self-certification or verbal assurances, which provide no verifiable proof, the accountability principle demands tangible documentation that regulators can audit to confirm ongoing compliance.'
WHERE id = 3745;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (2 questions)
-- ============================================================

-- ID 3611: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Procedures provide detailed, step-by-step instructions for performing specific tasks, as defined in NIST SP 800-12 Rev. 1 (An Introduction to Information Security), Section 2.4 on the security policy hierarchy. Procedures translate high-level requirements into actionable sequences that personnel can follow consistently, such as configuring a firewall or responding to a malware incident. Unlike policies, which state organizational intent and direction without prescribing specific steps, or guidelines, which offer optional best practices rather than mandatory instructions, procedures provide the granular operational detail needed for task execution.'
WHERE id = 3611;

-- ID 3612: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Control mapping identifies overlapping requirements across multiple frameworks so that a single control implementation can satisfy several compliance obligations simultaneously, as supported by the NIST Cybersecurity Framework (CSF) Core and COBIT 2019 mapping guidance. For example, an access control meeting SOX requirements may also satisfy PCI DSS Requirement 7 and GLBA safeguard provisions, reducing duplication of effort and audit evidence collection. Unlike replacing existing frameworks or eliminating regulatory requirements, which are not the purpose of control mapping, the process works across frameworks to identify shared controls and streamline compliance activities.'
WHERE id = 3612;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (2 questions)
-- ============================================================

-- ID 3679: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Network Access Control (NAC) functions as a preventive control by verifying device compliance with security baselines before granting network access, consistent with NIST SP 800-53 Rev. 5 control AC-19 (Access Control for Mobile Devices) and the broader network access enforcement family. NAC checks for current antivirus signatures, patch levels, and encryption status, blocking or quarantining non-compliant devices on a remediation VLAN. Unlike detective controls that merely log or alert on non-compliant connections after the fact, NAC actively prevents unauthorized or insecure devices from accessing the network in the first place.'
WHERE id = 3679;

-- ID 3680: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Excluding service accounts from access reviews is a significant finding because these accounts frequently hold elevated privileges and run continuously, as addressed by NIST SP 800-53 Rev. 5 control AC-2 (Account Management), which requires periodic review of all account types including system and service accounts. Service accounts are not tied to individual employees, so they survive personnel changes and can accumulate unnecessary privileges over time. Unlike user accounts that are naturally reviewed during employee onboarding and termination processes, service accounts require deliberate inclusion in the access review cycle to prevent privilege creep and credential compromise.'
WHERE id = 3680;

-- ============================================================
-- SOC ENGAGEMENTS (1 questions)
-- ============================================================

-- ID 3909: SOC Engagements
UPDATE questions SET
  explanation = 'A SOC 1 Type II report is the appropriate engagement because NAV calculations directly affect the mutual funds'' financial statements, and SSAE No. 18 (AT-C Section 320) governs examinations of controls at a service organization relevant to user entities'' internal control over financial reporting. The Type II report tests operating effectiveness over a period, providing the funds'' auditors with evidence that the service organization''s controls functioned reliably throughout the reporting period. Unlike a SOC 2 report, which focuses on the Trust Services Criteria (security, availability, etc.) rather than financial reporting controls, a SOC 1 engagement directly addresses the auditors'' need for assurance over outsourced financial processing.'
WHERE id = 3909;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (2 questions)
-- ============================================================

-- ID 5468: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'When a user entity does not implement a complementary user entity control (CUEC), the relevant control objective may not be fully achieved even if the service organization''s own controls operated effectively, as specified in SSAE No. 18 (AT-C Section 320.A37). SOC 1 control objectives are designed with the assumption that both the service organization''s controls and the identified CUECs are functioning together. Unlike the notion that CUECs are optional suggestions, they are expected components of the complete control framework, and failure to perform them creates a gap that can undermine the overall control environment regardless of the service organization''s performance.'
WHERE id = 5468;

-- ID 5469: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'A SOC 2 Type II report should be requested because it covers a specified period and includes testing of both suitability of design and operating effectiveness of controls, as defined in AICPA AT-C Section 205 and the AICPA SOC 2 reporting framework. The Type II examination provides evidence that controls not only were properly designed but also functioned consistently throughout the review period. Unlike a SOC 2 Type I report, which only evaluates design suitability at a single point in time without testing whether controls actually operated effectively over a period, the Type II report delivers the higher level of assurance needed for ongoing operational reliance.'
WHERE id = 5469;

-- ============================================================
-- SOC REPORTING (1 questions)
-- ============================================================

-- ID 3918: SOC Reporting
UPDATE questions SET
  explanation = 'An adverse opinion is the most severe form of modified opinion under AT-C Section 205 (SSAE No. 18), communicating that deficiencies are both material and pervasive — meaning the system description is not fairly presented, controls are not suitably designed, or controls did not operate effectively to a degree that a qualified opinion cannot adequately convey. This opinion signals fundamental problems with the service organization''s control environment. Unlike minor corrected issues, which would not trigger an adverse opinion, or the incorrect belief that the auditor directs cessation of operations, the adverse opinion reports the severity of findings rather than issuing operational mandates.'
WHERE id = 3918;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (1 questions)
-- ============================================================

-- ID 3910: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Capacity management is an appropriate supplemental availability criterion under the AICPA Trust Services Criteria (2017), specifically criterion A1.1, which requires that the entity maintains, monitors, and evaluates current processing capacity to meet availability commitments. Measuring current usage against thresholds and planning for sufficient resources directly supports system availability by preventing resource exhaustion. Unlike security-focused criteria such as encryption or access controls, which address confidentiality rather than availability, capacity management ensures the system remains operational under expected and peak workloads.'
WHERE id = 3910;

-- ============================================================
-- SOC TESTING CONTROLS (1 questions)
-- ============================================================

-- ID 3917: SOC Testing Controls
UPDATE questions SET
  explanation = 'For a high-risk weekly control with 52 occurrences and zero expected deviations, a sample of approximately 20 to 25 items is appropriate, consistent with the AICPA Audit Sampling Guide and AT-C Section 205 testing requirements for SOC engagements. The larger sample size is driven by the high-risk assessment and low tolerable deviation rate, which together require greater assurance that the control operated effectively throughout the period. Unlike testing only 5 items, which provides insufficient coverage for a high-risk control, or testing only the most recent occurrence, which offers no evidence about operations during the rest of the period, a sample of 20–25 balances statistical confidence with practical efficiency.'
WHERE id = 3917;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 3573: System Availability and Change Management
UPDATE questions SET
  explanation = 'Synchronous database mirroring ensures every committed transaction exists on both the primary and mirror databases before being acknowledged, achieving zero data loss (RPO = 0) as described in NIST SP 800-34 Rev. 1 (Contingency Planning Guide), Section 5.2 on data mirroring and replication strategies. If the primary fails, the mirror contains an identical copy of all committed data, enabling rapid failover with minimal recovery time. Unlike asynchronous replication, which may lag behind the primary and result in some data loss during failover, synchronous mirroring guarantees that no committed transactions are lost because writes are confirmed on both copies simultaneously.'
WHERE id = 3573;

-- ID 3574: System Availability and Change Management
UPDATE questions SET
  explanation = 'Configuration drift between staging and production environments undermines pre-deployment testing reliability, as addressed by NIST SP 800-128 (Guide for Security-Focused Configuration Management), Section 3.3 on maintaining consistent configurations across environments. When configurations diverge, a patch that passes staging tests may fail in production due to undetected environment differences, creating false confidence in the release process. Unlike the assumption that configuration diversity improves security, drift actually introduces unpredictability, whereas maintaining synchronized configurations between staging and production ensures that test results accurately predict production behavior.'
WHERE id = 3574;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (2 questions)
-- ============================================================

-- ID 3645: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Verbose error messages that reveal database table names, SQL query structures, and internal server paths constitute an information disclosure vulnerability, classified under OWASP Top 10 A01:2021 (Broken Access Control) and addressed by NIST SP 800-53 Rev. 5 control SI-11 (Error Handling). This information provides attackers with reconnaissance data that enables more precise SQL injection attacks and reveals application architecture details. Unlike generic error messages that protect internal details while logging specifics server-side, verbose error output reduces the attacker''s effort by exposing the exact structure they need to craft targeted exploits.'
WHERE id = 3645;

-- ID 3646: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'The convergence of a critical CVSS 9.8 score, a public proof-of-concept exploit, widespread library usage, and customer-facing exposure creates extreme urgency, as assessed under NIST SP 800-40 Rev. 4 (Guide to Enterprise Patch Management Planning) and the CVSS v3.1 severity rating framework. The public exploit means attackers have a ready-made tool, while the library''s prevalence makes it a high-value target with broad impact potential. Unlike vulnerabilities that lack public exploits or only affect internal systems, this combination of severity, exploitability, and external exposure demands immediate remediation through patching or compensating controls rather than standard patch cycle scheduling.'
WHERE id = 3646;

COMMIT;
