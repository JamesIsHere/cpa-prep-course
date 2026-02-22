-- Migration: Difficulty rebalancing — ISC batch 1 (50 questions)
-- Date: 2026-02-22
-- Purpose: Rewrite 50 easy questions to medium difficulty for ISC section
-- Affected topics: Change Management, Data Management and Lifecycle, Data Protection Technologies, ERP and Accounting Information Systems, IT Audit Frameworks, IT General Controls, IT Infrastructure and Architecture, Incident Response and Recovery, Privacy Requirements and Data Protection, SOC Engagements, SOC Report Content and Structure, SOC Reporting, SOC Reporting and Trust Services Criteria, SOC Testing Controls, Security Controls and Monitoring, Security and Control Frameworks, System Availability and Change Management, Threats, Attacks, and Vulnerabilities

BEGIN;

-- ============================================================
-- CHANGE MANAGEMENT (1 questions)
-- ============================================================

-- ID 5412: Change Management — CAB handling of emergency vs standard changes
UPDATE questions SET
  stem = 'Ridgemont Financial Services'' Change Advisory Board (CAB) receives a request to patch a critical security vulnerability in the production trading platform. The patch must be deployed within four hours to address active exploitation. Under ITIL change management, how should the CAB handle this request compared to a standard change?',
  choices = '["Reject the request because the CAB cannot convene within four hours", "Process it as an emergency change with expedited approval, post-implementation review, and retroactive documentation", "Delay the patch until the next scheduled CAB meeting to follow standard procedures", "Deploy the patch immediately without any CAB involvement or documentation"]'::jsonb,
  explanation = 'Correct (B): Under ITIL change management, emergency changes follow an expedited approval path when urgent business need exists. The emergency CAB (eCAB) or a designated authority approves the change with abbreviated pre-assessment, but post-implementation review and retroactive documentation are still required. While choice C follows standard process, delaying a critical security patch under active exploitation would expose the organization to unacceptable risk, which is precisely why the emergency change process exists.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 5412;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (5 questions)
-- ============================================================

-- ID 3512: Data Management — schema-on-read vs schema-on-write in practice
UPDATE questions SET
  stem = 'Thornfield Analytics is migrating its reporting infrastructure and must choose between a data lake and a traditional data warehouse. The company ingests server logs (unstructured), JSON API responses (semi-structured), and relational sales data (structured). Which architectural advantage makes a data lake more suitable for this mixed-format ingestion?',
  choices = '["The data lake enforces a uniform schema at ingestion, converting all formats to relational tables automatically", "The data lake''s schema-on-read approach stores raw data in native format and applies structure only at query time", "The data lake eliminates the need for data governance because schemas are unnecessary", "The data lake compresses all incoming data into a single binary format for storage efficiency"]'::jsonb,
  explanation = 'Correct (B): Data lakes use a schema-on-read approach, storing raw data in its native format without requiring schema definition at ingestion time. This flexibility allows structured, semi-structured, and unstructured data to coexist and be analyzed with different schemas as needs evolve. While choice A describes a traditional data warehouse''s schema-on-write approach, it incorrectly attributes it to a data lake. Data lakes still require data governance practices despite their flexible schema model.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3512;

-- ID 3513: Data Management — metadata role in data governance
UPDATE questions SET
  stem = 'Clearwater Insurance is implementing a data governance program and discovers that its data catalog contains no information about data ownership, lineage, or quality metrics for its claims database. Which type of information is missing, and what risk does this gap create for the governance program?',
  choices = '["Metadata is missing, which prevents data discovery, impact analysis, and enforcement of governance policies across the claims domain", "Transaction data is missing, which prevents financial reporting from being completed accurately", "Encryption keys are missing, which prevents any data from being read or processed by authorized users", "Backup data is missing, which prevents disaster recovery for the claims database"]'::jsonb,
  explanation = 'Correct (A): Metadata — data about data — includes definitions, data types, relationships, lineage, ownership, access policies, and quality metrics. Without metadata, organizations cannot perform data discovery, trace data lineage for impact analysis, or enforce governance policies. While choice D (backup data) is important for disaster recovery, the scenario specifically describes missing catalog information about ownership, lineage, and quality metrics, which are metadata attributes essential to governance.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3513;

-- ID 3514: Data Management — prioritizing remediation for plain-text sensitive data
UPDATE questions SET
  stem = 'During an IT audit of Brookhaven Medical Group, the IS auditor discovers that 45,000 patient Social Security numbers are stored in plain text in a legacy claims processing database. The database is accessible to 12 staff members via shared credentials. What is the auditor''s most appropriate remediation recommendation?',
  choices = '["Implement AES-256 encryption at rest and tokenization for application access, replace shared credentials with individual role-based accounts, and classify the finding as high-priority", "Document the finding in the audit report and schedule remediation for the next annual budget cycle", "Delete all Social Security numbers from the database immediately to eliminate the exposure", "Migrate the database to a cloud provider, which automatically encrypts all stored data"]'::jsonb,
  explanation = 'Correct (A): Storing sensitive PII like Social Security numbers in plain text with shared credentials creates significant regulatory risk under HIPAA and state breach notification laws. Immediate remediation should include encryption at rest (AES-256 per NIST SP 800-111), tokenization to minimize exposure in application layers, and replacing shared credentials with individual role-based access. While choice B acknowledges the finding, deferring remediation to the next budget cycle leaves the organization exposed to breach risk and potential regulatory penalties.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3514;

-- ID 3515: Data Management — data steward resolving cross-domain quality issue
UPDATE questions SET
  stem = 'At Meridian Financial Group, the data steward for the lending domain discovers that customer addresses in the loan origination system frequently conflict with addresses in the core banking system, causing compliance reports to fail validation. Which action falls within the data steward''s primary responsibilities?',
  choices = '["Rewriting the application source code to synchronize the two databases automatically", "Investigating the root cause of the address discrepancies, enforcing data quality standards, and coordinating with both system owners to resolve the conflict", "Purchasing new server hardware to improve database replication performance between the systems", "Approving capital expenditures for a third-party data cleansing vendor"]'::jsonb,
  explanation = 'Correct (B): Data stewards are responsible for day-to-day data quality management within their domain, including investigating data quality issues, enforcing naming conventions and standards, resolving discrepancies, and coordinating across system owners. While choice A (rewriting code) is a developer responsibility and choice D (approving expenditures) is a management function, the data steward''s role centers on quality enforcement and cross-domain coordination per data governance frameworks like DAMA-DMBOK.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3515;

-- ID 3516: Data Management — Cartesian product from missing JOIN conditions
UPDATE questions SET
  stem = 'A junior developer at Crestline Retail writes a SQL query joining the orders table (15,000 rows) and the products table (2,000 rows) but omits the JOIN condition. The query runs for 20 minutes before the DBA terminates it. What result would this query produce if allowed to complete, and why did it consume excessive resources?',
  choices = '["The query would return only the 15,000 order rows because the database defaults to a left join when no condition is specified", "The query would produce a Cartesian product of 30,000,000 rows because every order row is combined with every product row without a matching condition", "The query would return an empty result set because the database cannot determine which rows to match", "The query would return 17,000 rows representing the union of both tables"]'::jsonb,
  explanation = 'Correct (B): Without a JOIN condition, the database produces a Cartesian product (cross join), combining every row from orders (15,000) with every row from products (2,000), yielding 30,000,000 result rows. This consumes excessive CPU, memory, and I/O resources. While choice A describes a left join behavior, databases do not default to left joins when conditions are omitted — they produce a full cross join. Proper JOIN conditions (e.g., ON orders.product_id = products.id) restrict results to matching rows.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3516;

-- ============================================================
-- DATA PROTECTION TECHNOLOGIES (1 questions)
-- ============================================================

