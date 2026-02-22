-- Migration: Difficulty rebalancing — ISC batch 2 (18 questions)
-- Date: 2026-02-22
-- Purpose: Rewrite 18 easy questions to medium difficulty for ISC section
-- Affected topics: Data Management and Lifecycle, ERP and Accounting Information Systems, IT Audit Frameworks, IT Infrastructure and Architecture, Incident Response and Recovery, SOC Engagements, SOC Reporting, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management

BEGIN;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (2 questions)
-- ============================================================

-- ID 3517: Data Management and Lifecycle — data owner authority conflict with IT department
UPDATE questions SET
  stem = 'At Lakewood Regional Hospital, the IT director grants three new contractors read access to the electronic health records database to support a system migration project. The data owner — the Chief Medical Officer — was not consulted and objects because the contractors have not completed HIPAA training. Under data governance frameworks, whose authority takes precedence for data access decisions?',
  choices = '["The IT director''s authority takes precedence because the IT department controls all technical infrastructure and can grant permissions based on project requirements", "The data owner (Chief Medical Officer) has ultimate authority over data access and classification decisions, and the IT director should not have granted access without the data owner''s approval — data custodians implement access according to the owner''s directives", "Neither has authority because access decisions must be made exclusively by the compliance department under HIPAA regulations", "The contractors'' project manager has authority because external project teams manage their own access requirements"]'::jsonb,
  explanation = 'Correct (B): Under data governance frameworks such as DAMA-DMBOK, the data owner determines who can access data and at what classification level. The IT department serves as data custodian, implementing and maintaining access controls per the owner''s directives. Granting access without the data owner''s approval violates this governance separation. While choice A reflects common practice in organizations with weak governance, proper data governance assigns access decision authority to the data owner, with IT executing those decisions technically.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3517;

-- ID 3519: Data Management and Lifecycle — lifecycle phase conflict during regulatory hold
UPDATE questions SET
  stem = 'Crestwood Financial''s data retention policy requires deletion of customer transaction records after seven years. The compliance team discovers that 12,000 records scheduled for deletion next month are subject to an active SEC investigation hold. The records are currently in the disposition phase of the data lifecycle. How should Crestwood handle this conflict?',
  choices = '["The legal hold supersedes the standard retention policy — Crestwood must suspend the disposition phase for affected records and preserve them until the SEC investigation concludes, regardless of the seven-year retention schedule", "The seven-year retention policy takes precedence because it was established before the investigation began and represents the organization''s approved governance standard", "Crestwood should delete the records on schedule and notify the SEC that the retention period has expired per company policy", "Crestwood should move the records to the archive phase and redact all personally identifiable information before providing them to the SEC"]'::jsonb,
  explanation = 'Correct (A): In the data lifecycle, the disposition phase involves destroying or deleting data per retention schedules. However, a legal hold from a regulatory investigation suspends normal disposition and requires preservation of affected records regardless of standard retention periods. Under federal records management requirements and SEC regulations, destroying records subject to a legal hold constitutes spoliation of evidence and can result in severe penalties. While choice B follows the standard lifecycle, legal holds are an exception that overrides standard retention schedules during active investigations.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3519;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (1 questions)
-- ============================================================

-- ID 3468: ERP and Accounting Information Systems — revenue recognition document sequencing with exception handling
UPDATE questions SET
  stem = 'Ridgemont Distribution''s ERP system processes a $127,000 sales order for Brightfield Retail. The warehouse ships the goods and the system generates a shipping document, but the accounts receivable clerk notices the ERP did not automatically create the corresponding sales invoice due to a missing customer credit approval. In the revenue cycle, which document should trigger revenue recognition and AR recording, and what does this exception indicate?',
  choices = '["The purchase order initiates revenue recognition because it represents the customer''s legal commitment to buy the goods", "The shipping document initiates revenue recognition because physical delivery of goods represents the transfer of control regardless of invoicing status", "The packing slip initiates revenue recognition because it confirms the exact items included in the shipment to the customer", "The sales invoice initiates revenue recognition and AR recording under normal processing — the missing invoice due to a blocked credit approval indicates a control is working correctly by preventing revenue recognition for orders without proper authorization"]'::jsonb,
  explanation = 'Correct (D): In a standard revenue transaction cycle, the sales invoice triggers revenue recognition and accounts receivable recording because it represents the formal billing event after shipment and credit verification are complete. The ERP''s failure to auto-generate the invoice due to a missing credit approval demonstrates that the system''s credit control is functioning as designed — preventing premature revenue recognition for unapproved orders. While choice B suggests shipping alone triggers recognition, ASC 606 requires satisfaction of all performance obligations and the existence of a valid contract, which includes credit approval in most ERP configurations.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3468;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (2 questions)
