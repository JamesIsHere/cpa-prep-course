import type { StudyFramework } from "./types";

export const iscFramework: StudyFramework = {
	sectionCode: "isc",
	sectionTitle: "Information Systems and Controls",
	conceptMaps: [
		{
			title: "IT Infrastructure Layers",
			blueprintGroups: ["isc.1.A"],
			root: {
				label: "IT Infrastructure Stack",
				children: [
					{
						label: "Hardware Layer",
						children: [
							{ label: "Servers, workstations, mobile devices" },
							{ label: "Storage (SAN, NAS, DAS)" },
							{ label: "Network hardware (routers, switches, firewalls)" },
						],
					},
					{
						label: "Network Layer",
						children: [
							{ label: "LAN, WAN, VPN, WLAN" },
							{ label: "TCP/IP protocol stack" },
							{ label: "DNS, DHCP, load balancers" },
						],
					},
					{
						label: "Operating System Layer",
						children: [
							{ label: "Resource management and process scheduling" },
							{ label: "User access and file system permissions" },
							{ label: "Patch management and hardening" },
						],
					},
					{
						label: "Application Layer",
						children: [
							{ label: "ERP, CRM, financial reporting systems" },
							{ label: "Custom vs. commercial off-the-shelf (COTS)" },
							{ label: "SDLC controls and change management" },
						],
					},
					{
						label: "Data Layer",
						children: [
							{ label: "Relational databases (SQL) and NoSQL" },
							{ label: "Data warehouses, data lakes, ETL processes" },
							{ label: "Encryption at rest and in transit" },
						],
					},
				],
			},
		},
		{
			title: "Cloud Computing Models — Shared Responsibility",
			blueprintGroups: ["isc.1.A"],
			root: {
				label: "Cloud Service Models",
				children: [
					{
						label: "IaaS (Infrastructure as a Service)",
						children: [
							{
								label:
									"Provider manages: physical hardware, networking, virtualization",
							},
							{ label: "Customer manages: OS, middleware, applications, data" },
							{ label: "Examples: AWS EC2, Azure VMs, Google Compute Engine" },
						],
					},
					{
						label: "PaaS (Platform as a Service)",
						children: [
							{
								label:
									"Provider manages: everything through runtime environment",
							},
							{ label: "Customer manages: applications and data only" },
							{
								label: "Examples: Azure App Service, Google App Engine, Heroku",
							},
						],
					},
					{
						label: "SaaS (Software as a Service)",
						children: [
							{ label: "Provider manages: entire stack including application" },
							{
								label:
									"Customer manages: user access, configuration, data governance",
							},
							{
								label: "Examples: Salesforce, Microsoft 365, QuickBooks Online",
							},
						],
					},
					{
						label: "Deployment Models",
						children: [
							{ label: "Public — shared infrastructure, multi-tenant" },
							{ label: "Private — dedicated infrastructure, single tenant" },
							{ label: "Hybrid — mix of on-premises and cloud" },
							{
								label:
									"Community — shared by organizations with common concerns",
							},
						],
					},
				],
			},
		},
		{
			title: "NIST Cybersecurity Framework (CSF)",
			blueprintGroups: ["isc.2.A"],
			root: {
				label: "NIST CSF Core Functions",
				children: [
					{
						label: "Identify",
						children: [
							{
								label:
									"Asset management — inventory all hardware, software, data",
							},
							{
								label: "Risk assessment — identify threats and vulnerabilities",
							},
							{
								label:
									"Governance — policies, procedures, regulatory requirements",
							},
						],
					},
					{
						label: "Protect",
						children: [
							{ label: "Access control — authentication and authorization" },
							{ label: "Data security — encryption, DLP, classification" },
							{ label: "Training — security awareness programs" },
						],
					},
					{
						label: "Detect",
						children: [
							{ label: "Continuous monitoring — SIEM, IDS/IPS, log analysis" },
							{ label: "Anomaly detection — behavioral analytics, baselines" },
							{ label: "Detection processes — defined and tested procedures" },
						],
					},
					{
						label: "Respond",
						children: [
							{
								label: "Response planning — predefined incident response plans",
							},
							{ label: "Communications — internal and external notification" },
							{ label: "Mitigation — contain and limit the impact" },
						],
					},
					{
						label: "Recover",
						children: [
							{ label: "Recovery planning — restore systems and data" },
							{ label: "Improvements — lessons learned, update procedures" },
							{
								label:
									"Communications — coordinate restoration with stakeholders",
							},
						],
					},
				],
			},
		},
		{
			title: "Access Control Models",
			blueprintGroups: ["isc.2.C"],
			root: {
				label: "Access Control Frameworks",
				children: [
					{
						label: "DAC (Discretionary Access Control)",
						children: [
							{ label: "Owner of resource sets permissions" },
							{ label: "Flexible but less secure" },
							{ label: "Example: file system permissions set by file owner" },
						],
					},
					{
						label: "MAC (Mandatory Access Control)",
						children: [
							{ label: "System-enforced based on classification labels" },
							{ label: "Users cannot change access rights" },
							{ label: "Example: military/government classified systems" },
						],
					},
					{
						label: "RBAC (Role-Based Access Control)",
						children: [
							{
								label: "Permissions assigned to roles, users assigned to roles",
							},
							{ label: "Supports least privilege and segregation of duties" },
							{ label: "Most common in enterprise environments" },
						],
					},
					{
						label: "ABAC (Attribute-Based Access Control)",
						children: [
							{
								label:
									"Decisions based on user, resource, and environment attributes",
							},
							{ label: "Highly granular and context-aware" },
							{
								label:
									"Example: allow access only during business hours from corp network",
							},
						],
					},
				],
			},
		},
		{
			title: "SOC Engagement Types",
			blueprintGroups: ["isc.3.A"],
			root: {
				label: "System and Organization Controls (SOC) Reports",
				children: [
					{
						label: "SOC 1",
						children: [
							{
								label:
									"Focus: controls relevant to user entities' financial reporting (ICFR)",
							},
							{ label: "Governed by SSAE 18 / AT-C 320" },
							{ label: "Audience: user entities and their auditors" },
						],
					},
					{
						label: "SOC 2",
						children: [
							{ label: "Focus: Trust Services Criteria (SAPCP)" },
							{ label: "Governed by AT-C 205" },
							{
								label:
									"Audience: management, regulators, specified parties (restricted)",
							},
						],
					},
					{
						label: "SOC 3",
						children: [
							{ label: "Focus: same as SOC 2 but general-use report" },
							{ label: "No detailed testing results — summary only" },
							{ label: "Audience: general public (marketing, website seal)" },
						],
					},
					{
						label: "Type I vs. Type II",
						children: [
							{ label: "Type I — design of controls at a point in time" },
							{
								label:
									"Type II — design and operating effectiveness over a period (typically 6-12 months)",
							},
							{ label: "Type II provides more assurance than Type I" },
						],
					},
				],
			},
		},
		{
			title: "Trust Services Criteria (TSC)",
			blueprintGroups: ["isc.3.B"],
			root: {
				label: "AICPA Trust Services Criteria",
				children: [
					{
						label: "Security (Common Criteria — required for all SOC 2)",
						children: [
							{ label: "Protection against unauthorized access" },
							{ label: "Firewalls, IDS/IPS, access controls, encryption" },
							{ label: "Foundation for all other criteria" },
						],
					},
					{
						label: "Availability",
						children: [
							{
								label: "System is available for operation and use as committed",
							},
							{ label: "BCP/DR planning, SLAs, monitoring, redundancy" },
						],
					},
					{
						label: "Processing Integrity",
						children: [
							{
								label:
									"Processing is complete, valid, accurate, timely, authorized",
							},
							{ label: "Input validation, reconciliation, error handling" },
						],
					},
					{
						label: "Confidentiality",
						children: [
							{ label: "Information designated as confidential is protected" },
							{
								label:
									"Encryption, access restrictions, NDAs, data classification",
							},
						],
					},
					{
						label: "Privacy",
						children: [
							{
								label:
									"Personal information collected, used, retained, disclosed per notice",
							},
							{
								label:
									"Consent, data minimization, subject rights, breach notification",
							},
						],
					},
				],
			},
		},
		{
			title: "Incident Response Lifecycle",
			blueprintGroups: ["isc.2.D"],
			root: {
				label: "NIST SP 800-61 Incident Response",
				children: [
					{
						label: "Preparation",
						children: [
							{
								label:
									"Establish IR team, policies, tools, and communication plans",
							},
							{ label: "Conduct tabletop exercises and simulations" },
						],
					},
					{
						label: "Identification",
						children: [
							{ label: "Detect and confirm the incident" },
							{ label: "Classify severity and scope" },
							{ label: "Activate IR team and begin documentation" },
						],
					},
					{
						label: "Containment",
						children: [
							{ label: "Short-term: isolate affected systems immediately" },
							{ label: "Long-term: apply temporary fixes, preserve evidence" },
						],
					},
					{
						label: "Eradication",
						children: [
							{ label: "Remove root cause (malware, compromised accounts)" },
							{ label: "Patch vulnerabilities that were exploited" },
						],
					},
					{
						label: "Recovery",
						children: [
							{ label: "Restore systems from clean backups" },
							{
								label: "Verify system integrity before returning to production",
							},
							{ label: "Monitor for signs of recurrence" },
						],
					},
					{
						label: "Lessons Learned",
						children: [
							{ label: "Post-incident review within 1-2 weeks" },
							{ label: "Document findings and update IR plan" },
							{ label: "Improve controls to prevent recurrence" },
						],
					},
				],
			},
		},
		{
			title: "Data Lifecycle Management",
			blueprintGroups: ["isc.1.C"],
			root: {
				label: "Data Lifecycle Stages",
				children: [
					{
						label: "Creation / Collection",
						children: [
							{ label: "Classify data at point of creation" },
							{ label: "Apply ownership and labeling" },
						],
					},
					{
						label: "Storage",
						children: [
							{ label: "Encryption at rest, access controls" },
							{ label: "Redundancy and backup procedures" },
						],
					},
					{
						label: "Use / Processing",
						children: [
							{ label: "Enforce least privilege during processing" },
							{ label: "Input validation, output controls" },
						],
					},
					{
						label: "Sharing / Transfer",
						children: [
							{ label: "Encryption in transit (TLS, VPN)" },
							{ label: "Third-party agreements, DLP controls" },
						],
					},
					{
						label: "Archival",
						children: [
							{
								label:
									"Retention policies aligned to legal/regulatory requirements",
							},
							{ label: "Secure offline or cold storage" },
						],
					},
					{
						label: "Destruction",
						children: [
							{
								label:
									"Cryptographic erasure, degaussing, physical destruction",
							},
							{ label: "Certificate of destruction for compliance" },
						],
					},
				],
			},
		},
		{
			title: "IT General Controls (ITGCs)",
			blueprintGroups: ["isc.1.F"],
			root: {
				label: "IT General Controls",
				children: [
					{
						label: "Logical Access Controls",
						children: [
							{ label: "Authentication (passwords, MFA, biometrics)" },
							{ label: "Authorization (RBAC, least privilege)" },
							{ label: "Provisioning and deprovisioning" },
							{ label: "Periodic access recertification" },
						],
					},
					{
						label: "Program Change Controls",
						children: [
							{ label: "Change request and CAB approval" },
							{ label: "Testing (unit, integration, UAT)" },
							{ label: "Segregation of dev/test/production" },
							{ label: "Emergency change retroactive approval" },
						],
					},
					{
						label: "Computer Operations Controls",
						children: [
							{ label: "Job scheduling and batch processing" },
							{ label: "Backup (full, incremental, differential)" },
							{ label: "System monitoring and alerting" },
							{ label: "Capacity and performance management" },
						],
					},
					{
						label: "System Development Controls",
						children: [
							{ label: "SDLC methodology and phases" },
							{ label: "Version control and code review" },
							{ label: "Security testing before deployment" },
						],
					},
				],
			},
		},
	],
	decisionTrees: [
		{
			title: "Which SOC Report Type to Use",
			blueprintGroups: ["isc.3.A"],
			root: {
				question:
					"Are the controls relevant to user entities' internal control over financial reporting (ICFR)?",
				yes: {
					question:
						"Do you need to evaluate operating effectiveness of controls over a period of time?",
					yes: "SOC 1 Type II — controls relevant to ICFR, tested over a period (6-12 months)",
					no: "SOC 1 Type I — controls relevant to ICFR, design evaluated at a point in time",
				},
				no: {
					question:
						"Is the report intended for a restricted audience (management, regulators, specified parties)?",
					yes: {
						question:
							"Do you need to evaluate operating effectiveness of controls over a period of time?",
						yes: "SOC 2 Type II — Trust Services Criteria, tested over a period (highest assurance)",
						no: "SOC 2 Type I — Trust Services Criteria, design evaluated at a point in time",
					},
					no: "SOC 3 — general-use summary report on Trust Services Criteria (suitable for public distribution)",
				},
			},
		},
		{
			title: "Cloud Deployment Model Selection",
			blueprintGroups: ["isc.1.A"],
			root: {
				question:
					"Does the organization require full control over physical infrastructure and data sovereignty?",
				yes: "On-premises — maximum control, highest cost, organization manages everything",
				no: {
					question:
						"Does the organization need to manage the OS, middleware, and runtime environment?",
					yes: "IaaS — provider manages hardware/networking; customer manages OS through applications",
					no: {
						question:
							"Does the organization need to deploy and manage custom application code?",
						yes: "PaaS — provider manages through runtime; customer manages application code and data",
						no: "SaaS — provider manages entire stack; customer manages configuration and user access only",
					},
				},
			},
		},
		{
			title: "Encryption Method Selection",
			blueprintGroups: ["isc.2.C"],
			root: {
				question: "Is the data at rest (stored)?",
				yes: {
					question:
						"Do you need to query or search individual fields within the encrypted data?",
					yes: "Column-level / field-level encryption (AES-256) — encrypt sensitive columns individually; allows querying non-encrypted fields",
					no: "Full-disk or volume encryption (AES-256, BitLocker, LUKS) — encrypts entire storage volume transparently; best for laptops, servers, cloud volumes",
				},
				no: {
					question:
						"Is the communication between two parties who have not previously exchanged keys?",
					yes: "Asymmetric encryption (RSA/ECC) for key exchange, then symmetric (AES) for session — TLS/HTTPS",
					no: "Symmetric encryption with pre-shared key — VPN tunnels, internal network communication",
				},
			},
		},
		{
			title: "Disaster Recovery Site Selection",
			blueprintGroups: ["isc.1.D"],
			root: {
				question:
					"Does the organization require near-zero downtime (RTO measured in minutes)?",
				yes: "Hot site — fully operational duplicate environment, data synchronized in real-time, highest cost",
				no: {
					question:
						"Can the organization tolerate downtime of several hours (RTO measured in hours)?",
					yes: "Warm site — partially configured with hardware, requires data restoration, moderate cost",
					no: "Cold site — empty facility with power/connectivity only, requires full setup, lowest cost, RTO in days",
				},
			},
		},
		{
			title: "Privacy Regulation Applicability",
			blueprintGroups: ["isc.2.E"],
			root: {
				question:
					"Does the organization process personal data of EU/EEA residents?",
				yes: "GDPR applies — consent or legal basis required, data subject rights, 72-hour breach notification, DPO may be required",
				no: {
					question:
						"Does the organization collect personal information of California residents and meet revenue/data thresholds?",
					yes: "CCPA/CPRA applies — right to know, delete, opt-out of sale; no private right of action except for breaches",
					no: {
						question:
							"Does the organization handle protected health information (PHI) as a covered entity or business associate?",
						yes: "HIPAA applies — Privacy Rule, Security Rule, Breach Notification Rule; BAAs required with business associates",
						no: "General data protection best practices apply — monitor for state-specific privacy laws and industry regulations",
					},
				},
			},
		},
		{
			title: "Is This Change Properly Authorized?",
			blueprintGroups: ["isc.1.E"],
			root: {
				question: "Was a formal change request submitted?",
				yes: {
					question:
						"Was the change reviewed and approved by the CAB (or delegated authority)?",
					yes: {
						question:
							"Was the change tested in a non-production environment before deployment?",
						yes: {
							question:
								"Was the migration to production performed by someone other than the developer?",
							yes: "Properly authorized change — document and close the change ticket",
							no: "SoD violation — developer should not migrate their own code to production",
						},
						no: "Control gap — all changes must be tested before deployment, even if approved",
					},
					no: "Unauthorized change — route back through CAB approval process",
				},
				no: {
					question:
						"Was this an emergency change to address a critical outage?",
					yes: "Acceptable if retroactively documented, tested, and approved by CAB within the defined timeframe",
					no: "Unauthorized change — must follow the standard change control process",
				},
			},
		},
		{
			title: "SOC Test Type Selection",
			blueprintGroups: ["isc.3.D"],
			root: {
				question: "Is the control automated (system-enforced configuration)?",
				yes: {
					question:
						"Are IT general controls (change management, access controls) over the system effective?",
					yes: "Inspect configuration + limited reperformance (one test may suffice — automated control operates consistently when ITGCs effective)",
					no: "Cannot rely on consistency of automated control — test like a manual control with sampling across the period, plus investigate ITGC failures",
				},
				no: {
					question:
						"Does the control produce documentary evidence (logs, signatures, reports)?",
					yes: {
						question:
							"Is the control high-risk or were there prior-period exceptions?",
						yes: "Inspection of documentation with larger sample size + consider reperformance for complex controls; spread sample across full period",
						no: "Inspection of documentation with standard sample size spread across the examination period; corroborate with inquiry",
					},
					no: "Observation of the control being performed + inquiry of personnel; note that observation only provides point-in-time evidence — combine with other procedures",
				},
			},
		},
	],
	formulas: [
		{
			name: "Recovery Point Objective (RPO)",
			blueprintGroups: ["isc.1.D"],
			formula: "RPO = Maximum tolerable data loss (measured in time)",
			description:
				"The maximum acceptable amount of data loss measured in time. RPO of 1 hour means backups must occur at least hourly. Drives backup frequency decisions.",
		},
		{
			name: "Recovery Time Objective (RTO)",
			blueprintGroups: ["isc.1.D"],
			formula: "RTO = Maximum tolerable downtime (measured in time)",
			description:
				"The maximum acceptable time to restore systems after a disruption. RTO of 4 hours means systems must be operational within 4 hours. Drives DR site selection.",
		},
		{
			name: "Annualized Loss Expectancy (ALE)",
			blueprintGroups: ["isc.2.A"],
			formula: "ALE = SLE x ARO",
			description:
				"Single Loss Expectancy (SLE = asset value x exposure factor) times Annualized Rate of Occurrence (ARO). Used to justify security spending: implement control if cost < ALE reduction.",
		},
		{
			name: "Single Loss Expectancy (SLE)",
			blueprintGroups: ["isc.2.A"],
			formula: "SLE = Asset Value x Exposure Factor (EF)",
			description:
				"Expected monetary loss each time a risk event occurs. Exposure factor is the percentage of asset value lost (0 to 1).",
		},
		{
			name: "Risk Calculation",
			blueprintGroups: ["isc.2.A"],
			formula: "Risk = Threat x Vulnerability x Impact",
			description:
				"Qualitative or quantitative risk assessment. Threat is the probability of an attack, vulnerability is the likelihood of exploitation, impact is the resulting damage.",
		},
		{
			name: "Biometric Accuracy — Crossover Error Rate",
			blueprintGroups: ["isc.2.C"],
			formula: "CER = point where FAR = FRR",
			description:
				"False Acceptance Rate (FAR) = % of unauthorized users incorrectly accepted. False Rejection Rate (FRR) = % of authorized users incorrectly rejected. Lower CER indicates a more accurate biometric system.",
		},
	],
	referenceTables: [
		{
			title: "NIST CSF Functions and Categories",
			blueprintGroups: ["isc.2.A"],
			headers: ["Function", "Key Categories", "Purpose"],
			rows: [
				[
					"Identify",
					"Asset Management, Risk Assessment, Governance",
					"Understand the organizational context and risk landscape",
				],
				[
					"Protect",
					"Access Control, Data Security, Training, Maintenance",
					"Implement safeguards to ensure service delivery",
				],
				[
					"Detect",
					"Anomalies & Events, Continuous Monitoring, Detection Processes",
					"Identify cybersecurity events in a timely manner",
				],
				[
					"Respond",
					"Response Planning, Communications, Mitigation, Analysis",
					"Take action on detected cybersecurity events",
				],
				[
					"Recover",
					"Recovery Planning, Improvements, Communications",
					"Restore capabilities impaired by cybersecurity events",
				],
			],
		},
		{
			title: "SOC Report Comparison",
			blueprintGroups: ["isc.3.A", "isc.3.C"],
			headers: ["Feature", "SOC 1", "SOC 2", "SOC 3"],
			rows: [
				[
					"Focus",
					"Controls over financial reporting (ICFR)",
					"Trust Services Criteria (SAPCP)",
					"Trust Services Criteria (summary)",
				],
				["Standard", "SSAE 18 / AT-C 320", "AT-C 205", "AT-C 205"],
				[
					"Audience",
					"User entities and their auditors",
					"Management, regulators, specified parties",
					"General public",
				],
				["Distribution", "Restricted", "Restricted", "General use"],
				[
					"Type I",
					"Design at a point in time",
					"Design at a point in time",
					"N/A (Type II only)",
				],
				[
					"Type II",
					"Design + effectiveness over a period",
					"Design + effectiveness over a period",
					"Short-form report based on SOC 2 Type II",
				],
				[
					"Typical period",
					"6-12 months",
					"6-12 months",
					"Same period as companion SOC 2 Type II",
				],
			],
		},
		{
			title: "Privacy Regulation Comparison",
			blueprintGroups: ["isc.2.E"],
			headers: ["Feature", "GDPR", "CCPA/CPRA", "HIPAA"],
			rows: [
				[
					"Jurisdiction",
					"EU/EEA residents",
					"California residents",
					"US healthcare (covered entities and BAs)",
				],
				[
					"Data covered",
					"All personal data",
					"Personal information linked to consumer/household",
					"Protected health information (PHI)",
				],
				[
					"Legal basis required",
					"Yes (consent, contract, legitimate interest, etc.)",
					"No (opt-out model)",
					"Treatment, payment, operations (no consent for TPO)",
				],
				[
					"Right to delete",
					"Yes (right to erasure)",
					"Yes",
					"Limited (amendment, not deletion)",
				],
				[
					"Breach notification",
					"72 hours to supervisory authority",
					"Without unreasonable delay",
					"60 days to individuals, HHS, and media if >500",
				],
				[
					"Penalties",
					"Up to 4% of global annual revenue or EUR 20M",
					"$2,500 per violation; $7,500 if intentional",
					"$100-$50,000 per violation; $1.5M annual cap per category",
				],
			],
		},
		{
			title: "Encryption Comparison",
			blueprintGroups: ["isc.2.C"],
			headers: ["Feature", "Symmetric (AES)", "Asymmetric (RSA/ECC)"],
			rows: [
				["Keys", "Single shared key", "Public/private key pair"],
				[
					"Speed",
					"Fast — suitable for bulk data",
					"Slow — computationally intensive",
				],
				[
					"Key distribution",
					"Challenge — must securely share key",
					"Easier — public key can be freely distributed",
				],
				[
					"Common algorithms",
					"AES-128, AES-256, 3DES",
					"RSA-2048, RSA-4096, ECC",
				],
				[
					"Primary use",
					"Data at rest, session encryption",
					"Key exchange, digital signatures, authentication",
				],
				[
					"TLS/HTTPS",
					"Session data encryption (after handshake)",
					"Initial key exchange (handshake phase)",
				],
			],
		},
		{
			title: "Control Types and Functions",
			blueprintGroups: ["isc.2.C"],
			headers: ["Type", "Timing", "Purpose", "Examples"],
			rows: [
				[
					"Preventive",
					"Before the event",
					"Stop threats from occurring",
					"Firewalls, access controls, encryption, segregation of duties, input validation",
				],
				[
					"Detective",
					"During/after the event",
					"Identify that a threat has occurred",
					"IDS/IPS, log monitoring, audit trails, reconciliations, SIEM alerts",
				],
				[
					"Corrective",
					"After the event",
					"Remediate the impact of a threat",
					"Backups/restore, patch deployment, incident response, antivirus quarantine",
				],
				[
					"Deterrent",
					"Before the event",
					"Discourage potential threats",
					"Warning banners, security cameras, acceptable use policies, penalties",
				],
				[
					"Compensating",
					"Varies",
					"Substitute when primary control is not feasible",
					"Manual review when automated control fails, additional monitoring",
				],
			],
		},
		{
			title: "Malware Types and Characteristics",
			blueprintGroups: ["isc.2.B"],
			headers: ["Type", "Behavior", "Propagation", "Key Characteristic"],
			rows: [
				[
					"Virus",
					"Attaches to legitimate programs",
					"Requires user action (execute infected file)",
					"Cannot self-replicate without host program",
				],
				[
					"Worm",
					"Self-replicating standalone program",
					"Spreads automatically across networks",
					"No host program needed; consumes bandwidth",
				],
				[
					"Trojan",
					"Disguised as legitimate software",
					"Requires user to install",
					"Creates backdoors; no self-replication",
				],
				[
					"Ransomware",
					"Encrypts victim's files",
					"Phishing, exploit kits, RDP",
					"Demands payment for decryption key",
				],
				[
					"Spyware",
					"Monitors user activity secretly",
					"Bundled with software, drive-by download",
					"Keyloggers, screen capture, credential theft",
				],
				[
					"Rootkit",
					"Hides deep in OS to maintain access",
					"Exploits or bundled with other malware",
					"Extremely difficult to detect; modifies OS kernel",
				],
			],
		},
		{
			title: "IT Governance Frameworks Comparison",
			blueprintGroups: ["isc.1.G"],
			headers: ["Dimension", "COBIT 2019", "ITIL 4", "NIST RMF", "COSO"],
			rows: [
				[
					"Primary focus",
					"IT governance and management",
					"IT service management",
					"Information security risk",
					"Internal control over financial reporting",
				],
				[
					"Issued by",
					"ISACA",
					"Axelos/PeopleCert",
					"NIST (U.S. government)",
					"COSO (Treadway Commission)",
				],
				[
					"Key structure",
					"5 domains (EDM, APO, BAI, DSS, MEA)",
					"Service Value System + 34 practices",
					"7 steps (Prepare through Monitor)",
					"5 components (Control environment through Monitoring)",
				],
				[
					"Maturity model",
					"6 levels (0-5) CMMI-based",
					"N/A — uses continual improvement",
					"N/A — uses FIPS 199 categorization",
					"N/A — uses effectiveness assessment",
				],
				[
					"CPA exam relevance",
					"IT governance questions",
					"Service management concepts",
					"IT risk assessment",
					"ICFR evaluation (primary framework)",
				],
			],
		},
		{
			title: "SOC Opinion Types and Conditions",
			blueprintGroups: ["isc.3.E"],
			headers: ["Opinion Type", "Condition", "Report Language", "User Impact"],
			rows: [
				[
					"Unqualified (clean)",
					"Description fairly presented; controls suitably designed and operating effectively (Type II); no material exceptions",
					"'In our opinion, the description is fairly presented... and the controls... were suitably designed and operating effectively'",
					"Highest assurance — user auditor can rely on SOC report for the controls tested",
				],
				[
					"Qualified",
					"One or more material exceptions limited to specific controls; overall control environment is still effective",
					"'Except for [specific control(s)]... the controls were suitably designed and operating effectively'",
					"User auditor evaluates the impact of the excepted controls on their risk assessment; may need additional procedures for affected areas",
				],
				[
					"Adverse",
					"Exceptions are pervasive across multiple control areas; the control environment as a whole is not effective",
					"'The controls were not suitably designed / not operating effectively to achieve the applicable criteria'",
					"User auditor cannot rely on the SOC report; must perform alternative procedures or expand substantive testing significantly",
				],
				[
					"Disclaimer",
					"Practitioner unable to obtain sufficient appropriate evidence (scope limitation imposed by service organization or circumstances)",
					"'We were unable to obtain sufficient appropriate evidence to form an opinion'",
					"No assurance provided; user auditor must treat as if no SOC report exists and perform full alternative procedures",
				],
			],
		},
	],
	mnemonics: [
		{
			acronym: "SAPCP",
			blueprintGroups: ["isc.3.B"],
			expansion:
				"Security, Availability, Processing Integrity, Confidentiality, Privacy",
			explanation:
				"The five Trust Services Criteria used in SOC 2 engagements. Security (common criteria) is always required; the other four are optional based on engagement scope.",
		},
		{
			acronym: "IPDRR",
			blueprintGroups: ["isc.2.A"],
			expansion: "Identify, Protect, Detect, Respond, Recover",
			explanation:
				"The five core functions of the NIST Cybersecurity Framework, in order. Remember: 'I Protect, Detect, Respond, Recover.'",
		},
		{
			acronym: "CIA",
			blueprintGroups: ["isc.2.A"],
			expansion: "Confidentiality, Integrity, Availability",
			explanation:
				"The three pillars of information security. Confidentiality = prevent unauthorized disclosure. Integrity = prevent unauthorized modification. Availability = ensure authorized access when needed.",
		},
		{
			acronym: "RICE",
			blueprintGroups: ["isc.1.E"],
			expansion: "Request, Incident, Change, Event",
			explanation:
				"The four core change management process types in IT service management. All changes must go through a formal change advisory board (CAB) review before implementation.",
		},
		{
			acronym: "PICERL",
			blueprintGroups: ["isc.2.D"],
			expansion:
				"Preparation, Identification, Containment, Eradication, Recovery, Lessons Learned",
			explanation:
				"The six phases of incident response per NIST SP 800-61. Memory aid: 'Please Identify, Contain, Eradicate, Recover, Learn.'",
		},
		{
			acronym: "KHA",
			blueprintGroups: ["isc.2.C"],
			expansion:
				"Knowledge (something you know), Have (something you have), Are (something you are)",
			explanation:
				"The three authentication factors. Knowledge = password/PIN. Have = token/smart card/phone. Are = biometrics (fingerprint, retina). MFA requires two or more different factors.",
		},
		{
			acronym: "DRMM",
			blueprintGroups: ["isc.2.C"],
			expansion: "DAC, RBAC, MAC, (A)BAC",
			explanation:
				"The four access control models from least to most restrictive: Discretionary (owner decides), Role-Based (role determines access), Mandatory (classification labels), Attribute-Based (policies evaluate multiple attributes).",
		},
		{
			acronym: "HWC",
			blueprintGroups: ["isc.1.D"],
			expansion: "Hot site, Warm site, Cold site",
			explanation:
				"DR site types from fastest to slowest recovery. Hot = real-time sync, minutes RTO, highest cost. Warm = partial hardware, hours RTO. Cold = empty facility, days RTO, lowest cost.",
		},
		{
			acronym: "APOC",
			blueprintGroups: ["isc.1.F"],
			expansion:
				"Access controls, Program change controls, Operations controls, Creation/development controls",
			explanation:
				"The four categories of IT General Controls (ITGCs). All automated application controls depend on these ITGCs being effective.",
		},
	],
};
