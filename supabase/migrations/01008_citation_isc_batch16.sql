-- Migration: Citation backfill — ISC batch 16 (32 questions)
-- Date: 2026-03-31
-- Purpose: Add standard citations to 32 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, IT Audit Frameworks, Privacy Requirements and Data Protection, SOC Report Content and Structure, SOC Testing Controls, Security and Control Frameworks, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (6 questions)
-- ============================================================

-- ID 13553: Change Management
UPDATE questions SET
  explanation = $EXPL$The correct answer is the project charter and feasibility analysis. Per NIST SP 800-64 Section 2.2 (System Development Life Cycle), the initiation/planning phase produces a feasibility study and project charter that define scope, objectives, and resource requirements. This deliverable establishes whether the project is technically, economically, and operationally viable before committing resources. While working software components may seem like a logical first output, they are the deliverable of the development phase, not the planning phase.$EXPL$
WHERE id = 13553;

-- ID 13554: Change Management
UPDATE questions SET
  explanation = $EXPL$The correct answer is 90.5%. Per ITIL 4 (Change Enablement practice), the change success rate measures the percentage of changes deployed without requiring rollback or causing incidents. Using inclusion-exclusion: 14 rollbacks + 8 incidents - 3 overlapping = 19 unique failures, yielding (200 - 19) / 200 = 90.5%. This metric is a key performance indicator for change management effectiveness. However, simply adding 14 + 8 = 22 without removing the 3 double-counted changes would incorrectly yield 86%, overstating failures.$EXPL$
WHERE id = 13554;

-- ID 13555: Change Management
UPDATE questions SET
  explanation = $EXPL$The correct answer is to prevent untested or unauthorized changes from affecting production data integrity. Per COBIT 2019 BAI06 (Manage IT Changes) and ISACA ITGC guidance, separation of development, testing, and production environments ensures changes undergo controlled promotion through validated stages before reaching live systems. This prevents untested code or unauthorized modifications from compromising production integrity. Although cost reduction might seem like a benefit, environment separation typically increases infrastructure costs rather than reducing them.$EXPL$
WHERE id = 13555;

-- ID 15688: Change Management
UPDATE questions SET
  explanation = $EXPL$The correct answer is active-active for the banking portal and active-passive for the reconciliation engine. Per NIST SP 800-34 Rev. 1 Section 3.4 (Contingency Planning), active-active clustering distributes concurrent user traffic across multiple servers for high throughput, while active-passive failover maintains a single authoritative primary to prevent split-brain data inconsistencies. This pairing addresses each system''s distinct requirement. Whereas using active-active for the reconciliation engine risks split-brain scenarios where conflicting transactions execute on separate nodes, violating the strict consistency mandate.$EXPL$
WHERE id = 15688;

-- ID 15692: Change Management
UPDATE questions SET
  explanation = $EXPL$The correct answer is automatic failover and high availability. Per NIST SP 800-34 Rev. 1 Section 3.4.2 (System Recovery Strategies), server clustering groups multiple servers into a logical unit so that if one node fails, remaining nodes continue processing without interruption. This architecture supports the 99.99% uptime requirement by eliminating single points of failure. Unlike encryption, which protects data confidentiality during transmission, clustering is specifically designed to maintain continuous system availability during hardware failures.$EXPL$
WHERE id = 15692;

-- ID 15693: Change Management
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the change has a control gap due to skipping required testing. Per COBIT 2019 BAI06.02 (Manage Emergency Changes) and ITIL 4 Change Enablement, the standard change process requires testing in a non-production environment as a separate gate after CAB approval. Skipping this step creates a control gap because untested changes risk introducing defects into production. However, CAB approval alone is necessary but not sufficient — the decision framework explicitly requires both approval and testing as independent control points.$EXPL$
WHERE id = 15693;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (1 questions)
-- ============================================================

