-- Migration: Citation backfill — ISC batch 13 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 5427: Change Management
UPDATE questions SET
  explanation = 'Under ITIL 4 change enablement practices, a phased rollout limits the blast radius of deployment failures by containing issues to a single site before wider release. The primary advantage is that the organization could pause deployment after the second clinic''s migration errors, fix the root cause, and protect remaining clinics from the same defect. Unlike a big-bang deployment, which would have exposed all clinics simultaneously to the corrupted migration script, the phased approach allowed controlled containment and remediation before resuming.'
WHERE id = 5427;

-- ID 5428: Change Management
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI06 (Manage Changes), even emergency changes must include compensating controls such as retrospective approval and documentation to maintain accountability. Bypassing all approval, testing, and documentation with no subsequent review represents the greatest weakness because no control exists to verify the change was appropriate or properly implemented. While verbal approval with follow-up documentation or 24-hour retroactive CAB review are acceptable compensating controls, the complete absence of any oversight leaves the organization with no assurance over emergency changes.'
WHERE id = 5428;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (3 questions)
-- ============================================================

-- ID 3530: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per COBIT 2019 APO14 (Managed Data), entity integrity requires that each row in a relational table be uniquely identifiable. A primary key is a column or combination of columns that uniquely identifies each row, enforcing entity integrity by ensuring no duplicate or null key values exist. This unique identification is essential for establishing referential relationships between tables. Unlike encryption, which protects data confidentiality rather than structural identification, a primary key serves an identification function, whereas query ORDER BY clauses—not the primary key—determine row display order.'
WHERE id = 3530;

-- ID 3531: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per AICPA Trust Services Criteria PI1.4 (processing integrity), data discrepancies require systematic investigation to identify root causes. The auditor should first perform a detailed reconciliation to isolate the specific records causing the $47,000 difference, which reveals whether the issue stems from unposted batches, data entry errors, interface failures, or unauthorized adjustments. Unlike simply assuming either system is correct without investigation, a targeted reconciliation traces the discrepancy to its source and directs further audit procedures accordingly.'
WHERE id = 3531;

-- ID 3532: Data Management and Lifecycle
UPDATE questions SET
  explanation = 'Per NIST SP 800-60 (Guide for Mapping Types of Information to Security Categories), data containing multiple types of sensitive PII—such as Social Security numbers, financial account numbers, and health records—warrants the highest sensitivity classification. Each data type falls under separate regulatory frameworks (GLBA for financial, HIPAA for health), and their combination amplifies breach risk. Unlike publicly available data, which carries no sensitivity classification, records combining regulated personal identifiers require the most stringent access controls and protection measures.'
WHERE id = 3532;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (2 questions)
-- ============================================================

-- ID 5447: Data Protection Technologies
UPDATE questions SET
  explanation = 'Per NIST SP 800-57 Part 1 (Recommendation for Key Management), maintaining separation between encrypted data and key material is a fundamental cryptographic principle. Storing customer-managed encryption keys within the cloud provider''s own KMS means the provider technically retains access to key material, undermining the intended separation of control. Unlike external key management approaches (BYOK/HYOK) where keys never leave the customer''s premises, provider-hosted CMEKs create a residual risk that the provider could access protected data despite customer-managed key policies.'
WHERE id = 5447;

-- ID 5448: Data Protection Technologies
UPDATE questions SET
  explanation = 'Per AICPA Trust Services Criteria CC6.1 (logical access controls), DRM provides persistent, granular usage controls that remain with the document even after an authorized user opens it, including restrictions on printing, copying, forwarding, and setting expiration dates. Standard encryption only governs access—once decrypted, the user faces no content restrictions. Unlike file-level encryption, which provides an all-or-nothing access model, DRM enforces ongoing usage policies throughout the document''s lifecycle regardless of where the file travels.'
