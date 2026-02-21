-- =============================================================================
-- Migration: Gap Coverage — ISC Questions
-- Section: ISC — Information Systems and Controls (section_id = 5)
-- New questions: 60 (3 topics × 20)
-- Purpose: Fill 3 blueprint groups that had empty questionTopics
-- =============================================================================

-- ============================================================
-- Change Management (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- correct_index distribution: 5×0, 5×1, 5×2, 5×3
-- ============================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'Which document formally initiates the change management process by describing the proposed modification, its business justification, and expected impact?',
 '["Post-implementation review report", "Release deployment plan", "Configuration audit checklist", "Change request form"]'::jsonb,
 3,
 'A change request form (or request for change, RFC) is the formal document that initiates the change management process. It captures the proposed modification, business justification, risk assessment, and expected impact. Post-implementation reviews occur after deployment, configuration audits verify baselines, and release deployment plans address how approved changes are moved to production.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'A software developer at a financial services company has written and tested a patch for a critical application. Under proper separation of duties, who should deploy the patch to the production environment?',
 '["The developer who wrote the patch", "A separate operations or release management team member", "The end user who reported the defect", "The project manager who approved the budget"]'::jsonb,
 1,
 'Separation of duties in change management requires that the person who develops code is not the same person who deploys it to production. A separate operations or release management team member should handle production deployments. This control prevents unauthorized modifications and reduces fraud risk. End users and project managers typically lack the technical access and role authorization for deployments.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'What is the PRIMARY purpose of a Change Advisory Board (CAB)?',
 '["To write code for requested system changes", "To perform user acceptance testing on all changes", "To assess, prioritize, and authorize proposed changes", "To monitor production systems for unauthorized changes"]'::jsonb,
 2,
 'The Change Advisory Board (CAB) is a cross-functional group that assesses, prioritizes, and authorizes proposed changes based on risk, impact, and resource requirements. The CAB does not write code, perform testing, or monitor production systems — those are responsibilities of development teams, QA teams, and operations monitoring, respectively.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'During an IT audit, the auditor discovers that 30% of production changes were deployed without documented approval. Which change management metric does this finding most directly affect?',
 '["Mean time to restore service", "Change lead time", "Deployment frequency", "Unauthorized change rate"]'::jsonb,
 3,
 'The unauthorized change rate measures the percentage of changes deployed without following the established approval process. A 30% rate of unapproved deployments directly indicates a control deficiency in authorization workflows. Mean time to restore measures incident recovery speed, deployment frequency measures how often changes are released, and change lead time measures duration from request to deployment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'A company uses a Configuration Management Database (CMDB) to track all IT assets. Which of the following BEST describes a configuration item (CI) within the CMDB?',
 '["Any IT component or service that must be managed to deliver an IT service", "Only physical hardware assets such as servers and routers", "Software licenses purchased but not yet deployed", "Temporary files created during system backups"]'::jsonb,
 0,
 'A configuration item (CI) is any component — hardware, software, documentation, or service — that must be managed to deliver an IT service. CIs are tracked in the CMDB with their attributes and relationships. The definition is not limited to physical hardware, unused licenses, or temporary files. CIs encompass the full range of components needed to support IT service delivery.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'An organization is planning a major ERP upgrade that will affect all business units simultaneously. Which deployment strategy is being used?',
 '["Canary deployment", "Phased rollout", "Big bang deployment", "Blue-green deployment"]'::jsonb,
 2,
 'A big bang deployment implements the change across the entire organization at once, affecting all business units simultaneously. This approach carries higher risk but avoids running parallel systems. Canary deployments release to a small subset first, phased rollouts deploy incrementally by group or location, and blue-green deployments maintain two identical environments for instant switchover.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'Which of the following is the MOST important control to establish before deploying any change to a production environment?',
 '["Updating the project charter with revised timelines", "Conducting stakeholder satisfaction surveys", "Verifying that a tested rollback procedure exists", "Archiving all prior change request forms"]'::jsonb,
 2,
 'A tested rollback procedure is the most critical pre-deployment control because it provides a recovery path if the change causes unexpected failures in production. Without rollback capability, a failed deployment could result in extended outages. Project charters, satisfaction surveys, and archiving prior forms, while useful, do not directly mitigate deployment risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'An emergency change is implemented at 2 AM to restore a critical financial reporting system. Under proper emergency change procedures, what should happen NEXT after the system is restored?',
 '["The change should be documented retrospectively and submitted for CAB review", "The change should be reversed since it was not pre-approved", "No further action is needed since the system is operational", "The developer should be disciplined for bypassing normal procedures"]'::jsonb,
 0,
 'Emergency change procedures allow expedited deployment when critical systems are down, but require retrospective documentation and CAB review afterward. This ensures the change is properly recorded, assessed for ongoing risk, and integrated into the CMDB. Reversing a successful emergency fix is counterproductive, taking no action creates audit gaps, and disciplining staff for following emergency procedures is inappropriate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'A post-implementation review of a recent infrastructure change reveals that the change caused two hours of unplanned downtime due to an untested dependency. Which change management process MOST likely failed?',
 '["Change request submission", "Change closure documentation", "Release scheduling", "Impact assessment and testing"]'::jsonb,
 3,
 'Impact assessment and testing should identify dependencies and validate that all affected components function correctly before production deployment. An untested dependency indicates that the impact assessment did not fully map the change''s effects, and testing did not cover the integration points. Change request submission, scheduling, and closure documentation would not have prevented this specific failure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'In configuration management, what does "baseline identification" refer to?',
 '["The process of deleting outdated configuration items from the CMDB", "A report showing all changes made during the current fiscal year", "The initial installation of software on a new server", "A formally reviewed and agreed-upon specification that serves as a reference point for future changes"]'::jsonb,
 3,
 'A baseline in configuration management is a formally reviewed and agreed-upon specification or configuration that serves as a reference point for subsequent changes. Baselines enable organizations to compare current states against known-good states and to understand what has changed. It is not about deleting items, initial installations, or annual change reports.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'An IT auditor is reviewing change management controls and finds that version control records show multiple developers committing directly to the main production branch without code review. Which risk does this practice PRIMARILY create?',
 '["Increased software licensing costs", "Introduction of untested or malicious code into production", "Slower development cycle times", "Excessive change advisory board meeting frequency"]'::jsonb,
 1,
 'Allowing direct commits to the production branch without code review bypasses a critical control that prevents untested, defective, or malicious code from reaching production. Code review (peer review) is a detective and preventive control that catches errors and unauthorized modifications before deployment. This practice does not primarily affect licensing costs, development speed, or CAB meeting frequency.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'A company implements a canary deployment strategy for a new transaction processing module. What does this strategy involve?',
 '["Deploying the change to all users simultaneously at a scheduled maintenance window", "Maintaining two identical production environments and switching traffic between them", "Releasing the change to a small subset of users first, then gradually expanding if no issues are detected", "Rolling back the previous version and replacing it with the new version overnight"]'::jsonb,
 2,
 'Canary deployment releases a change to a small percentage of users or servers first, monitors for issues, and gradually expands to the full population if the deployment is successful. This limits blast radius if problems occur. Deploying to all users simultaneously is big bang, maintaining two identical environments is blue-green, and overnight replacement describes a traditional cutover.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'Which of the following change management metrics BEST measures the overall effectiveness of the change management process?',
 '["Number of change requests submitted per month", "Average number of CAB members attending meetings", "Total cost of all approved changes", "Change success rate (percentage of changes that achieve objectives without causing incidents)"]'::jsonb,
 3,
 'The change success rate — the percentage of changes that achieve their intended objectives without causing unplanned incidents or outages — is the most direct measure of change management process effectiveness. Volume of requests, total costs, and CAB attendance are operational metrics but do not directly indicate whether changes are being managed successfully.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'During a SOC 2 examination, an auditor tests the operating effectiveness of change management controls. The auditor selects a sample of 40 changes and finds that 3 lack evidence of user acceptance testing (UAT) prior to deployment. What is the MOST appropriate conclusion?',
 '["The control is operating effectively because 92.5% compliance exceeds the 90% threshold", "The control deviation should be reported, and the auditor should evaluate whether it represents a deficiency in the control", "The finding is immaterial because only 3 changes were affected", "The entire change management process should be considered ineffective"]'::jsonb,
 1,
 'When testing operating effectiveness, deviations must be evaluated individually to determine whether they represent isolated incidents or systematic control deficiencies. Three deviations out of 40 (7.5%) should be reported and assessed for root cause, not automatically dismissed or used to condemn the entire process. There is no universal 90% threshold — the assessment depends on the nature and cause of the deviations.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'An organization''s CMDB shows that a production database server has 47 configuration items linked to it, including operating system patches, middleware, application instances, and network interfaces. An auditor wants to verify CMDB accuracy. Which procedure is MOST effective?',
 '["Reconciling CMDB records against automated discovery tool output to identify discrepancies", "Reviewing the CMDB data entry procedures manual", "Confirming that CMDB access is restricted to authorized personnel", "Checking that the CMDB software license is current"]'::jsonb,
 0,
 'Reconciling CMDB records against automated discovery tools (which scan the actual environment) is the most effective way to verify CMDB accuracy. This comparison identifies configuration items that exist in the environment but are missing from the CMDB, and vice versa. Reviewing procedures, checking access controls, and verifying licenses address process and security but do not validate data accuracy.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'A financial institution requires that all standard changes go through a five-stage workflow: request, assess, authorize, implement, and review. An auditor discovers that the "review" stage is consistently skipped. What is the PRIMARY risk of omitting post-implementation review?',
 '["Inability to identify recurring problems, measure change effectiveness, and improve the process over time", "Increased hardware procurement costs", "Failure to submit change requests on time", "Loss of CMDB backup data"]'::jsonb,
 0,
 'Post-implementation review (PIR) evaluates whether the change achieved its objectives, identifies lessons learned, and drives process improvement. Skipping PIR means the organization cannot identify patterns in failed changes, measure effectiveness, or refine future change procedures. This is distinct from procurement costs, request timeliness, or CMDB backup concerns.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'Which of the following BEST describes the relationship between change management and IT general controls (ITGCs)?',
 '["Change management is a category of ITGC that ensures modifications to systems and applications are authorized, tested, and documented", "Change management replaces the need for all other IT general controls", "IT general controls are a subset of change management procedures", "Change management only applies to application-level changes, not infrastructure"]'::jsonb,
 0,
 'Change management is one of the primary categories of IT general controls (alongside logical access, computer operations, and program development). As an ITGC, change management ensures that modifications to IT systems — whether applications, infrastructure, or configurations — are properly authorized, tested, approved, and documented. It does not replace other ITGCs, is not a superset of them, and applies to all types of IT changes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'An organization uses a phased rollout to deploy a new general ledger module, releasing it to one business unit at a time over six weeks. During the rollout, the second business unit reports data migration errors. What is the PRIMARY advantage of the phased approach in this scenario?',
 '["It eliminates the need for rollback procedures", "It allows the organization to halt the rollout, fix the issue, and prevent the error from affecting remaining business units", "It guarantees that no data will be lost during migration", "It reduces the total cost of the deployment"]'::jsonb,
 1,
 'The primary advantage of a phased rollout is containment — when issues are discovered, the organization can pause the rollout, resolve the problem, and protect remaining business units from the same error. Phased deployments do not eliminate rollback needs, guarantee zero data loss, or necessarily reduce total cost. Their key benefit is limiting the blast radius of failures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'An IT auditor is evaluating whether emergency changes are properly controlled. Which of the following findings would represent the GREATEST control weakness?',
 '["Emergency changes require verbal approval from the IT director before implementation", "Emergency changes are documented within 24 hours and reviewed by the CAB at the next scheduled meeting", "Emergency changes bypass all approval, testing, and documentation requirements with no retrospective review", "Emergency changes are limited to a predefined list of authorized personnel who can implement them"]'::jsonb,
 2,
 'Bypassing all approval, testing, and documentation with no retrospective review represents the greatest weakness because there is no compensating control to ensure emergency changes are appropriate, effective, or recorded. Verbal approval (with follow-up documentation), 24-hour documentation with CAB review, and limiting authorized personnel are all reasonable compensating controls for emergency situations.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Change Management',
 'Release management planning for a major system upgrade includes defining deployment windows, coordinating with affected teams, preparing communication plans, and establishing success criteria. Which additional element is MOST critical to include in the release plan?',
 '["A list of all past changes made to the system", "Detailed rollback steps and criteria that trigger a rollback decision", "The vendor''s original software documentation", "A summary of the organization''s IT budget for the fiscal year"]'::jsonb,
 1,
 'Detailed rollback steps and clearly defined rollback trigger criteria are essential components of any release plan. Without them, a failed deployment could lead to extended outages because the team lacks a predefined recovery path. Historical change lists, vendor documentation, and budget summaries, while useful references, do not directly protect against deployment failures.',
 'hard');