-- ID 15750: Data Management and Lifecycle
UPDATE questions SET
  explanation = $EXPL$The correct answer is three to six years depending on record type. Per SEC Rule 17a-4, Section 17(a) of the Securities Exchange Act of 1934, broker-dealers must retain general business records for a minimum of three years, while customer account records, ledgers, and partnership documents require six-year retention in accessible format. These requirements ensure regulatory examination capability and investor protection. Unlike the incorrect suggestion of one year, no SEC broker-dealer retention category permits such a short period — even the minimum threshold is three years.$EXPL$
WHERE id = 15750;

-- ============================================================
-- IT AUDIT FRAMEWORKS (3 questions)
-- ============================================================

-- ID 12960: IT Audit Frameworks
UPDATE questions SET
  explanation = $EXPL$The correct answer is implementing controls to reduce likelihood or impact of the risk event. Per NIST SP 800-37 Rev. 2 (Risk Management Framework) and ISO 27005 Section 9.2, risk mitigation involves applying safeguards such as multi-factor authentication and network segmentation to reduce either the probability of occurrence or the severity of impact. This is the most common risk treatment strategy for identified threats. Although transferring financial impact to a third party through insurance may seem similar, that approach constitutes risk transfer rather than mitigation.$EXPL$
WHERE id = 12960;

-- ID 12962: IT Audit Frameworks
UPDATE questions SET
  explanation = $EXPL$The correct answer is the estimated frequency of a risk event occurring per year. Per NIST SP 800-30 Rev. 1 (Guide for Conducting Risk Assessments), the Annualized Rate of Occurrence (ARO) represents how many times a threat event is expected to occur annually, derived from historical data or expert judgment. ARO is used in the quantitative risk formula ALE = SLE × ARO to calculate annualized loss expectancy. Unlike the exposure factor, which measures the percentage of asset value lost per incident, ARO measures frequency rather than magnitude.$EXPL$
WHERE id = 12962;

-- ID 12964: IT Audit Frameworks
UPDATE questions SET
  explanation = $EXPL$The correct answer is yes — asset inventory is foundational to reliable risk identification. Per NIST SP 800-30 Rev. 1 Section 2.2 and ISO 27005 Section 7.2, risk identification requires cataloging threats, vulnerabilities, and the information assets that could be affected. Without knowing what assets exist and their value, the organization cannot accurately determine which risks are relevant or material. While some argue that threats and vulnerabilities alone suffice, risk identification requires all three elements because risk is defined as the intersection of threat, vulnerability, and asset value.$EXPL$
WHERE id = 12964;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (6 questions)
-- ============================================================

-- ID 13211: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$The correct answer is physical safeguards. Per the HIPAA Security Rule, Section 164.310 of 45 CFR (AICPA SOC guidance references this standard), physical safeguards include facility access controls, workstation use policies, workstation security, and device and media controls designed to protect electronic information systems from unauthorized physical access. Data center entry controls are facility access controls squarely within this category. Although administrative safeguards also protect ePHI, they address workforce management and policies under Section 164.308 rather than physical entry restrictions.$EXPL$
WHERE id = 13211;

-- ID 13213: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$The correct answer is protection against discriminatory treatment for exercising privacy rights. Per CCPA Section 1798.125 (Cal. Civ. Code), as referenced in AICPA SOC 2 privacy criteria, the right to non-discrimination prohibits businesses from denying goods or services, charging different prices, or providing different quality to consumers who exercise their CCPA rights such as opting out of data sales. Charging an additional $5.99 for opting out constitutes prohibited price discrimination. Unlike CAN-SPAM, which governs marketing email practices, the CCPA non-discrimination provision specifically addresses retaliatory pricing tied to privacy choices.$EXPL$
WHERE id = 13213;

-- ID 13214: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$The correct answer is technology-based access and encryption controls. Per HIPAA Security Rule Section 164.312 (AICPA SOC 2 privacy criteria cross-references this standard), technical safeguards include access controls with unique user identification, emergency access procedures, automatic logoff, encryption/decryption mechanisms, audit controls, integrity controls, and transmission security. These are technology-based mechanisms implemented within information systems to protect ePHI. Whereas workforce training programs fall under administrative safeguards per Section 164.308 and address human behavior rather than system-level technical protections.$EXPL$
WHERE id = 13214;