-- ID 5432: Data Protection Technologies — classifying PHI under data classification policy
UPDATE questions SET
  stem = 'Pinehurst Regional Hospital maintains a four-tier data classification policy: Public, Internal, Confidential, and Restricted. The compliance officer must classify a new database containing patient medical records with diagnoses, treatment plans, and Social Security numbers. Under HIPAA requirements, which classification level is most appropriate and why?',
  choices = '["Confidential, because medical records contain sensitive information but are routinely shared with insurance companies", "Internal, because only hospital employees access the database and external sharing is prohibited", "Public, because patients have a legal right to access their own medical records under HIPAA", "Restricted, because PHI faces the most stringent regulatory requirements and unauthorized disclosure carries severe penalties including HIPAA fines up to $1.5 million per violation category"]'::jsonb,
  explanation = 'Correct (D): Patient medical records containing PHI and Social Security numbers require the highest classification level due to HIPAA Privacy and Security Rule requirements. Unauthorized disclosure can result in fines up to $1.5 million per violation category annually and potential criminal penalties. While choice A (Confidential) acknowledges sensitivity, the combination of PHI with Social Security numbers and the severity of HIPAA penalties warrants Restricted classification, which applies the strongest access controls, encryption requirements, and audit logging.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 5432;

-- ============================================================
-- ERP AND ACCOUNTING INFORMATION SYSTEMS (3 questions)
-- ============================================================

-- ID 772: ERP — role-based access controls supporting SOX compliance
UPDATE questions SET
  stem = 'Westbrook Manufacturing is preparing for its first SOX Section 404 audit. The external auditors request evidence that the ERP system enforces segregation of duties between accounts payable clerks and payment approvers. Which ERP configuration provides the strongest evidence for this control?',
  choices = '["Role-based access controls with a documented segregation of duties matrix showing that AP entry and payment approval roles are assigned to different users with no conflicts", "A company policy memo stating that employees should not approve their own payment requests", "Super-user accounts shared among the accounting team with a verbal agreement to segregate duties", "An ERP configuration that logs all transactions but allows any user to perform any function"]'::jsonb,
  explanation = 'Correct (A): SOX Section 404 requires management to assess and report on internal controls over financial reporting. Role-based access controls with a documented SoD matrix provide system-enforced preventive controls that auditors can test directly. While choice B (a policy memo) establishes management intent, it lacks system enforcement — users could still violate the policy without detection. System-enforced role separation provides stronger evidence than detective or administrative controls alone.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 772;

-- ID 773: ERP — testing depreciation configuration methodology
UPDATE questions SET
  stem = 'During the audit of Ashford Industries, the IT auditor must verify that the ERP system calculates depreciation correctly for 4,200 fixed assets. The company uses straight-line depreciation for buildings and double-declining balance for equipment. What is the most efficient and effective testing approach?',
  choices = '["Manually recalculate depreciation for all 4,200 assets to ensure complete coverage", "Review the ERP depreciation configuration settings against the accounting policy, then select a stratified sample of both asset types to verify calculations match expected results", "Accept the ERP output without testing because automated calculations are inherently reliable", "Test only equipment assets acquired in the current year because those are most likely to contain errors"]'::jsonb,
  explanation = 'Correct (B): The most efficient approach combines reviewing ERP configuration (confirming depreciation methods and rates match accounting policy for each asset class) with testing a stratified sample covering both straight-line and double-declining balance calculations. While choice A provides complete coverage, recalculating all 4,200 assets is impractical and inefficient. Choice C incorrectly assumes automated systems are error-free — misconfigured parameters can produce systematic errors across all assets.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 773;

-- ID 3467: ERP — integrated database impact on transaction processing
UPDATE questions SET
  stem = 'Oakfield Distribution is replacing its separate inventory, purchasing, and accounting applications with an integrated ERP system. When a warehouse clerk records receipt of a $47,000 shipment in the ERP inventory module, which downstream effect distinguishes the ERP from the legacy standalone systems?',
  choices = '["The inventory module stores the receipt in its own database, and a nightly batch job copies the data to the accounting module''s separate database", "The accounting and purchasing modules must be manually updated by different staff members to reflect the received shipment", "The single integrated database simultaneously updates inventory quantities, accounts payable, and purchase order status from the one transaction entry", "The ERP prevents any other module from accessing the shipment data until the inventory clerk approves a cross-module transfer"]'::jsonb,
  explanation = 'Correct (C): The defining characteristic of an ERP system is its single integrated database shared across all modules. When a transaction is recorded in one module, all related modules are updated simultaneously from the same data source. This eliminates redundant data entry and ensures consistency. While choice A describes a common pattern in legacy standalone systems (batch integration), it contradicts the real-time, single-database architecture that distinguishes ERP systems.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3467;

-- ============================================================
-- INCIDENT RESPONSE AND RECOVERY (4 questions)
-- ============================================================

-- ID 3689: Incident Response — volatile evidence collection priority
UPDATE questions SET
  stem = 'The incident response team at Hargrove Financial discovers a compromised trading server that is still running. The team lead must decide the order of evidence collection before the server is isolated from the network. According to digital forensics best practices, which evidence source should be collected first and why?',
  choices = '["RAM contents, running processes, and active network connections, because volatile evidence is lost when the system is powered off or isolated", "The server''s hard drive contents, because disk evidence provides the most comprehensive record of attacker activity", "Employee interviews with the system administrators, because they can explain what happened before evidence is collected", "The server''s configuration documentation from the IT asset management system"]'::jsonb,
  explanation = 'Correct (A): The order of volatility dictates that the most volatile evidence — RAM contents, running processes, and active network connections — must be collected first because it is lost upon shutdown or network isolation. NIST SP 800-86 (Guide to Integrating Forensic Techniques) establishes this priority. While choice B (hard drive) provides valuable evidence, disk data persists after power-off and can be collected later. Collecting volatile evidence first preserves information about active attacker sessions and malware in memory.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3689;

-- ID 3690: Incident Response — forensic imaging vs standard backup
UPDATE questions SET
  stem = 'After detecting unauthorized access to its customer database, Lakewood Credit Union''s forensic examiner must preserve evidence from the affected server''s 2TB hard drive. The IT director suggests using the nightly backup system to save time. Why must the forensic examiner create a forensic image instead of relying on the standard backup?',
  choices = '["A standard backup only copies active files, while a forensic image is a bit-for-bit copy that captures deleted files, slack space, and unallocated areas needed for complete analysis", "A forensic image is smaller than a standard backup because it compresses data more efficiently", "A standard backup captures more data than a forensic image because it includes application configurations", "A forensic image and a standard backup are functionally identical, so the choice is purely procedural"]'::jsonb,
  explanation = 'Correct (A): A forensic image is a bit-for-bit (sector-by-sector) copy of the entire storage device, capturing everything including deleted files, file slack space, and unallocated areas where attackers may have hidden data or where traces of deleted evidence remain. The original drive is write-protected during imaging, and hash values (MD5/SHA-256) verify integrity. While standard backups capture active files, they miss the forensic artifacts in unallocated space that are often critical to investigating unauthorized access.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3690;

-- ID 3691: Incident Response — chain of custody gap impact
UPDATE questions SET
  stem = 'During a forensic investigation at Pinnacle Securities, the lead examiner discovers that a USB drive containing key evidence was left unattended in an unlocked office for three hours before being logged into evidence storage. How does this gap in chain of custody most likely affect the investigation?',
  choices = '["The gap has no impact because the USB drive''s data is protected by encryption", "The gap only matters if the investigation involves criminal charges, not civil litigation", "The gap only affects the metadata timestamps on the USB drive, not the actual evidence content", "The gap may render the evidence inadmissible because the unattended period creates reasonable doubt about whether the evidence was altered or tampered with"]'::jsonb,
  explanation = 'Correct (D): Chain of custody documentation must track every person who handled evidence, when, and what actions were taken. An unattended period in an unsecured location breaks the chain, creating reasonable doubt about evidence integrity. Courts may rule such evidence inadmissible because there is no assurance it was not altered, substituted, or contaminated during the gap. While choice A (encryption) protects data confidentiality, it does not address physical custody or the possibility of drive replacement.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3691;

