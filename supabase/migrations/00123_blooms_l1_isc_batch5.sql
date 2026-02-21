-- Migration: Bloom's L1 rebalancing — ISC batch 5 (48 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 48 L2 (Application) questions to L1 (Remember/Understand) depth for ISC section
-- Affected topics: Data Management and Lifecycle, Incident Response and Recovery, SOC Reporting, IT Audit Frameworks

BEGIN;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (3 questions)
-- ============================================================

-- ID 3532: Data Management and Lifecycle — PII sensitivity classification
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Which category of data is generally classified at the highest sensitivity level under data governance policies?',
  choices = '["Personally identifiable information combining financial, health, and identity data", "Publicly available annual report data", "Internal headcount statistics without names or identifiers", "Generic product catalog information"]'::jsonb,
  explanation = 'Correct (A): Data governance frameworks classify information containing multiple types of sensitive PII — such as Social Security numbers, financial account numbers, and health records — at the highest sensitivity level. Each data type is regulated under separate laws (GLBA for financial, HIPAA for health), and the combination amplifies breach risk. (B) is wrong because publicly available data carries no sensitivity classification. (D) is wrong because product catalogs contain no personal or restricted information.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3532;

-- ID 3533: Data Management and Lifecycle — Slowly changing dimension Type 2
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'In data warehousing, which slowly changing dimension type preserves full history by adding a new row for each change?',
  choices = '["Type 1 — overwrites the old value with the new value", "Type 2 — adds a new row with effective date ranges for each change", "Type 0 — retains the original value and never updates", "Type 3 — stores only the current and one previous value"]'::jsonb,
  explanation = 'Correct (B): SCD Type 2 creates a new row each time a dimension attribute changes, using effective start and end dates to track when each value was active. This approach preserves complete history for trend analysis. (A) is wrong because Type 1 overwrites history, leaving no record of prior values. (D) is wrong because Type 3 only stores the current value and one previous value, not a complete history.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3533;

-- ID 3534: Data Management and Lifecycle — Timeliness data quality dimension
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Which data quality dimension measures whether data is available when needed for business decisions?',
  choices = '["Accuracy", "Completeness", "Timeliness", "Validity"]'::jsonb,
  explanation = 'Correct (C): Timeliness measures whether data is current and available when needed for decision-making. Data that arrives after reporting deadlines fails this dimension even if it is accurate and complete. (A) is wrong because accuracy measures whether data values correctly represent the real-world facts they describe. (B) is wrong because completeness measures whether all required data elements are present.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3534;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (19 questions)
-- ============================================================

-- ID 869: Incident Response and Recovery — Severity 1 escalation requirements
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Under incident response frameworks, what escalation is typically required for a Severity 1 (critical) security incident?',
  choices = '["The incident is handled by the help desk without escalation", "The incident is logged for monthly review only", "Only the IT manager is informed via email", "Executive management, legal counsel, and the board are notified along with external specialists"]'::jsonb,
  explanation = 'Correct (D): A Severity 1 incident — the highest severity classification — requires immediate escalation to executive management, legal counsel, and the board of directors. External forensic specialists and outside legal counsel are also typically engaged. (A) is wrong because help desk handling without escalation is appropriate only for low-severity incidents. (C) is wrong because notifying only the IT manager is insufficient for the most critical classification level.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 869;

-- ID 870: Incident Response and Recovery — Tabletop exercise definition
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Which type of incident response exercise tests the plan through discussion without disrupting production systems?',
  choices = '["Full interruption test", "Tabletop exercise", "Red team exercise against production", "Unplanned real-incident deployment"]'::jsonb,
  explanation = 'Correct (B): A tabletop exercise is a discussion-based exercise where team members walk through a simulated incident scenario, discussing roles, decisions, and actions without any impact on production systems. (A) is wrong because a full interruption test involves shutting down production systems to test recovery capabilities. (C) is wrong because red team exercises against production carry operational risk and actively test defenses rather than the IR plan.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 870;

-- ID 3682: Incident Response and Recovery — NIST SP 800-61 four phases
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'What are the four phases of the incident response lifecycle defined by NIST SP 800-61?',
  choices = '["Preparation, Detection and Analysis, Containment/Eradication/Recovery, Post-Incident Activity", "Detection, Containment, Recovery, Preparation", "Analysis, Response, Recovery, Documentation", "Planning, Execution, Review, Closure"]'::jsonb,
  explanation = 'Correct (A): NIST SP 800-61 defines four phases: (1) Preparation — establishing the IR capability; (2) Detection and Analysis — identifying and validating incidents; (3) Containment, Eradication, and Recovery — limiting damage, removing the threat, and restoring systems; (4) Post-Incident Activity — lessons learned and process improvement. (B) is wrong because it lists phases out of order and omits analysis. (D) is wrong because those phase names do not appear in NIST SP 800-61.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3682;