WHERE id = 5448;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 3496: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI03 (Managed Solutions Identification and Build) and ASC 810 (Consolidation), modern ERP systems support automated intercompany elimination by tagging intercompany transactions at the time of entry and applying predefined elimination rules during consolidation. This systematically identifies and eliminates reciprocal revenue/expense, receivable/payable, and investment/equity balances. Unlike manual spreadsheet-based elimination, which is error-prone and difficult to audit, automated ERP tagging ensures consistent and complete elimination across all subsidiaries with full traceability.'
WHERE id = 3496;

-- ID 3497: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per ASC 330 (Inventory) and COBIT 2019 APO14 (Managed Data), a perpetual inventory system records every receipt, issue, transfer, and adjustment in real time through the ERP system, maintaining continuously updated records of inventory quantities and costs. Physical counts remain necessary for verification but are not the primary basis for record-keeping. Unlike a periodic inventory system, which updates records only after physical counts at designated intervals, the perpetual method provides current inventory visibility at any point and enables real-time exception detection.'
WHERE id = 3497;

-- ID 3498: ERP and Accounting Information Systems
UPDATE questions SET
  explanation = 'Per AICPA Trust Services Criteria CC7.2 (monitoring activities) and COBIT 2019 DSS05 (Managed Security Services), temporarily modifying aging parameters at quarter-end and reverting them the next day is a red flag for financial statement manipulation. The change could have suppressed overdue invoices from aging reports used by management or auditors, masking cash flow problems. Unlike routine parameter adjustments that follow change management procedures and persist, the deliberate reversion after the reporting date suggests the modification was intended to alter period-end reporting temporarily rather than address a legitimate business need.'
WHERE id = 3498;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (3 questions)
-- ============================================================

-- ID 3707: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2, Section 3.4 (Recovery and Post-Incident Activity), before returning a restored system to production, the team must verify that the backup predates the compromise to ensure it does not contain the attacker''s persistence mechanisms, validate system integrity, and apply missing patches—particularly the vulnerability exploited in the attack. Unlike simply restoring from backup and immediately reconnecting to the network, which risks reintroducing compromised artifacts or the original vulnerability, proper verification includes a controlled reintroduction period with active monitoring for indicators of compromise.'
WHERE id = 3707;

-- ID 3708: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2, Section 2.1 (Incident Response Policy and Plan), an escalation matrix defines the conditions, severity thresholds, and notification timelines under which incidents must be escalated to higher management levels, specific roles (CISO, legal counsel, CEO), or external parties. This ensures critical incidents receive timely attention from decision-makers with proper authority. Unlike an employee seniority ranking, which is an HR function unrelated to incident management, an escalation matrix routes security incidents based on severity and impact criteria rather than organizational hierarchy.'
WHERE id = 3708;

-- ID 3709: Incident Response and Recovery
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 detection guidance and the MITRE ATT&CK framework, living off the land (LOtL) techniques exploit legitimate system tools already present in the environment—such as PowerShell, WMI, PsExec, and RDP—for malicious purposes. Because these tools are expected in normal operations, their malicious use evades signature-based detection methods. Unlike custom malware, which introduces foreign executables that antivirus and endpoint detection solutions can identify through signatures, LOtL activity requires behavioral analysis to distinguish malicious usage patterns from legitimate administrative operations.'
WHERE id = 3709;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 3856: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Per COBIT 2019 APO12 (Managed Risk) and NIST SP 800-30 (Guide for Conducting Risk Assessments), evaluating whether an organization considers emerging threats relates to risk identification, which must be a continuous process adapting to the evolving threat landscape through horizon scanning beyond historical categories. Comprehensive risk identification captures new threats before they materialize. Unlike risk transfer, which deals with shifting consequences to third parties after risks are identified, risk identification is the foundational step that discovers and catalogs threats requiring subsequent analysis and treatment.'
WHERE id = 3856;

-- ID 3857: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Per COBIT 2019 Framework Section 3 (Governance System and Components), a governance system is the set of interrelated components—including processes, organizational structures, policies, information flows, culture, skills, and services—that work together to govern and manage enterprise IT, tailored through design factors to the organization''s context. This holistic definition ensures governance encompasses all elements needed for effective oversight. Unlike a single application or software platform, a governance system integrates multiple organizational elements, whereas an organizational chart is merely one structural component within the broader system.'
WHERE id = 3857;