-- ID 3692: Incident Response — applying order of volatility in practice
UPDATE questions SET
  stem = 'The forensic team at Sterling Aerospace is responding to a suspected insider threat on a workstation. The team has limited time before the employee''s shift ends and the machine will be shut down. In what sequence should the team collect evidence to preserve the most volatile data first?',
  choices = '["Hard drive image first, then RAM capture, then network connection logs, then CPU register state", "Hard drive image first, then network logs, then RAM, then CPU register state", "CPU register state and cache first, then RAM contents, then active network connections, then hard drive image", "Active network connections first, then hard drive image, then RAM, then CPU register state"]'::jsonb,
  explanation = 'Correct (C): The order of volatility from most to least volatile is: CPU registers/cache (nanoseconds), RAM (lost at power-off), active network connections and process state (can change at any moment), then hard drive data (persists without power). NIST SP 800-86 recommends collecting evidence in this order. While choice D begins with network connections, CPU registers and RAM are more volatile and should be captured first. Hard drive data persists after shutdown and is collected last because it is the least volatile.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3692;

-- ============================================================
-- IT AUDIT FRAMEWORKS (4 questions)
-- ============================================================

-- ID 3840: IT Audit Frameworks — risk register construction from likelihood/impact
UPDATE questions SET
  stem = 'Whitfield Healthcare''s IT risk committee has assessed 35 identified risks using a 5x5 likelihood-impact matrix. The CISO must present the results to the board in a format that supports prioritized resource allocation. What is the most appropriate output of this analysis?',
  choices = '["A risk register that ranks each risk by its combined likelihood and impact score, assigns risk owners, and identifies treatment plans for risks above the organization''s tolerance threshold", "A departmental budget spreadsheet allocating equal funding to all 35 identified risks regardless of their rating", "A vendor contract summary listing all third-party IT service providers and their renewal dates", "A network architecture diagram showing the physical layout of all IT infrastructure components"]'::jsonb,
  explanation = 'Correct (A): IT risk analysis produces a risk register that combines likelihood and impact ratings to calculate a risk score, enabling prioritized resource allocation. Per COBIT 2019 APO12 (Managed Risk), the risk register should include risk owners, treatment plans, and residual risk levels, focusing resources on risks exceeding the organization''s risk appetite. While choice B allocates resources, treating all risks equally ignores the risk-based prioritization that is the fundamental purpose of likelihood-impact analysis.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3840;

-- ID 3841: IT Audit Frameworks — distinguishing risk transfer from mitigation
UPDATE questions SET
  stem = 'After a ransomware attack caused $800,000 in losses, Grandview Logistics evaluates two risk response strategies: implementing endpoint detection and response (EDR) software for $120,000 annually, or purchasing a cyber insurance policy with a $50,000 deductible and $5 million coverage limit. If management chooses the insurance policy, how is this risk response classified and what residual risk remains?',
  choices = '["Risk avoidance, because the insurance eliminates the ransomware threat entirely", "Risk mitigation, because the insurance policy reduces the likelihood of future ransomware attacks", "Risk transfer, because the financial impact shifts to the insurer, but the organization retains the deductible, operational disruption, and reputational damage as residual risks", "Risk acceptance, because purchasing insurance indicates the organization has decided to tolerate the risk"]'::jsonb,
  explanation = 'Correct (C): Purchasing cyber insurance is risk transfer — shifting the financial impact of a risk to a third party (the insurer). However, residual risk remains: the $50,000 deductible, operational disruption during recovery, and reputational damage are not covered by the policy. While choice B (risk mitigation) applies to the EDR software option which reduces likelihood and impact, insurance does not reduce the probability of an attack — it transfers the financial consequence after occurrence.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3841;

-- ID 3842: IT Audit Frameworks — COBIT 2019 capability levels in assessment context
UPDATE questions SET
  stem = 'An IS auditor at Fielding & Associates is assessing Redstone Manufacturing''s IT change management process using the COBIT 2019 capability model. The auditor finds that changes are performed and achieve their intended purpose, but there is no formal documentation, defined responsibilities, or performance monitoring. At which COBIT 2019 capability level does this process operate?',
  choices = '["Level 0 (Incomplete), because the lack of documentation means the process does not exist", "Level 1 (Performed), because the process achieves its purpose but lacks formal management practices such as documentation, defined responsibilities, and monitoring", "Level 3 (Established), because the process is standardized with documented procedures across the organization", "Level 5 (Optimizing), because the process continuously improves based on quantitative performance data"]'::jsonb,
  explanation = 'Correct (B): COBIT 2019 defines six capability levels (0-5). Level 1 (Performed) means the process achieves its intended purpose but is not yet formally managed — lacking documentation, assigned responsibilities, and performance monitoring. Level 2 (Managed) adds planning, monitoring, and adjustment. While choice A (Level 0) applies when a process does not exist or completely fails its purpose, the scenario states changes are performed successfully, placing it at Level 1 rather than Level 0.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3842;

-- ID 3844: IT Audit Frameworks — ITIL 4 practices applied to incident scenario
UPDATE questions SET
  stem = 'Cedarbrook Financial''s online banking platform experiences an unplanned outage affecting 12,000 customers. The IT operations team follows their ITIL 4-aligned framework to restore service. Which ITIL 4 practice governs the team''s immediate response to restore normal service operation, and what distinguishes it from problem management?',
  choices = '["Incident management governs the immediate response because its objective is restoring normal service as quickly as possible, while problem management focuses on identifying root causes to prevent recurrence", "Problem management governs the immediate response because understanding the root cause must occur before service can be restored", "Change management governs the immediate response because any fix to the outage requires a formal change request before implementation", "Service level management governs the immediate response because the outage represents a breach of the service level agreement"]'::jsonb,
  explanation = 'Correct (A): Under ITIL 4, incident management is a service management practice focused on restoring normal service operation as quickly as possible after a disruption, minimizing business impact. Problem management is a separate practice that investigates root causes to prevent recurrence. While choice D (service level management) correctly notes an SLA breach, it governs SLA definition and monitoring rather than the operational response to restore service. The distinction between incident and problem management is fundamental to ITIL 4.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3844;

-- ============================================================
-- IT GENERAL CONTROLS (1 questions)
-- ============================================================

-- ID 1050: IT General Controls — CAB evaluating conflicting change requests
UPDATE questions SET
  stem = 'Northgate Insurance''s Change Advisory Board (CAB) receives two change requests for the same weekend maintenance window: a database schema upgrade for the claims system and a network firewall rule update. Both changes affect the claims processing environment. Under ITIL change management, what is the CAB''s most appropriate action?',
  choices = '["Approve both changes for simultaneous deployment to minimize the total maintenance window duration", "Evaluate the combined risk and potential interaction between the two changes, and either sequence them with rollback checkpoints or defer one to a separate maintenance window", "Reject both changes because two changes in the same window always violate change management best practices", "Delegate the decision to the database administrator because they have the most technical expertise"]'::jsonb,
  explanation = 'Correct (B): Under ITIL change management, the CAB evaluates proposed changes for risk, impact, and resource requirements. When multiple changes affect the same environment, the CAB must assess combined risk and potential interactions. Sequencing with rollback checkpoints between changes allows the team to verify each change before proceeding. While choice A (simultaneous deployment) saves time, it makes troubleshooting difficult if issues arise because the team cannot isolate which change caused the problem.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 1050;

-- ============================================================
-- IT INFRASTRUCTURE AND ARCHITECTURE (1 questions)
-- ============================================================