-- ============================================================

-- ID 3693: Incident Response and Recovery — classification conflict between data breach and accidental disclosure
UPDATE questions SET
  stem = 'Hargrove Financial''s incident response team receives two reports simultaneously: an employee accidentally emailed a spreadsheet containing 450 customer Social Security numbers to an external vendor, and the same vendor confirms they deleted the email without opening the attachment. The team must classify the incident under the company''s breach notification framework. How should this incident be classified given the vendor''s confirmation?',
  choices = '["No classification is needed because the vendor deleted the email, so no unauthorized access to the data actually occurred", "A data breach requiring notification analysis, because the personally identifiable information left the organization''s control regardless of whether the vendor opened the attachment — the unauthorized transmission itself constitutes a reportable event under most state breach notification laws", "A minor policy violation requiring only an internal HR reprimand of the employee who sent the email in error", "A near-miss event that should be logged for awareness training but requires no formal incident response procedures"]'::jsonb,
  explanation = 'Correct (B): Under most state breach notification laws and federal guidelines, a data breach occurs when personally identifiable information is transmitted to an unauthorized recipient, regardless of whether the data was actually viewed. The vendor''s deletion mitigates harm but does not retroactively prevent the breach from occurring. Organizations must still perform a notification risk assessment per applicable regulations. While choice A relies on the vendor''s attestation, breach notification statutes generally define the trigger as unauthorized acquisition or access, and the uncontrolled transmission meets this threshold.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3693;

-- ID 3694: Incident Response and Recovery — severity classification with conflicting indicators
UPDATE questions SET
  stem = 'Meridian Insurance''s SOC detects suspicious outbound traffic from a server in the claims processing environment at 2:00 AM. The traffic volume is low (200 KB), but the destination IP matches a known command-and-control server on a threat intelligence feed. The server handles 80,000 active customer records. Under the organization''s incident severity framework, how should this event be classified?',
  choices = '["Severity 1 (critical), because the confirmed command-and-control communication indicates an active compromise of a system containing sensitive customer data — the low traffic volume does not reduce severity because even small C2 beacons signal attacker presence and potential for escalation", "Severity 4 (informational), because the 200 KB data transfer is too small to constitute meaningful data exfiltration from the environment", "Severity 3 (low), because the traffic occurred outside business hours when no employees were actively using the claims system", "Severity 2 (medium), because the threat intelligence feed match could be a false positive that should be investigated during normal business hours"]'::jsonb,
  explanation = 'Correct (A): Command-and-control (C2) communication with a known malicious IP from a server containing 80,000 customer records warrants Severity 1 (critical) classification under incident response frameworks. C2 beacons are typically low-volume by design to avoid detection, so the small data transfer does not indicate low impact — it is characteristic of an active compromise in its early stages. Per NIST SP 800-61 (Computer Security Incident Handling Guide), incidents involving confirmed indicators of compromise on systems with sensitive data require the highest priority response. While choice B focuses on data volume, C2 traffic volume is irrelevant to severity — the confirmed malicious communication is the critical factor.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3694;

-- ============================================================
-- IT AUDIT FRAMEWORKS (2 questions)
-- ============================================================

-- ID 3845: IT Audit Frameworks — control objective evaluation with partial evidence
UPDATE questions SET
  stem = 'During an IT audit of Grandview Logistics, the IS auditor evaluates the control objective "Access to production systems is restricted to authorized personnel." The auditor finds that role-based access controls are configured correctly, but the quarterly access review — a detective control supporting the same objective — has not been performed for the past two quarters. How does this gap affect the auditor''s evaluation?',
  choices = '["The control objective is fully met because the preventive control (RBAC) alone satisfies the access restriction requirement without detective controls", "The auditor cannot evaluate the control objective until the organization completes the access reviews and provides retroactive coverage for the gap period", "The control objective is partially met — while the preventive control limits initial access, the missing detective control means unauthorized access changes during the two quarters may have gone undetected, weakening the overall control environment supporting the objective", "The gap has no impact because detective controls are optional supplements that do not affect control objective achievement in IT audits"]'::jsonb,
  explanation = 'Correct (C): Evaluating a control objective requires assessing whether all controls designed to achieve it are operating effectively in combination. A preventive control (RBAC) limits initial access, but a detective control (quarterly access review) identifies unauthorized changes, role accumulation, or terminated employees retaining access over time. Per COBIT 2019, control objectives are achieved through complementary preventive and detective controls. While choice A suggests one control is sufficient, the absence of the detective review for two quarters means access drift could have occurred undetected, partially undermining the objective.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3845;