-- ID 3858: IT Audit Frameworks
UPDATE questions SET
  explanation = 'Per ITIL 4 Foundation (AXELOS), the shift from processes to practices reflects a more holistic view of service management, where practices encompass not just process flows but also the people, tools, partners, information, and value streams needed to achieve outcomes. This recognizes the complexity of modern service management beyond linear process definitions. Unlike the claim that practices are simpler than processes, practices are actually broader in scope, whereas documented procedures remain a component within each practice rather than being eliminated entirely.'
WHERE id = 3858;

-- ============================================================
-- IT GENERAL CONTROLS (3 questions)
-- ============================================================

-- ID 3830: IT General Controls
UPDATE questions SET
  explanation = 'Per COBIT 2019 APO10 and AICPA Trust Services Criteria CC6.1 (logical access controls), an automated control that prevents journal entries from posting without second-level approval is a preventive application control that enforces segregation of duties within the system. Preventive controls stop errors or irregularities before they occur by blocking unauthorized or unapproved transactions at the point of execution. Unlike detective controls, which identify issues only after transactions have already been processed and posted, preventive application controls actively block non-compliant actions to provide stronger assurance over transaction integrity.'
WHERE id = 3830;

-- ID 3831: IT General Controls
UPDATE questions SET
  explanation = 'Per NIST SP 800-63B (Digital Identity Guidelines) and AICPA TSC CC6.1, service accounts with static, unchanging passwords create an indefinite exposure window if credentials are compromised, since the attacker retains access until the password is eventually rotated. Organizations should manage service account credentials through automated rotation, privileged access management solutions, or managed service identities that eliminate static passwords. Unlike user accounts with regular password rotation requirements that limit the window of compromise, service accounts with stale passwords provide persistent unauthorized access that may go undetected for extended periods.'
WHERE id = 3831;

-- ID 3911: IT General Controls
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI06 (Manage Changes) and AICPA TSC CC8.1 (change management), technical enforcement controls that prevent production changes without a corresponding approved change ticket provide stronger assurance than administrative policies alone. Technical controls—such as deployment tools requiring change ticket validation—ensure compliance regardless of urgency or the individual''s role. Unlike written policies and training, which are administrative controls that individuals can deliberately or inadvertently bypass under pressure, automated technical enforcement blocks unauthorized changes at the system level before they can be executed.'
WHERE id = 3911;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (3 questions)
-- ============================================================

-- ID 3462: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-144 (Guidelines on Security and Privacy in Public Cloud Computing), data sovereignty compliance requires selecting a cloud region within the country and configuring policies that prevent data from being replicated or backed up to regions outside the country''s borders. The physical location where data resides determines jurisdictional compliance, regardless of the provider''s headquarters or pricing structure. Unlike choosing a provider based solely on its corporate headquarters location, which does not determine where data physically resides, region selection with geo-fencing policies directly controls data residency to meet sovereignty requirements.'
WHERE id = 3462;

-- ID 3463: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI03 (Managed Solutions Identification and Build), managing solution development includes strategies for incremental modernization of legacy systems. The strangler fig pattern gradually replaces legacy functionality with modern services while maintaining an integration layer (anti-corruption layer) that translates between old and new system interfaces, enabling incremental modernization without a high-risk big-bang migration. Unlike a complete system replacement that requires all functionality to be rebuilt before cutover, the strangler fig approach allows the legacy system to continue operating while new capabilities are progressively introduced alongside it.'
WHERE id = 3463;

-- ID 3464: IT Infrastructure and Architecture
UPDATE questions SET
  explanation = 'Per NIST SP 800-94 (Guide to Intrusion Detection and Prevention Systems) and the OSI reference model, protocol analyzers capture complete Ethernet frames at the Data Link layer (Layer 2), which includes MAC addresses, frame type, and the encapsulated payload. While analyzers can decode information at all layers, raw capture occurs at Layer 2 where the complete frame structure is visible. Unlike the Physical layer (Layer 1), which handles raw electrical or optical bit transmission without frame structure, Layer 2 organizes bits into addressable frames that enable meaningful traffic analysis and network troubleshooting.'