-- ID 3683: Incident Response and Recovery — Preparation phase activities
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under NIST SP 800-61, what is the primary focus of the preparation phase of incident response?',
  choices = '["Analyzing malware samples from prior incidents", "Notifying law enforcement of potential future incidents", "Establishing and training the IR team, deploying detection tools, and creating response playbooks", "Purchasing cyber insurance policies"]'::jsonb,
  explanation = 'Correct (C): Preparation is the foundation of effective incident response. Key activities include forming and training the IR team, deploying detection and monitoring tools, creating response playbooks for common incident types, and conducting exercises. (A) is wrong because malware analysis occurs during the detection and analysis phase, not preparation. (B) is wrong because notifying law enforcement of potential future incidents is not a standard preparation activity.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3683;

-- ID 3684: Incident Response and Recovery — Detection and analysis phase
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Under NIST SP 800-61, which IR phase involves validating alerts, correlating events, and confirming whether an incident has occurred?',
  choices = '["Preparation", "Containment", "Post-Incident Activity", "Detection and Analysis"]'::jsonb,
  explanation = 'Correct (D): Detection and Analysis involves identifying potential incidents through alerts and indicators, gathering and analyzing evidence, and confirming whether an incident has occurred. Activities include reviewing logs, correlating events, and validating alerts. (A) is wrong because preparation focuses on building IR capability before incidents occur. (B) is wrong because containment focuses on limiting damage after an incident is confirmed.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3684;

-- ID 3686: Incident Response and Recovery — Long-term containment definition
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'In incident response, what distinguishes long-term containment from short-term containment?',
  choices = '["Long-term containment involves disconnecting a server from the network", "Long-term containment involves sustainable measures like rebuilding systems on clean images with updated patches", "Long-term containment involves blocking a single IP address on the firewall", "Long-term containment involves disabling a single compromised user account"]'::jsonb,
  explanation = 'Correct (B): Long-term containment involves sustainable measures that allow normal operations to continue while maintaining security, such as rebuilding a compromised system on a clean image with patches and enhanced monitoring. (A) is wrong because disconnecting a server is a short-term containment action that stops operations. (C) is wrong because IP blocking is a quick, temporary measure that an attacker can easily circumvent.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3686;

-- ID 3689: Incident Response and Recovery — Order of volatility and first collection step
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'According to digital forensics best practices, what type of evidence should be collected first from a running system?',
  choices = '["Volatile evidence such as RAM contents, running processes, and network connections", "Hard drive contents", "Employee interviews", "Printed documents near the system"]'::jsonb,
  explanation = 'Correct (A): Volatile evidence — RAM, running processes, and active network connections — exists only while the system is powered on and is lost upon shutdown. The order of volatility dictates collecting the most volatile evidence first. (B) is wrong because hard drive data is non-volatile and persists after shutdown, so it can be captured later. (C) is wrong because interviews do not capture time-sensitive digital evidence from the running system.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3689;

-- ID 3690: Incident Response and Recovery — Forensic image definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'What is a forensic image in digital forensics?',
  choices = '["A standard file backup of active data", "A selective copy of important files", "A bit-for-bit copy of an entire storage device including deleted files and unallocated space", "A screenshot of the system desktop"]'::jsonb,
  explanation = 'Correct (C): A forensic image is a bit-for-bit (sector-by-sector) copy of the entire storage device, capturing everything including deleted files, slack space, and unallocated space. The original drive is write-protected during imaging, and hash values verify the image is an exact copy. (A) is wrong because a standard backup copies only active files and misses deleted data and unallocated space. (B) is wrong because a selective copy omits evidence that may exist in unselected areas of the drive.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3690;

-- ID 3691: Incident Response and Recovery — Chain of custody purpose
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'What is the primary purpose of maintaining a chain of custody in a forensic investigation?',
  choices = '["To track the cost of the investigation", "To list all software installed on the forensic workstation", "To record the suspected attacker''s identity", "To document every person who handled the evidence and what they did, ensuring integrity and admissibility"]'::jsonb,
  explanation = 'Correct (D): Chain of custody documentation tracks the complete lifecycle of evidence: who collected it, when, how it was stored and transported, and what was done with it at each step. This unbroken chain demonstrates that evidence has not been tampered with, which is essential for admissibility in court. (A) is wrong because cost tracking is an administrative function unrelated to evidence integrity. (C) is wrong because the chain of custody documents evidence handling, not attacker identification.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3691;