-- ID 13215: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$The correct answer is the choice/consent principle. Per the AICPA Trust Services Criteria (aligned with OECD Fair Information Practice Principles), the choice/consent principle requires that individuals have the ability to agree to or decline the collection, use, and disclosure of their personal data. Sharing contact lists with advertisers without any opt-in or opt-out mechanism directly violates this principle. While the accountability principle also addresses organizational responsibility, it concerns demonstrating compliance with privacy commitments rather than providing users with decision-making authority over their data.$EXPL$
WHERE id = 13215;

-- ID 13217: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$The correct answer is the full functionality (positive-sum) principle. Per Ann Cavoukian''s Privacy by Design framework (referenced in AICPA SOC 2 privacy criteria), Principle 4 ("Full Functionality — Positive-Sum, Not Zero-Sum") explicitly rejects the false dichotomy that privacy must come at the expense of other objectives such as functionality or business analytics. It advocates designing systems that achieve both strong privacy and full capability simultaneously. Although end-to-end security is also a Privacy by Design principle, it addresses data protection throughout the lifecycle rather than the specific debate over whether privacy and functionality are inherently in conflict.$EXPL$
WHERE id = 13217;

-- ID 13218: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$The correct answer is that CCPA applies because the combined consumer and household count exceeds 100,000. Per CCPA Section 1798.140(d) (AICPA SOC 2 privacy criteria cross-references CCPA requirements), applicability is triggered by meeting any one of three thresholds: $25M+ annual revenue, 50%+ revenue from selling personal data, or buying/receiving/selling personal information of 100,000+ consumers, households, or devices. BrightPath''s 60,000 consumers plus 50,000 households equals 110,000, satisfying the third threshold. Although the $12M revenue falls below the $25M threshold, meeting any single criterion is sufficient to trigger CCPA coverage.$EXPL$
WHERE id = 13218;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (8 questions)
-- ============================================================

-- ID 13305: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$The correct answer is preventive control. Per COBIT 2019 APO12 (Managed Risk) and NIST SP 800-53 Rev. 5 AC-3 (Access Enforcement), role-based access control is classified as a preventive control because it restricts users to authorized functions before any unauthorized action can occur. By enforcing segregation of duties at the system level, RBAC prevents unauthorized transactions from being initiated. Unlike detective controls, which identify problems after they occur through access log reviews or exception reports, RBAC blocks the unauthorized action entirely rather than detecting it post-facto.$EXPL$
WHERE id = 13305;

-- ID 13307: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the control cannot be relied upon due to the ITGC deficiency. Per AICPA AT-C Section 320.A35 and ISACA ITGC guidance, application controls depend on underlying IT general controls for their continued integrity. Without adequate program change controls, unauthorized modifications could alter the three-way match logic without detection. Even though testing showed correct results, the auditor cannot provide assurance that the application logic has not been tampered with. Whereas point-in-time testing alone cannot compensate for the ongoing risk that code may be modified without authorization between testing periods.$EXPL$
WHERE id = 13307;

-- ID 13308: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$The correct answer is adaptive capabilities including continuous improvement driven by lessons learned and predictive indicators. Per NIST Cybersecurity Framework Version 1.1 Section 2.2, Tier 4 (Adaptive) organizations continuously improve their cybersecurity practices based on lessons learned and use predictive indicators to anticipate evolving threats. Tier 3 (Repeatable) already has formal, consistently applied policies. Although documenting formal policies is important, that capability distinguishes Tier 2 from Tier 3, not Tier 3 from Tier 4 — Crestline has already achieved documented and consistent policy application.$EXPL$
WHERE id = 13308;

