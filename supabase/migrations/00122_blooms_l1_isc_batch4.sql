-- Migration: Bloom's L1 rebalancing — ISC batch 4 (48 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 48 L2 (Application) questions to L1 (Remember/Understand) depth for ISC section
-- Affected topics: Security and Control Frameworks, Security Controls and Monitoring, Data Management and Lifecycle

BEGIN;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (5 questions)
-- ============================================================

-- ID 3606: Security and Control Frameworks — NIST SP 800-66 purpose
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'What does NIST SP 800-66 provide guidance on?',
  choices = '["Implementing HIPAA security requirements for healthcare organizations", "Conducting financial statement audits", "Managing software development lifecycles", "Configuring wireless network access points"]'::jsonb,
  explanation = 'Correct (A): NIST SP 800-66 provides implementation guidance specifically for HIPAA security requirements, helping healthcare organizations map HIPAA provisions to appropriate security controls. Organizations often use it in conjunction with the NIST CSF for broader cybersecurity risk management. (B) is wrong because financial statement audits are governed by auditing standards such as GAAS and PCAOB standards, not NIST publications. (C) is wrong because software development lifecycles are addressed by frameworks like NIST SP 800-64 or the SDLC model, not SP 800-66.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3606;

-- ID 3608: Security and Control Frameworks — COBIT EDM domain definition
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'In COBIT 2019, which domain covers the governance activities of evaluating, directing, and monitoring?',
  choices = '["Align, Plan and Organize (APO)", "Evaluate, Direct and Monitor (EDM)", "Build, Acquire and Implement (BAI)", "Deliver, Service and Support (DSS)"]'::jsonb,
  explanation = 'Correct (B): Evaluate, Direct and Monitor (EDM) is the governance domain in COBIT 2019. It encompasses the board or governing body''s responsibilities to evaluate strategic options, direct management on the chosen strategy, and monitor performance outcomes. (A) is wrong because APO is a management domain covering planning and alignment activities. (D) is wrong because DSS is a management domain covering operational delivery and support.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3608;

-- ID 3610: Security and Control Frameworks — COBIT as umbrella framework benefit
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'What is the primary advantage of using COBIT 2019 as an umbrella IT governance framework?',
  choices = '["COBIT eliminates the need to comply with individual regulations", "COBIT is a mandatory regulatory requirement for all organizations", "COBIT provides a unified governance structure that maps to multiple regulatory requirements, reducing duplication of effort", "COBIT replaces all other security frameworks entirely"]'::jsonb,
  explanation = 'Correct (C): COBIT''s comprehensive structure allows organizations to map multiple regulatory requirements (such as SOX, PCI DSS, GLBA) to a single governance framework. This creates a unified control environment where one control implementation can satisfy overlapping requirements, reducing duplication and management complexity. (A) is wrong because COBIT does not eliminate the obligation to comply with applicable regulations. (B) is wrong because COBIT is a voluntary best-practice framework, not a regulatory mandate.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3610;

-- ID 3611: Security and Control Frameworks — Security document hierarchy
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'In a security program, which document type provides step-by-step instructions for performing a specific task?',
  choices = '["A security policy", "A security standard", "A security guideline", "A security procedure"]'::jsonb,
  explanation = 'Correct (D): Procedures provide detailed, step-by-step instructions for performing specific tasks, such as configuring a server or responding to an incident. The security policy provides high-level direction, standards define mandatory requirements, and guidelines offer optional recommendations. (A) is wrong because policies state organizational intent and direction without prescribing specific steps. (C) is wrong because guidelines offer optional best practices rather than mandatory step-by-step instructions.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3611;

-- ID 3612: Security and Control Frameworks — Control mapping definition
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'What is control mapping in the context of framework integration?',
  choices = '["Identifying where a single control satisfies requirements across multiple frameworks to reduce redundant implementations", "Eliminating all overlapping regulatory requirements", "Replacing multiple frameworks with a single proprietary framework", "Ignoring duplicate compliance obligations across regulations"]'::jsonb,
  explanation = 'Correct (A): Control mapping identifies overlapping requirements across frameworks so that a single control implementation can satisfy multiple compliance obligations simultaneously. For example, an access control meeting SOX requirements may also satisfy PCI DSS Requirement 7 and GLBA safeguard provisions. This reduces duplication and streamlines audit evidence collection. (B) is wrong because control mapping does not eliminate regulatory requirements; it identifies overlaps. (C) is wrong because control mapping works across existing frameworks rather than replacing them.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3612;

-- ============================================================
-- SECURITY CONTROLS AND MONITORING (21 questions)
-- ============================================================

