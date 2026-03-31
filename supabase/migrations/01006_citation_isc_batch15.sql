-- Migration: Citation backfill — ISC batch 15 (50 questions)
-- Date: 2026-03-31
-- Purpose: Add standard citations to 50 explanations for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, IT Audit Frameworks, Privacy Requirements and Data Protection, SOC Testing Controls, Security and Control Frameworks, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (10 questions)
-- ============================================================

-- ID 12626: Change Management
UPDATE questions SET
  explanation = $EXPL$Under ITIL''s RICE framework (ITIL 4 Service Management), an incident is defined as an unplanned interruption to or quality degradation of an IT service. Slow payroll processing during month-end constitutes degraded service performance requiring investigation and restoration. While a change request might result from the root cause analysis, the initial ticket classification for reported performance degradation is an incident, not a change.$EXPL$
WHERE id = 12626;

-- ID 12628: Change Management
UPDATE questions SET
  explanation = $EXPL$Under ITIL change management controls and the AICPA Trust Services Criteria (CC8.1), segregation of duties requires that the person who develops a change must not be the same person who deploys it to production. Even though the DBA obtained proper documentation and CAB approval, performing both development and deployment violates this fundamental ITGC control. However, having CAB approval alone is not sufficient — segregation of duties throughout the change lifecycle is a separate, mandatory requirement.$EXPL$
WHERE id = 12628;

-- ID 13535: Change Management
UPDATE questions SET
  explanation = $EXPL$Under the ITIL RICE framework (Request, Incident, Change, Event), Ticket A is a service request because granting access using an existing role template is a routine, pre-approved provisioning action that does not modify IT infrastructure. Ticket B is a change because code modifications to an application require formal change management including impact assessment and CAB review per AICPA Trust Services Criteria CC8.1. While both involve the IT service desk, only changes that alter system functionality require the full change management process.$EXPL$
WHERE id = 13535;

-- ID 13537: Change Management
UPDATE questions SET
  explanation = $EXPL$Under ITIL change management and AICPA Trust Services Criteria CC8.1, the change authorization decision framework requires that changes be tested in a non-production environment before deployment to production. Bypassing the staging environment means changes reach production without validation in a controlled test environment, violating a fundamental SDLC and ITGC control. Although documentation and CAB approval deficiencies may also exist, the primary control gap is the absence of environment separation and pre-production testing.$EXPL$
WHERE id = 13537;

-- ID 13542: Change Management
UPDATE questions SET
  explanation = $EXPL$Under ITIL change management (ITIL 4 Change Enablement), the close step requires a formal post-implementation review (PIR) that evaluates whether the change achieved its objectives over a defined monitoring period. Closing the ticket immediately after deployment without observing real-world system behavior bypasses this critical control. While a rollback plan addresses failed changes, the PIR is a standard closure requirement that would have detected the latency issue during the monitoring window.$EXPL$
WHERE id = 13542;

-- ID 13543: Change Management
UPDATE questions SET
  explanation = $EXPL$Under ITIL change management and SDLC deployment practices (AICPA Trust Services Criteria CC8.1), parallel testing runs both old and new systems simultaneously to compare outputs and verify accuracy before decommissioning the legacy system. Pilot testing deploys to a limited group first to validate functionality before full rollout. Although both are valid deployment strategies, they differ in risk profile — parallel testing is more resource-intensive but provides comprehensive output verification, whereas pilot testing limits exposure but does not compare against the legacy system.$EXPL$
WHERE id = 13543;

-- ID 13546: Change Management
UPDATE questions SET
  explanation = $EXPL$Under ITIL change management (ITIL 4 Change Enablement), change collision analysis reviews the forward schedule of changes to identify overlapping, interdependent, or conflicting changes planned for the same timeframe. The change manager must assess whether Team B''s deployment could be affected by Team A''s OS upgrade and whether Team C''s storage migration conflicts with both prior changes. Unlike emergency change triage, which prioritizes unplanned urgent changes, collision analysis is a proactive planning control for the normal change schedule.$EXPL$
WHERE id = 13546;

-- ID 13548: Change Management
UPDATE questions SET
  explanation = $EXPL$Under SDLC controls and AICPA Trust Services Criteria CC8.1, the requirements phase mandates that all business and technical requirements be formally documented in a requirements specification and approved by stakeholders. Verbal requirements that are not captured in the signed-off specification create scope gaps that propagate through design, development, and testing. While the UAT process functioned correctly by identifying the missing functionality, the root cause failure occurred upstream in requirements gathering, not in the testing phase.$EXPL$