-- ID 3847: IT Audit Frameworks — ITIL 4 service value chain activity misidentification
UPDATE questions SET
  stem = 'Oakfield Technology Services is mapping its IT processes to ITIL 4''s service value chain. The IT director presents the mapping to a consultant and includes "Incident Resolution" as one of the six value chain activities. The consultant identifies this as incorrect. Which of the following is NOT one of ITIL 4''s six service value chain activities?',
  choices = '["Plan, which establishes a shared understanding of vision, current status, and improvement direction across all four dimensions of service management", "Engage, which provides understanding of stakeholder needs, transparency, and continual engagement with all internal and external stakeholders", "Incident Resolution, which is an ITIL 4 management practice (incident management) rather than a service value chain activity — the six activities are Plan, Improve, Engage, Design and Transition, Obtain/Build, and Deliver and Support", "Improve, which ensures continual improvement of products, services, and practices across all value chain activities and the four dimensions"]'::jsonb,
  explanation = 'Correct (C): ITIL 4''s service value chain consists of six interconnected activities: Plan, Improve, Engage, Design and Transition, Obtain/Build, and Deliver and Support. Incident Resolution is not a value chain activity — it falls under the incident management practice, which is one of ITIL 4''s 34 management practices that operate across the value chain. While choices A, B, and D describe legitimate value chain activities, the distinction between value chain activities (what the organization does to create value) and practices (how it does it) is fundamental to the ITIL 4 framework.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3847;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (1 questions)
-- ============================================================

-- ID 3429: IT Infrastructure and Architecture — WAN technology selection with regulatory constraints
UPDATE questions SET
  stem = 'Hawthorne & Associates CPA firm connects its two offices 50 miles apart and transmits client financial data including tax returns containing Social Security numbers. The IT director evaluates three options: a site-to-site VPN over public internet ($800/month), a dedicated MPLS circuit ($3,500/month), and an unencrypted point-to-point leased line ($2,200/month). Given the firm''s regulatory obligations, which option is most appropriate?',
  choices = '["The unencrypted leased line, because dedicated circuits do not traverse the public internet and therefore require no encryption under any regulatory framework", "The public internet without a VPN, because modern HTTPS encryption on individual applications provides sufficient protection for transmitted client data", "The site-to-site VPN over public internet, because it provides the lowest cost while still offering encryption — though this option introduces latency variability and availability risks the firm must accept", "The dedicated MPLS circuit, because it provides reliable private connectivity with consistent performance and can be combined with encryption to meet the firm''s regulatory obligations for protecting PII in transit"]'::jsonb,
  explanation = 'Correct (D): For a CPA firm transmitting client PII including Social Security numbers, the network must provide both reliability and security. A dedicated MPLS circuit offers private, reliable connectivity with consistent latency and SLA-backed uptime, suitable for professional services. Combined with encryption, it meets IRS Publication 4557 and state privacy law requirements for protecting taxpayer data in transit. While choice C (VPN) provides encryption at lower cost, VPN-over-internet introduces availability and latency variability that may impact the firm''s ability to serve clients during peak tax season.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3429;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (2 questions)
-- ============================================================

-- ID 3599: Security and Control Frameworks — COSO monitoring with incomplete metrics
UPDATE questions SET
  stem = 'Waverly Insurance''s internal audit team reviews the COSO Monitoring Activities component and finds that the security operations center tracks mean-time-to-detect (MTTD) but does not track remediation completion rates or recurring control failures. The CISO considers the existing metrics sufficient. Under COSO, why is this monitoring approach incomplete?',
  choices = '["The Monitoring Activities component requires tracking both the detection of deficiencies and the timely remediation of identified issues to evaluate whether controls are present and functioning over time — MTTD alone measures detection speed without confirming that identified problems are actually resolved", "MTTD is not a recognized security metric under any framework, so the entire monitoring program must be rebuilt from scratch", "The COSO framework does not address IT security controls because it applies only to financial reporting controls within the accounting department", "Monitoring Activities only requires an annual review by external auditors, not ongoing internal metric tracking by security operations teams"]'::jsonb,
  explanation = 'Correct (A): Under COSO''s Monitoring Activities component (Principle 16), the organization must select, develop, and perform ongoing evaluations to ascertain whether controls are present and functioning. Tracking MTTD measures detection capability but does not confirm that identified deficiencies are remediated or that controls operate effectively over time. Without remediation tracking, the organization cannot close the feedback loop that monitoring requires. While choice D suggests annual external review suffices, COSO emphasizes ongoing and separate evaluations performed by internal functions, not exclusively annual external assessments.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3599;