-- ID 755: IT Infrastructure — microservices failure isolation vs monolithic
UPDATE questions SET
  stem = 'Bellmark Technologies is migrating its monolithic e-commerce application to a microservices architecture. During a load test, the payment processing service crashes but the product catalog and user authentication services continue operating normally. Which microservices characteristic explains this behavior, and how does it differ from the monolithic architecture?',
  choices = '["All microservices share a single database, so the payment crash would also corrupt the catalog and authentication data", "Each microservice runs in its own process with independent failure boundaries, so one service''s crash does not cascade to others — unlike a monolith where a single component failure can bring down the entire application", "Microservices cannot communicate with each other, which is why the other services were unaffected by the payment crash", "The monolithic architecture would have handled the crash better because all components share memory and can recover together"]'::jsonb,
  explanation = 'Correct (B): Microservices architecture decomposes an application into independently deployable services, each running in its own process and communicating via lightweight protocols (REST APIs or message queues). This isolation means one service''s failure does not cascade to others. In a monolithic architecture, all components run in a single process, so a crash in one module (such as payment processing) can bring down the entire application. While choice C correctly notes independence, microservices do communicate — they are loosely coupled, not completely isolated.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 755;

-- ============================================================
-- PRIVACY REQUIREMENTS AND DATA PROTECTION (1 questions)
-- ============================================================

-- ID 1296: Privacy — HIPAA PHI scope in a business associate context
UPDATE questions SET
  stem = 'Clearview Billing Services processes insurance claims on behalf of three regional hospitals. During a compliance review, the privacy officer must determine whether Clearview''s patient billing records — containing names, dates of service, diagnosis codes, and insurance policy numbers — qualify as protected health information (PHI) under HIPAA. Which conclusion is correct?',
  choices = '["The records do not qualify as PHI because Clearview is a billing company, not a healthcare provider", "The records qualify as PHI because they contain individually identifiable health information created or maintained by a business associate of a covered entity", "The records qualify as PHI only if patients have explicitly consented to their information being classified as protected", "The records do not qualify as PHI because diagnosis codes are considered administrative data rather than health information"]'::jsonb,
  explanation = 'Correct (B): Under HIPAA, PHI includes any individually identifiable health information that is created, received, maintained, or transmitted by a covered entity or its business associate. Clearview is a business associate because it processes claims on behalf of covered entities (hospitals). The billing records contain names (identifiers) linked to diagnosis codes and dates of service (health information), meeting the PHI definition. While choice A incorrectly limits PHI to healthcare providers, HIPAA explicitly extends PHI protections to business associates.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 1296;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (6 questions)
-- ============================================================

-- ID 3591: Security Frameworks — applying security document hierarchy in practice
UPDATE questions SET
  stem = 'Greystone Capital''s CISO issues a data encryption policy stating that all sensitive data must be protected at rest and in transit. The security team must create a document specifying that AES-256 is required for data at rest and TLS 1.3 for data in transit. What type of security document should contain these mandatory technical requirements?',
  choices = '["A guideline, because it offers recommended best practices that teams may optionally follow", "A procedure, because it provides step-by-step instructions for configuring encryption software", "A policy, because all security requirements must be documented at the policy level", "A standard, because it defines the mandatory technical specifications that implement the policy''s intent"]'::jsonb,
  explanation = 'Correct (D): In the security document hierarchy, a standard defines mandatory, specific technical requirements that implement a policy. Specifying AES-256 for data at rest and TLS 1.3 for data in transit are mandatory technical specifications supporting the encryption policy. While choice B (procedure) is closely related, procedures provide step-by-step implementation instructions (e.g., how to configure AES-256 in the database), not the requirement itself. Standards define what must be used; procedures define how to implement it.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3591;

-- ID 3592: Security Frameworks — procedure vs standard in implementation context
UPDATE questions SET
  stem = 'After Greystone Capital publishes its AES-256 encryption standard, the database team needs step-by-step instructions for enabling Transparent Data Encryption (TDE) on each production SQL Server instance. What type of security document should the team create to provide these implementation instructions?',
  choices = '["A policy, because it establishes management''s directive for encryption across the organization", "A standard, because it specifies the technical requirements for encryption implementation", "A procedure, because it provides detailed sequential instructions for configuring TDE on specific database platforms", "A guideline, because it suggests optional approaches the database team might consider"]'::jsonb,
  explanation = 'Correct (C): A procedure provides detailed, step-by-step instructions for implementing standards and policies, including specific configuration commands, verification steps, and platform-specific details. Enabling TDE on SQL Server requires sequential steps (generate master key, create certificate, enable TDE) that belong in a procedure document. While choice B (standard) specifies what encryption must be used (AES-256), the standard does not contain platform-specific configuration steps — that is the procedure''s role in the document hierarchy.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3592;

-- ID 3595: Security Frameworks — COBIT capability assessment with evidence
UPDATE questions SET
  stem = 'An IS auditor evaluating Hartwell Energy''s IT asset management process under COBIT 2019 finds no evidence that the process exists — there are no asset inventories, no tracking procedures, and IT staff confirm that assets are managed informally without any defined process. At which COBIT 2019 capability level should the auditor rate this process?',
  choices = '["Level 0 (Incomplete), because the process either does not exist or fails to achieve its purpose with no evidence of systematic achievement", "Level 1 (Performed), because IT staff informally manage assets even without formal procedures", "Level 2 (Managed), because the organization has acknowledged the need for asset management", "Level 3 (Established), because the auditor''s evaluation itself constitutes evidence of a defined process"]'::jsonb,
  explanation = 'Correct (A): COBIT 2019 Capability Level 0 (Incomplete) means the process does not exist or fails to achieve its process purpose with little or no evidence of systematic achievement. The absence of asset inventories, tracking procedures, and formal processes indicates Level 0. While choice B (Level 1 - Performed) might seem applicable because staff informally manage assets, Level 1 requires that the process actually achieves its intended purpose — informal management without inventories or tracking fails the asset management process purpose.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3595;

-- ID 3596: Security Frameworks — NIST CSF profile gap analysis
UPDATE questions SET
  stem = 'Ridgewood Community Bank creates a NIST Cybersecurity Framework Current Profile and discovers that its Detect function scores significantly lower than its Protect function. The CISO must explain to the board what the profile comparison reveals. What does the gap between the Current Profile and the Target Profile represent?',
  choices = '["A list of employees who need additional cybersecurity training based on their department", "The alignment of the organization''s current cybersecurity posture with its business requirements, risk tolerance, and resources, highlighting specific areas where capabilities fall short of desired outcomes", "The organization''s annual cybersecurity budget compared to industry average spending benchmarks", "A ranking of the five core functions from most to least important for the organization"]'::jsonb,
  explanation = 'Correct (B): Under the NIST CSF, a Framework Profile represents the alignment of functions, categories, and subcategories with the organization''s business requirements, risk tolerance, and resources. Comparing Current and Target Profiles identifies specific capability gaps. While choice D suggests ranking functions by importance, the framework does not rank functions — all five (Identify, Protect, Detect, Respond, Recover) work together. The profile comparison provides actionable gap data for prioritized remediation, not a simple ranking.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3596;

-- ID 3597: Security Frameworks — NIST CSF gap remediation prioritization
UPDATE questions SET
  stem = 'Ridgewood Community Bank''s gap analysis between its NIST CSF Current and Target Profiles reveals 28 gaps across all five functions. The security budget can address only 10 gaps this fiscal year. How should the bank prioritize which gaps to remediate first?',
  choices = '["Address all 28 gaps simultaneously by reducing the scope of each remediation effort to fit the budget", "Prioritize gaps based on risk severity, business impact, and alignment with the bank''s threat landscape, addressing high-risk gaps in critical functions first", "Abandon the NIST CSF framework and select a less demanding framework that requires fewer controls", "Address gaps alphabetically by category name to ensure a systematic and fair approach across all functions"]'::jsonb,
  explanation = 'Correct (B): The NIST CSF recommends a risk-based approach to gap remediation. Organizations should evaluate each gap against potential business impact, threat likelihood, and available resources, then prioritize high-risk gaps that address the most critical threats. For a bank, gaps in the Detect and Respond functions related to fraud detection may carry higher risk than lower-impact gaps. While choice A attempts to address everything, spreading resources too thin may result in no gaps being adequately remediated.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3597;