WHERE id = 3464;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (3 questions)
-- ============================================================

-- ID 3741: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Per NIST SP 800-122 (Guide to Protecting the Confidentiality of PII) and AICPA Trust Services Criteria P1.0 (Privacy), a privacy impact assessment evaluates how a system collects, uses, shares, and maintains personal information, with primary focus on identifying privacy risks and assessing proportionality of processing relative to its stated purpose. The PIA ensures compliance with applicable regulations and determines appropriate mitigation measures. Unlike a technical vulnerability scan that assesses infrastructure weaknesses, a PIA specifically examines how personal data flows through the system and whether privacy commitments are maintained.'
WHERE id = 3741;

-- ID 3742: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Per GDPR Article 17(2), when a controller has made personal data public and the data subject requests erasure, the controller must take reasonable steps—considering available technology and cost—to inform other controllers processing that data of the erasure request, including requests to delete any links to, copies of, or replications of the personal data. This extends the right to erasure beyond the original controller''s own systems. Unlike simply deleting the controller''s own copy, which would leave published data accessible elsewhere, Article 17(2) imposes a proactive notification obligation toward downstream processors.'
WHERE id = 3742;

-- ID 3743: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = 'Per AICPA Trust Services Criteria P4.0 (Privacy—Collection) and HIPAA Privacy Rule Section 164.514(a)–(b), two methods achieve de-identification of protected health information: the Safe Harbor method under Section 164.514(b), which requires removing 18 specified identifiers including names, dates, geographic data, and Social Security numbers; and the Expert Determination method under Section 164.514(a), where a qualified statistical expert certifies that re-identification risk is very small. Unlike simply removing patient names alone, which leaves numerous other identifiers enabling re-identification, compliant de-identification requires systematic removal across all identifier categories.'
WHERE id = 3743;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (3 questions)
-- ============================================================

-- ID 3608: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per COBIT 2019 Framework (Governance and Management Objectives), Evaluate, Direct and Monitor (EDM) is the dedicated governance domain containing five objectives (EDM01–EDM05) that encompass the board''s responsibilities to evaluate strategic options, direct management on chosen strategies, and monitor performance outcomes. EDM covers governance framework, benefits delivery, risk optimization, resource optimization, and stakeholder transparency. Unlike APO (Align, Plan and Organize), which is a management domain covering planning and operational alignment, EDM operates at the governance level where the governing body sets enterprise-wide direction.'
WHERE id = 3608;

-- ID 3609: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per NIST SP 800-37 Rev. 2 (Risk Management Framework for Information Systems and Organizations), the RMF follows seven sequential steps: Prepare, Categorize, Select, Implement, Assess, Authorize, and Monitor. After selecting the initial set of security controls for a moderate-impact system, the next step is to implement those controls within the information system and document their deployment configuration. Unlike the Assess step, which evaluates whether implemented controls operate as intended, the Implement step focuses on putting selected controls into operation before their effectiveness can be evaluated.'
WHERE id = 3609;

-- ID 3610: Security and Control Frameworks
UPDATE questions SET
  explanation = 'Per COBIT 2019 Framework (Introduction and Methodology), its comprehensive structure enables organizations to map multiple regulatory requirements (SOX, PCI DSS, GLBA) to a single governance framework, creating a unified control environment where one control implementation can satisfy overlapping compliance obligations. This reduces duplication and management complexity through cross-regulatory alignment. Unlike adopting COBIT as a substitute for regulatory compliance, which is incorrect because COBIT does not eliminate the obligation to comply with applicable regulations, the framework serves as an integrating layer that harmonizes how an organization addresses diverse requirements.'
WHERE id = 3610;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (3 questions)
-- ============================================================

-- ID 3676: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide), SOAR (Security Orchestration, Automation, and Response) platforms automate repetitive incident response tasks through predefined playbooks, reducing mean time to respond when SIEM alerts trigger. SOAR can automatically gather threat intelligence, enrich indicators, isolate affected systems, and create tickets without manual intervention. Unlike replacing the SIEM, which would eliminate the alert correlation capability that SOAR depends on, SOAR complements SIEM by acting on its alerts while freeing analysts to focus on complex investigations requiring human judgment.'
WHERE id = 3676;