-- ID 3650: Security Controls and Monitoring — Asymmetric encryption purpose
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'What problem does asymmetric (public key) encryption solve?',
  choices = '["Preventing physical theft of hardware devices", "The key distribution problem, allowing secure communication without prior key exchange", "Eliminating the need for any encryption keys", "Blocking denial-of-service attacks on web servers"]'::jsonb,
  explanation = 'Correct (B): Asymmetric encryption solves the key distribution problem by using key pairs — a public key shared openly and a private key kept secret. Two parties who have never met can exchange encrypted messages using each other''s public keys without needing a pre-shared secret. RSA and ECC are common asymmetric algorithms. (A) is wrong because encryption addresses data confidentiality, not physical security. (C) is wrong because asymmetric encryption still requires key pairs, not zero keys.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3650;

-- ID 3651: Security Controls and Monitoring — TLS protection scope
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What does Transport Layer Security (TLS) protect against?',
  choices = '["SQL injection attacks against the application database", "Social engineering attacks targeting employees", "Eavesdropping and tampering with data transmitted between a client and server", "Physical theft of the web server hardware"]'::jsonb,
  explanation = 'Correct (C): TLS encrypts data in transit between a client and server, protecting against eavesdropping (reading the data) and tampering (modifying the data in transit). TLS 1.3 improves security by removing legacy cipher suites and reducing the handshake to one round trip. (A) is wrong because SQL injection is an application-layer attack that TLS does not prevent. (B) is wrong because social engineering targets human behavior, which encryption cannot address.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3651;

-- ID 3652: Security Controls and Monitoring — Digital signature properties
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'What three properties do digital signatures provide?',
  choices = '["Confidentiality, availability, and speed", "Encryption, compression, and backup", "Authorization, accounting, and auditing", "Authentication, integrity, and non-repudiation"]'::jsonb,
  explanation = 'Correct (D): Digital signatures provide authentication (verifying the signer''s identity), integrity (ensuring the document has not been altered since signing), and non-repudiation (the signer cannot deny having signed the document). These properties are achieved by hashing the document and encrypting the hash with the signer''s private key. (A) is wrong because digital signatures do not provide confidentiality or availability. (C) is wrong because authorization, accounting, and auditing are AAA framework concepts, not digital signature properties.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3652;

-- ID 3653: Security Controls and Monitoring — Certificate Authority role
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'In a Public Key Infrastructure (PKI), which entity issues and signs digital certificates?',
  choices = '["Certificate Authority (CA)", "Key Distribution Center (KDC)", "Registration Authority (RA)", "Certificate Revocation List (CRL)"]'::jsonb,
  explanation = 'Correct (A): The Certificate Authority (CA) is the trusted entity in a PKI that issues, signs, and manages digital certificates. The CA verifies the identity of certificate requestors and digitally signs certificates to attest to their validity. (C) is wrong because the Registration Authority handles identity verification before forwarding requests to the CA but does not issue certificates. (D) is wrong because the CRL is a published list of revoked certificates, not an issuing entity.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3653;

-- ID 3654: Security Controls and Monitoring — MFA factor categories
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What are the three categories of multi-factor authentication (MFA)?',
  choices = '["Something you own, something you rent, and something you borrow", "Something you know, something you have, and something you are", "Username, password, and security question", "Firewall, antivirus, and encryption"]'::jsonb,
  explanation = 'Correct (B): The three categories of authentication factors are: something you know (password, PIN), something you have (token, smart card, phone), and something you are (biometric — fingerprint, iris scan, facial recognition). True MFA requires factors from at least two different categories. (A) is wrong because ownership status is not an authentication factor taxonomy. (C) is wrong because all three of those are examples of something you know, representing a single factor category.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3654;

-- ID 3655: Security Controls and Monitoring — True MFA requirement
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'What distinguishes true multi-factor authentication from two-step verification using a single factor category?',
  choices = '["True MFA requires three or more passwords", "True MFA is only available on mobile devices", "True MFA combines factors from at least two different categories, such as something you know and something you have", "True MFA requires biometric authentication only"]'::jsonb,
  explanation = 'Correct (C): True multi-factor authentication requires factors from at least two different categories. A password (something you know) plus a hardware token (something you have) qualifies as true MFA. A password plus a security question does not qualify because both are something you know — a single factor category used twice. (A) is wrong because MFA is about different factor categories, not the number of passwords. (D) is wrong because MFA does not require biometrics specifically, though biometrics are one valid factor category.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3655;

-- ID 3658: Security Controls and Monitoring — NGFW distinguishing feature
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'What capability distinguishes a next-generation firewall (NGFW) from a traditional stateful firewall?',
  choices = '["Basic packet filtering based on IP addresses and ports", "Simple access control lists (ACLs)", "Network address translation (NAT)", "Application-level inspection, intrusion prevention, and threat intelligence integration"]'::jsonb,
  explanation = 'Correct (D): Next-generation firewalls extend traditional stateful inspection with deep packet inspection, application awareness, integrated intrusion prevention, and threat intelligence feeds. This enables security policies based on application identity and content rather than just IP addresses and port numbers. (A) is wrong because basic packet filtering is a feature of traditional firewalls, not what distinguishes an NGFW. (B) is wrong because simple ACLs are a traditional firewall capability.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3658;