-- ID 3692: Incident Response and Recovery — Order of volatility sequence
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Which sequence correctly orders digital evidence from most volatile to least volatile?',
  choices = '["Hard drive, RAM, network connections, CPU registers", "Hard drive, network connections, RAM, CPU registers", "CPU registers, RAM, network connections, hard drive", "Network connections, hard drive, RAM, CPU registers"]'::jsonb,
  explanation = 'Correct (C): The order of volatility from most to least volatile is: CPU registers/cache (nanoseconds), RAM (lost at power-off), network connections and process state (can change at any moment), then hard drive data (persists without power). Forensic best practice requires collecting the most volatile evidence first. (A) is wrong because it reverses the correct order. (D) is wrong because it places network connections above CPU registers and RAM.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3692;

-- ID 3694: Incident Response and Recovery — Severity 1 incident classification
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Which type of security event is typically classified as Severity 1 (critical) under incident response frameworks?',
  choices = '["A confirmed attack that threatens the ability to operate or compromises highly sensitive data", "A phishing email blocked by the email filter", "A failed login attempt on a non-critical test server", "A minor informational page defacement"]'::jsonb,
  explanation = 'Correct (A): Severity 1 (critical) incidents are those that threaten the organization''s ability to operate or involve confirmed compromise of highly sensitive data. These require immediate executive-level response and maximum resource allocation. (B) is wrong because a blocked phishing email was successfully prevented and warrants low severity at most. (C) is wrong because a failed login on a non-critical test server has minimal operational impact.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3694;

-- ID 3695: Incident Response and Recovery — Pre-established external relationships
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'Under NIST SP 800-61, why should organizations establish relationships with external parties before incidents occur?',
  choices = '["To reduce marketing costs during a breach", "To ensure law enforcement, forensics firms, and legal counsel are available without delay during a crisis", "To outsource all security monitoring permanently", "To avoid the need for an internal incident response team"]'::jsonb,
  explanation = 'Correct (B): NIST SP 800-61 recommends pre-established relationships with external resources because assembling them during a crisis causes delays. Law enforcement provides threat intelligence, forensics firms provide specialized analysis, and outside legal counsel guides regulatory compliance and breach notification. (A) is wrong because marketing cost reduction is not the purpose of these external relationships. (D) is wrong because external relationships supplement, not replace, the internal IR team.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3695;

-- ID 3696: Incident Response and Recovery — Tabletop exercise purpose
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What is the primary purpose of a tabletop exercise in incident response?',
  choices = '["To measure network throughput under stress conditions", "To test backup restoration speed", "To walk through a simulated scenario in a discussion format, testing plan effectiveness and clarifying roles", "To evaluate employee productivity metrics"]'::jsonb,
  explanation = 'Correct (C): Tabletop exercises are discussion-based simulations where the IR team walks through a realistic incident scenario step by step. The purpose is to test the IR plan, clarify roles and responsibilities, identify communication gaps, and validate decision-making — all without impacting production systems. (A) is wrong because network throughput testing is a technical performance test, not an IR exercise. (B) is wrong because backup restoration speed is tested through technical recovery exercises, not tabletop discussions.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3696;

-- ID 3699: Incident Response and Recovery — Hash verification for forensic images
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'What technique is used to verify that a forensic disk image is an exact copy of the original drive?',
  choices = '["Comparing file sizes of individual files", "Visually inspecting file contents", "Checking file creation timestamps", "Generating and comparing cryptographic hash values such as SHA-256 for both the original and the image"]'::jsonb,
  explanation = 'Correct (D): Cryptographic hash values (MD5, SHA-1, SHA-256) create a unique digital fingerprint of the data. By computing hashes of both the original drive and the forensic image, the investigator proves they are identical — any difference, even a single bit, produces a completely different hash. (A) is wrong because file size comparison does not detect bit-level differences within files. (B) is wrong because visual inspection is impractical for large volumes of data and cannot detect subtle changes.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3699;

-- ID 3700: Incident Response and Recovery — Communication and notification requirements
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'What component of an incident response plan defines who must be informed and when during a data breach?',
  choices = '["Communication and notification requirements", "Technical containment procedures", "Evidence preservation protocols", "System recovery procedures"]'::jsonb,
  explanation = 'Correct (A): Communication and notification requirements define who must be informed (internal stakeholders, regulators, law enforcement, affected individuals), through what channels, and within what timelines during an incident. Clear procedures prevent delays that could increase legal liability. (B) is wrong because technical containment addresses stopping the attack, not stakeholder communication. (C) is wrong because evidence preservation addresses maintaining forensic integrity, not notification timelines.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3700;

-- ID 3704: Incident Response and Recovery — Evidence admissibility requirements
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What practices are most critical to ensure digital evidence is admissible in legal proceedings?',
  choices = '["Using the fastest forensic tools available", "Maintaining chain of custody, using write-blocking devices, and documenting every forensic step", "Analyzing evidence directly on the original device", "Emailing evidence copies to the legal team for review"]'::jsonb,
  explanation = 'Correct (B): For digital evidence to be admissible in court, investigators must demonstrate its authenticity and integrity. This requires write-blocking devices (preventing modification of original evidence), an unbroken chain of custody, and thorough documentation of all forensic procedures. (A) is wrong because tool speed is irrelevant to admissibility — proper procedure matters more than speed. (C) is wrong because analyzing the original device risks altering the evidence and should be avoided.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3704;