WHERE id = 13548;

-- ID 13549: Change Management
UPDATE questions SET
  explanation = $EXPL$Under ITIL change management (ITIL 4 Change Enablement), change risk categorization is based on potential impact to business operations and data integrity. A cosmetic email signature change warrants low-risk classification with minimal review, while a database schema modification to a general ledger application directly affects financial data storage and requires high-risk classification with full CAB review and extensive testing. Unlike categorization by request source or user count, risk level is determined by the potential impact on system functionality and data integrity.$EXPL$
WHERE id = 13549;

-- ID 13551: Change Management
UPDATE questions SET
  explanation = $EXPL$Under SDLC deployment controls and AICPA Trust Services Criteria CC8.1, smoke testing (also called build verification testing) is a set of basic functional checks performed immediately after deployment to verify that the most critical application functions work correctly. It confirms the system is stable enough for release to users without exhaustively testing every feature. Unlike regression testing, which comprehensively checks that existing functionality has not been broken, smoke testing is a rapid post-deployment validation focused only on core functionality.$EXPL$
WHERE id = 13551;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (2 questions)
-- ============================================================

-- ID 13447: Data Management and Lifecycle
UPDATE questions SET
  explanation = $EXPL$Under the Federal Rules of Civil Procedure Rule 37(e) and AICPA data governance guidance, destroying data subject to a litigation hold constitutes spoliation of evidence. Courts may impose sanctions including adverse inference instructions, monetary penalties, or default judgment in severe cases. Once a litigation hold notice is received, the organization must suspend all routine deletion schedules for relevant records. Unlike tax penalties, which relate to IRS filing requirements, spoliation sanctions address the obstruction of the judicial process through evidence destruction.$EXPL$
WHERE id = 13447;

-- ID 13458: Data Management and Lifecycle
UPDATE questions SET
  explanation = $EXPL$Under HIPAA (45 CFR Section 164.530(j)), covered entities must retain documentation for six years from the date of creation or the date when it was last in effect, whichever is later. With a last effective date of 2019, the earliest permissible destruction date is 2025. Destroying these records before that date would violate the retention requirement. While the absence of active case references might suggest the records are no longer needed, regulatory retention periods override operational relevance considerations.$EXPL$
WHERE id = 13458;

-- ============================================================
-- IT AUDIT FRAMEWORKS (5 questions)
-- ============================================================

-- ID 12941: IT Audit Frameworks
UPDATE questions SET
  explanation = $EXPL$Under NIST SP 800-30 quantitative risk analysis methodology, Single Loss Expectancy (SLE) is calculated as Asset Value multiplied by Exposure Factor: SLE = $600,000 x 0.30 = $180,000. The SLE represents the expected monetary loss from a single occurrence of the risk event. While $420,000 represents the remaining asset value after the loss, the SLE measures the loss itself, not the residual value.$EXPL$
WHERE id = 12941;

-- ID 12946: IT Audit Frameworks
UPDATE questions SET
  explanation = $EXPL$Under NIST SP 800-30 quantitative risk analysis, the exposure factor (EF) represents the proportion of an asset''s value that would be damaged or lost from a single occurrence of a risk event, expressed as a percentage from 0% to 100%. It is used in the SLE formula: SLE = AV x EF. Unlike the Annualized Rate of Occurrence (ARO), which measures frequency of events per year, the exposure factor measures the severity of impact per single event.$EXPL$
WHERE id = 12946;

-- ID 12951: IT Audit Frameworks
UPDATE questions SET
  explanation = $EXPL$Under COBIT 2019 and NIST SP 800-39 risk management frameworks, a risk register is a living document that records identified risks, their assessments, treatment decisions, ownership, and status. It must be reviewed and updated regularly as risks evolve, distinguishing it from a static one-time risk assessment report. While risk registers may incorporate both quantitative and qualitative data, the key characteristic is their ongoing maintenance rather than the type of data they contain.$EXPL$
WHERE id = 12951;

-- ID 12954: IT Audit Frameworks
UPDATE questions SET
  explanation = $EXPL$Under NIST SP 800-30 risk identification methodology, unpatched systems, misconfigured firewalls, and weak password practices are classified as vulnerabilities — weaknesses in information systems that increase the likelihood of successful threat exploitation. In IT risk identification, vulnerabilities are distinct from threats, which are the external or internal actors or events that could exploit these weaknesses. Although risk treatments may be needed, the findings themselves represent existing control weaknesses, not remediation strategies.$EXPL$