-- ID 3659: Security Controls and Monitoring — WAF OSI layer
-- correct_index = 0 (was 0; note: original correct_index was 0 but answer was wrong — Layer 7 is correct)
UPDATE questions SET
  stem = 'At which layer of the OSI model does a Web Application Firewall (WAF) operate?',
  choices = '["Layer 7 (Application)", "Layer 1 (Physical)", "Layer 3 (Network)", "Layer 4 (Transport)"]'::jsonb,
  explanation = 'Correct (A): A WAF operates at Layer 7 (Application) of the OSI model, inspecting HTTP/HTTPS traffic to detect and block web application attacks such as SQL injection, cross-site scripting, and cross-site request forgery. By understanding application-layer protocols, WAFs can analyze request content, headers, cookies, and parameters. (C) is wrong because Layer 3 handles IP routing and packet forwarding, not application-layer inspection. (D) is wrong because Layer 4 handles TCP/UDP transport, not HTTP content analysis.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3659;

-- ID 3660: Security Controls and Monitoring — SIEM event correlation definition
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'What is event correlation in a SIEM system?',
  choices = '["Storing log files for long-term archival", "Analyzing relationships between events from different sources to identify patterns indicative of security incidents", "Generating compliance reports for regulatory audits", "Backing up security event data to offsite storage"]'::jsonb,
  explanation = 'Correct (B): Event correlation is a core SIEM capability that analyzes relationships between events from different data sources to identify patterns that individual events alone would not reveal. For example, correlating a failed login from one location with a successful login from a distant location minutes later may indicate credential compromise. (A) is wrong because log storage is a basic function, not the analytical capability that defines correlation. (C) is wrong because report generation is an output function, not the correlation engine itself.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3660;

-- ID 3662: Security Controls and Monitoring — DLP data states
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Which three data states does a Data Loss Prevention (DLP) solution typically monitor?',
  choices = '["Data encrypted, data compressed, and data archived", "Data created, data modified, and data deleted", "Data at rest, data in motion, and data in use", "Data internal, data external, and data shared"]'::jsonb,
  explanation = 'Correct (C): DLP solutions monitor data in three states: data at rest (stored in databases, file shares, endpoints), data in motion (transmitted over networks), and data in use (being accessed or processed by applications). Each state requires different monitoring techniques, such as endpoint agents for data at rest and network sensors for data in motion. (A) is wrong because encrypted, compressed, and archived are data formats or lifecycle stages, not the standard DLP monitoring states. (B) is wrong because created, modified, and deleted describe database operations, not DLP monitoring categories.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3662;

-- ID 3664: Security Controls and Monitoring — Network segmentation benefit
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'What is the primary security benefit of network segmentation?',
  choices = '["Faster network speeds for all users", "Reduced hardware costs across the organization", "Simplified network administration and management", "Limiting lateral movement so that a compromise in one segment cannot freely spread to others"]'::jsonb,
  explanation = 'Correct (D): Network segmentation limits the blast radius of a security incident by isolating network zones. If an attacker compromises a device in one segment, firewalls or ACLs between segments prevent direct access to other segments containing sensitive data, giving defenders time to detect and respond. (A) is wrong because segmentation is a security control, not a performance optimization. (C) is wrong because segmentation typically adds administrative complexity rather than simplifying management.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3664;

-- ID 3666: Security Controls and Monitoring — Key rotation purpose
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Why is regular encryption key rotation considered a security best practice?',
  choices = '["It limits the volume of data exposed if a single key is compromised and reduces the window for cryptanalysis", "It makes encrypted data permanently unrecoverable", "Key rotation is only necessary for asymmetric keys, not symmetric keys", "Longer key usage improves encryption efficiency"]'::jsonb,
  explanation = 'Correct (A): Regular key rotation limits the exposure window — if a key is compromised, only data encrypted with that key during its active period is at risk. It also reduces the volume of ciphertext available for cryptanalysis against any single key. (C) is wrong because key rotation applies to both symmetric and asymmetric keys. (D) is wrong because extended key usage increases risk rather than improving efficiency.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3666;