-- ID 3706: Incident Response and Recovery — Incident commander role
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'What is the primary role of an incident commander during a security incident?',
  choices = '["Performing all technical forensic analysis personally", "Handling all media inquiries personally", "Coordinating the overall response, making key decisions, and serving as the central communication point", "Writing the post-incident report"]'::jsonb,
  explanation = 'Correct (C): The incident commander leads the response effort by coordinating activities across technical, legal, communications, and management teams. They make key decisions on containment strategies, escalation, and notifications, and serve as the central communication point ensuring unified command. (A) is wrong because the incident commander delegates technical analysis to specialized team members. (D) is wrong because report writing is a post-incident activity, not the commander''s primary role during the response.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3706;

-- ID 3708: Incident Response and Recovery — Escalation matrix purpose
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'What is the purpose of an escalation matrix in an incident response plan?',
  choices = '["To rank employees by seniority within the organization", "To schedule employee vacation rotations", "To determine server rack placement in the data center", "To define criteria for when and to whom incidents should be escalated based on severity and impact"]'::jsonb,
  explanation = 'Correct (D): An escalation matrix specifies the conditions under which an incident must be escalated to higher levels of management, specific roles (CISO, legal counsel, CEO), or external parties. It defines severity thresholds, notification timelines, and responsible parties, ensuring critical incidents receive appropriate attention. (A) is wrong because employee seniority rankings are an HR function unrelated to incident response. (C) is wrong because server rack placement is a data center management concern, not an IR escalation tool.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3708;

-- ID 3710: Incident Response and Recovery — Evidence preservation before containment
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Why should evidence be preserved before containment actions are taken during an incident?',
  choices = '["Containment actions such as rebooting or patching can destroy volatile evidence and alter the system state", "Evidence preservation is only important for insurance claims", "Evidence preservation unnecessarily delays the response", "There is no reason to preserve evidence before containment"]'::jsonb,
  explanation = 'Correct (A): Containment actions — while critical for limiting damage — can destroy volatile evidence (RAM, network connections, running processes) and alter the system state. Capturing evidence first preserves the forensic record needed to understand the full attack scope and support potential legal proceedings. (B) is wrong because evidence preservation serves forensic investigation and legal proceedings, not just insurance. (C) is wrong because evidence preservation is a critical step that enables effective investigation, not an unnecessary delay.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3710;

-- ============================================================
-- SOC REPORTING (22 questions)
-- ============================================================

-- ID 3884: SOC Reporting — Qualified opinion definition
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What does a qualified opinion indicate in a SOC 2 Type II report?',
  choices = '["The system description is not fairly presented in any respect", "Except for specific identified exceptions, the description is fairly presented and controls operated effectively", "The controls are completely ineffective across all criteria", "The engagement was not completed due to scope limitations"]'::jsonb,
  explanation = 'Correct (B): A qualified opinion indicates that except for specific identified matters, the system description is fairly presented and controls are suitably designed and operated effectively. The qualification identifies specific exceptions that are significant but not pervasive enough for an adverse opinion. (A) is wrong because a complete failure of fair presentation would warrant an adverse opinion, not a qualified one. (D) is wrong because inability to complete the engagement would result in a disclaimer of opinion.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3884;

-- ID 3885: SOC Reporting — Adverse opinion conditions
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under AICPA SOC guidance, when is an adverse opinion issued in a SOC report?',
  choices = '["When minor exceptions are noted that do not affect the overall conclusion", "When the service organization requests a more conservative opinion", "When exceptions are so material and pervasive that a qualified opinion would not adequately convey the severity", "When the engagement is the organization''s first SOC examination"]'::jsonb,
  explanation = 'Correct (C): An adverse opinion is issued when deficiencies are so material and pervasive that a qualified opinion is insufficient to communicate the severity. It indicates the system description is not fairly presented, controls are not suitably designed, or controls did not operate effectively in a material and pervasive manner. (A) is wrong because minor exceptions that do not affect the overall conclusion would not warrant any opinion modification. (B) is wrong because the opinion type is determined by audit findings, not by management request.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3885;

-- ID 3886: SOC Reporting — Disclaimer of opinion conditions
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Under AICPA SOC guidance, when is a disclaimer of opinion issued in a SOC report?',
  choices = '["When the auditor finds minor exceptions in control operation", "When the service organization voluntarily withdraws from the engagement", "When the auditor wants a more conservative assessment", "When the auditor cannot obtain sufficient appropriate evidence to form an opinion"]'::jsonb,
  explanation = 'Correct (D): A disclaimer of opinion is issued when the service auditor cannot obtain sufficient appropriate evidence to form an opinion, typically due to scope restrictions imposed by the service organization or unavailability of evidence. (A) is wrong because minor exceptions would result in an unqualified or qualified opinion, not a disclaimer. (B) is wrong because withdrawal from the engagement prevents the report from being issued at all, rather than triggering a disclaimer.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3886;