-- ID 3598: Security Frameworks — NIST SP 800-53 control families in audit context
UPDATE questions SET
  stem = 'An IS auditor at Pemberton & Associates is mapping Cascade Financial''s access controls to NIST SP 800-53 control families. The auditor finds controls for user identity verification, password complexity, and multi-factor authentication. These controls belong to which NIST SP 800-53 control family?',
  choices = '["AC (Access Control), because all authentication-related controls fall under the access control family", "AU (Audit and Accountability), because verifying user identity is an audit function", "PE (Physical and Environmental Protection), because identity verification includes badge access systems", "IA (Identification and Authentication), because these controls specifically address verifying user identities and authenticating credentials before granting system access"]'::jsonb,
  explanation = 'Correct (D): Under NIST SP 800-53, the IA (Identification and Authentication) family specifically covers controls for identifying and authenticating users, processes, and devices. Password complexity (IA-5), multi-factor authentication (IA-2), and identity verification fall squarely within IA. While choice A (AC - Access Control) is closely related, AC governs what authenticated users can do (authorization, least privilege, session controls), whereas IA governs proving who the user is before access is granted.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3598;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (5 questions)
-- ============================================================

-- ID 3655: Security Controls — evaluating MFA implementation for compliance
UPDATE questions SET
  stem = 'Waverly Insurance requires multi-factor authentication for remote VPN access. The IT team implements a system requiring employees to enter a password and then answer a security question. The compliance officer flags this configuration during a security review. Why does this implementation fail to qualify as true multi-factor authentication?',
  choices = '["The implementation fails because passwords must be at least 16 characters to qualify as an MFA factor", "The implementation fails because both a password and a security question are ''something you know'' factors — true MFA requires factors from at least two different categories such as knowledge, possession, and inherence", "The implementation fails because security questions must be randomized from a pool of at least 20 options to qualify as a second factor", "The implementation fails because MFA requires exactly three factors, and only two were configured"]'::jsonb,
  explanation = 'Correct (B): True multi-factor authentication requires factors from at least two different categories: something you know (passwords, PINs), something you have (hardware tokens, smartphones), or something you are (biometrics). A password plus a security question both fall under ''something you know,'' making this two-step verification within a single factor category rather than true MFA. Per NIST SP 800-63B, authenticators must be from different categories. While choice D claims three factors are required, MFA requires a minimum of two different categories, not three.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3655;

-- ID 3658: Security Controls — NGFW capabilities in a network scenario
UPDATE questions SET
  stem = 'Stonegate Manufacturing''s traditional stateful firewall allows outbound HTTPS traffic on port 443 but cannot distinguish between legitimate cloud application usage and data exfiltration over encrypted channels. The security team recommends upgrading to a next-generation firewall (NGFW). Which additional capability would the NGFW provide to address this visibility gap?',
  choices = '["Basic packet filtering that blocks traffic based solely on source and destination IP addresses", "Network address translation (NAT) to hide internal IP addresses from external networks", "Static access control lists (ACLs) that permit or deny traffic based on port numbers only", "Application-level deep packet inspection that identifies specific applications within encrypted traffic and applies granular security policies based on application identity"]'::jsonb,
  explanation = 'Correct (D): Next-generation firewalls extend traditional stateful inspection with deep packet inspection, application awareness, and integrated threat intelligence. NGFWs can identify specific applications within encrypted HTTPS traffic (e.g., distinguishing Dropbox file uploads from Salesforce API calls on port 443) and apply granular policies. While choice A describes basic packet filtering available on traditional firewalls, it cannot distinguish between applications using the same port — which is the core limitation the scenario describes.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3658;

-- ID 3659: Security Controls — WAF placement and protection scope
UPDATE questions SET
  stem = 'Brightfield Healthcare deploys a new patient portal web application. The security architect recommends placing a Web Application Firewall (WAF) in front of the portal to protect against SQL injection and cross-site scripting attacks. At which OSI layer does the WAF operate, and why can''t the existing Layer 3/4 network firewall provide the same protection?',
  choices = '["The WAF operates at Layer 7 (Application) and can inspect HTTP request content for attack patterns, while Layer 3/4 firewalls only examine IP addresses and port numbers without visibility into application-layer payloads", "The WAF operates at Layer 4 (Transport) and blocks malicious TCP connections, which Layer 3 firewalls cannot detect", "The WAF operates at Layer 2 (Data Link) and filters traffic based on MAC addresses, providing physical network segmentation", "The WAF operates at Layer 3 (Network) alongside the existing firewall but uses different IP filtering rules"]'::jsonb,
  explanation = 'Correct (A): A WAF operates at Layer 7 (Application) of the OSI model, inspecting HTTP/HTTPS request and response content to detect and block web application attacks such as SQL injection, XSS, and CSRF. Layer 3/4 firewalls examine IP addresses, ports, and TCP/UDP headers but cannot see into the application payload where these attacks are embedded. While choice B correctly identifies Layer 4, WAFs operate above the transport layer to analyze application-specific content that network firewalls cannot inspect.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3659;

-- ID 3660: Security Controls — SIEM correlation detecting multi-stage attack
UPDATE questions SET
  stem = 'Pemberton Financial''s SIEM system receives three events within a 10-minute window: a failed VPN login from an unusual geographic location, a successful login to the same account two minutes later from the corporate network, and a large file download from the financial reporting server. Individually, none of these events triggered an alert. What SIEM capability identified this as a potential security incident?',
  choices = '["Log archival, which preserved the events for long-term storage and later manual review by the security team", "Event correlation, which analyzed relationships between events from different sources and identified the combined pattern as indicative of a compromised credential and data exfiltration attempt", "Compliance reporting, which generated a regulatory report flagging the large file download as a policy violation", "Data backup, which replicated the event logs to an offsite facility for disaster recovery purposes"]'::jsonb,
  explanation = 'Correct (B): Event correlation is a core SIEM capability that analyzes relationships between events from multiple sources to identify patterns that individual events alone would not reveal. In this scenario, correlating a failed login from an unusual location, followed by a successful login and large download, suggests credential compromise and potential data exfiltration. While choice A (log archival) preserves events, it does not analyze relationships between them — correlation rules connecting these three events across time and source are what triggered the alert.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3660;

-- ID 3662: Security Controls — DLP coverage gaps across data states
UPDATE questions SET
  stem = 'Thornton Industries deploys a Data Loss Prevention (DLP) solution that monitors email attachments and USB transfers but does not monitor data stored in the company''s cloud file shares or data being processed in memory by applications. Which data state is left unprotected, and what risk does this gap create?',
  choices = '["Data in motion is unprotected because the DLP does not monitor network packets between internal servers", "Data at rest in cloud file shares is unprotected, creating risk that sensitive data stored in the cloud could be accessed or exfiltrated without detection by the DLP system", "Data in transit is unprotected because email monitoring does not cover HTTPS traffic", "All three data states are fully covered because email and USB monitoring addresses rest, motion, and use"]'::jsonb,
  explanation = 'Correct (B): DLP solutions should monitor three data states: data at rest (stored in databases, file shares, cloud storage), data in motion (transmitted over networks), and data in use (processed by applications). The scenario covers data in motion (email, USB transfers) but leaves data at rest in cloud file shares unmonitored. While choice D claims full coverage, email and USB monitoring only address data in motion — cloud storage (data at rest) and application memory (data in use) require separate DLP policies and agents.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3662;

-- ============================================================
-- SOC ENGAGEMENTS (1 questions)
-- ============================================================