WHERE id = 12954;

-- ID 12956: IT Audit Frameworks
UPDATE questions SET
  explanation = $EXPL$Under NIST SP 800-30 and COBIT 2019 risk assessment guidance, quantitative analysis using SLE, ARO, and ALE produces dollar amounts essential for cost-benefit decisions such as justifying a $250,000 investment to the board. Qualitative analysis uses rating scales (high/medium/low) for rapid prioritization when precise financial data is unavailable. While qualitative analysis enables quick ranking of 50 risks, it cannot produce the monetary justification needed for investment decisions, making each approach suited to different analytical objectives.$EXPL$
WHERE id = 12956;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (10 questions)
-- ============================================================

-- ID 13192: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$Under the HIPAA Security Rule (45 CFR Sections 164.308, 164.310, and 164.312, as referenced by AICPA SOC 2 privacy criteria), safeguards are categorized into three types: administrative (policies and management processes), physical (facility and device protections), and technical (technology-based controls). Workforce training is an administrative safeguard, facility badge access is a physical safeguard, and encryption of ePHI transmissions is a technical safeguard. While all three protect ePHI, reversing the classifications — such as treating encryption as administrative — misapplies the regulatory framework.$EXPL$
WHERE id = 13192;

-- ID 13193: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$Per AICPA SOC 2 privacy criteria and CCPA/CPRA (Cal. Civ. Code Section 1798.140), a for-profit business must meet at least one of three thresholds: annual gross revenue exceeding $25 million, buying/selling/sharing personal information of 100,000 or more consumers, or deriving 50% or more of revenue from selling/sharing personal information. GreenLeaf fails all three thresholds ($18M revenue, 45,000 consumers, 15% data revenue). Although GreenLeaf shares data with advertisers, its 15% data revenue is well below the 50% threshold required for applicability.$EXPL$
WHERE id = 13193;

-- ID 13197: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$Under CCPA/CPRA (Cal. Civ. Code Section 1798.135), businesses that sell or share personal information must provide a clear and conspicuous "Do Not Sell or Share My Personal Information" link on their website homepage. Burying the opt-out option within a five-step menu fails the conspicuousness requirement established by the statute. While making the option technically accessible satisfies a minimal interpretation, the law specifically requires the link to be prominently displayed, not merely reachable after extensive navigation.$EXPL$
WHERE id = 13197;

-- ID 13198: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$Per AICPA SOC 2 privacy criteria and HIPAA, the Privacy Rule (45 CFR Part 160 and Subparts A and E of Part 164) governs protected health information in all forms — paper, electronic, and oral. The Security Rule (45 CFR Part 164 Subparts A and C) specifically addresses protection of electronic PHI through administrative, physical, and technical safeguards. While both rules protect patient information, the Security Rule covers only ePHI, whereas the Privacy Rule covers all formats including paper records.$EXPL$
WHERE id = 13198;

-- ID 13200: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$Under Cavoukian''s Privacy by Design framework (referenced in NIST SP 800-188), Principle 2 — "Privacy as the Default Setting" — requires that personal data be automatically protected in any system so no action is required by the individual. NovaTech''s approach of making profiles public and enabling location sharing by default directly violates this principle by requiring users to opt out. Although other principles such as end-to-end security may also be lacking, the most direct violation is the failure to protect user data by default.$EXPL$
WHERE id = 13200;

-- ID 13201: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$Under the HIPAA Security Rule (45 CFR Section 164.308), administrative safeguards include risk assessments, workforce training, access management policies, and security management processes — the management actions, policies, and procedures to manage ePHI security. Biometric scanners are physical safeguards under 45 CFR Section 164.310, while encryption and automatic session timeouts are technical safeguards under 45 CFR Section 164.312. Unlike technical controls that operate through technology, administrative safeguards operate through organizational policies and procedures.$EXPL$
WHERE id = 13201;

-- ID 13202: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$Under CCPA (Cal. Civ. Code Section 1798.150), consumers have a private right of action only for data breaches resulting from a business''s failure to maintain reasonable security, with statutory damages of $100 to $750 per consumer per incident. For other CCPA violations such as ignored deletion requests, enforcement lies exclusively with the California Attorney General and the California Privacy Protection Agency under CPRA. While both incidents are violations, the private right of action is limited to breach-related claims, not all CCPA violations.$EXPL$
WHERE id = 13202;