-- ID 3668: Security Controls and Monitoring — PAW purpose
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'What is the purpose of a Privileged Access Workstation (PAW)?',
  choices = '["To provide administrators with a faster computer for daily tasks", "To provide a hardened, isolated workstation dedicated exclusively to administrative tasks, reducing credential theft risk", "To allow administrators to work remotely from any personal device", "To replace multi-factor authentication for privileged accounts"]'::jsonb,
  explanation = 'Correct (B): A Privileged Access Workstation is a dedicated, hardened workstation used exclusively for administrative tasks. By separating administrative activities from general computing such as email and web browsing, PAWs reduce the attack surface for credential theft. Malware from a phishing email on a general workstation cannot access administrative credentials on the PAW. (A) is wrong because the purpose is security isolation, not performance. (D) is wrong because PAWs complement MFA rather than replacing it.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3668;

-- ID 3669: Security Controls and Monitoring — Centralized log aggregation purpose
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What security challenge does centralized log aggregation in a SIEM address?',
  choices = '["Reducing the total volume of log data generated", "Eliminating the need for individual system logging", "Enabling cross-source correlation to detect multi-stage attacks spanning multiple systems", "Replacing intrusion detection systems entirely"]'::jsonb,
  explanation = 'Correct (C): Centralized log aggregation enables analysts to view events across the entire environment in a unified timeline, making it possible to detect multi-stage attacks that involve multiple systems. An attacker might probe a firewall, exploit a web server, and move laterally to a database — events that appear benign individually but reveal an attack pattern when correlated. (A) is wrong because aggregation consolidates logs but does not reduce the total volume generated. (B) is wrong because centralization supplements individual system logging rather than replacing it.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3669;

-- ID 3670: Security Controls and Monitoring — Separation of duties definition
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Which access control principle requires that no single person can both initiate and approve the same transaction?',
  choices = '["Least privilege", "Need-to-know", "Mandatory access control", "Separation of duties"]'::jsonb,
  explanation = 'Correct (D): Separation of duties divides critical functions among different individuals to prevent fraud, errors, and abuse. By requiring different people to initiate and approve transactions, the organization ensures that committing fraud requires collusion between at least two people. (A) is wrong because least privilege limits each user to the minimum access needed for their role but does not address splitting duties. (C) is wrong because mandatory access control classifies resources by sensitivity level rather than splitting duties between individuals.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3670;

-- ID 3671: Security Controls and Monitoring — Default-deny firewall posture
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What is the recommended default firewall rule posture according to security best practices?',
  choices = '["Default-deny, where all traffic is blocked unless explicitly permitted by a rule", "Default-allow, where all traffic is permitted unless explicitly blocked", "No default rule, leaving the firewall to decide on a per-packet basis", "Default-allow for inbound traffic and default-deny for outbound traffic only"]'::jsonb,
  explanation = 'Correct (A): Best practice is a default-deny posture where all traffic is blocked unless explicitly permitted by a firewall rule. This ensures that only authorized, known traffic flows through the firewall and unknown or malicious traffic is blocked by default. (B) is wrong because default-allow creates a permissive environment where any traffic not specifically blocked passes through. (D) is wrong because best practice applies default-deny in both directions, not selectively.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3671;

-- ID 3672: Security Controls and Monitoring — VPN security function
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'What security function does a VPN provide for remote workers?',
  choices = '["It prevents all cyberattacks on the remote device", "It creates an encrypted tunnel protecting data in transit from eavesdropping on untrusted networks", "It replaces the need for antivirus software on the endpoint", "It encrypts data stored on the employee laptop at rest"]'::jsonb,
  explanation = 'Correct (B): A VPN creates an encrypted tunnel between the remote device and the corporate network, ensuring that all traffic traversing untrusted networks (home Wi-Fi, public hotspots) is protected from eavesdropping and tampering. IPsec and SSL/TLS are common VPN protocols. (A) is wrong because VPNs protect data in transit but do not prevent all cyberattacks. (D) is wrong because VPNs protect data in transit, not data at rest on the device.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3672;

-- ID 3674: Security Controls and Monitoring — Certificate pinning purpose
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'What does certificate pinning in a mobile application protect against?',
  choices = '["SQL injection attacks against the backend database", "Brute force password attacks on user accounts", "Man-in-the-middle attacks using fraudulent certificates from a compromised certificate authority", "Denial-of-service attacks that overwhelm the server"]'::jsonb,
  explanation = 'Correct (C): Certificate pinning hardcodes or embeds the expected server certificate (or its public key) in the application. If an attacker intercepts traffic using a fraudulent certificate — even one signed by a legitimate but compromised CA — the application rejects the connection because the presented certificate does not match the pinned certificate. (A) is wrong because SQL injection is an application-layer vulnerability unrelated to certificate validation. (B) is wrong because brute force attacks target authentication credentials, not the TLS certificate chain.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3674;