-- ID 3677: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-175B (Guideline for Using Cryptographic Standards), the hybrid encryption approach leverages the strengths of both cryptographic types: AES symmetric encryption efficiently handles bulk data at high speed, while RSA asymmetric encryption securely delivers the AES session key without requiring pre-shared secrets. This pattern underpins protocols like TLS, PGP, and S/MIME. Unlike using asymmetric encryption alone for the entire message, which would be computationally impractical for large payloads, the hybrid model achieves both performance efficiency and secure key exchange in a single workflow.'
WHERE id = 3677;

-- ID 3678: Security Controls and Monitoring
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5 (Security and Privacy Controls), detective controls identify deviations from policy after they occur, enabling remediation of issues that preventive controls failed to block. Automated compliance scanning exemplifies a detective control by identifying devices not meeting security standards such as missing encryption or outdated patches. Unlike physical access controls, which restrict entry to facilities and do not detect software-level policy violations, detective controls operate across the IT environment to surface non-compliance for corrective action.'
WHERE id = 3678;

-- ============================================================
-- SOC ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 3774: SOC Engagements
UPDATE questions SET
  explanation = 'Per AT-C Section 320 (Reporting on an Examination of Controls at a Service Organization), when significant system changes occur during the examination period, the service auditor must evaluate controls in both the pre-migration and post-migration environments. The system description should clearly describe the changes, and testing must cover controls in both periods to provide user entities a complete picture. Unlike limiting testing to only the current post-migration environment, which would leave a coverage gap for the earlier period, dual-environment testing ensures the opinion addresses control effectiveness throughout the entire examination window.'
WHERE id = 3774;

-- ID 3775: SOC Engagements
UPDATE questions SET
  explanation = 'Per AT-C Section 320.35 (SSAE No. 18), control objectives in a SOC 1 engagement are established by management of the service organization. These objectives describe the goals that controls are designed to achieve in relation to user entities'' internal control over financial reporting (ICFR), and management typically considers user entity needs when defining them. Unlike having the service auditor establish control objectives, which would compromise the auditor''s independence and objectivity, management bears responsibility for designing and describing the control environment that the auditor then independently evaluates.'
WHERE id = 3775;

-- ID 3776: SOC Engagements
UPDATE questions SET
  explanation = 'Per AICPA SOC guidance and AT-C Section 205 (Examination Engagements), a readiness assessment is the recommended first step, allowing organizations to identify gaps in their control environment before undergoing a formal SOC examination. This enables remediation of deficiencies, implementation of missing controls, and preparation of required documentation. Unlike proceeding directly to a Type II examination without preparation, which risks significant exceptions and a potentially qualified or adverse opinion, a readiness assessment provides a structured path to examination readiness at lower cost and reputational risk.'
WHERE id = 3776;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 5467: SOC Report Content and Structure
UPDATE questions SET
  explanation = 'Per AT-C Section 320.69 (SSAE No. 18), a qualified opinion indicates that, except for specific matters described in the report, the system description is fairly presented and controls are suitably designed and operating effectively. It signals a limited scope issue or specific control deficiency rather than a wholesale failure of the control environment. Unlike an adverse opinion, which indicates pervasive issues rendering the overall control environment unreliable, a qualified opinion confines its exceptions to identified matters while affirming that the remainder of the system meets the applicable Trust Services Criteria.'
WHERE id = 5467;

-- ============================================================
-- SOC REPORTING (2 questions)
-- ============================================================

-- ID 3907: SOC Reporting
UPDATE questions SET
  explanation = 'Per AT-C Section 320.39 (SSAE No. 18), the Type I opinion addresses whether the system description fairly presents the system as designed and implemented as of the specified date, and whether controls are suitably designed to achieve the stated criteria or control objectives. Type I is a point-in-time assessment of design suitability only. Unlike a Type II report, which evaluates operating effectiveness of controls over a period of time (typically 6–12 months), a Type I report does not test or opine on whether controls actually operated effectively during any examination period.'