-- ID 13205: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$Under HIPAA''s tiered penalty structure (42 USC Section 1320d-5), Tier 1 applies when the covered entity did not know and, by exercising reasonable diligence, would not have known of the violation. Tier 1 penalties range from $100 to $50,000 per violation with a $25,000 annual cap per identical provision. Although lack of knowledge reduces the penalty, it does not eliminate liability — unlike Tier 4, which applies to willful neglect not timely corrected and carries penalties up to $1.5 million.$EXPL$
WHERE id = 13205;

-- ID 13208: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$Under HIPAA (45 CFR Section 160.103), PHI encompasses individually identifiable health information in any form — paper, electronic, or oral. The Privacy Rule''s minimum necessary standard (45 CFR Section 164.502(b)) requires covered entities to make reasonable efforts to limit PHI disclosures to the minimum necessary for the intended purpose. Discussing a patient''s diagnosis in a public elevator where unauthorized individuals can overhear violates this standard. While some assume HIPAA covers only written and electronic records, oral disclosures are explicitly included.$EXPL$
WHERE id = 13208;

-- ID 13210: Privacy Requirements and Data Protection
UPDATE questions SET
  explanation = $EXPL$Under the Fair Information Practice Principles (FIPPs, as incorporated in NIST SP 800-122), the use limitation principle requires that data be used only for the purposes specified at the time of collection. HealthTrack collected data for fitness tracking but repurposed it for insurance underwriting without updating its notice or obtaining consent, directly violating use limitation. While the collection limitation principle addresses how much data is gathered, it does not govern how collected data is subsequently used — that is the domain of use limitation.$EXPL$
WHERE id = 13210;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (12 questions)
-- ============================================================

-- ID 3585: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under CIS Controls v8 (aligned with NIST CSF), Implementation Group 2 (IG2) is designed for enterprises with dedicated IT staff managing infrastructure and handling sensitive data subject to regulatory requirements. IG2 builds on IG1''s essential cyber hygiene by adding controls for configuration management and data protection. Unlike IG1, which targets organizations with minimal IT resources and no dedicated security staff, IG2 addresses moderate-complexity enterprises that need enhanced protections beyond basic hygiene.$EXPL$
WHERE id = 3585;

-- ID 13281: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under NIST SP 800-30 quantitative risk analysis, ALE equals SLE multiplied by ARO. Current ALE = $400,000 x 0.25 = $100,000. Post-control ALE = $400,000 x 0.05 = $20,000. The ALE reduction of $80,000 is less than the $150,000 annual cost, so the control is not financially justified. While the solution does reduce risk, the NIST cost-benefit framework requires that the cost of the control not exceed the expected loss reduction it provides.$EXPL$
WHERE id = 13281;

-- ID 13283: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under AICPA Trust Services Criteria and COBIT application control classifications, a check digit is an input control that uses a mathematical algorithm to verify the accuracy of data entry, preventing transposition and transcription errors at the point of entry. It operates during the input stage of transaction processing. Unlike run-to-run totals, which are processing controls that compare accumulated totals between processing stages, check digits validate individual data elements before they enter the system.$EXPL$
WHERE id = 13283;

-- ID 13285: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under AICPA Trust Services Criteria CC5.1 and COBIT ITGC frameworks, application controls depend on the integrity of underlying IT general controls. If change management ITGCs are deficient — allowing developers to promote code directly to production — unauthorized modifications could have been made to application logic. The auditor cannot rely on the application control even if current output appears correct, because code integrity cannot be assured. Although output testing may appear satisfactory at a point in time, it cannot confirm the application logic has not been tampered with between testing periods.$EXPL$
WHERE id = 13285;

-- ID 13286: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under NIST SP 800-12 and ISO/IEC 27001 information security frameworks, the CIA triad — Confidentiality, Integrity, and Availability — represents the three fundamental objectives of information security. Confidentiality prevents unauthorized disclosure, integrity prevents unauthorized modification, and availability ensures authorized access when needed. While authentication, authorization, and accounting (AAA) is a valid network security protocol framework, it is not the foundational information security triad referenced in NIST and ISO standards.$EXPL$
WHERE id = 13286;

-- ID 13288: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under NIST SP 800-30 quantitative risk analysis, ALE equals SLE multiplied by ARO. Flood: SLE = $2,000,000 x 0.40 = $800,000; ARO = 0.20; ALE = $160,000. Fire: SLE = $2,000,000 x 0.75 = $1,500,000; ARO = 0.05; ALE = $75,000. The flood produces the higher ALE because its greater frequency outweighs the fire''s greater severity. Although fire has a higher exposure factor (75% vs 40%), the low annual frequency produces a lower annualized loss expectancy.$EXPL$
WHERE id = 13288;