-- ============================================================
-- Data Protection Technologies (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- correct_index distribution: 5×0, 5×1, 5×2, 5×3
-- ============================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'Which type of Data Loss Prevention (DLP) system monitors network traffic to detect and block sensitive data being transmitted outside the organization?',
 '["Network DLP", "Endpoint DLP", "Cloud DLP", "Storage DLP"]'::jsonb,
 0,
 'Network DLP monitors data in motion by inspecting network traffic at egress points (email gateways, web proxies, firewalls) to detect and block unauthorized transmission of sensitive data. Endpoint DLP operates on individual devices, cloud DLP protects data in cloud services, and storage DLP scans data at rest in repositories.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'Under NIST SP 800-88 Guidelines for Media Sanitization, which sanitization method renders data recovery infeasible even with state-of-the-art laboratory techniques?',
 '["Clearing", "Purging", "Destroying", "Formatting"]'::jsonb,
 2,
 'Destroying (physical destruction through disintegration, melting, incineration, or shredding) renders data recovery infeasible even with advanced laboratory techniques. Purging makes recovery infeasible using state-of-the-art techniques but keeps the media physically intact. Clearing protects against simple recovery methods but not laboratory techniques. Formatting is not a NIST 800-88 sanitization category and does not reliably remove data.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'A healthcare organization classifies its data into four levels: Public, Internal, Confidential, and Restricted. Patient medical records containing protected health information (PHI) would MOST likely be classified as which level?',
 '["Public", "Internal", "Confidential", "Restricted"]'::jsonb,
 3,
 'Patient medical records containing PHI require the highest level of protection due to regulatory requirements (HIPAA) and the severe consequences of unauthorized disclosure. The Restricted classification typically applies to data whose unauthorized disclosure would cause the most significant harm — legal liability, regulatory penalties, or serious reputational damage. Confidential is the next level down and might apply to less sensitive personal data.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'An organization wants to protect sensitive data stored in a cloud database while still allowing authorized applications to process the original values. Which technology allows the database to store substitute values that preserve the format of the original data?',
 '["Full-disk encryption", "Format-preserving encryption (FPE)", "Data masking", "Digital watermarking"]'::jsonb,
 1,
 'Format-preserving encryption (FPE) encrypts data while maintaining its original format and length — for example, a 16-digit credit card number encrypts to another 16-digit number. This allows existing applications and database schemas to function without modification. Full-disk encryption protects the entire volume, data masking replaces values with fictitious data (not reversible encryption), and digital watermarking embeds tracking information.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'What is the PRIMARY difference between pseudonymization and anonymization of personal data?',
 '["Pseudonymized data can be re-identified using a separately stored key, while anonymized data cannot be traced back to the individual", "Anonymized data is stored in encrypted form, while pseudonymized data is not", "Pseudonymization deletes the data, while anonymization retains it", "There is no meaningful difference between the two techniques"]'::jsonb,
 0,
 'Pseudonymization replaces direct identifiers with artificial identifiers (pseudonyms) but retains a mapping key that allows re-identification when needed. Anonymization removes or transforms data so that re-identification is not reasonably possible, even with additional information. This distinction has significant regulatory implications — under GDPR, pseudonymized data is still personal data, while truly anonymized data falls outside GDPR scope.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'A company is decommissioning encrypted cloud storage volumes that contained financial records. The encryption keys are managed through a dedicated key management service. Which data destruction method is MOST efficient for this scenario?',
 '["Overwriting all storage blocks with random data three times", "Physically destroying the cloud provider''s hard drives", "Crypto-shredding — destroying the encryption keys so the ciphertext is irrecoverable", "Requesting the cloud provider perform degaussing on the storage media"]'::jsonb,
 2,
 'Crypto-shredding (cryptographic erasure) destroys the encryption keys, rendering the encrypted data permanently irrecoverable without needing to access or overwrite the underlying storage. This is particularly effective in cloud environments where the organization does not have physical access to storage media. Overwriting in cloud environments may not reach all copies, physical destruction is impractical for cloud resources, and degaussing is the cloud provider''s concern, not the tenant''s.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'Which encryption standard is MOST commonly used to protect data at rest in enterprise environments?',
 '["RSA-2048", "AES-256", "SHA-256", "MD5"]'::jsonb,
 1,
 'AES-256 (Advanced Encryption Standard with 256-bit keys) is the most widely adopted symmetric encryption standard for protecting data at rest. It provides strong confidentiality with efficient performance for bulk data encryption. RSA-2048 is an asymmetric algorithm typically used for key exchange, SHA-256 is a hash function (not encryption), and MD5 is an obsolete hash function with known collision vulnerabilities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'An endpoint DLP agent detects that an employee is attempting to copy a spreadsheet containing Social Security numbers to a USB drive. The DLP policy is configured to "block and notify." What happens?',
 '["The copy operation is blocked, the employee receives a notification, and the event is logged", "The file is encrypted and allowed to be copied", "The file is quarantined on the USB drive", "The employee''s account is automatically disabled"]'::jsonb,
 0,
 'A "block and notify" DLP policy prevents the data transfer, displays a notification to the user explaining why the action was blocked, and logs the event for security team review. The file is not encrypted and allowed through, not quarantined on the target device, and the user''s account is not automatically disabled — those would be different policy actions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'A Cloud Access Security Broker (CASB) deployed in proxy mode inspects traffic between users and cloud applications. Which of the following capabilities does a CASB provide that a traditional network firewall does NOT?',
 '["Inspecting encrypted cloud application traffic and enforcing data protection policies at the application level", "Blocking traffic based on source and destination IP addresses", "Filtering traffic based on port numbers", "Logging all network packets for forensic analysis"]'::jsonb,
 0,
 'A CASB provides application-level visibility and control for cloud services — it can inspect encrypted traffic, enforce DLP policies within cloud applications, detect shadow IT, and apply granular access controls based on user identity and data sensitivity. Traditional firewalls operate at the network level (IP addresses, ports, protocols) and lack the ability to understand cloud application context or enforce data protection policies within those applications.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'An organization performs a Data Protection Impact Assessment (DPIA) before launching a new customer analytics platform. Which of the following is a PRIMARY objective of the DPIA?',
 '["To calculate the total cost of data storage infrastructure", "To benchmark the platform''s performance against competitors", "To satisfy a regulatory requirement and identify, assess, and mitigate privacy risks to individuals before processing begins", "To determine the number of database administrators needed"]'::jsonb,
 2,
 'A Data Protection Impact Assessment (DPIA) — required under GDPR Article 35 for high-risk processing — systematically identifies, assesses, and mitigates privacy risks to data subjects before processing begins. It evaluates necessity, proportionality, and compliance measures. DPIAs are not about infrastructure costs, competitive benchmarking, or staffing decisions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'A database administrator needs to provide a realistic test dataset to developers without exposing actual customer information. The administrator replaces real names, addresses, and account numbers with fictitious but structurally similar values. Which technique is being used?',
 '["Dynamic data masking", "Homomorphic encryption", "Static data masking", "Tokenization"]'::jsonb,
 2,
 'Static data masking creates a permanent copy of the database with sensitive values replaced by fictitious but structurally similar data. This copy is used in non-production environments. Dynamic data masking applies masking rules in real-time at the point of query without modifying the underlying data. Tokenization replaces values with random tokens stored in a vault, and homomorphic encryption allows computation on encrypted data.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'Which protocol provides encryption for data in transit between a web browser and a web server?',
 '["AES", "TLS", "IPSec", "SSH"]'::jsonb,
 1,
 'TLS (Transport Layer Security) is the protocol that encrypts data in transit between web browsers and web servers (HTTPS). It provides confidentiality, integrity, and authentication for web communications. AES is a symmetric encryption algorithm (used within TLS but is not a protocol), IPSec secures network-layer communications (typically VPNs), and SSH provides encrypted remote terminal access.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'An organization''s DLP system uses content inspection to identify sensitive data. Which technique analyzes documents against predefined patterns such as Social Security number formats (XXX-XX-XXXX) or credit card number structures?',
 '["Exact data matching", "Statistical analysis", "Regular expression pattern matching", "Document fingerprinting"]'::jsonb,
 2,
 'Regular expression (regex) pattern matching identifies sensitive data by searching for predefined structural patterns — such as the XXX-XX-XXXX format for SSNs or the Luhn algorithm structure for credit card numbers. Exact data matching compares against known sensitive values from a database, statistical analysis uses machine learning to classify content, and document fingerprinting creates hashes of sensitive documents for comparison.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'A company encrypts its backup tapes using AES-256 before storing them at an off-site facility. The encryption keys are stored on the same backup tapes alongside the encrypted data. What is the PRIMARY weakness of this approach?',
 '["AES-256 is not strong enough for backup encryption", "Off-site storage facilities cannot handle encrypted tapes", "Backup tapes do not support AES-256 encryption", "If the tapes are stolen or compromised, the attacker has both the ciphertext and the keys needed to decrypt it"]'::jsonb,
 3,
 'Storing encryption keys alongside the encrypted data on the same media completely undermines the protection. If the tapes are lost, stolen, or compromised, an attacker possesses both the ciphertext and the decryption keys, rendering the encryption useless. Encryption keys should be stored separately from encrypted data — typically in a dedicated key management system with its own access controls and backup procedures.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'An organization achieves k-anonymity with k=5 in a published dataset. What does this mean?',
 '["Each record in the dataset has been encrypted with a 5-bit key", "The dataset has been backed up to exactly 5 separate locations", "The dataset contains no more than 5 unique records", "Each individual in the dataset can be distinguished from at least 4 other individuals sharing the same quasi-identifier values"]'::jsonb,
 3,
 'K-anonymity with k=5 means that for every combination of quasi-identifiers (attributes like age, zip code, gender that could be used to identify someone), there are at least 5 records sharing those same values. This ensures that any individual cannot be distinguished from at least 4 others, providing a degree of privacy protection against re-identification attacks.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'A financial institution implements tokenization for credit card numbers stored in its payment processing database. How does tokenization differ from encryption?',
 '["Tokenization is reversible while encryption is not", "Tokenization can only be applied to numeric data", "Encryption is faster than tokenization in all cases", "Tokenization replaces sensitive data with a non-mathematically-related substitute token stored in a secure vault, while encryption transforms data using a mathematical algorithm and key"]'::jsonb,
 3,
 'Tokenization replaces sensitive data with a randomly generated substitute token that has no mathematical relationship to the original value. The mapping between tokens and original values is stored in a secure token vault. Encryption transforms data using a mathematical algorithm and key, meaning the relationship between plaintext and ciphertext is mathematical. Both are reversible by authorized parties, tokenization is not limited to numeric data, and performance depends on implementation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'Which of the following BEST describes dynamic data masking?',
 '["Permanently replacing sensitive data in a non-production database copy", "Applying masking rules at query time so that unauthorized users see obfuscated values while the underlying data remains unchanged", "Encrypting data fields using a symmetric key before writing to disk", "Deleting sensitive columns from database tables after a retention period expires"]'::jsonb,
 1,
 'Dynamic data masking applies obfuscation rules at the point of data retrieval (query time), so unauthorized users see masked values while the original data remains intact in the database. Authorized users with appropriate privileges see the real values. Permanently replacing data in a copy is static masking, field-level encryption is a different technique, and deleting columns is data destruction.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'An IT auditor discovers that an organization''s cloud encryption architecture uses customer-managed encryption keys (CMEK) stored in the cloud provider''s key management service. The auditor is concerned about a specific risk. Which risk is MOST relevant?',
 '["The cloud provider could access the keys and decrypt customer data, undermining the purpose of customer-managed encryption", "Customer-managed keys are inherently weaker than provider-managed keys", "CMEK is not compatible with AES encryption algorithms", "Using CMEK prevents the organization from using multi-factor authentication"]'::jsonb,
 0,
 'When customer-managed keys are stored within the cloud provider''s own key management service, the provider technically has access to the key material, which could undermine the intended separation of control. For maximum control, organizations may use external key management (BYOK/Hold Your Own Key) where keys never leave the customer''s premises. CMEKs are not inherently weaker, are compatible with AES, and do not affect MFA capabilities.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'Digital rights management (DRM) technology is applied to a confidential financial report. Which capability does DRM provide that standard file encryption alone does NOT?',
 '["Preventing unauthorized users from opening the file", "Compressing the file to reduce storage requirements", "Converting the file to a read-only PDF format", "Controlling what authorized users can do with the file after it is opened, such as restricting printing, copying, or forwarding"]'::jsonb,
 3,
 'DRM provides persistent, granular usage controls that remain with the document even after it is opened by an authorized user. This includes restricting printing, copying, forwarding, screen capture, and setting expiration dates. Standard encryption only controls access (open vs. cannot open) but does not restrict what the user does with the content once decrypted.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Protection Technologies',
 'An organization must comply with both GDPR and HIPAA for data stored in multiple cloud regions. The security team recommends implementing envelope encryption for the cloud databases. What does envelope encryption involve?',
 '["Encrypting all data with a single master key stored on premises", "Encrypting data with a data encryption key (DEK), then encrypting the DEK with a separate key encryption key (KEK)", "Sending encrypted data in sealed physical envelopes to the backup site", "Applying two different encryption algorithms sequentially to the same data"]'::jsonb,
 1,
 'Envelope encryption is a two-tier approach: data is encrypted with a data encryption key (DEK), and the DEK is then encrypted with a key encryption key (KEK). This approach improves security and key management — the KEK can be rotated without re-encrypting all data, and the DEK never needs to be transmitted or stored in plaintext. It is not single-key encryption, physical mail, or sequential algorithm application.',
 'hard');