-- ID 3676: Security Controls and Monitoring — SOAR platform benefit
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'What is the primary benefit of a SOAR platform in a security operations center?',
  choices = '["SOAR replaces the SIEM entirely", "SOAR is only used for compliance reporting", "SOAR eliminates the need for security analysts", "SOAR automates repetitive incident response tasks through playbooks, reducing response times"]'::jsonb,
  explanation = 'Correct (D): SOAR (Security Orchestration, Automation, and Response) platforms automate repetitive tasks in the incident response process through predefined playbooks. When a SIEM alert triggers, SOAR can automatically gather threat intelligence, enrich indicators, isolate affected systems, and create tickets, reducing mean time to respond. (A) is wrong because SOAR complements SIEM rather than replacing it. (C) is wrong because SOAR frees analysts to focus on complex investigations but does not eliminate the need for human judgment.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3676;

-- ID 3678: Security Controls and Monitoring — Detective control definition
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Which type of security control identifies policy violations after they occur?',
  choices = '["A detective control, such as periodic compliance scans that report non-compliant devices", "A physical control, such as locking devices in a cabinet", "A compensating control that replaces the original policy entirely", "No control is needed if a written policy already exists"]'::jsonb,
  explanation = 'Correct (A): Detective controls identify deviations from policy after they occur. Automated compliance scanning is an example that identifies devices not meeting security standards (such as missing encryption), enabling remediation. Detective controls complement preventive controls by catching issues that prevention missed. (B) is wrong because physical controls restrict physical access and do not detect software-level policy violations. (D) is wrong because a written policy alone is insufficient without mechanisms to detect non-compliance.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3678;

-- ID 3679: Security Controls and Monitoring — NAC control type
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What type of security control is Network Access Control (NAC)?',
  choices = '["A purely detective control that only monitors network traffic", "A preventive control that enforces security baseline compliance before granting network access", "A physical access control that restricts building entry", "A manual control requiring administrator approval for each device"]'::jsonb,
  explanation = 'Correct (B): NAC functions primarily as a preventive control by checking each device for compliance with security baselines (such as updated antivirus, current patches, and enabled encryption) before granting network access. Non-compliant devices are blocked or placed on a quarantine VLAN for remediation. (A) is wrong because NAC actively blocks non-compliant devices rather than merely detecting them. (C) is wrong because NAC is a logical network control, not a physical access control.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3679;

-- ============================================================
-- DATA MANAGEMENT AND LIFECYCLE (22 questions)
-- ============================================================

-- ID 787: Data Management and Lifecycle — Tiered storage concept
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What is tiered storage in the context of data retention?',
  choices = '["Deleting all records older than one year to minimize costs", "Keeping all records on the primary production database indefinitely", "Moving older records to lower-cost storage while maintaining accessibility for compliance requirements", "Printing all records and storing paper copies offsite"]'::jsonb,
  explanation = 'Correct (C): Tiered storage moves older, less frequently accessed data to less expensive storage media (such as cold storage or tape) while maintaining the ability to retrieve it when needed for compliance or business purposes. This balances regulatory retention requirements with cost efficiency. (A) is wrong because deleting records prematurely may violate retention requirements. (B) is wrong because keeping everything on production storage is unnecessarily expensive for rarely accessed data.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 787;

-- ID 3502: Data Management and Lifecycle — Database normalization purpose
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'What is the primary purpose of database normalization?',
  choices = '["To increase data redundancy across tables for faster queries", "To combine all data into a single denormalized table", "To encrypt all database fields for security", "To organize tables to minimize redundancy and eliminate insertion, update, and deletion anomalies"]'::jsonb,
  explanation = 'Correct (D): Normalization decomposes tables into smaller, well-structured relations that minimize redundancy and eliminate anomalies: insertion anomalies (inability to add data without unrelated data), update anomalies (inconsistent data from partial updates), and deletion anomalies (unintended data loss). The process follows normal forms (1NF, 2NF, 3NF, BCNF). (A) is wrong because normalization reduces redundancy rather than increasing it. (B) is wrong because combining everything into one table is denormalization, the opposite of the concept.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3502;

-- ID 3503: Data Management and Lifecycle — Referential integrity definition
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Which database constraint ensures that a foreign key value always matches an existing primary key in the referenced table?',
  choices = '["Referential integrity (foreign key) constraint", "Check constraint", "Unique constraint", "Not-null constraint"]'::jsonb,
  explanation = 'Correct (A): Referential integrity, enforced through foreign key constraints, ensures that every value in a foreign key column matches a value in the referenced primary key column. An orphaned record (such as an order referencing a non-existent customer) violates this constraint. (B) is wrong because check constraints validate that values meet specific conditions like ranges, not cross-table references. (C) is wrong because unique constraints prevent duplicate values in a column but do not enforce relationships between tables.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3503;