-- ID 13943: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$The correct answer is residual risk. Per NIST SP 800-30 Rev. 1 Section 2.4 and ISO 27001 Section 6.1.3, residual risk is the risk remaining after an organization has implemented controls to mitigate the original inherent risk. Risk management frameworks require that organizations evaluate whether residual risk falls within their defined risk appetite and tolerance levels. Although inherent risk may seem like the correct term, inherent risk refers to the level of exposure before any controls are applied, whereas residual risk specifically measures the exposure that persists after mitigation efforts.$EXPL$
WHERE id = 13943;

-- ID 13946: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the control is suitably designed but not operating effectively. Per AICPA AT-C Section 320.33 and SSAE No. 18, control evaluation distinguishes between design effectiveness and operating effectiveness. The policy requiring manager approval is appropriately designed to mitigate unauthorized access risk, but the 30% exception rate demonstrates that personnel are not consistently following the procedure. While concluding that both design and operating effectiveness are deficient may seem conservative, the design is adequate because the policy appropriately addresses the risk — the failure lies in execution, not in the control''s conceptual structure.$EXPL$
WHERE id = 13946;

-- ID 13947: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$The correct answer is a compensating control. Per NIST SP 800-53 Rev. 5 Section 3.15 and ISACA control framework guidance, a compensating control is an alternative measure implemented when the primary or recommended control cannot be practically applied due to technical or operational constraints. It must address the same risk and provide comparable protection. Enhanced logging, IP restrictions, and daily access reviews compensate for the inability to deploy multi-factor authentication. Unlike a replacement of the entire control framework, compensating controls are targeted alternatives for specific controls that cannot be implemented as designed.$EXPL$
WHERE id = 13947;

-- ID 13948: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$The correct answer is the broad amount and type of risk an organization is willing to accept in pursuit of strategic objectives. Per COSO ERM Framework (2017) and ISO 31000 Section 3.7, risk appetite is set at the board level and guides enterprise-wide risk management decisions by defining how much risk the organization will accept to achieve its goals. It is expressed qualitatively or quantitatively as an overall statement. Although risk tolerance involves specific numerical thresholds, risk tolerance defines the acceptable variation around risk appetite for individual objectives, whereas risk appetite addresses the organization''s overall risk posture.$EXPL$
WHERE id = 13948;

-- ID 13954: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$The correct answer is $100,000 residual ALE. Per NIST SP 800-30 Rev. 1 (Quantitative Risk Analysis), SLE = Asset Value × Exposure Factor = $5,000,000 × 0.20 = $1,000,000. Residual ALE = SLE × post-mitigation ARO = $1,000,000 × 0.1 = $100,000. The CISO should compare this residual ALE against the organization''s defined risk appetite per COSO ERM guidance. If $100,000 falls within acceptable tolerance, the risk can be formally accepted. However, using the original ARO of 0.5 would incorrectly yield $500,000, which fails to account for the risk reduction achieved by the UPS contract.$EXPL$
WHERE id = 13954;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 15720: SOC Report Content and Structure
UPDATE questions SET
  explanation = $EXPL$The correct answer is reperformance. Per AICPA AT-C Section 205.29 and SSAE No. 18 Section 320, reperformance involves the service auditor independently executing a control or procedure to verify it produces expected results. Re-executing the automated access provisioning workflow is a textbook example of reperformance, which provides the highest level of assurance among testing procedures. Unlike observation, which involves watching personnel perform a process without independently executing it, reperformance requires the auditor to carry out the procedure themselves to confirm correct operation.$EXPL$
WHERE id = 15720;

-- ============================================================
-- SOC TESTING CONTROLS (1 questions)
-- ============================================================

-- ID 3863: SOC Testing Controls
UPDATE questions SET
  explanation = $EXPL$The correct answer is when testing automated controls with specific, replicable procedures. Per AICPA AT-C Section 320.A30 and SSAE No. 18, reperformance is most useful for controls involving specific procedures that can be independently replicated, such as automated calculations, system-enforced validations, or reconciliation processes. The auditor re-executes the procedure to verify expected results, providing the highest level of evidence. Although management reviews involving professional judgment might also warrant testing, they are better evaluated through inquiry and inspection rather than reperformance because subjective judgments cannot be independently replicated.$EXPL$