-- ID 3888: SOC Reporting — Management assertion content
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What does management''s assertion in a SOC report address?',
  choices = '["Whether the system description is fairly presented, controls are suitably designed, and for Type II, operated effectively", "The service auditor''s testing methodology and sample sizes", "The user entity''s satisfaction with the service organization''s performance", "The competitive position of the service organization in its industry"]'::jsonb,
  explanation = 'Correct (A): Management''s assertion is a written statement in which the service organization''s management asserts that the system description fairly presents the system, that controls are suitably designed, and (for Type II) that controls operated effectively throughout the specified period. The service auditor''s opinion evaluates this assertion. (B) is wrong because testing methodology is the auditor''s responsibility, not addressed in management''s assertion. (C) is wrong because user entity satisfaction is outside the scope of the SOC engagement.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3888;

-- ID 3890: SOC Reporting — Inclusive method for subservice organizations
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What is the result of using the inclusive method for a subservice organization in a SOC report?',
  choices = '["The subservice organization''s controls are excluded from the report scope", "The subservice organization''s relevant controls are included in scope and covered by the auditor''s opinion", "The subservice organization must issue its own separate SOC report", "The user entity must directly audit the subservice organization"]'::jsonb,
  explanation = 'Correct (B): Under the inclusive method, the subservice organization''s relevant controls are included within the scope of the examination. The service auditor tests these controls and the opinion extends to them, providing a more comprehensive view for user entities. (A) is wrong because exclusion from scope describes the carve-out method, not the inclusive method. (C) is wrong because the inclusive method integrates the subservice controls into the primary report rather than requiring a separate engagement.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3890;

-- ID 3891: SOC Reporting — Intended users of SOC 2 reports
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Who are the intended users of a SOC 2 report?',
  choices = '["The general public and potential investors", "Only the service organization''s board of directors", "Management of the service organization, user entities, and prospective user entities with sufficient knowledge", "Only the service auditor''s firm"]'::jsonb,
  explanation = 'Correct (C): SOC 2 reports are restricted-use reports intended for management of the service organization, user entities, business partners with contractual need, and prospective user entities who have sufficient understanding to use the report properly. (A) is wrong because SOC 2 reports are not intended for general public distribution — SOC 3 reports serve that purpose. (B) is wrong because the intended audience extends well beyond the board to include user entities and others with a business need.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3891;

-- ID 3892: SOC Reporting — User auditor response to qualified SOC 1 opinion
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'What should a user entity''s auditor do when a SOC 1 Type II report contains a qualified opinion?',
  choices = '["Disregard the SOC 1 report entirely", "Issue a qualified opinion on the user entity''s financial statements automatically", "Request the service organization to reissue the report with an unqualified opinion", "Evaluate the impact of the exceptions on the user entity''s financial statement assertions"]'::jsonb,
  explanation = 'Correct (D): The user entity''s auditor should evaluate the nature and significance of the exceptions and assess their potential impact on the user entity''s financial statement assertions. Additional procedures may be needed, such as testing compensating controls or expanding substantive testing. (B) is wrong because the user auditor''s opinion depends on the assessed impact, not on automatically mirroring the SOC report''s qualification. (A) is wrong because a qualified opinion does not make the entire SOC report unreliable.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3892;

-- ID 3893: SOC Reporting — Bridge letter purpose
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What is the purpose of a bridge letter in the context of SOC reporting?',
  choices = '["To provide the service organization''s representation about whether significant changes occurred after the SOC report period", "To convert a Type I report into a Type II report", "To bridge communication between the service auditor and user auditor", "To extend the existing report''s coverage to the user''s fiscal year-end"]'::jsonb,
  explanation = 'Correct (A): A bridge letter is a management representation from the service organization addressing whether significant changes occurred to the system, controls, or control environment between the end of the SOC report period and a specified later date. User entities request bridge letters when the SOC period does not align with their fiscal year. (B) is wrong because a bridge letter cannot change the report type. (D) is wrong because a bridge letter does not formally extend the report''s coverage — it provides management representations about the gap period.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3893;

-- ID 3894: SOC Reporting — Description of tests and results section
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What does the description of tests and results section of a SOC Type II report contain?',
  choices = '["Only the controls that operated effectively during the period", "The service organization''s revenue and profitability during the period", "The controls tested, testing procedures performed, and results including any exceptions identified", "The user entity''s internal control assessment"]'::jsonb,
  explanation = 'Correct (C): The description of tests and results section presents each control tested, the specific testing procedures performed (such as inquiry, inspection, reperformance), and the results obtained, including any exceptions. This section provides transparency about the auditor''s work and findings. (A) is wrong because the section discloses all results, not just effective controls — exceptions are also reported. (B) is wrong because revenue and profitability are not part of the SOC examination scope.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3894;