-- ID 3504: Data Management and Lifecycle — NoSQL advantage
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'What advantage does a NoSQL document database offer over a relational database for unstructured data?',
  choices = '["Stronger enforcement of ACID transactions", "Flexible schema that accommodates varying data structures without requiring predefined table schemas", "Better support for complex SQL JOIN operations", "Mandatory data normalization across all documents"]'::jsonb,
  explanation = 'Correct (B): NoSQL document databases store data as flexible JSON-like documents where each document can have a different structure. This accommodates unstructured and semi-structured data where fields may vary across records, without requiring a predefined schema. (A) is wrong because ACID transaction enforcement is a strength of relational databases, not NoSQL. (C) is wrong because complex JOIN operations are a relational database feature not natively supported by most NoSQL document stores.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3504;

-- ID 3505: Data Management and Lifecycle — Data archival definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'In the data lifecycle, what is data archival?',
  choices = '["Creating new data from source transactions", "Permanently destroying data that has exceeded its retention period", "Moving inactive data to cost-effective long-term storage while retaining it for regulatory or business purposes", "Processing raw data into meaningful information"]'::jsonb,
  explanation = 'Correct (C): Data archival involves moving inactive data that must be retained (for legal, regulatory, or business reasons) to cost-effective long-term storage. Archived data is typically read-only and accessed infrequently. (A) is wrong because creating new data describes the data creation phase. (B) is wrong because permanently destroying data describes the data destruction phase, which occurs after archival when retention periods expire.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3505;

-- ID 3506: Data Management and Lifecycle — Over-retention risk
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'What is the primary risk of retaining data beyond its required retention period?',
  choices = '["The data automatically becomes more accurate over time", "Older data improves the organization''s data governance rating", "The records only consume unnecessary storage space, with no other impact", "Increased exposure to data breaches and expanded legal discovery obligations with no compliance benefit"]'::jsonb,
  explanation = 'Correct (D): Retaining data beyond its required retention period creates unnecessary risk. The data remains subject to legal discovery requests, increases the volume of data exposed in a breach, and may violate privacy regulations requiring data minimization. There is no compliance benefit to keeping data past its retention period. (C) is wrong because storage cost is only one concern — the greater risks are legal liability and breach exposure. (A) is wrong because data accuracy does not improve simply by retaining it longer.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3506;

-- ID 3508: Data Management and Lifecycle — Data consistency definition
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Which data quality dimension is violated when the same data element has different values across multiple systems?',
  choices = '["Consistency", "Accuracy", "Timeliness", "Completeness"]'::jsonb,
  explanation = 'Correct (A): Consistency measures whether the same data element has the same value across different systems, databases, or records. When data conflicts exist between systems (such as different addresses for the same customer in two databases), the data is inconsistent. (B) is wrong because accuracy measures whether data correctly represents the real-world entity, not cross-system agreement. (D) is wrong because completeness measures whether all required data fields are populated.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3508;

-- ID 3509: Data Management and Lifecycle — ETL definition
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'What does ETL (Extract, Transform, Load) do in a data warehousing context?',
  choices = '["Processes individual transactions in real time for an OLTP system", "Extracts data from source systems, transforms it into a consistent format, and loads it into the data warehouse", "Distributes web content to users through a global network", "Performs multidimensional analysis of historical datasets"]'::jsonb,
  explanation = 'Correct (B): ETL is the data integration process that pulls data from multiple source systems (Extract), converts it into a consistent format and applies business rules (Transform), and loads it into the target data warehouse (Load). (A) is wrong because real-time transaction processing describes OLTP, not ETL. (D) is wrong because multidimensional analysis describes OLAP, not the ETL process.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3509;

-- ID 3511: Data Management and Lifecycle — OLAP vs. OLTP distinction
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'What is the primary distinction between OLAP and OLTP?',
  choices = '["OLAP handles individual transactions while OLTP handles bulk analysis", "OLAP and OLTP are identical technologies", "OLAP is designed for complex queries across large historical datasets, while OLTP is optimized for fast concurrent transaction processing", "OLAP only works with spreadsheets while OLTP only works with databases"]'::jsonb,
  explanation = 'Correct (C): OLAP (Online Analytical Processing) is optimized for complex analytical queries that aggregate large volumes of historical data for business intelligence and reporting. OLTP (Online Transaction Processing) is optimized for high-speed, concurrent processing of individual transactions with ACID guarantees. (A) is wrong because it reverses the definitions — OLTP handles individual transactions and OLAP handles analysis. (B) is wrong because OLAP and OLTP serve fundamentally different purposes.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3511;