-- ID 13289: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under AICPA Trust Services Criteria and COBIT application control classifications, hash totals compared before and after processing are processing controls that verify data completeness and accuracy during the processing stage. They ensure no records were lost, added, or altered during batch processing. Unlike input controls, which validate data at the point of entry using techniques such as field validation and check digits, processing controls operate between input and output to maintain data integrity throughout the processing cycle.$EXPL$
WHERE id = 13289;

-- ID 13290: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under AICPA Trust Services Criteria CC5.1 and COBIT control classification frameworks, corrective controls operate after detection to fix issues and restore normal operations. Backup restoration and system re-imaging are corrective actions that remediate the effects of the ransomware infection. Unlike preventive controls, which stop errors or fraud from occurring before the event (such as access restrictions and segregation of duties), corrective controls address problems that have already been detected.$EXPL$
WHERE id = 13290;

-- ID 13292: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under AICPA Trust Services Criteria CC5.1 and COBIT ITGC frameworks, access control ITGCs form the foundation for all application controls in a system. When terminated employees retain active accounts for 45 days, any automated control — including three-way matches and depreciation calculations — could have been compromised through unauthorized access to program logic or transaction processing. While batch processes may appear to operate independently, they still depend on program code integrity that cannot be assured when access controls are deficient.$EXPL$
WHERE id = 13292;

-- ID 13296: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under AICPA Trust Services Criteria and COBIT application control classifications, output controls ensure that the results of data processing are accurate, complete, and distributed only to authorized recipients. Examples include report reconciliation, distribution list verification, and output review. Unlike input controls, which validate data at the point of entry, and processing controls, which verify data integrity during computation, output controls govern the accuracy and proper distribution of completed results.$EXPL$
WHERE id = 13296;

-- ID 13300: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under AICPA Trust Services Criteria CC5.1 and COBIT control classification frameworks, bank reconciliations are detective controls — they identify errors, irregularities, or unauthorized transactions that have already occurred by comparing two independent records. The reconciliation did not prevent the unauthorized wire transfers but detected them after the fact. Unlike preventive controls, which stop problems before they occur (such as requiring dual authorization for wire transfers), detective controls identify issues that have already happened.$EXPL$
WHERE id = 13300;

-- ID 13302: Security and Control Frameworks
UPDATE questions SET
  explanation = $EXPL$Under NIST SP 800-30 qualitative risk analysis, composite risk scores are calculated by multiplying threat likelihood, vulnerability exploitability, and business impact ratings. Phishing risk = 5 x 4 x 3 = 60. Server theft risk = 2 x 5 x 5 = 50. The phishing attack scores higher despite lower individual vulnerability and impact ratings because the high threat likelihood drives the composite score. Although server theft has higher individual ratings for vulnerability and impact, the low threat likelihood significantly reduces its overall risk score.$EXPL$
WHERE id = 13302;

-- ============================================================
-- SOC TESTING CONTROLS (1 questions)
-- ============================================================

-- ID 1211: SOC Testing Controls
UPDATE questions SET
  explanation = $EXPL$Under SSAE No. 18 (AT-C Section 320.39), the practitioner must consider factors that increase control risk when determining sample sizes for SOC 2 Type II testing. Prior period exceptions are a key risk factor requiring larger samples because the practitioner needs additional evidence that the control has been remediated and now operates effectively. Unlike automated controls with effective ITGCs, which typically require smaller samples due to consistent execution, controls with prior exceptions demand expanded testing to validate remediation.$EXPL$
WHERE id = 1211;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (10 questions)
-- ============================================================

-- ID 12878: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$Per NIST SP 800-53 AC-3 and the OWASP Top 10 (2021), A01 Broken Access Control is the number one web application security risk. It occurs when the application fails to enforce restrictions on what authenticated users are allowed to do, enabling unauthorized access to administrative functions through URL parameter manipulation. While SQL injection falls under A03 Injection and security misconfiguration under A05, the ability for a standard user to access admin functions by modifying URLs is a textbook access control failure.$EXPL$
WHERE id = 12878;

-- ID 12881: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$Per NIST SP 800-53 SI-10 and the OWASP Top 10 (2021), A10 Server-Side Request Forgery (SSRF) occurs when an application fetches a remote resource using a user-supplied URL without proper validation. Implementing an allowlist of permitted external domains prevents the application from making requests to internal services like the cloud metadata endpoint. While restricting S3 bucket permissions provides defense-in-depth, the root cause is the unrestricted URL fetch in the application layer, not the storage access configuration.$EXPL$
WHERE id = 12881;