-- ID 3746: SOC Engagements — SOC 1 vs SOC 2 scope distinction
UPDATE questions SET
  stem = 'Mapleton Payroll Services processes payroll for 200 client companies. Several clients'' external auditors request a report addressing controls relevant to their financial statement audits. The clients'' auditors specifically need assurance over payroll processing accuracy, tax withholding calculations, and general ledger posting controls. Which SOC engagement type addresses this need?',
  choices = '["A SOC 1 engagement under SSAE 18 / AT-C 320, because it specifically addresses controls at a service organization relevant to user entities'' internal control over financial reporting", "A SOC 2 engagement under AT-C 205, because it covers security, availability, and processing integrity of the service organization''s system", "A SOC 3 engagement, because it produces a general-use report suitable for public distribution on the service organization''s website", "A SOC for Cybersecurity engagement, because it evaluates the service organization''s enterprise-wide cybersecurity risk management program"]'::jsonb,
  explanation = 'Correct (A): A SOC 1 engagement (SSAE 18 / AT-C 320) specifically addresses controls at a service organization relevant to user entities'' internal control over financial reporting (ICFR). Because the clients'' external auditors need assurance over payroll accuracy, tax calculations, and GL posting — all ICFR-relevant controls — SOC 1 is the appropriate engagement type. While choice B (SOC 2) covers broader system controls under trust services criteria, it does not specifically address ICFR relevance that financial statement auditors require.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3746;

-- ============================================================
-- SOC REPORT CONTENT AND STRUCTURE (1 questions)
-- ============================================================

-- ID 5454: SOC Report Content — mandatory trust services criterion
UPDATE questions SET
  stem = 'Ashford Cloud Services is scoping its first SOC 2 engagement and asks which trust services criteria must be included. The company wants to minimize scope by including only the mandatory criterion. The engagement partner confirms that one criterion is required in every SOC 2 engagement regardless of scope decisions. Which criterion is mandatory and why?',
  choices = '["Availability, because all service organizations must demonstrate uptime commitments to their customers", "Security (common criteria), because it establishes the foundational controls for logical access, system operations, and change management that underpin all other trust services criteria", "Processing integrity, because all service organizations process transactions that must be complete and accurate", "Privacy, because all service organizations handle personal information subject to regulatory requirements"]'::jsonb,
  explanation = 'Correct (B): Security (the common criteria) is mandatory in every SOC 2 engagement because it provides the foundational controls — logical and physical access, system operations, change management, and risk mitigation — upon which all other trust services criteria depend. The remaining four criteria (availability, processing integrity, confidentiality, privacy) are optional and selected based on the service organization''s commitments and system characteristics. While choice A (availability) is important, it is an optional criterion that organizations include based on their specific SLAs.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 5454;

-- ============================================================
-- SOC REPORTING (4 questions)
-- ============================================================

-- ID 3894: SOC Reporting — interpreting test exceptions in Type II report
UPDATE questions SET
  stem = 'While reviewing a SOC 2 Type II report for Cascade Data Centers, the user auditor finds that the description of tests and results section lists three exceptions: one in access provisioning, one in change management, and one in backup monitoring. What specific information should the user auditor expect to find in this section for each exception?',
  choices = '["Only the controls that operated effectively, because exceptions are disclosed separately in a confidential appendix not included in the standard report", "The revenue and profitability of the service organization during the examination period, along with a financial impact estimate for each exception", "The specific control tested, the testing procedure performed, the nature of each exception identified, and management''s response or corrective action taken", "The user entity''s own internal control assessment documenting how each exception affects their financial statement audit"]'::jsonb,
  explanation = 'Correct (C): The description of tests and results section in a SOC 2 Type II report presents each control tested, the specific testing procedures performed (inquiry, inspection, observation, reperformance), and the results — including exceptions with their nature and, where applicable, management''s response. This transparency allows user auditors to evaluate whether exceptions are isolated or systemic. While choice A suggests exceptions are confidential, AT-C 205 requires exceptions to be disclosed within the report alongside the related control tests.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3894;

-- ID 3896: SOC Reporting — auditor report components in SOC engagement
UPDATE questions SET
  stem = 'The engagement partner at Kessler & Morgan CPA is drafting the independent service auditor''s report for DataStream Analytics'' SOC 2 Type II engagement. A junior associate asks what elements must be included in this report. Which components are required under AT-C 205?',
  choices = '["DataStream''s marketing materials, customer testimonials, and competitive positioning statements", "The scope of the examination, management''s responsibilities for the system description and controls, the auditor''s responsibilities for expressing an opinion, the criteria used, and the opinion itself", "The user entities'' financial statements and the auditor''s opinion on whether those statements are fairly presented", "DataStream''s employee handbook, organizational chart, and compensation structure"]'::jsonb,
  explanation = 'Correct (B): Under AT-C 205, the independent service auditor''s report must include the scope of the examination (period covered, criteria used), management''s responsibilities (system description accuracy, control design and operation), the auditor''s responsibilities (expressing an opinion based on the examination), the criteria used (trust services criteria), and the opinion on whether the description is fairly presented and controls were suitably designed and operating effectively. While choice C describes a financial statement audit report, SOC engagements are attestation engagements with different reporting requirements.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3896;

-- ID 3897: SOC Reporting — unqualified opinion with exceptions
UPDATE questions SET
  stem = 'During Cascade Data Centers'' SOC 2 Type II examination, the service auditor identifies two exceptions: one instance where a terminated employee''s access was revoked three days late, and one instance where a backup job failed and was rerun the following morning. Despite these exceptions, the auditor issues an unqualified opinion. Under what conditions can an unqualified opinion be issued when exceptions exist?',
  choices = '["An unqualified opinion is appropriate when exceptions are isolated, not material to the trust services criteria, and do not represent systemic control failures — the auditor evaluates whether exceptions indicate a pattern or a one-time occurrence", "Any exception in testing automatically requires a qualified opinion because exceptions demonstrate that controls did not operate effectively throughout the entire period", "Exceptions are removed from the report before issuing an unqualified opinion so the report presents only effective controls", "The report must be reissued after the service organization remediates the exceptions and the auditor retests the corrected controls"]'::jsonb,
  explanation = 'Correct (A): Under AT-C 205, an unqualified opinion can be issued even when minor exceptions exist, provided the exceptions are not material to the trust services criteria and do not represent systemic control failures. The auditor evaluates whether exceptions are isolated incidents or indicate a pattern of control weakness. In this scenario, a single late access revocation and a single backup rerun are isolated events. While choice B suggests any exception requires qualification, materiality and systemic nature are the determining factors, not mere existence of exceptions.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3897;

-- ID 3898: SOC Reporting — system description utility for user entities
UPDATE questions SET
  stem = 'Riverstone Financial is evaluating two cloud payroll providers and requests their SOC 2 Type II reports. The CFO asks which section of each report provides the most useful comparison of the providers'' control environments, service boundaries, and system components. Which section serves this purpose?',
  choices = '["The auditor''s engagement letter, which describes the fee structure and timeline for the examination", "The management assertion, which confirms that management believes the system description is accurate", "The complementary user entity controls (CUECs) section, which lists controls that Riverstone must implement", "The system description, which details the services provided, system components (infrastructure, software, people, procedures, data), control environment, and system boundaries"]'::jsonb,
  explanation = 'Correct (D): The system description provides comprehensive information about the service organization''s services, system components (infrastructure, software, people, procedures, data), control environment, and system boundaries. This enables user entities to compare providers'' control environments, understand what is included in the service boundary, and assess whether the provider''s controls meet their needs. While choice C (CUECs) is important for understanding Riverstone''s own responsibilities, the system description is the primary section for evaluating and comparing service organizations.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3898;

-- ============================================================
-- SOC REPORTING AND TRUST SERVICES CRITERIA (1 questions)
-- ============================================================