-- ID 3512: Data Management and Lifecycle — Data lake advantage
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'What is the primary advantage of a data lake over a traditional data warehouse?',
  choices = '["Data lakes enforce strict schemas before data is loaded", "Data lakes are always smaller than data warehouses", "Data lakes automatically cleanse and validate all incoming data", "Data lakes accept structured, semi-structured, and unstructured data without requiring a predefined schema"]'::jsonb,
  explanation = 'Correct (D): Data lakes use a schema-on-read approach, storing raw data in its native format without requiring schema definition at ingestion time. This provides flexibility to apply different analytical structures later as needs evolve. (A) is wrong because data lakes use schema-on-read, not schema-on-write — they do not enforce strict schemas at load time. (C) is wrong because data lakes store raw data without automatic cleansing; transformation happens at query time.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3512;

-- ID 3514: Data Management and Lifecycle — Encryption at rest for sensitive data
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'What is the highest-priority remediation when sensitive data such as Social Security numbers is stored in plain text?',
  choices = '["Immediately implement encryption or tokenization at rest and restrict access to authorized users only", "Document the finding and schedule remediation for the next fiscal year", "Delete all sensitive data from the system permanently", "Move the database to a different server without changing the storage format"]'::jsonb,
  explanation = 'Correct (A): Storing sensitive data like Social Security numbers in plain text creates significant regulatory and breach risk. Immediate remediation through encryption at rest (such as AES-256) or tokenization, combined with access restriction, protects the data while preserving its utility for authorized purposes. (B) is wrong because delaying remediation leaves the exposure unaddressed. (D) is wrong because moving servers does not fix the underlying plain-text storage vulnerability.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3514;

-- ID 3515: Data Management and Lifecycle — Data steward role
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'What is the primary role of a data steward?',
  choices = '["Writing application source code for database systems", "Ensuring data quality, enforcing data standards, and resolving data issues within an assigned domain", "Managing physical server hardware and network infrastructure", "Approving all IT purchase orders for the organization"]'::jsonb,
  explanation = 'Correct (B): Data stewards are responsible for the day-to-day management of data quality and standards within their domain. They enforce naming conventions, resolve data quality issues, manage metadata, and ensure compliance with data governance policies on behalf of the data owner. (A) is wrong because writing source code is a developer responsibility. (C) is wrong because managing hardware and infrastructure is a data custodian or IT operations responsibility.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3515;

-- ID 3516: Data Management and Lifecycle — Cartesian product definition
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What happens when a SQL query joins multiple tables without any JOIN conditions?',
  choices = '["The database automatically adds the correct join conditions", "The query returns accurate results faster than a properly joined query", "A Cartesian product is produced, combining every row from each table with every row from every other table", "The query returns only matching rows from the first table"]'::jsonb,
  explanation = 'Correct (C): A Cartesian product (cross join) combines every row from each table with every row from every other table. Without proper JOIN conditions, tables with 1,000 rows each would produce one million combinations (1,000 x 1,000). This consumes excessive system resources and returns meaningless row combinations. (A) is wrong because databases do not automatically correct missing join conditions. (B) is wrong because a Cartesian product is slower and produces incorrect results, not faster or accurate ones.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3516;

-- ID 3517: Data Management and Lifecycle — Data owner role
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'In a data governance framework, which role decides who can access data and what classification level it receives?',
  choices = '["Data custodian", "Data steward", "Database administrator", "Data owner"]'::jsonb,
  explanation = 'Correct (D): The data owner (typically a business executive or department head) is accountable for the data asset and makes strategic decisions including data classification, access authorization, and acceptable use policies. (A) is wrong because the data custodian implements technical controls like backups and security settings but does not make classification or access decisions. (B) is wrong because the data steward manages day-to-day quality, not strategic access and classification decisions.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3517;

-- ID 3519: Data Management and Lifecycle — Data lifecycle phases
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'What are the phases of the data lifecycle in order?',
  choices = '["Creation, storage, use, archival, and destruction", "Extraction, transformation, and loading", "Normalization, indexing, and partitioning", "Backup, replication, and failover"]'::jsonb,
  explanation = 'Correct (A): The data lifecycle consists of creation (collecting or generating data), storage (persisting data in databases or files), use (accessing data for business purposes), archival (moving inactive data to long-term storage), and destruction (permanently eliminating data when retention periods expire). Each phase has distinct governance requirements. (B) is wrong because ETL is a data integration process, not the full data lifecycle. (C) is wrong because normalization, indexing, and partitioning are database design techniques, not lifecycle phases.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3519;

-- ID 3520: Data Management and Lifecycle — Data governance council purpose
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'What is the primary purpose of a cross-functional data governance council?',
  choices = '["To perform daily database backup operations", "To establish enterprise-wide data policies, resolve ownership disputes, and align data management with business objectives", "To write application source code for data systems", "To approve all employee vacation requests"]'::jsonb,
  explanation = 'Correct (B): A data governance council provides strategic oversight for the organization''s data management program. Its cross-functional composition ensures that data policies balance business needs, regulatory requirements, technical constraints, and risk management. The council resolves disputes between data domains and monitors data quality metrics at the enterprise level. (A) is wrong because daily backups are an operational IT task, not a governance council function. (C) is wrong because writing source code is a development team responsibility.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3520;