-- ============================================================
-- SOC Report Content and Structure (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- correct_index distribution: 5×0, 5×1, 5×2, 5×3
-- ============================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'Which of the following is included in the management description of the system within a SOC report?',
 '["The auditor''s opinion on control effectiveness", "The five components of the system: infrastructure, software, people, procedures, and data", "The user entity''s internal control environment", "A list of all subservice organizations and their financial statements"]'::jsonb,
 1,
 'The management description of the system in a SOC report covers the five components that make up the system boundary: infrastructure, software, people, procedures, and data. This description is prepared by management (not the auditor) and provides context for the controls being examined. The auditor''s opinion is in a separate section, user entity controls are described as CUECs, and subservice organization financial statements are not included.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'In a SOC 2 Type II report, the management assertion includes a statement that controls were suitably designed AND what additional claim?',
 '["That the controls operated effectively throughout the specified period", "That the controls comply with all applicable laws and regulations", "That no security breaches occurred during the reporting period", "That user entities are responsible for implementing all controls"]'::jsonb,
 0,
 'In a SOC 2 Type II report, management''s assertion addresses both the suitability of design and the operating effectiveness of controls throughout the specified examination period. A Type I report only addresses suitability of design as of a point in time. The assertion does not claim legal compliance, absence of breaches, or shift responsibility to user entities.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'What is the PRIMARY difference between a SOC 1 report and a SOC 2 report?',
 '["SOC 1 reports address controls relevant to user entities'' financial reporting (ICFR), while SOC 2 reports address controls related to trust services criteria (security, availability, processing integrity, confidentiality, privacy)", "SOC 1 reports are always Type I, while SOC 2 reports are always Type II", "SOC 1 reports are public documents, while SOC 2 reports are restricted", "SOC 2 reports only apply to cloud service providers"]'::jsonb,
 0,
 'The fundamental difference is scope and purpose: SOC 1 reports (under SSAE 18 / AT-C 320) evaluate controls at a service organization relevant to user entities'' internal control over financial reporting (ICFR). SOC 2 reports (under AT-C 205) evaluate controls based on trust services criteria. Both can be Type I or Type II, both have restricted distribution, and SOC 2 applies to any service organization, not just cloud providers.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'A company outsources payroll processing to a third-party provider. The provider''s SOC 1 Type II report identifies several complementary user entity controls (CUECs). What is the user entity''s responsibility regarding these CUECs?',
 '["The user entity must implement the CUECs within its own control environment for the overall control objectives to be achieved", "The user entity can ignore CUECs since the service organization is responsible for all controls", "CUECs are optional recommendations that do not affect control effectiveness", "The user entity should request that the service organization implement the CUECs instead"]'::jsonb,
 0,
 'Complementary user entity controls (CUECs) are controls that the service organization''s system design assumes the user entity has in place. If user entities do not implement CUECs, the overall control objectives may not be achieved, even if the service organization''s controls operate effectively. CUECs are not optional — they are necessary components of the complete control environment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'A SOC 2 report maps each control to one or more trust services criteria. The five trust services criteria categories are security, availability, processing integrity, confidentiality, and privacy. Which criterion is ALWAYS included in every SOC 2 engagement?',
 '["Availability", "Security (common criteria)", "Processing integrity", "Privacy"]'::jsonb,
 1,
 'Security (the common criteria) is mandatory in every SOC 2 engagement because it forms the foundation for all other trust services criteria. The common criteria address foundational controls like logical access, system operations, and change management. Availability, processing integrity, confidentiality, and privacy are optional criteria that can be added based on the nature of the service and user entity needs.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'When a service organization uses a subservice organization and the SOC report uses the "carve-out" method, what does this mean?',
 '["The subservice organization''s controls are included in the service organization''s SOC report scope", "The subservice organization is no longer responsible for any controls", "The subservice organization''s controls are excluded from the service organization''s SOC report scope, and the report identifies the functions performed by the subservice organization", "The service auditor tests the subservice organization''s controls directly"]'::jsonb,
 2,
 'Under the carve-out method, the subservice organization''s controls are excluded from the service organization''s SOC report scope. The report identifies the nature of services provided by the subservice organization and the functions it performs, but does not include testing of the subservice organization''s controls. User entities would need to obtain a separate SOC report from the subservice organization. Under the inclusive method, the subservice organization''s controls are included.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'Which section of a SOC 1 Type II report contains the service auditor''s detailed descriptions of tests performed on each control and the results of those tests?',
 '["Section I — Auditor''s report (opinion)", "Section II — Management''s assertion", "Section III — Description of the service organization''s system", "Section IV — Tests of controls and results"]'::jsonb,
 3,
 'Section IV of a SOC 1 Type II report contains the service auditor''s description of the tests of controls and the results thereof. This section details the specific tests performed for each control objective, the nature and extent of testing, and whether any deviations were identified. Section I contains the opinion, Section II contains management''s assertion, and Section III contains the system description.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'A user auditor is reviewing a service organization''s SOC 2 Type II report and notices that several controls have "deviations noted" in the test results. What does a deviation indicate?',
 '["The control does not exist in the service organization''s environment", "The control was intentionally removed by management during the period", "One or more instances were found where the control did not operate as described during the examination period", "The service auditor was unable to perform any testing of the control"]'::jsonb,
 2,
 'A deviation in a SOC report means that the service auditor found one or more instances where a control did not operate as described in the system description during the examination period. Deviations do not necessarily mean the control does not exist — the control may have operated correctly in most instances but failed in specific cases. The user entity must evaluate the nature and frequency of deviations to assess their impact.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'How does a SOC 3 report differ from a SOC 2 report in terms of distribution?',
 '["SOC 3 reports are restricted to user entities and their auditors, while SOC 2 reports are publicly available", "Both report types have identical distribution restrictions", "SOC 2 reports are restricted to user entities and their auditors under NDA, while SOC 3 reports are general-use reports available to the public", "SOC 3 reports are only available to regulatory agencies"]'::jsonb,
 2,
 'SOC 2 reports are restricted-use reports — they can only be distributed to user entities, their auditors, and specified parties, typically under a non-disclosure agreement. SOC 3 reports are general-use reports that contain a summary opinion without detailed control descriptions or test results, making them suitable for public distribution (e.g., on a company''s website).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'A service organization''s SOC 2 report covers the period January 1 through September 30. A user entity''s fiscal year ends December 31. The three-month gap between the SOC report period and the user entity''s year-end is known as what?',
 '["The bridge period (or gap period), which may require a bridge letter from the service organization", "The testing window", "The remediation period", "The pre-engagement phase"]'::jsonb,
 0,
 'A bridge period (or gap period) occurs when the SOC report period does not extend through the user entity''s reporting date. During this gap, the user entity and its auditor lack assurance about control operations. A bridge letter from the service organization can provide representations about whether there were significant changes to controls or known issues during the gap period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'Management''s assertion in a SOC 1 report states that the description "fairly presents" the service organization''s system. What does "fairly presents" mean in this context?',
 '["The description contains no information whatsoever about system weaknesses", "The description includes every technical detail about the organization''s infrastructure", "The description has been reviewed and approved by external legal counsel", "The description is presented in accordance with the description criteria and does not omit or distort information relevant to the scope of the engagement"]'::jsonb,
 3,
 'Fair presentation means the system description is prepared in accordance with the applicable description criteria and does not omit or distort information that is relevant to user entities'' understanding of the system and the controls in place. It does not require disclosure of every technical detail, does not mean there are no weaknesses, and does not require legal counsel review.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'In a SOC 2 Type I report, the service auditor''s opinion addresses which of the following?',
 '["Whether controls were operating effectively throughout a specified period", "Whether user entities have implemented all complementary controls", "Whether the service organization complies with GDPR requirements", "Whether the description is fairly presented and controls are suitably designed as of a specific date"]'::jsonb,
 3,
 'A SOC 2 Type I report opinion addresses two things as of a specific point in time (not a period): (1) whether the description fairly presents the system, and (2) whether the controls are suitably designed to meet the applicable trust services criteria. It does not address operating effectiveness (that is Type II), GDPR compliance, or user entity controls.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'A service organization uses the inclusive method for its subservice organization in a SOC 1 report. Which of the following statements is TRUE?',
 '["The subservice organization''s relevant controls are included in the scope of the service auditor''s examination", "The service auditor is not required to test the subservice organization''s controls", "The user entity does not need to consider the subservice organization''s controls", "The subservice organization must issue its own separate SOC 1 report"]'::jsonb,
 0,
 'Under the inclusive method, the subservice organization''s relevant controls are included within the scope of the service organization''s SOC report. The service auditor tests both the service organization''s and the subservice organization''s controls. This eliminates the need for a separate SOC report from the subservice organization, but requires the service auditor to have access to the subservice organization''s environment.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'Which of the following BEST describes complementary subservice organization controls (CSOCs)?',
 '["Controls the user entity is expected to implement", "Controls required by the trust services criteria but not implemented by any party", "Controls that the service auditor implements during testing", "Controls that the service organization assumes the subservice organization has implemented for the overall control objectives to be achieved"]'::jsonb,
 3,
 'Complementary subservice organization controls (CSOCs) are controls that the service organization''s system design assumes the subservice organization has in place. When using the carve-out method, the SOC report identifies CSOCs so user entities understand that additional controls outside the report scope are necessary for control objectives to be fully achieved. CSOCs are distinct from CUECs (which user entities implement).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'An IT auditor at a user entity is reviewing a service organization''s SOC 2 Type II report. The report covers the period January 1 through December 31 and includes the trust services criteria for security and availability. The auditor notices that the system description references a data center migration that occurred on July 15. Why is this detail significant?',
 '["It indicates the report should have been split into two separate reports", "It is irrelevant because data center changes are not within SOC 2 scope", "The auditor should evaluate whether the controls were tested both before and after the migration, since the system environment changed materially during the period", "The migration automatically invalidates the service auditor''s opinion"]'::jsonb,
 2,
 'A material change to the system environment (such as a data center migration) during the examination period means the controls may have operated differently before and after the change. The user entity auditor should evaluate whether the service auditor tested controls in both environments and whether the opinion adequately covers the entire period. It does not automatically invalidate the opinion or require separate reports.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'A user entity''s external auditor is performing a financial statement audit and plans to rely on a service organization''s SOC 1 Type II report. Before placing reliance on the report, the external auditor should perform all of the following EXCEPT:',
 '["Evaluate the service auditor''s professional qualifications and independence", "Assess whether the controls tested in the SOC report are relevant to the user entity''s financial statement assertions", "Re-perform all of the service auditor''s control tests", "Consider whether complementary user entity controls have been implemented"]'::jsonb,
 2,
 'The user entity''s external auditor does not need to re-perform all of the service auditor''s control tests — that would defeat the purpose of relying on the SOC report. Instead, the auditor should evaluate the service auditor''s competence and independence, assess relevance of tested controls to financial statement assertions, review deviations, consider CUECs, and evaluate the bridge period if applicable.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'The system description section of a SOC report defines the "system boundaries." What do system boundaries establish?',
 '["The geographic locations where the service organization operates", "The scope of the engagement by identifying which services, infrastructure, software, people, procedures, and data are included in (and excluded from) the examination", "The maximum number of user entities that can rely on the report", "The time period during which the service auditor conducted fieldwork"]'::jsonb,
 1,
 'System boundaries define the scope of the SOC engagement by delineating which components — services, infrastructure, software, people, procedures, and data — are included in and excluded from the examination. Clear boundaries are essential so that user entities understand exactly what the report covers and what falls outside its scope. Boundaries are not about geographic locations, user entity limits, or fieldwork timing.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'A service organization receives a qualified opinion in its SOC 2 Type II report. What does a qualified opinion indicate?',
 '["The service auditor identified no exceptions or deviations in any controls tested", "The description is fairly presented and controls are suitably designed and operating effectively, except for specific matters identified in the opinion", "The service organization''s controls are completely ineffective", "The service auditor was unable to perform any testing procedures"]'::jsonb,
 1,
 'A qualified opinion indicates that, except for specific matters described in the opinion, the system description is fairly presented and the controls are suitably designed and operating effectively. It signals a limited scope issue or a specific control deficiency, not a wholesale failure. An unqualified opinion means no exceptions, an adverse opinion indicates pervasive issues, and a disclaimer indicates inability to form an opinion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'A user entity receives a SOC 1 report from its payroll service provider. The report identifies that user entities are responsible for "reviewing and approving payroll output reports before disbursement" as a complementary user entity control (CUEC). If the user entity does NOT perform this review, what is the consequence?',
 '["The service organization''s SOC report becomes invalid", "The control objective related to payroll accuracy may not be achieved, even though the service organization''s controls operated effectively", "The service auditor must revise the SOC report to remove the CUEC", "There is no consequence because CUECs are voluntary"]'::jsonb,
 1,
 'If a user entity fails to implement a CUEC, the relevant control objective may not be fully achieved, even if the service organization''s own controls operated effectively as described. The SOC report''s control objectives are designed assuming both the service organization''s controls and the CUECs are in place. The SOC report does not become invalid, and CUECs are not voluntary — they are expected components of the complete control framework.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Report Content and Structure',
 'An organization is choosing between requesting a SOC 2 Type I or SOC 2 Type II report from a new cloud service provider. The organization wants assurance that the provider''s controls have been operating effectively over time, not just that they are well-designed at a point in time. Which report type should the organization request, and why?',
 '["Type I, because it covers a longer period than Type II", "Neither type — only SOC 3 reports provide operating effectiveness assurance", "Either type, because both provide the same level of assurance", "Type II, because it includes testing of operating effectiveness over a specified period, whereas Type I only addresses suitability of design as of a point in time"]'::jsonb,
 3,
 'A SOC 2 Type II report covers a specified period and includes testing of both suitability of design and operating effectiveness of controls throughout that period. A Type I report only addresses design suitability as of a specific date without testing whether controls actually operated effectively over time. Type II provides a higher level of assurance and is preferred when ongoing operational effectiveness matters.',
 'hard');