-- ID 3777: SOC Reporting and TSC — identifying non-TSC category in audit context
UPDATE questions SET
  stem = 'An IS auditor at Caldwell & Associates is helping a client scope a SOC 2 engagement. The client lists six criteria they believe should be included: security, availability, processing integrity, confidentiality, privacy, and profitability. The auditor must identify which item is not a valid AICPA Trust Services criterion. Which item should the auditor remove from the scope?',
  choices = '["Security, because it is automatically included and does not need to be listed separately in the scope", "Availability, because uptime requirements belong in service level agreements rather than SOC 2 reports", "Profitability, because it is not one of the five AICPA Trust Services Criteria — the five valid categories are security, availability, processing integrity, confidentiality, and privacy", "Privacy, because privacy requirements are governed by HIPAA rather than the AICPA Trust Services framework"]'::jsonb,
  explanation = 'Correct (C): The AICPA Trust Services Criteria comprise five categories: security, availability, processing integrity, confidentiality, and privacy. Profitability is a financial performance metric, not a trust services criterion. While choice A correctly notes that security is mandatory, it is still a valid TSC category that should remain in scope. Choice D incorrectly suggests privacy is not a TSC category — privacy is one of the five criteria and can be included in SOC 2 engagements alongside HIPAA compliance requirements.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3777;

-- ============================================================
-- SOC TESTING CONTROLS (4 questions)
-- ============================================================

-- ID 3870: SOC Testing Controls — observation limitation in Type II context
UPDATE questions SET
  stem = 'During a SOC 2 Type II examination of Edgewater Cloud Services, the service auditor observes a system administrator performing the daily access review on March 15. The examination period covers January 1 through December 31. The auditor must assess what conclusion observation alone supports. What limitation applies to this testing procedure?',
  choices = '["Observation provides no evidence because the auditor''s presence may have influenced the administrator''s behavior during the review", "Observation provides evidence only that the daily access review was operating at the specific point in time observed (March 15), not that it operated effectively throughout the full 12-month examination period", "Observation provides sufficient evidence that the daily access review operated effectively for the entire examination period because the auditor witnessed it firsthand", "Observation provides evidence only about the administrator''s qualifications, not about the control''s operating effectiveness"]'::jsonb,
  explanation = 'Correct (B): Observation provides point-in-time evidence that a control was operating at the moment the auditor witnessed it. For a SOC 2 Type II engagement covering a 12-month period, observing one instance does not demonstrate that the daily review operated effectively throughout the entire period. The auditor must supplement observation with other procedures — such as inspecting documented review evidence (initials, dates) for a sample across the period. While choice A raises a valid concern about observer effect, it does not negate the evidence entirely.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3870;

-- ID 3871: SOC Testing Controls — optimal procedure combination for daily control
UPDATE questions SET
  stem = 'A SOC 2 Type II service auditor at Wentworth & Associates must test the operating effectiveness of Skyline Data Center''s daily backup verification control over the 12-month examination period. The control requires an operator to review backup completion logs each morning and initial a verification checklist. Which combination of testing procedures provides the strongest evidence?',
  choices = '["Inquiry of the operations manager alone, because management can confirm the control has operated consistently", "Reading the backup verification policy document to confirm that the control is formally documented and approved by management", "Observing the operator perform one backup verification to confirm the process is followed correctly", "Inquiry of the operator combined with inspection of the initialed verification checklists and backup completion logs for a sample of days spanning the full examination period"]'::jsonb,
  explanation = 'Correct (D): The strongest evidence of operating effectiveness for a daily control over a 12-month period combines inquiry (understanding how the control is performed) with inspection of documentary evidence (initialed checklists and backup logs) for a sample spanning the full period. Inquiry alone (choice A) is generally insufficient per AT-C 205 because it relies solely on representations without corroboration. Observation (choice C) provides only point-in-time evidence. Inspecting evidence across the period demonstrates consistent operation throughout.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3871;

-- ID 3874: SOC Testing Controls — evaluating complementary controls across entities
UPDATE questions SET
  stem = 'During a SOC 2 Type II engagement for Northwind Payment Processing, the service auditor identifies that the fraud detection control objective requires controls from three parties: Northwind''s transaction monitoring system, user entities'' reconciliation of daily settlement reports, and a subservice organization''s real-time authorization checks. What must the service auditor evaluate regarding these complementary controls?',
  choices = '["Whether Northwind''s controls work in conjunction with the complementary user entity controls (CUECs) and complementary subservice organization controls (CSOCs) to collectively achieve the fraud detection control objective", "Whether each user entity has fully implemented all CUECs specified in the system description, including testing their operating effectiveness", "Whether the subservice organization''s financial statements are accurate and fairly presented under GAAP", "Whether Northwind''s employees have completed annual fraud awareness training required by the user entities"]'::jsonb,
  explanation = 'Correct (A): In a SOC engagement, the service auditor evaluates how the service organization''s controls interact with CUECs and CSOCs to achieve control objectives. The auditor does not test whether user entities have implemented CUECs (that is the user entity''s responsibility), but does identify and describe CUECs and CSOCs that are necessary for control objectives to be met. While choice B relates to CUECs, the service auditor''s role is to identify required CUECs in the system description, not to test their implementation at user entities.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3874;

-- ID 3875: SOC Testing Controls — inquiry limitations and corroboration
UPDATE questions SET
  stem = 'During a SOC 2 Type II examination of Foxglove IT Services, the service auditor conducts inquiry with the security manager about the organization''s vulnerability scanning control. The manager states that scans run weekly and all critical findings are remediated within 72 hours. The auditor must determine whether inquiry alone is sufficient evidence for this control. What is the primary limitation of inquiry as a standalone testing procedure?',
  choices = '["Inquiry provides management''s representations about control design and operation, but is generally insufficient alone because it relies on verbal assertions without independent corroboration from documentary or observational evidence", "Inquiry is only appropriate for testing automated controls and cannot be used for manual control testing", "Inquiry is prohibited in SOC engagements because it introduces bias from management''s self-interest in favorable results", "Inquiry provides the strongest form of evidence because direct conversation reveals more detail than document inspection"]'::jsonb,
  explanation = 'Correct (A): Inquiry involves asking management and personnel about control design, implementation, and operation. While inquiry provides useful information and context, AT-C 205 guidance indicates it is generally insufficient alone because it relies on representations without independent corroboration. The auditor should supplement inquiry with inspection of vulnerability scan reports and remediation tickets to verify the manager''s assertions. While choice C overstates the limitation (inquiry is not prohibited), the principle that inquiry alone is insufficient for operating effectiveness evidence is well established in attestation standards.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3875;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (6 questions)
-- ============================================================

-- ID 3552: System Availability — interpreting emergency change metrics
UPDATE questions SET
  stem = 'During an IT audit of Silverpoint Technologies, the IS auditor reviews change management metrics and discovers that 28% of all changes over the past quarter were classified as emergency changes, compared to an industry benchmark of 5-10%. What conclusion should the auditor draw from this finding?',
  choices = '["The high rate indicates strong responsiveness because the team can rapidly deploy critical fixes", "The 28% rate falls within acceptable tolerances because emergency classification is a subjective judgment that varies by organization", "The elevated rate suggests inadequate planning, potential misuse of the emergency process to bypass normal controls, or systemic issues in capacity planning that warrant further investigation", "The auditor should not assess change classifications because this metric is outside the scope of IT general controls testing"]'::jsonb,
  explanation = 'Correct (C): Industry benchmarks suggest emergency changes should represent 5-10% of all changes. A rate of 28% indicates systemic issues such as poor capacity planning, developers bypassing normal CAB review by labeling changes as emergencies, or inadequate release planning. Per COBIT 2019 BAI06 (Managed IT Changes), the auditor should investigate whether emergency changes received appropriate post-implementation review. While choice A frames the high rate positively, excessive emergency changes indicate control weaknesses, not operational strength.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3552;