-- ID 3521: Data Management and Lifecycle — Missing vendor TIN impact
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'What is the primary compliance risk when vendor records are missing tax identification numbers?',
  choices = '["No impact because tax identification numbers are optional for all vendors", "The ERP system will automatically crash due to missing data", "Inability to file accurate 1099 forms, creating regulatory compliance risk and potential IRS penalties", "The vendors will be automatically removed from the system"]'::jsonb,
  explanation = 'Correct (C): Missing vendor tax identification numbers (TINs) prevent the company from filing accurate 1099 forms for payments to those vendors. IRS regulations require 1099 reporting for qualifying payments, and failure to include correct TINs can result in penalties and backup withholding requirements. (A) is wrong because TINs are required for 1099 reporting purposes, not optional. (B) is wrong because ERP systems do not crash due to missing data fields — they may flag warnings or produce incomplete reports.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3521;

-- ID 3523: Data Management and Lifecycle — SQL SELECT statement
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Which SQL statement retrieves specific columns and rows from a database table?',
  choices = '["INSERT INTO", "CREATE TABLE", "DROP TABLE", "SELECT ... FROM ... WHERE"]'::jsonb,
  explanation = 'Correct (D): The SELECT statement with FROM and WHERE clauses is the fundamental SQL query for retrieving data. SELECT specifies which columns to return, FROM identifies the source table, and WHERE filters rows based on conditions. (A) is wrong because INSERT INTO adds new rows to a table rather than retrieving existing data. (B) is wrong because CREATE TABLE defines a new table structure rather than querying data.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3523;

-- ID 3525: Data Management and Lifecycle — Data lineage definition
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What does data lineage document?',
  choices = '["The complete record of data''s origin, transformations, and path through systems from source to report", "A list of all employees who have accessed the data", "The physical location of every server storing the data", "A backup copy of all historical data in the warehouse"]'::jsonb,
  explanation = 'Correct (A): Data lineage documents the complete journey of data from its point of origin through all transformations, calculations, aggregations, and system transfers until it appears in a report or dashboard. This enables auditors to trace reported figures back to source transactions and allows impact analysis when upstream data sources change. (B) is wrong because tracking user access is the function of audit logs, not data lineage. (C) is wrong because server locations describe infrastructure topology, not data flow and transformation history.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3525;

-- ID 3527: Data Management and Lifecycle — Data consistency remediation
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'When the same data field contains multiple representations of the same value, which data quality dimension is violated?',
  choices = '["Accuracy", "Consistency", "Timeliness", "Completeness"]'::jsonb,
  explanation = 'Correct (B): Multiple representations of the same value (such as CA, California, Calif., and calif for the same state) violate consistency. Remediation involves establishing canonical reference data (a lookup table with standard values) and cleansing existing records to match. Input controls should validate entries against the reference table going forward. (A) is wrong because accuracy relates to whether data correctly represents the real-world entity, not whether the same value uses the same format across records. (D) is wrong because completeness relates to missing data, not inconsistent formatting.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3527;

-- ID 3528: Data Management and Lifecycle — Data catalog purpose
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'What business value does a data catalog provide?',
  choices = '["It automatically deletes duplicate data across all systems", "It replaces the need for database backups entirely", "It enables users to discover, understand, and assess the trustworthiness of data assets through searchable metadata", "It encrypts all cataloged data assets at rest"]'::jsonb,
  explanation = 'Correct (C): A data catalog serves as a searchable inventory of an organization''s data assets, providing metadata, descriptions, ownership information, data quality scores, lineage, and usage statistics. It empowers business users and analysts to find relevant data, understand its meaning and reliability, and determine whether it is suitable for their needs. (A) is wrong because a data catalog indexes metadata about data assets but does not deduplicate them. (B) is wrong because a catalog is a discovery tool, not a backup mechanism.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3528;

-- ID 3530: Data Management and Lifecycle — Primary key purpose
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'What is the fundamental purpose of a primary key in a relational database?',
  choices = '["It encrypts the row data for security purposes", "It defines the display order of rows on screen", "It limits the maximum number of rows a table can contain", "It uniquely identifies each row in a table, ensuring no duplicate records exist"]'::jsonb,
  explanation = 'Correct (D): A primary key is a column (or combination of columns) that uniquely identifies each row in a relational table. It enforces entity integrity by ensuring no two rows have the same primary key value and that the key is never null. This unique identification is essential for establishing relationships between tables. (A) is wrong because primary keys serve an identification function, not an encryption function. (B) is wrong because row display order is determined by query ORDER BY clauses, not the primary key.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3530;

COMMIT;