-- ID 3896: SOC Reporting — Service auditor report key elements
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Which elements are included in the independent service auditor''s report in a SOC engagement?',
  choices = '["The service organization''s marketing materials and client testimonials", "The scope of the examination, management''s responsibilities, the auditor''s responsibilities, and the opinion", "The user entity''s financial statements and audit opinion", "The subservice organization''s employee handbook"]'::jsonb,
  explanation = 'Correct (B): The independent service auditor''s report includes the scope of the examination, a description of management''s responsibilities for the system description and controls, the auditor''s responsibilities to express an opinion, the criteria used, and the auditor''s opinion. (A) is wrong because marketing materials are not part of the auditor''s report. (C) is wrong because user entity financial statements are outside the scope of a SOC engagement.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3896;

-- ID 3897: SOC Reporting — Unqualified opinion with minor exceptions
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Can a SOC 2 Type II report receive an unqualified opinion when minor exceptions are noted in testing?',
  choices = '["Yes, if the exceptions are not material and do not represent a systemic control failure", "Any exceptions require a qualified opinion", "Exceptions are never disclosed in reports with unqualified opinions", "The report must be reissued without the exceptions"]'::jsonb,
  explanation = 'Correct (A): An unqualified opinion can be issued even when minor exceptions exist. The service auditor evaluates whether exceptions are material to the criteria being examined. Isolated exceptions that are not material and do not represent systemic failures may be reported without modifying the opinion. All exceptions are still disclosed in the testing results section. (B) is wrong because materiality is the threshold for opinion modification, and not all exceptions are material. (C) is wrong because exceptions are always disclosed in the test results regardless of the opinion type.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3897;

-- ID 3898: SOC Reporting — Most useful section for user entity evaluation
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Which section of a SOC report is most useful for a user entity evaluating whether to engage a service organization?',
  choices = '["The auditor''s engagement letter", "The auditor''s billing invoice", "The service organization''s organizational chart", "The system description, which details services provided, system components, and the control environment"]'::jsonb,
  explanation = 'Correct (D): The system description provides comprehensive information about services, system components (infrastructure, software, people, procedures, data), the control environment, and system boundaries. This enables user entities to assess the service organization''s suitability and determine what complementary controls they need. (A) is wrong because the engagement letter is an administrative document between the auditor and service organization. (C) is wrong because the organizational chart alone does not provide sufficient detail about services and controls.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3898;

-- ID 3901: SOC Reporting — Who establishes SOC 1 control objectives
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'In a SOC 1 report, who is responsible for establishing the control objectives?',
  choices = '["The service auditor", "The user entity''s auditor", "Management of the service organization", "The AICPA"]'::jsonb,
  explanation = 'Correct (C): Management of the service organization establishes the control objectives in a SOC 1 report. These objectives describe what the controls are intended to achieve in relation to user entities'' internal control over financial reporting. (A) is wrong because the service auditor evaluates the controls but does not establish the objectives. (D) is wrong because the AICPA provides the engagement standards but does not publish mandatory control objectives for individual organizations.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3901;

-- ID 3902: SOC Reporting — Stale SOC report concern
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'What concern should a prospective user entity have when reviewing a SOC 2 report that ended several months ago?',
  choices = '["No concern — SOC reports are valid indefinitely", "The report is invalid because it does not cover a full calendar year", "The entity cannot use the report because it is not a current user", "Significant changes may have occurred to the system or controls since the report period ended"]'::jsonb,
  explanation = 'Correct (D): A SOC report reflects the system and controls during a specific period. As time passes after the period end, the risk increases that changes have occurred. Prospective user entities should consider the age of the report, inquire about changes, and may request a bridge letter or updated report. (A) is wrong because SOC reports do not remain valid indefinitely — their relevance diminishes over time. (B) is wrong because SOC reports can cover any reasonable period and are not required to align with the calendar year.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3902;

-- ID 3903: SOC Reporting — Addressing a qualified opinion
-- correct_index = 1 (was 0; corrected answer; see explanation)
UPDATE questions SET
  stem = 'How should a service organization address a qualified opinion in its SOC report before the next examination?',
  choices = '["Switch to a different auditing firm for a fresh start", "Remediate the identified deficiencies, implement improved procedures, and demonstrate consistent operation during the next period", "Request the auditor to retroactively change the opinion", "Stop performing the activities that were qualified"]'::jsonb,
  explanation = 'Correct (B): To address a qualification, the service organization should remediate the underlying control deficiencies, implement improved procedures, and consistently operate the improved controls throughout the next examination period. If controls operate effectively, the qualification may be removed from the next report. (A) is wrong because switching auditors does not remediate the underlying deficiency — the new auditor would find the same issues. (D) is wrong because stopping the activities entirely would create a gap in the control environment rather than fixing it.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3903;