WHERE id = 3863;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (6 questions)
-- ============================================================

-- ID 13722: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$The correct answer is a business logic flaw. Per OWASP Testing Guide v4 Section 4.10 (Business Logic Testing), business logic flaws arise when legitimate application functionality is used in unintended ways that violate business rules. Accepting negative payment values is syntactically valid input but violates the business rule that payments must be positive. These flaws evade automated scanners because they are semantically rather than technically invalid. Unlike SQL injection, which involves inserting database commands into input fields, a negative number processed through normal application logic represents a business rule violation rather than a technical exploit.$EXPL$
WHERE id = 13722;

-- ID 13726: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$The correct answer is reconnaissance. Per the Lockheed Martin Cyber Kill Chain framework (referenced in NIST SP 800-115 and AICPA SOC 2 threat monitoring guidance), reconnaissance is the first phase where attackers gather information about the target including network topology, open services, and personnel details through DNS queries, port scanning, and social media harvesting. No exploitation has been attempted at this stage. Unlike the exploitation phase, which involves actively compromising a vulnerability after payload delivery, reconnaissance is purely an information-gathering activity that precedes any weaponization or delivery attempt.$EXPL$
WHERE id = 13726;

-- ID 13731: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$The correct answer is database-level row locking. Per OWASP Testing Guide v4 Section 4.11.5 (Race Conditions) and CWE-367 (TOCTOU), race conditions occur when concurrent operations access shared resources without proper synchronization. Database-level row locking serializes access to the balance record, ensuring one transaction completes its read-check-deduct cycle before the next can read the balance. This eliminates the time-of-check-to-time-of-use vulnerability at its root. Although client-side JavaScript validation might appear to add a safeguard, it is easily bypassed using direct HTTP requests and provides no server-side protection against concurrent race conditions.$EXPL$
WHERE id = 13731;

-- ID 13732: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$The correct answer is A02:2021 — Cryptographic Failures. Per NIST SP 800-175B (Guideline for Using Cryptographic Standards) and the OWASP Top 10, A02 covers weaknesses where sensitive data is exposed due to weak or missing cryptographic protections. MD5 is a deprecated hash algorithm vulnerable to collision attacks and rainbow tables, and the absence of salting further weakens protection against precomputed lookup attacks. Although broken access control (A01) is the top-ranked risk, it addresses permission failures allowing unauthorized actions rather than the weakness of the cryptographic method chosen to protect stored sensitive data.$EXPL$
WHERE id = 13732;

-- ID 13736: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$The correct answer is A06:2021 — Vulnerable and Outdated Components. Per NIST SP 800-53 Rev. 5 SI-2 (Flaw Remediation) and the OWASP Top 10, A06 addresses risks from using libraries, frameworks, or other software components with known vulnerabilities. Organizations that do not track component versions or monitor published CVEs expose themselves to exploitation of known flaws in their software supply chain. Although injection (A03) is a common web vulnerability, it involves sending malicious input to an interpreter — using an outdated third-party library with published CVEs is a component management and supply chain risk, not an injection flaw.$EXPL$
WHERE id = 13736;

-- ID 13738: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$The correct answer is unvalidated redirects and forwards. Per OWASP Testing Guide v4 Section 4.7.4 (Client-Side URL Redirect), unvalidated redirects occur when applications redirect users to attacker-controlled URLs without proper validation. The legitimate domain in the original URL lends credibility to the phishing attempt because users trust the initial login page before being silently redirected. Unlike cross-site scripting (XSS), which involves injecting executable scripts into web pages viewed by other users, unvalidated redirects exploit the application''s routing logic to send authenticated users to malicious external sites.$EXPL$
WHERE id = 13738;

COMMIT;