WHERE id = 3907;

-- ID 3908: SOC Reporting
UPDATE questions SET
  explanation = 'Per AICPA SOC 2 guidance and AT-C Section 320, the user entity should evaluate the specific exceptions underlying the qualified opinion, assess their potential impact on operations and risk profile, and request a remediation plan with timelines from the service organization. Additional monitoring or compensating controls may be warranted based on the assessment. Unlike accepting the qualified report without evaluation, which could leave the user entity exposed to unmitigated risks, a structured assessment ensures the significance of the exceptions is fully understood before determining the appropriate response.'
WHERE id = 3908;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (3 questions)
-- ============================================================

-- ID 3802: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Per AICPA Trust Services Criteria (2017), the Privacy category (P1.0–P8.0) specifically addresses how the entity collects, uses, retains, discloses, and disposes of personal information in conformity with its commitments and applicable regulations. Privacy encompasses eight criteria covering notice, choice, collection, use, access, disclosure, quality, and monitoring of personal information. Unlike the Confidentiality category, which broadly protects business-sensitive information designated as confidential, the Privacy category focuses specifically on personal information and the entity''s obligations to the individuals whose data it processes.'
WHERE id = 3802;

-- ID 3803: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Per AICPA Description Criteria (DC Section 100), system boundaries in a SOC 2 report encompass five components: infrastructure, software, people, procedures, and data. Marketing strategy and competitive positioning are business considerations that fall outside the system boundary definition entirely. Unlike infrastructure and personnel, which are integral system components that the service auditor evaluates for control design and operating effectiveness, marketing strategies have no bearing on the design or operation of controls relevant to the Trust Services Criteria.'
WHERE id = 3803;

-- ID 3805: SOC Reporting and Trust Services Criteria
UPDATE questions SET
  explanation = 'Per AICPA Trust Services Criteria CC2.3 (Communication and Information), principal service commitments are the declarations made by the entity to user entities about how the system will perform and be managed, typically found in service level agreements, contracts, published policies, and formal communications. System requirements are the specifications the system must meet to fulfill these commitments. Unlike internal operational procedures, which describe how controls function on a day-to-day basis, principal service commitments represent the entity''s external obligations that drive the design of the control environment evaluated in the SOC engagement.'
WHERE id = 3805;

-- ============================================================
-- SOC TESTING CONTROLS (2 questions)
-- ============================================================

-- ID 3915: SOC Testing Controls
UPDATE questions SET
  explanation = 'Per AT-C Section 320.A40 (SSAE No. 18), automated controls embedded in application code operate consistently as long as the code remains unchanged. The auditor can test the control at a single point in time and verify through IT general controls—specifically change management records and version control logs—that no modifications were made during the examination period. Unlike testing every transaction processed by the control, which is unnecessarily extensive for a consistently operating automated control, single-point testing combined with ITGC validation provides sufficient evidence of operating effectiveness throughout the period.'
WHERE id = 3915;

-- ID 3916: SOC Testing Controls
UPDATE questions SET
  explanation = 'Per AT-C Section 320.A38 (SSAE No. 18), inspection of badge access logs provides the strongest evidence because documentary evidence covering the entire examination period demonstrates all entries, including anomalies or unauthorized access attempts, offering comprehensive assurance of control effectiveness. Log review enables the auditor to identify patterns, exceptions, and trends across the full period. Unlike inquiry of management alone, which lacks corroborative evidence, or single-point observation, which covers only one moment in time, full-period log inspection provides the most persuasive and complete audit evidence.'
WHERE id = 3916;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (5 questions)
-- ============================================================

-- ID 3568: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per ITIL 4 configuration management practice and COBIT 2019 BAI10 (Managed Configuration), servers absent from the CMDB are effectively invisible to IT management processes and may be missed during security patch deployments, excluded from impact assessments when changes are planned, and overlooked in disaster recovery planning. Configuration management requires a complete and accurate CMDB to function effectively. Unlike assuming that CMDB completeness is optional or that automatic discovery inherently resolves gaps, missing assets represent unmanaged risk exposure that undermines change, patch, and continuity processes.'
WHERE id = 3568;