-- ID 3600: Security and Control Frameworks — applying ISO 27002:2022 control themes in a reorganization
UPDATE questions SET
  stem = 'Thornfield Consulting is reorganizing its information security controls to align with the ISO 27002:2022 structure. The security manager must categorize a new employee background check control and a visitor badge policy. Under ISO 27002:2022''s four control themes, where should each of these controls be classified?',
  choices = '["Both controls belong under Technological controls because they involve identity verification processes managed through IT systems", "Both controls belong under People controls because the background check addresses personnel screening and the visitor badge policy governs physical access by individuals — People controls cover human-related safeguards distinct from Organizational, Physical, and Technological themes", "The background check is a Physical control and the visitor badge is an Organizational control because they involve different operational processes and departments", "Both controls belong under Organizational controls because all governance-related activities default to the Organizational theme in ISO 27002:2022"]'::jsonb,
  explanation = 'Correct (B): ISO 27002:2022 organizes controls into four themes: Organizational, People, Physical, and Technological. People controls address human resource security, including pre-employment screening (background checks), security awareness, and personnel-related access management. A visitor badge policy governs individuals'' physical presence and falls under People controls as it relates to managing human access. While choice C places the visitor badge under Organizational, visitor management directly governs individual behavior and access, aligning with the People theme rather than broader governance activities.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3600;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (2 questions)
-- ============================================================

-- ID 3664: Security Controls and Monitoring — segmentation bypass through a misconfigured shared service
UPDATE questions SET
  stem = 'Bellmark Financial implements network segmentation to isolate its cardholder data environment (CDE) from the general corporate network per PCI DSS requirements. During a penetration test, the security consultant discovers that both network segments share a common print server with unrestricted access to both VLANs. What risk does this shared resource create?',
  choices = '["No additional risk exists because print servers do not process cardholder data and are therefore outside of PCI DSS scope", "The shared print server is acceptable as long as it has current antivirus software installed and receives regular security patch updates", "The segmentation remains fully effective because VLANs provide complete Layer 2 isolation regardless of shared devices between them", "The shared print server creates a network bridge that could allow an attacker to pivot from the corporate network into the CDE, effectively bypassing the segmentation controls and expanding the PCI DSS assessment scope"]'::jsonb,
  explanation = 'Correct (D): Network segmentation reduces the PCI DSS assessment scope by isolating the cardholder data environment. However, a shared device with access to both segments creates a bridge that an attacker could exploit to pivot between networks, negating the segmentation benefit. Per PCI DSS Requirement 1, any system component connected to the CDE is in scope for the assessment. While choice A suggests print servers are automatically out of scope, any device that bridges segments brings the connected network into scope because it provides a potential attack path to cardholder data.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3664;

-- ID 3665: Security Controls and Monitoring — IDS alert fatigue impacting IPS deployment decision
UPDATE questions SET
  stem = 'Pemberton Financial''s network IDS generates an average of 3,200 alerts per day, of which the security team estimates 94% are false positives. The CISO proposes replacing the IDS with an inline IPS to automatically block detected threats. What operational risk should the CISO evaluate before deploying the IPS given the current false positive rate?',
  choices = '["The high false positive rate means the IPS could automatically block approximately 3,008 legitimate connections daily, causing significant business disruption — the IPS''s active blocking capability requires substantially lower false positive rates than a passive IDS to avoid operational impact", "There is no additional risk because an IPS uses entirely different detection algorithms than an IDS and will not produce any false positives", "The IPS should be deployed immediately because automated blocking always improves security posture regardless of false positive rates or operational consequences", "The IPS will automatically reduce false positives because inline devices have better traffic visibility than passive network monitors"]'::jsonb,
  explanation = 'Correct (A): The key functional difference between an IDS (passive monitoring and alerting) and an IPS (inline active blocking) means that false positives have dramatically different consequences. An IDS false positive generates an unnecessary alert; an IPS false positive blocks legitimate traffic. At a 94% false positive rate, an inline IPS would block approximately 3,008 legitimate connections daily, severely disrupting operations. Per NIST SP 800-94, organizations should tune detection rules to reduce false positives before transitioning from passive to inline enforcement. While choice D suggests IPS devices inherently reduce false positives, the detection engine faces the same accuracy challenges regardless of deployment mode.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3665;