-- ID 3904: SOC Reporting — Appropriate system description exclusions
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What may be appropriately excluded from the system description in a SOC report?',
  choices = '["Services unrelated to the scope of the SOC engagement that do not affect the criteria being evaluated", "The access control procedures for the in-scope application", "The infrastructure supporting the in-scope services", "The people and procedures involved in delivering in-scope services"]'::jsonb,
  explanation = 'Correct (A): The system description should clearly identify what is in scope and what is excluded. Services unrelated to the criteria being evaluated may be appropriately excluded. However, all components relevant to the in-scope services — infrastructure, software, people, procedures, and data — must be included. (B) is wrong because access controls for in-scope applications are directly relevant and must be included. (C) is wrong because supporting infrastructure for in-scope services is part of the system boundary.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3904;

-- ID 3905: SOC Reporting — Control objectives vs. criteria terminology
-- correct_index = 3 (was 0; corrected answer; swapped A↔D)
UPDATE questions SET
  stem = 'Why do SOC 1 reports use the term control objectives while SOC 2 reports use the term criteria?',
  choices = '["Both use the same terminology established by the PCAOB", "There is no real difference — the terms are interchangeable", "SOC 1 uses criteria and SOC 2 uses control objectives", "SOC 1 control objectives are defined by the service organization for ICFR purposes, while SOC 2 criteria are the predefined Trust Services Criteria from the AICPA"]'::jsonb,
  explanation = 'Correct (D): In SOC 1 engagements, the service organization''s management defines control objectives describing what controls should achieve for user entities'' internal control over financial reporting. In SOC 2 engagements, the criteria are the predefined Trust Services Criteria (security, availability, processing integrity, confidentiality, privacy) established by the AICPA. (A) is wrong because the PCAOB does not establish SOC terminology — these are AICPA standards. (B) is wrong because the terms reflect fundamentally different concepts appropriate to each engagement type.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3905;

-- ID 3906: SOC Reporting — Restricted-use distribution rules
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'Is it appropriate for a service organization to share its SOC 2 report with a potential investor who has no service relationship?',
  choices = '["Yes — SOC 2 reports can be shared with anyone", "Yes — once issued, the report can be distributed without restriction", "No — SOC 2 reports are restricted-use and should only go to parties with a business need and sufficient knowledge", "No — SOC 2 reports can only be shared with current user entities"]'::jsonb,
  explanation = 'Correct (C): SOC 2 reports are restricted-use reports intended for parties with a business need and sufficient knowledge to understand the report. A potential investor without a service relationship would not typically qualify. For broader distribution, a SOC 3 (general-use) report is more appropriate. (A) is wrong because SOC 2 reports carry explicit distribution restrictions. (D) is wrong because prospective user entities and business partners with contractual need may also receive SOC 2 reports.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3906;

-- ID 3907: SOC Reporting — Type I opinion scope
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What does the service auditor''s opinion address in a SOC Type I report?',
  choices = '["Whether controls operated effectively over a period of time", "Whether the system description is fairly presented and controls are suitably designed as of a specified date", "Whether the service organization''s financial statements are materially correct", "Whether user entities have implemented all complementary controls"]'::jsonb,
  explanation = 'Correct (B): In a Type I report, the opinion addresses whether the system description fairly presents the system as designed and implemented as of the specified date, and whether controls are suitably designed to achieve the criteria or objectives. Type I does not address operating effectiveness over a period. (A) is wrong because operating effectiveness over a period is addressed only in Type II reports. (C) is wrong because financial statement opinions are outside the scope of SOC engagements.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3907;

-- ID 3908: SOC Reporting — Responding to a change from unqualified to qualified opinion
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What should a user entity do when its service provider''s SOC 2 report changes from an unqualified to a qualified opinion?',
  choices = '["Evaluate the significance of the exceptions, assess impact on risk, and request a remediation plan from the provider", "Accept the qualified report without further action", "Immediately terminate the contract and migrate providers", "Ignore the change because the user entity has no responsibility for the provider''s controls"]'::jsonb,
  explanation = 'Correct (A): The user entity should evaluate the specific exceptions, assess their potential impact on the entity''s operations and risk profile, and request a remediation plan with timelines. Additional monitoring or compensating controls may also be warranted. (B) is wrong because accepting a qualified report without evaluation could leave the user entity exposed to unmitigated risks. (C) is wrong because immediate termination may be an overreaction before the significance of the exceptions is understood.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3908;