-- ID 3569: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-34 Rev. 1 (Contingency Planning Guide for Federal Information Systems), a cold site is the most basic and least expensive DR facility, providing only physical space, power, cooling, and basic connectivity. The organization must install and configure all hardware, software, and restore data before operations can resume, resulting in the longest recovery time (days to weeks) but lowest ongoing cost. Unlike a hot site, which maintains fully operational duplicate systems with real-time data replication and enables near-immediate failover, a cold site requires substantial setup time before recovery can begin.'
WHERE id = 3569;

-- ID 3570: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-34 Rev. 1 (Contingency Planning Guide), interdependency analysis reveals that a business process requiring multiple systems to function means each dependent system is a potential single point of failure, and the slowest system to recover determines the actual process recovery time. All dependencies must be addressed in disaster recovery planning to ensure realistic recovery objectives. Unlike planning recovery for only the primary application while ignoring upstream and downstream dependencies, comprehensive interdependency mapping ensures that all critical system relationships are identified and recovery sequencing is properly coordinated.'
WHERE id = 3570;

-- ID 3571: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per COBIT 2019 BAI06 (Manage Changes) and ITIL 4 change enablement, tiered change management aligns approval rigor with system criticality so that mission-critical financial systems receive the most thorough review because a failed change carries the highest business impact, while lower-tier systems receive proportionally controlled processes. This risk-based approach optimizes resource allocation across the change portfolio. Unlike applying identical rigor to all system tiers, which wastes resources on low-risk changes while potentially under-protecting critical systems, a tiered model ensures scrutiny is proportional to potential business impact.'
WHERE id = 3571;

-- ID 3572: System Availability and Change Management
UPDATE questions SET
  explanation = 'Per NIST SP 800-53 Rev. 5 (PE-11: Emergency Power) and data center best practices, a UPS provides immediate, short-duration backup power that bridges the gap between a power failure and generator activation, preventing system crashes during the seconds or minutes it takes for generators to start and stabilize. The UPS ensures continuous power delivery during this critical transition window. Unlike a generator, which provides long-duration backup power but requires startup time, a UPS delivers instantaneous power protection, whereas network traffic management falls outside UPS functionality entirely.'
WHERE id = 3572;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (3 questions)
-- ============================================================

-- ID 3642: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-115 (Technical Guide to Information Security Testing and Assessment), social engineering testing evaluates whether security awareness training and policies translate into actual employee behavior by simulating realistic phishing, pretexting, and physical access attempts. This tests the human layer, which is often the most exploitable attack surface even when technical controls are robust. Unlike network or application testing, which assesses technical vulnerabilities in infrastructure and code, social engineering testing specifically measures the effectiveness of personnel-focused security controls and identifies awareness gaps requiring targeted training.'
WHERE id = 3642;

-- ID 3643: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-83 (Guide to Malware Incident Prevention and Handling), a logic bomb is malicious code that remains dormant until a predefined condition—such as a specific date, event, or the absence of a user account—triggers its activation. An insider planting code triggered by their own termination is the classic logic bomb scenario, exploiting privileged access to embed a delayed destructive payload. Unlike a worm, which self-propagates across networks without requiring user intervention or specific trigger conditions, a logic bomb does not replicate and only executes when its specific activation condition is met.'
WHERE id = 3643;

-- ID 3644: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = 'Per NIST SP 800-83 and CISA ransomware guidance, phishing emails remain the most common initial attack vector for ransomware, typically delivering malicious attachments such as macro-enabled documents or links to exploit kits that download the ransomware payload. This underscores the importance of email security controls—including filtering and sandboxing—alongside security awareness training as primary defenses. Unlike direct network exploitation, which requires identifying and exploiting technical vulnerabilities in internet-facing services, phishing targets the human element and can bypass perimeter defenses by leveraging user interaction.'
WHERE id = 3644;

COMMIT;
