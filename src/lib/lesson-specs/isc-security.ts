import type { LessonSpec } from "./types";

// ISC Area II, Group B — Security.
// Covers the security domain: security controls, threat landscape,
// vulnerability management, and data protection technologies.
// DB topics: "Security Controls and Monitoring", "Threats, Attacks,
// and Vulnerabilities", "Data Protection Technologies".
//
// Note 2026-04-19: "Incident Response and Recovery" was previously
// aliased here but split out to `isc-incident-response.ts` at ISC/II/D
// after a homeless audit found 96/100 questions matched no II/B task
// (they belong at II/D's incident response tasks).

export const spec: LessonSpec = {
	topic: "Security Controls and Monitoring",
	topicAliases: [
		"Threats, Attacks, and Vulnerabilities",
	],
	section: "isc",
	primaryRef: "ISC/II/B",
	secondaryRefs: [],

	inScope: [
		"Security controls classification: preventive (stop threats before they occur — firewalls, access controls, encryption), detective (identify threats during or after — IDS, log monitoring, anomaly detection), corrective (remediate after — patches, incident response, system restoration), and the defense-in-depth principle of layering controls",
		"Authentication and identity management: multi-factor authentication (MFA) categories (something you know, have, are), single sign-on (SSO), identity and access management (IAM) concepts, privileged access management, biometric authentication, and token-based authentication at the conceptual level",
		"Network security controls: firewalls (packet filtering, stateful inspection, application-level), intrusion detection systems (IDS) vs intrusion prevention systems (IPS), network segmentation, DMZ architecture, VPN, and their roles in protecting financial system data — at the conceptual level of understanding purpose and placement",
		"Endpoint security: antivirus/anti-malware, endpoint detection and response (EDR), mobile device management (MDM), patch management, host-based firewalls, and the concept of a hardened baseline configuration",
		"Security monitoring and logging: security information and event management (SIEM) concepts, log collection and correlation, audit trail requirements, monitoring for unauthorized access or anomalous activity, and the role of continuous monitoring in the security control environment",
		"Threat landscape: common threat categories — malware (viruses, worms, ransomware, trojans, spyware), social engineering (phishing, spear phishing, pretexting, baiting), denial of service (DoS/DDoS), man-in-the-middle attacks, SQL injection, cross-site scripting (XSS), and insider threats",
		"Vulnerability management: vulnerability scanning, penetration testing at the conceptual level (what it tests, how it differs from vulnerability scanning), patch management lifecycle, risk-based prioritization of vulnerabilities (CVSS at the concept level), and the relationship between vulnerability management and the control environment",
		"Encryption fundamentals: symmetric vs asymmetric encryption (concepts, not algorithm internals), hashing (data integrity verification), digital signatures (authentication and non-repudiation), TLS/SSL for data in transit, encryption at rest, and key management principles (key generation, distribution, rotation, destruction)",
		"Data protection technologies: data loss prevention (DLP) systems, data masking, tokenization, anonymization and pseudonymization concepts, digital rights management (DRM), and their application to protecting sensitive financial and personal data",
		"Public key infrastructure (PKI) at the conceptual level: certificate authorities (CAs), digital certificates, certificate revocation, and the role of PKI in enabling secure communications and digital signatures — NOT the cryptographic mathematics",
		"Incident response lifecycle: preparation, identification/detection, containment (short-term and long-term), eradication, recovery, and lessons learned/post-incident review — at the process and governance level",
		"Incident classification and escalation: severity levels, escalation procedures, communication protocols (internal notification, external reporting obligations, regulatory notification requirements), chain of custody for digital evidence",
		"Business continuity and disaster recovery from the security perspective: the relationship between security incidents and business continuity events, disaster recovery plan activation, recovery time objectives (RTO) and recovery point objectives (RPO), failover and failback procedures, and DR plan testing methods (tabletop exercises, parallel tests, full interruption tests)",
		"Security awareness training: the role of user education in the security control environment, phishing simulation, acceptable use policies, and the human element as both a vulnerability and a control",
		"Zero trust architecture at the conceptual level: the principle of 'never trust, always verify,' microsegmentation, least-privilege access, continuous authentication, and how zero trust differs from traditional perimeter-based security",
	],

	outOfScope: [
		"Cryptographic algorithm internals — AES round structure, RSA modular exponentiation, elliptic curve mathematics, Diffie-Hellman key exchange protocol mechanics, SHA hash function construction",
		"Penetration testing methodology at practitioner depth — Kali Linux tools, Metasploit framework, specific exploitation techniques, OWASP testing guide procedures at step-by-step depth",
		"SIEM platform configuration — Splunk query language (SPL), QRadar offense management, specific log source integration, correlation rule authoring",
		"Firewall rule configuration — specific ACL syntax, iptables/nftables rules, next-generation firewall policy configuration",
		"Malware reverse engineering — disassembly, behavioral analysis in sandbox environments, signature creation, YARA rules",
		"Digital forensics at practitioner depth — forensic imaging (dd, FTK Imager), chain of custody documentation at legal-evidence depth, file system analysis, registry analysis, memory forensics",
		"Specific regulatory incident reporting timelines and procedures at compliance-officer depth — GDPR 72-hour breach notification mechanics, state breach notification law variations, SEC cybersecurity incident disclosure rules (belongs partially to ISC/II/C for privacy aspects)",
		"Security framework implementation at depth — NIST CSF implementation tiers, ISO 27001 ISMS implementation, SOC 2 Type 2 testing procedures (belongs to ISC/II/A for frameworks, ISC/III for SOC)",
		"Cloud security engineering — AWS security group configuration, Azure NSG rules, cloud workload protection platform (CWPP) deployment, container security at Kubernetes depth",
		"SOC reporting on security controls — how security controls are described and tested in SOC 1/SOC 2 engagements (belongs to ISC/III/A and ISC/III/B)",
	],

	keyStandards: [
		"NIST Cybersecurity Framework (CSF) — five core functions (Identify, Protect, Detect, Respond, Recover)",
		"NIST SP 800-61 — Computer Security Incident Handling Guide",
		"NIST SP 800-53 — Security and Privacy Controls (referenced at the control-family awareness level)",
		"COSO Internal Control — Integrated Framework (2013) — control activities component for security controls",
		"ISO 27001/27002 — information security controls (at the awareness level)",
		"AICPA Trust Services Criteria — Security (common criteria CC1-CC9) as the SOC 2 baseline",
	],

	commonMisconceptions: [
		"Believing encryption alone is sufficient for data protection. Encryption protects confidentiality but does not address data integrity (without hashing), availability, or access control. A comprehensive data protection strategy layers encryption with access controls, DLP, backup, and monitoring.",
		"Confusing IDS and IPS. An intrusion detection system (IDS) monitors and alerts on suspicious activity but does not block it. An intrusion prevention system (IPS) actively blocks detected threats. IDS is detective; IPS is preventive. Many modern systems combine both functions.",
		"Thinking incident response begins at detection. Effective incident response requires PREPARATION — policies, procedures, team formation, communication plans, and regular exercises — before any incident occurs. The preparation phase is often the most important and the one most frequently undertested on the CPA exam.",
		"Treating all security incidents as equivalent. Incident classification by severity drives the response: a low-severity event (failed login attempts from a known IP) requires different handling than a high-severity breach (ransomware encrypting production databases). Escalation procedures, communication requirements, and recovery resources scale with severity.",
		"Assuming symmetric and asymmetric encryption serve the same purpose. Symmetric encryption (same key for encrypt and decrypt) is fast and used for bulk data. Asymmetric encryption (public/private key pair) is slower but solves the key distribution problem and enables digital signatures. Most real-world systems use both — asymmetric to exchange a symmetric session key, then symmetric for the data.",
		"Confusing vulnerability scanning with penetration testing. Vulnerability scanning is automated, identifies known vulnerabilities, and runs frequently. Penetration testing is manual, simulates an actual attack to exploit vulnerabilities, and is performed periodically. Both are needed; they serve different purposes in the vulnerability management lifecycle.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		{
			term: "Kali Linux",
			pattern: "\\bKali\\s+Linux\\b",
			category: "pentesting tool",
			why: "Penetration testing tool depth, not CPA exam content.",
		},
		{
			term: "Metasploit",
			pattern: "\\bMetasploit\\b",
			category: "pentesting tool",
			why: "Exploitation framework at practitioner depth.",
		},
		{
			term: "YARA rule",
			pattern: "\\bYARA\\b",
			category: "malware analysis",
			why: "Malware signature rules are forensics depth.",
		},
		{
			term: "Splunk SPL",
			pattern: "\\bSPL\\b|\\bSplunk\\s+(?:query|search)\\b",
			category: "SIEM vendor",
			why: "Vendor-specific SIEM query language, not testable.",
		},
		{
			term: "iptables",
			pattern: "\\biptables\\b|\\bnftables\\b",
			category: "firewall config",
			why: "Linux firewall rule syntax is infrastructure engineering depth.",
		},
	],

	notes:
		"This is the largest ISC lesson-spec by question count (~387 questions across 4 DB topics). ISC/II/B and ISC/II/D are merged because 'Incident Response and Recovery' serves both groups and the content is tightly coupled — security controls prevent incidents, monitoring detects them, and incident response handles them. The 22 task-specs (18 from II/B + 4 from II/D) span the full Bloom's range from R&U (classify threats) to Analysis (evaluate incident response effectiveness).",
};