-- ID 12886: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$Under Microsoft''s STRIDE threat model (referenced in NIST SP 800-154), threats are categorized as Spoofing, Tampering, Repudiation, Information disclosure, Denial of service, and Elevation of privilege. Overwriting another client''s file by exploiting predictable file names constitutes Tampering — unauthorized modification of data that violates data integrity. Although information disclosure involves unauthorized reading of data, the primary impact in this scenario is data modification through file overwriting, not unauthorized access to read file contents.$EXPL$
WHERE id = 12886;

-- ID 12888: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$Per NIST SP 800-53 CM-6 and the OWASP Top 10 (2021), A05 Security Misconfiguration encompasses insecure default settings, incomplete configurations, open cloud storage, unnecessary features, and verbose error messages. Public S3 buckets, default administrative credentials, and exposed debug endpoints are all textbook misconfigurations addressed by this category. While broken access control (A01) involves logic flaws in authorization enforcement, the root cause here is the failure to properly configure security defaults across the cloud environment.$EXPL$
WHERE id = 12888;

-- ID 12889: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$Per NIST SP 800-53 AU-6 and the OWASP Top 10 (2021), A09 Security Logging and Monitoring Failures identifies insufficient logging, ineffective monitoring, and missing alerting that delays breach detection and impedes forensic investigation. The 30-day log retention, lack of centralized log management, and missing failed login alerts are directly addressed by this category. While insecure design (A04) involves fundamental architectural flaws, the deficiencies described are operational logging and monitoring gaps, not design-level security failures.$EXPL$
WHERE id = 12889;

-- ID 12892: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$Per NIST SP 800-53 IA-5 and the OWASP Top 10 (2021), A07 Identification and Authentication Failures encompasses permitting automated attacks like credential stuffing, accepting weak passwords, and lacking multi-factor authentication. The combination of unlimited login attempts, breach-database passwords, and no MFA enables automated credential attacks against client accounts. While security misconfiguration (A05) involves insecure defaults, the specific weakness here is in the authentication mechanism design and configuration, not general system settings.$EXPL$
WHERE id = 12892;

-- ID 12897: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$Per NIST SP 800-53 SA-8 and the OWASP Top 10 (2021), A04 Insecure Design identifies missing or ineffective security controls due to fundamental architectural flaws. Unlike implementation bugs such as injection or misconfiguration, insecure design means the required controls — in this case role-based access control — were never planned or designed into the system. While broken access control (A01) addresses failures in enforcing authorization at implementation, the complete absence of authorization architecture is a design-level deficiency.$EXPL$
WHERE id = 12897;

-- ID 12899: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$Per NIST SP 800-53 AC-3 and the OWASP API Security Top 10 (2023), API3 Broken Object Property Level Authorization occurs when an API returns more data fields than the consumer needs — including sensitive data like SSNs and bank account details — violating the principle of least privilege at the data level. The API should implement field-level filtering to return only the requested attributes. Although the symptom is excessive data exposure, the OWASP API classification maps this to a property-level authorization failure rather than a general data leak category.$EXPL$
WHERE id = 12899;

-- ID 12903: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$Per NIST SP 800-53 SI-7 and the OWASP Top 10 (2021), A08 Software and Data Integrity Failures addresses scenarios where code and infrastructure do not protect against integrity violations, such as applications relying on plugins, libraries, or updates from untrusted sources without verification. Auto-pulling third-party updates without verifying digital signatures or checksums is a specific example cited by OWASP under this category. Unlike cryptographic failures (A02), which involve weak encryption of data at rest or in transit, A08 focuses on verifying the integrity of software components in the supply chain.$EXPL$
WHERE id = 12903;

-- ID 13721: Threats, Attacks, and Vulnerabilities
UPDATE questions SET
  explanation = $EXPL$Per NIST SP 800-53 SI-4 and the MITRE ATT&CK framework, Tactic TA0008 Lateral Movement defines techniques that attackers use to move through an environment after gaining initial access, pivoting from one system to another using stolen credentials or exploits. The scenario describes classic lateral movement from a marketing workstation to finance and HR systems using stolen service account credentials. Unlike initial access (TA0001), which covers gaining the first foothold, lateral movement occurs after the attacker is already inside the network and is actively expanding their reach.$EXPL$
WHERE id = 13721;

COMMIT;