-- ============================================================
-- SOC ENGAGEMENTS (1 questions)
-- ============================================================

-- ID 3748: SOC Engagements — SOC 2 criteria selection with processing integrity requirement
UPDATE questions SET
  stem = 'Northwind Payment Processing is scoping its SOC 2 engagement. The company processes 2.4 million credit card transactions daily for 300 merchant clients. Several merchants require assurance that transactions are processed completely, accurately, and in a timely manner. Which trust services criteria must Northwind include to address this requirement, in addition to the mandatory criterion?',
  choices = '["Security and Availability only, because system uptime ensures transactions are processed and security protects the underlying cardholder data", "Security and Confidentiality only, because protecting cardholder data addresses the merchants'' primary concern about transaction data safety", "Security and Processing Integrity, because Security is mandatory in every SOC 2 engagement and Processing Integrity specifically addresses whether system processing is complete, valid, accurate, timely, and authorized — directly meeting the merchants'' assurance requirement", "All five trust services criteria must be included whenever a service organization processes financial transactions for external clients"]'::jsonb,
  explanation = 'Correct (C): Under the AICPA Trust Services Criteria, Security (common criteria) is mandatory in every SOC 2 engagement. Processing Integrity specifically addresses whether system processing is complete, valid, accurate, timely, and authorized — precisely matching the merchants'' requirement for assurance over transaction completeness, accuracy, and timeliness. While choice A includes Availability (uptime), availability addresses whether the system is operational, not whether processing produces correct results. Processing Integrity is the criterion specifically designed for transaction accuracy assurance.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3748;

-- ============================================================
-- SOC REPORTING (2 questions)
-- ============================================================

-- ID 3901: SOC Reporting — control objective ownership dispute in SOC 1 scoping
UPDATE questions SET
  stem = 'Mapleton Payroll Services is preparing for its first SOC 1 engagement. During the scoping meeting, the engagement partner asks who is responsible for establishing the control objectives that will be included in the report. Mapleton''s IT director argues that the service auditor should define the objectives to ensure they meet professional standards. Under SSAE 18, who bears this responsibility?',
  choices = '["The service auditor, because only the auditor possesses the expertise to define control objectives that will satisfy user entities'' external audit requirements", "The user entities'' external auditors, because they are the primary consumers of the SOC 1 report and understand what specific controls they need evaluated", "The service organization''s management, because SSAE 18 assigns management the responsibility for establishing control objectives that are relevant to user entities'' internal control over financial reporting", "A joint committee comprising the service organization and its largest user entities, because control objectives must reflect both parties'' requirements equally"]'::jsonb,
  explanation = 'Correct (C): Under SSAE 18 (AT-C 320), the service organization''s management is responsible for establishing control objectives that are relevant to user entities'' internal control over financial reporting. Management has the best understanding of the services provided and the controls in place. The service auditor evaluates and tests against these objectives but does not define them. While choice A suggests the auditor should set objectives, this would compromise auditor independence — the auditor tests management''s stated objectives rather than self-defined criteria.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3901;

-- ID 3902: SOC Reporting — bridge letter gap in SOC 2 report timing
UPDATE questions SET
  stem = 'Edgewater Analytics is evaluating a cloud storage provider whose SOC 2 Type II report covers January 1 through June 30, 2025. Edgewater''s fiscal year ends December 31, 2025, and the vendor will not issue an updated report until March 2026. The six-month gap between the report period end and Edgewater''s year-end creates what specific concern for Edgewater''s external auditors?',
  choices = '["No concern exists because SOC 2 reports provide perpetual assurance that controls will continue operating effectively after the examination period ends", "The gap is irrelevant because Edgewater''s auditors only need to verify that the vendor possesses a SOC 2 report, not that the report covers a specific time period", "The auditors should immediately require a different vendor with a matching report period because gaps between report periods are never acceptable under auditing standards", "The six-month gap means there is no independent assurance that the vendor''s controls operated effectively during July through December 2025 — Edgewater''s auditors may need to request a bridge letter, perform additional procedures, or obtain management representations to cover the gap period"]'::jsonb,
  explanation = 'Correct (D): SOC 2 Type II reports provide assurance only for the specific examination period. A gap between the report period end and the user entity''s fiscal year-end means no independent assurance exists for the interim period. Per AU-C 402, user auditors must evaluate whether the SOC report''s coverage period is sufficient and may need a bridge letter from the service organization, additional inquiry about changes to controls, or supplemental testing to address the gap. While choice A implies perpetual assurance, control effectiveness can change at any time, making report currency critical.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3902;