-- ID 3918: SOC Reporting — Adverse opinion meaning
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'What does an adverse opinion communicate to users of a SOC report?',
  choices = '["The controls had minor issues that were promptly corrected", "The report is incomplete and additional testing is needed", "The system description or controls had deficiencies that are both material and pervasive", "The service organization should cease operations immediately"]'::jsonb,
  explanation = 'Correct (C): An adverse opinion is the most severe modified opinion. It communicates that deficiencies are both material and pervasive, meaning the system description is not fairly presented, controls are not suitably designed, or controls did not operate effectively to a degree that a qualified opinion would not adequately convey the severity. (A) is wrong because minor issues that were corrected would not result in an adverse opinion. (D) is wrong because the auditor does not direct the service organization to cease operations — the opinion reports findings, not operational mandates.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3918;

-- ID 3919: SOC Reporting — Auditor responsibility for other information section
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'What is the service auditor''s responsibility regarding the other information section in a SOC report?',
  choices = '["Express an opinion on the other information section", "Read it for material inconsistencies with the system description but do not express an opinion on it", "Remove the other information before the report is issued", "Ignore the other information section entirely"]'::jsonb,
  explanation = 'Correct (B): The service auditor reads the other information section to identify material inconsistencies with the audited system description or apparent material misstatements of fact, but does not express an opinion on it. If inconsistencies are found, the auditor discusses them with management. (A) is wrong because the auditor''s opinion does not cover this section. (D) is wrong because the auditor has a responsibility to read the section even though no opinion is issued on it.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3919;

-- ============================================================
-- IT AUDIT FRAMEWORKS (4 questions)
-- ============================================================

-- ID 1064: IT Audit Frameworks — COBIT and ITIL relationship
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'How do COBIT and ITIL complement each other in IT governance and service management?',
  choices = '["They are competing frameworks that should not be used together", "COBIT addresses security while ITIL addresses project management", "ITIL replaces the management domains of COBIT entirely", "COBIT provides the governance structure and objectives while ITIL provides operational service management practices"]'::jsonb,
  explanation = 'Correct (D): COBIT and ITIL are complementary frameworks. COBIT provides the governance and management objective framework (what needs to be governed), while ITIL provides detailed operational service management practices (how to manage IT services). Organizations commonly use both together. (A) is wrong because the frameworks are designed to work together, not compete. (B) is wrong because both frameworks have broader scope than just security or project management.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1064;

-- ID 3832: IT Audit Frameworks — COBIT 2019 developer
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Which organization developed and maintains the COBIT 2019 governance framework?',
  choices = '["The American Institute of CPAs (AICPA)", "The International Organization for Standardization (ISO)", "ISACA (formerly the Information Systems Audit and Control Association)", "The National Institute of Standards and Technology (NIST)"]'::jsonb,
  explanation = 'Correct (C): COBIT (Control Objectives for Information and Related Technologies) 2019 is developed and maintained by ISACA. It provides a comprehensive framework for the governance and management of enterprise information and technology, covering 40 governance and management objectives. (A) is wrong because the AICPA develops auditing standards and the Trust Services Criteria, not COBIT. (D) is wrong because NIST develops the Cybersecurity Framework (CSF) and related publications, not COBIT.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3832;

-- ID 3833: IT Audit Frameworks — COBIT governance vs. management distinction
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'In COBIT 2019, what is the distinction between governance objectives and management objectives?',
  choices = '["Governance evaluates stakeholder needs and sets direction, while management plans, builds, runs, and monitors activities", "There is no distinction — governance and management are identical in COBIT 2019", "Governance handles day-to-day operations while management sets strategic direction", "Governance applies only to IT departments while management applies to all departments"]'::jsonb,
  explanation = 'Correct (A): In COBIT 2019, governance involves evaluating stakeholder needs, setting direction through prioritization and decision-making, and monitoring performance. Management involves planning, building, running, and monitoring activities aligned with governance direction. This separates strategic oversight from operational execution. (C) is wrong because it reverses the roles — governance sets direction and management handles operations, not the other way around. (D) is wrong because COBIT governance applies to enterprise-wide IT, not just the IT department.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3833;

-- ID 3834: IT Audit Frameworks — COBIT governance system components
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Under COBIT 2019, what are the components of a governance system?',
  choices = '["Only source code repositories and development tools", "Processes, organizational structures, policies, information flows, culture, skills, and services/infrastructure/applications", "Only technology infrastructure and hardware", "Only human resources policies and procedures"]'::jsonb,
  explanation = 'Correct (B): COBIT 2019 identifies seven components of a governance system: processes, organizational structures, principles/policies/frameworks, information, culture/ethics/behavior, people/skills/competencies, and services/infrastructure/applications. These work together holistically. (A) is wrong because governance components extend far beyond software development tools. (C) is wrong because governance encompasses people, processes, and culture in addition to technology infrastructure.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3834;

COMMIT;