-- ID 3553: System Availability — end-to-end recovery testing gap
UPDATE questions SET
  stem = 'Harborview Medical Center tests its disaster recovery plan by failing over its database servers to the secondary data center. The infrastructure team reports successful failover in 12 minutes. However, the clinical application team reports that patient portal sessions did not reconnect for an additional 45 minutes. Why does this gap exist, and what does it reveal about the recovery testing approach?',
  choices = '["The gap exists because database failover should never be tested during business hours when application sessions are active", "The gap indicates that application recovery is always instantaneous after infrastructure failover, so the 45-minute delay must be caused by user error", "The gap exists because infrastructure-level failover and application-level recovery are the same process, meaning the 12-minute metric already accounts for the application delay", "The gap reveals that infrastructure recovery and application recovery are separate processes — even with fast database failover, applications require additional time for session reconnection, cache warming, and service dependency resolution"]'::jsonb,
  explanation = 'Correct (D): Infrastructure-level failover (database server switching) and application-level recovery (reconnecting sessions, warming caches, resolving service dependencies) are separate processes. End-to-end recovery time must account for both layers to represent actual service restoration. The 12-minute infrastructure metric alone understates total recovery time by 45 minutes. While choice C treats them as the same process, the scenario demonstrates they are distinct — organizations must test and measure both layers to validate that RTO targets reflect actual service recovery, not just infrastructure failover.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3553;

-- ID 3554: System Availability — applying reliability metrics to SLA evaluation
UPDATE questions SET
  stem = 'Crestfield Logistics is evaluating two cloud hosting providers for its order management system. Provider A reports an MTBF of 2,160 hours and MTTR of 4 hours. Provider B reports an MTBF of 720 hours and MTTR of 1 hour. Which provider offers greater system reliability, and what metric supports this conclusion?',
  choices = '["Provider B is more reliable because its 1-hour MTTR means faster recovery, which is the only metric that matters for availability", "Provider A offers greater reliability because its MTBF of 2,160 hours means the system operates approximately 90 days between failures on average, compared to Provider B''s 30-day average — higher MTBF indicates fewer disruptions", "Both providers offer identical reliability because MTBF and MTTR are inversely proportional and cancel each other out", "Neither provider''s reliability can be compared because MTBF only applies to hardware components, not cloud hosting services"]'::jsonb,
  explanation = 'Correct (B): Mean Time Between Failures (MTBF) measures the average operational time between system failures, directly indicating system reliability. Provider A''s MTBF of 2,160 hours (approximately 90 days) means significantly fewer disruptions than Provider B''s 720 hours (30 days). While Provider B recovers faster (1-hour MTTR vs 4-hour MTTR), Provider A experiences failures three times less frequently. Availability calculations (MTBF / (MTBF + MTTR)) show Provider A at 99.8% vs Provider B at 99.9%, but the threefold difference in failure frequency is the stronger reliability indicator.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3554;

-- ID 3555: System Availability — rollback plan execution after failed deployment
UPDATE questions SET
  stem = 'Everton Software deploys a major update to its billing platform on Saturday night. By Sunday morning, the operations team discovers that the update introduced a calculation error affecting 15% of invoices. The team activates the rollback plan to restore the pre-update version. What should the rollback plan include to ensure successful restoration?',
  choices = '["Documentation of the change for compliance records, filed after the rollback is complete and normal operations resume", "A predefined sequence of steps to reverse the deployment, restore the previous application version, verify data integrity against pre-deployment baselines, and confirm service functionality before declaring the rollback complete", "Instructions to accelerate deployment of a hotfix rather than reverting, because rollbacks are not recommended for production systems", "A statement that rollback is unnecessary because the development team can debug and patch the calculation error in the live environment"]'::jsonb,
  explanation = 'Correct (B): A rollback plan is a predefined set of steps to reverse a change and return the system to its pre-change state, serving as a safety net when a deployment introduces defects. It should include the specific reversal steps, database restoration procedures, data integrity verification against pre-deployment baselines, and service validation criteria. While choice A (documentation) is important for compliance, it occurs after the rollback — the plan''s primary purpose is the immediate operational reversal. Pre-defining these steps before deployment ensures the team can execute quickly under pressure.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3555;

-- ID 3556: System Availability — MTD and RTO relationship in BCP context
UPDATE questions SET
  stem = 'Bayside Financial''s business continuity team sets the Maximum Tolerable Downtime (MTD) for the wire transfer system at 4 hours based on regulatory requirements and customer impact analysis. The IT director proposes setting the Recovery Time Objective (RTO) at 4 hours to match the MTD exactly. Why is this approach problematic?',
  choices = '["The RTO should be set below the MTD to provide a safety margin — if recovery encounters complications and takes longer than planned, setting RTO equal to MTD leaves no buffer before the organization reaches its maximum tolerable threshold", "MTD and RTO should always be set to the same value because they measure the same recovery target from different perspectives", "The RTO should be set higher than the MTD to allow extra time for thorough testing before declaring the system recovered", "MTD and RTO are different names for the same metric, so setting them equal is technically redundant but not problematic"]'::jsonb,
  explanation = 'Correct (A): MTD represents the absolute maximum time a business process can be unavailable before causing unacceptable damage. The RTO should be set below the MTD to provide a safety margin for recovery complications such as unexpected hardware failures, data corruption, or personnel availability issues. If Bayside sets RTO at 4 hours equal to MTD, any delay in recovery immediately exceeds the tolerable threshold. While choice C suggests setting RTO above MTD, this would guarantee the organization exceeds its maximum tolerable downtime — the opposite of sound business continuity planning.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3556;

-- ID 3557: System Availability — release management coordination benefits
UPDATE questions SET
  stem = 'Alderton Insurance''s IT team deploys changes individually as they are completed — sometimes three or four separate deployments per week to the claims processing system. This approach has caused two outages in the past month when independently tested changes conflicted in production. The IT manager proposes implementing release management. How would release management address this problem?',
  choices = '["Release management eliminates the need for the change management process because it handles all change-related activities", "Release management allows changes to be deployed directly to production without testing because the bundled deployment reduces individual risk", "Release management coordinates multiple related changes into a single planned deployment package, enabling integration testing of interacting changes and reducing production disruptions from untested interactions", "Release management removes the CAB approval requirement because bundled deployments have already been reviewed collectively"]'::jsonb,
  explanation = 'Correct (C): Release management groups related changes into coordinated deployment packages deployed during planned maintenance windows. This enables integration testing of changes that may interact, reducing the risk of production conflicts like those Alderton experienced. While choice A suggests release management replaces change management, they are complementary ITIL practices — change management governs individual change assessment and approval, while release management coordinates the bundled deployment of approved changes into production.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3557;

-- ============================================================
-- THREATS, ATTACKS, AND VULNERABILITIES (1 questions)
-- ============================================================

-- ID 3613: Threats — double-extortion ransomware response considerations
UPDATE questions SET
  stem = 'Hartfield Manufacturing''s incident response team discovers that attackers have encrypted the company''s engineering file server and are demanding $500,000 in cryptocurrency. The attackers also provide a sample of stolen proprietary design files as proof of data exfiltration, threatening to publish all stolen data on a leak site within 72 hours. This dual-pressure technique is characteristic of which attack type, and what complication does it create for the incident response?',
  choices = '["Double-extortion ransomware, which combines file encryption with data exfiltration — even if backups enable recovery from encryption, the stolen data threat remains because the attacker already possesses copies of the proprietary files", "Traditional ransomware, which only encrypts files — the data theft threat is a bluff because ransomware cannot exfiltrate data while encrypting it", "A logic bomb, which triggers data destruction at a predetermined time — the 72-hour deadline confirms this classification", "Adware, which displays unwanted advertisements — the ransom demand is a social engineering tactic that does not involve actual encryption"]'::jsonb,
  explanation = 'Correct (A): Double-extortion ransomware combines traditional file encryption with data exfiltration, creating two pressure points. Attackers steal sensitive data before encrypting files, then threaten to publish stolen data if the ransom is not paid. This complicates incident response because even restoring from backups (addressing the encryption) does not resolve the data theft — the attacker retains copies of proprietary files. While choice B describes traditional ransomware (encryption only), the proof of stolen data and publication threat confirm the double-extortion variant.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 3613;

COMMIT;