-- ============================================================
-- SOC TESTING CONTROLS (1 questions)
-- ============================================================

-- ID 3876: SOC Testing Controls — distinguishing inspection from reperformance in automated control testing
UPDATE questions SET
  stem = 'During a SOC 2 Type II examination of Skyline Cloud Services, the service auditor uses a scanning tool to verify that all production database servers enforce AES-256 encryption at rest. The auditor compares the scan output against the service organization''s encryption policy requirement. Under AT-C 205, which testing procedure does this activity represent, and why?',
  choices = '["Inquiry, because the auditor is asking the scanning tool to report on the current state of the system''s encryption configuration", "Inspection, because the auditor is examining the system''s actual configuration output and comparing it to the documented policy requirement — the scanning tool extracts existing settings for the auditor to evaluate rather than re-executing a control", "Reperformance, because the auditor is independently re-executing the encryption configuration process to verify it was implemented correctly", "Observation, because the auditor is watching the scanning tool perform its automated analysis of the encryption settings in real time"]'::jsonb,
  explanation = 'Correct (B): Under AT-C 205, inspection involves examining records, documents, or system configurations to obtain evidence. Using a scanning tool to extract and examine the current encryption configuration is inspection — the auditor reviews existing settings against policy requirements. Reperformance (choice C) would involve the auditor independently configuring encryption on a test system to verify the process produces the correct result. While choice D (observation) involves watching someone perform a control, the auditor is examining configuration output, not observing personnel performing an activity.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3876;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (2 questions)
-- ============================================================

-- ID 3558: System Availability and Change Management — delayed patching with compensating control consideration
UPDATE questions SET
  stem = 'Ashford Financial Services'' security team identifies a critical vulnerability in its web application server but cannot apply the vendor patch for 10 days because the patch requires a database schema change that must undergo regression testing. Under NIST SP 800-40, what is the most appropriate interim risk mitigation strategy while the patch is pending?',
  choices = '["Accept the risk without any compensating controls because the patch will be applied within the standard 30-day remediation window", "Implement compensating controls such as a virtual patch through the WAF, restrict network access to the vulnerable service, and increase monitoring for exploitation attempts until the permanent patch is deployed", "Immediately apply the patch to production without regression testing because the security risk always outweighs the testing requirement", "Disable the web application server entirely until the patch is fully tested and ready for deployment to eliminate all exposure"]'::jsonb,
  explanation = 'Correct (B): Under NIST SP 800-40 (Guide to Enterprise Patch Management Planning), when a critical patch cannot be immediately applied, organizations should implement compensating controls to reduce exposure during the remediation window. Virtual patching via a WAF, network access restrictions, and enhanced monitoring collectively reduce exploitability without introducing the regression risk of an untested deployment. While choice C addresses the vulnerability directly, deploying an untested schema change risks data corruption or application failure, creating a different operational risk.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3558;

-- ID 3559: System Availability and Change Management — geographic separation with single-region dependency
UPDATE questions SET
  stem = 'Ridgemont Manufacturing operates primary and secondary data centers 200 miles apart for disaster recovery. During an annual DR test, the team discovers that both data centers rely on the same regional power grid and the same internet backbone provider. What residual risk does this shared dependency create despite the geographic separation?',
  choices = '["A regional event affecting the shared power grid or backbone provider could disable both sites simultaneously, negating the geographic separation intended to mitigate single points of failure", "The 200-mile distance is insufficient for any disaster recovery benefit because industry standards require a minimum of 500 miles of separation between sites", "The shared dependencies have no impact because geographic separation alone provides complete disaster recovery protection regardless of infrastructure overlap", "The shared internet provider is acceptable because all major backbone providers use the same underlying physical infrastructure nationwide"]'::jsonb,
  explanation = 'Correct (A): Geographic separation mitigates localized disasters such as fires, floods, or building failures. However, shared infrastructure dependencies — such as a common power grid or internet backbone — create correlated failure risk where a single upstream outage disables both sites simultaneously. Per NIST SP 800-34 (Contingency Planning Guide), organizations must evaluate infrastructure dependencies between sites and ensure diversity of critical utilities and telecommunications. While choice B cites a distance standard, no universal distance requirement exists — the key factor is infrastructure independence, not miles alone.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3559;

COMMIT;
