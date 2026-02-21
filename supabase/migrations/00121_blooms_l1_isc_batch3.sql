-- Migration: Bloom's L1 rebalancing — ISC batch 3 (48 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 48 L2 (Application) questions to L1 (Remember/Understand) depth for ISC section
-- Affected topics: System Availability and Change Management, Security and Control Frameworks

BEGIN;

-- ============================================================
-- SYSTEM AVAILABILITY AND CHANGE MANAGEMENT (27 questions)
-- ============================================================

-- ID 3540: System Availability and Change Management — Server clustering definition
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'What is the primary availability benefit of server clustering?',
  choices = '["Automatic failover to a surviving node if one server fails, minimizing downtime", "Faster internet connectivity for end users", "Improved physical security of the data center", "Encryption of data stored on disk"]'::jsonb,
  explanation = 'Correct (A): Server clustering groups multiple servers so they function as a single system. If one node fails, the workload automatically fails over to surviving nodes, minimizing or eliminating application downtime. This provides high availability through hardware redundancy. (B) is wrong because clustering addresses server availability, not network bandwidth. (C) is wrong because clustering is a logical architecture concept, not a physical security measure.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3540;

-- ID 3541: System Availability and Change Management — Load balancer function
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'What is the primary function of a load balancer?',
  choices = '["Encrypting all traffic between the browser and server", "Distributing incoming traffic across multiple servers to prevent any single server from becoming overwhelmed", "Storing cached copies of web pages for faster retrieval", "Scanning incoming traffic for malware signatures"]'::jsonb,
  explanation = 'Correct (B): A load balancer distributes incoming network traffic across multiple backend servers based on algorithms such as round-robin or least connections. This prevents individual server overload, improves response times, and provides availability through failover if one server fails. (A) is wrong because encryption is handled by TLS/SSL, not the load balancer. (C) is wrong because caching is a content delivery function, not load balancing.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3541;

-- ID 3542: System Availability and Change Management — Change Advisory Board purpose
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'What is the primary purpose of a Change Advisory Board (CAB)?',
  choices = '["To write the code for system changes", "To perform backup and recovery operations", "To assess the risk, impact, and readiness of proposed changes before production implementation", "To negotiate vendor contracts for new hardware"]'::jsonb,
  explanation = 'Correct (C): The CAB is a cross-functional body that evaluates proposed changes to production systems by assessing risk, impact, resource requirements, testing adequacy, and rollback plans. The CAB''s approval helps ensure changes do not introduce unintended disruptions. (A) is wrong because the CAB reviews changes rather than writing code. (D) is wrong because vendor contract negotiation is a procurement function, not a change management function.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3542;

-- ID 3543: System Availability and Change Management — ITIL change management steps
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Under ITIL, what is the correct sequence of steps in a standard change management workflow?',
  choices = '["Implement, then request, then approve", "Deploy immediately, then document the change afterward", "Send a notification, then implement at the developer''s discretion", "Request, assess and classify, approve, implement, and conduct post-implementation review"]'::jsonb,
  explanation = 'Correct (D): The standard ITIL change management workflow follows a structured sequence: submit a request for change, assess risk and classify priority, obtain approval from the appropriate authority, implement during an approved window, and conduct a post-implementation review. (A) is wrong because implementing before requesting and approving bypasses all controls. (B) is wrong because documenting after the fact defeats the purpose of change management.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3543;

-- ID 3544: System Availability and Change Management — Impact assessment contents
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'What should a change impact assessment address?',
  choices = '["Affected systems, potential risks, required testing, implementation timeline, and rollback plan", "Only the cost of the hardware needed for the change", "Only whether the change will improve system performance", "The personal preferences of the approval committee"]'::jsonb,
  explanation = 'Correct (A): A comprehensive change impact assessment evaluates all systems and services affected, identifies risks and mitigation strategies, defines required testing, establishes the implementation timeline, and documents a rollback plan. (B) is wrong because an impact assessment covers far more than hardware cost. (C) is wrong because performance improvement is only one factor among many in an impact assessment.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3544;

-- ID 3545: System Availability and Change Management — Unauthorized change definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'What is an unauthorized change in the context of change management?',
  choices = '["An approved standard change executed during a maintenance window", "A successfully tested emergency change", "A change implemented without following the required assessment, approval, and testing controls", "A pre-approved routine change such as adding a user account"]'::jsonb,
  explanation = 'Correct (C): An unauthorized change is one that bypasses the required change management controls, including risk assessment, CAB approval, and testing. Unauthorized changes increase the risk of production incidents because they have not been properly evaluated. (A) is wrong because an approved standard change follows the required controls. (B) is wrong because an emergency change that follows the expedited approval process is authorized, not unauthorized.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3545;

-- ID 3547: System Availability and Change Management — RTO definition and purpose
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What does the Recovery Time Objective (RTO) represent in disaster recovery planning?',
  choices = '["The maximum amount of data that can be lost during a disruption", "The target duration within which a system or process must be restored after a disruption", "The total cost of implementing disaster recovery measures", "The frequency at which disaster recovery tests must be conducted"]'::jsonb,
  explanation = 'Correct (B): The RTO is the targeted duration of time within which a business process or system must be restored after a disruption to avoid unacceptable consequences. If actual recovery exceeds the RTO, the organization may face significant business impact. (A) is wrong because the maximum acceptable data loss is the Recovery Point Objective (RPO), not the RTO. (D) is wrong because test frequency is a separate planning consideration, not the RTO definition.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3547;

-- ID 3548: System Availability and Change Management — N+1 redundancy definition
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'What does N+1 redundancy mean in IT infrastructure?',
  choices = '["Tripling the processing capacity of a single server", "Complete protection against all possible failure scenarios", "Backup capability for only half the active components", "One additional component beyond the minimum required, providing failover if any single active component fails"]'::jsonb,
  explanation = 'Correct (D): N+1 redundancy means operating one more component than the minimum required for normal operations. If any single active component fails, the standby takes over automatically. This is more cost-effective than full duplication (N+N) while protecting against single-point failures. (A) is wrong because N+1 adds one standby unit, not triple capacity. (B) is wrong because N+1 protects against single failures, not all possible failure scenarios.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3548;

-- ID 3550: System Availability and Change Management — Standard change definition
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'In change management, what is a standard change?',
  choices = '["A pre-approved, low-risk, routine change with a documented and proven procedure", "An urgent change required to resolve a production outage", "A change that requires full CAB review and extensive testing", "A change that has never been performed before"]'::jsonb,
  explanation = 'Correct (A): Standard changes are pre-approved, low-risk, frequently performed changes with a documented and proven procedure, such as adding user accounts or installing approved software. They follow a predefined workflow and do not require individual CAB approval. (B) is wrong because an urgent change to resolve a production outage is an emergency change. (C) is wrong because full CAB review applies to normal or major changes, not standard changes.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3550;

-- ID 3551: System Availability and Change Management — Emergency change procedure
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'How does an emergency change differ from a normal change in change management?',
  choices = '["Emergency changes follow the standard process and wait for the next scheduled maintenance window", "Emergency changes use expedited approval and immediate implementation, followed by retrospective documentation and CAB review", "Emergency changes require no documentation at all", "Emergency changes must be deferred until a full risk assessment is completed"]'::jsonb,
  explanation = 'Correct (B): Emergency change procedures provide a fast-track approval path for urgent situations. The change is approved through an expedited mechanism, implemented immediately, and then documented and reviewed retrospectively by the CAB. (A) is wrong because waiting for a scheduled window defeats the purpose of an emergency change. (C) is wrong because emergency changes still require documentation, though it may be completed after implementation.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3551;

-- ID 3552: System Availability and Change Management — High emergency change rate concern
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'What concern does a high percentage of emergency changes indicate?',
  choices = '["Emergency changes are always safer than planned changes", "A high rate is normal and reflects healthy IT operations", "Inadequate planning, poor change management discipline, or misuse of the emergency process to bypass controls", "The auditor should not question change classifications"]'::jsonb,
  explanation = 'Correct (C): Industry benchmarks suggest emergency changes should represent less than 5-10% of all changes. A high rate indicates systemic issues such as poor capacity planning, developers bypassing normal controls by labeling changes as emergencies, or insufficient change management maturity. (A) is wrong because emergency changes that bypass normal review carry higher risk. (B) is wrong because a high emergency rate signals process breakdown, not healthy operations.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3552;

-- ID 3553: System Availability and Change Management — Infrastructure vs. application recovery
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Why must end-to-end recovery time account for both infrastructure and application layers?',
  choices = '["Database failover should never be tested in practice", "Application recovery is always instantaneous after infrastructure failover", "Infrastructure failover and application failover are always the same process", "Infrastructure may recover quickly while application reconnection takes additional time, creating a gap between server recovery and service recovery"]'::jsonb,
  explanation = 'Correct (D): Infrastructure-level failover (such as database server switching) and application-level recovery (reconnecting sessions, warming caches) are separate concerns. Even with fast infrastructure failover, total service recovery includes application reconnection and session re-establishment. RTO must account for all layers. (B) is wrong because applications often need additional time to detect the failover and re-establish connections. (C) is wrong because infrastructure and application recovery are distinct processes with different timelines.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3553;

-- ID 3555: System Availability and Change Management — Rollback plan purpose
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What is the primary purpose of a rollback plan in change management?',
  choices = '["To document the change for compliance records", "To provide a predefined procedure to reverse a change and restore the system to its previous state if problems occur", "To ensure the change is implemented faster", "To eliminate the need for testing before deployment"]'::jsonb,
  explanation = 'Correct (B): A rollback plan is a predefined set of steps to reverse a change and return the system to its pre-change state. It serves as a safety net ensuring the organization can recover quickly if a change introduces defects or unexpected behavior. (A) is wrong because documentation for compliance is a separate purpose from the rollback plan. (D) is wrong because a rollback plan supplements testing rather than replacing it.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3555;

-- ID 3556: System Availability and Change Management — MTD vs. RTO relationship
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What is the relationship between Maximum Tolerable Downtime (MTD) and Recovery Time Objective (RTO)?',
  choices = '["The RTO is set below the MTD to provide a safety margin for recovery complications", "MTD and RTO should always be set to the same value", "The RTO should be set higher than the MTD to allow extra recovery time", "MTD and RTO measure the same thing using different names"]'::jsonb,
  explanation = 'Correct (A): MTD represents the absolute maximum time a process can be unavailable before causing unacceptable damage. The RTO is set below the MTD to provide a safety margin. If recovery takes longer than expected, the margin prevents immediate business failure. (B) is wrong because setting them equal eliminates the safety margin. (C) is wrong because setting RTO higher than MTD would mean the recovery target exceeds the business tolerance.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3556;

-- ID 3557: System Availability and Change Management — Release management benefit
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'What is the primary benefit of release management?',
  choices = '["It eliminates the need for change management", "It allows changes to be deployed without testing", "It coordinates multiple changes into a single planned deployment, reducing production disruptions", "It removes the need for CAB approval"]'::jsonb,
  explanation = 'Correct (C): Release management groups related changes into a coordinated deployment package. This reduces production disruptions by consolidating multiple changes into one maintenance window, enables integration testing of changes that may interact, and provides a single rollback point. (A) is wrong because release management works within the change management process, not as a replacement. (D) is wrong because releases still require appropriate approvals.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3557;

-- ID 3558: System Availability and Change Management — Delayed patch risk
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'What risk does delayed application of critical security patches create?',
  choices = '["No risk because patches are eventually applied", "Servers will automatically shut down if patches are not applied on time", "The patch vendor will revoke the software license", "Extended exposure to known vulnerabilities that attackers can exploit using publicly available details"]'::jsonb,
  explanation = 'Correct (D): When patches are released, vulnerability details often become public through CVE disclosures. Attackers actively scan for unpatched systems. Each day a critical patch remains unapplied, the organization is exposed to known, exploitable vulnerabilities. (A) is wrong because the risk window between patch release and application is the critical concern. (B) is wrong because servers do not automatically shut down for missed patches.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3558;

-- ID 3559: System Availability and Change Management — Geographic redundancy purpose
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What risk does geographic separation of data centers primarily mitigate?',
  choices = '["A regional disaster that could simultaneously affect co-located primary and backup systems", "Software bugs in the application code", "Employee turnover in the IT department", "Vendor price increases for cloud services"]'::jsonb,
  explanation = 'Correct (A): Geographic separation ensures that a regional event such as a natural disaster or widespread power outage cannot simultaneously destroy both the primary and recovery sites. If both sites were in the same region, a single disaster could eliminate both. (B) is wrong because software bugs exist in the code regardless of data center location. (C) is wrong because employee turnover is a human resources issue unrelated to geographic redundancy.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3559;

-- ID 3561: System Availability and Change Management — Full-interruption DR test
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'What does a full-interruption disaster recovery test involve?',
  choices = '["Reviewing the plan document for completeness", "Conducting a verbal walkthrough of recovery procedures", "Shutting down primary systems and activating the recovery site to process real workloads", "Sending an email notification to all employees about the DR plan"]'::jsonb,
  explanation = 'Correct (C): A full-interruption test is the most comprehensive DR test type. It involves actually shutting down primary production systems and failing over to the disaster recovery site to process real or simulated workloads, validating the entire recovery process end-to-end. (A) is wrong because reviewing a document is a checklist review, the least rigorous test type. (B) is wrong because a verbal walkthrough is a tabletop exercise, not a full-interruption test.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3561;

-- ID 3562: System Availability and Change Management — Back-out plan testing requirement
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Why must back-out plans be tested before a production change is implemented?',
  choices = '["Back-out plans are unnecessary for production changes", "An untested backup or rollback mechanism may fail when needed, creating a false sense of security", "Production changes never fail, so back-out plans are optional", "Corrupt backups are acceptable if the original change succeeds"]'::jsonb,
  explanation = 'Correct (B): A back-out plan is only as reliable as its last successful test. Taking a backup without verifying its integrity through a test restore creates a false sense of security. Before any production change, the back-out mechanism should be validated to ensure it works when needed. (A) is wrong because back-out plans are a standard requirement of change management. (C) is wrong because any production change carries a risk of failure.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3562;

-- ID 3564: System Availability and Change Management — Root cause analysis for failed changes
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'What is the appropriate response when the change success rate declines significantly?',
  choices = '["Immediately stop all production changes", "Lower the definition of success to improve the metric", "Increase the number of changes to compensate for failures", "Analyze failed changes to identify common root causes and implement targeted process improvements"]'::jsonb,
  explanation = 'Correct (D): Root cause analysis of failed changes is the appropriate response to a declining success rate. Common causes include rushed implementations, insufficient testing, or resource constraints. Identifying patterns enables targeted improvements. (A) is wrong because stopping all changes disrupts business operations. (B) is wrong because redefining success masks the underlying problem rather than solving it.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3564;

-- ID 3565: System Availability and Change Management — Auto-scaling definition
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'What does auto-scaling provide in a cloud computing environment?',
  choices = '["Automatic data backup during peak periods", "Automatic software updates during scaling events", "Dynamic adjustment of computing resources based on real-time demand", "Encryption of data during transmission"]'::jsonb,
  explanation = 'Correct (C): Auto-scaling automatically adjusts the number of active compute instances based on predefined metrics such as CPU utilization or request count. During demand peaks, additional servers are provisioned, and when demand subsides, instances are removed to reduce costs. (A) is wrong because auto-scaling manages compute capacity, not backup operations. (D) is wrong because encryption is a security function, not a scaling function.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3565;

-- ID 3568: System Availability and Change Management — CMDB completeness risk
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What risk do undocumented servers that are missing from the CMDB present?',
  choices = '["No risk because the CMDB is optional", "They cannot be assessed for change impact, may be missed during security patching, and create disaster recovery blind spots", "Undocumented servers will perform better than documented ones", "The CMDB will automatically discover and document missing servers"]'::jsonb,
  explanation = 'Correct (B): Servers not in the CMDB are effectively invisible to IT management processes. They may be missed during security patch deployments, excluded from impact assessments when changes are planned, and overlooked in disaster recovery planning. Configuration management only works when the CMDB is complete and accurate. (A) is wrong because CMDB completeness is a fundamental requirement for effective IT management. (D) is wrong because automatic discovery requires explicit tooling and configuration, not an inherent CMDB feature.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3568;

-- ID 3570: System Availability and Change Management — Dependency mapping purpose
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What does interdependency analysis reveal about business process recovery?',
  choices = '["Every system that a business process depends on is a single point of failure and must be included in recovery planning", "Only the primary application needs disaster recovery protection", "Dependent systems should be combined into one to reduce complexity", "Interdependent systems do not affect recovery time"]'::jsonb,
  explanation = 'Correct (A): Dependency mapping reveals that a business process requiring multiple systems to function means each system is a potential single point of failure. All dependencies must be addressed in DR planning, and the slowest system to recover determines the actual process recovery time. (B) is wrong because all dependent systems, not just the primary application, need recovery planning. (D) is wrong because interdependencies directly impact total recovery time.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3570;

-- ID 3571: System Availability and Change Management — Tiered change approval
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'How should change approval rigor differ based on system criticality tiers?',
  choices = '["All tiers should follow the same approval process regardless of criticality", "Change approval should be based solely on the developer''s confidence level", "Higher-criticality systems require more rigorous approval and testing than lower-criticality systems", "Lower-criticality systems should receive more scrutiny than mission-critical systems"]'::jsonb,
  explanation = 'Correct (C): Tiered change management aligns approval rigor with system criticality. Mission-critical financial systems warrant the most thorough review because a failed change has the highest business impact, while lower tiers receive proportionally less rigorous but still controlled processes. (A) is wrong because applying the same rigor to all tiers wastes resources on low-risk changes while potentially under-protecting critical systems. (D) is wrong because criticality should drive increased scrutiny, not decreased scrutiny.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3571;

-- ID 3572: System Availability and Change Management — UPS purpose
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'What is the primary purpose of an Uninterruptible Power Supply (UPS) in a data center?',
  choices = '["To provide permanent backup power for the entire facility", "To filter internet traffic during a power outage", "To charge portable devices for employees", "To bridge the gap between power loss and generator startup, preventing system interruption"]'::jsonb,
  explanation = 'Correct (D): A UPS provides immediate, short-duration backup power that bridges the gap between a power failure and generator activation. Without a UPS, systems would crash during the seconds or minutes it takes for generators to start and stabilize. (A) is wrong because a UPS provides short-duration power, not permanent backup. (B) is wrong because a UPS manages electrical power, not network traffic.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3572;

-- ID 3573: System Availability and Change Management — Synchronous database mirroring benefit
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'What is the primary benefit of synchronous database mirroring?',
  choices = '["If the primary database fails, the mirror can be activated with zero data loss because every transaction is replicated before being acknowledged", "Faster query performance for end users", "Reduced storage costs through data compression", "Elimination of the need for user authentication"]'::jsonb,
  explanation = 'Correct (A): Synchronous database mirroring ensures that every committed transaction exists on both the primary and mirror databases before being acknowledged. If the primary fails, the mirror contains an identical copy of all data, providing zero data loss (RPO = 0) and rapid activation (low RTO). (B) is wrong because synchronous replication may actually add slight latency rather than improving query performance. (C) is wrong because mirroring creates a full copy rather than compressing data.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3573;

-- ID 3574: System Availability and Change Management — Configuration drift risk
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What risk does configuration drift between staging and production environments create?',
  choices = '["Staging environments do not need to match production", "Patches that test successfully in staging may fail in production because the environments are no longer equivalent", "Configuration drift improves security by adding diversity", "The staging environment should always be older than production"]'::jsonb,
  explanation = 'Correct (B): Configuration drift between staging and production undermines pre-deployment testing. A patch that works in staging but fails in production due to configuration differences provides false confidence. Staging environments must be regularly synchronized with production configurations. (A) is wrong because the entire purpose of staging is to mirror production for reliable testing. (C) is wrong because configuration diversity between staging and production creates unpredictability, not security.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3574;

-- ============================================================
-- SECURITY AND CONTROL FRAMEWORKS (21 questions)
-- ============================================================

-- ID 3580: Security and Control Frameworks — ISO 27001 Statement of Applicability purpose
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under ISO 27001, what is the purpose of the Statement of Applicability (SoA)?',
  choices = '["To list all employees with access to sensitive data", "To record all cybersecurity incidents in the past year", "To document which Annex A controls are applicable and justify any exclusions based on the risk assessment", "To define the organization''s budget for information security"]'::jsonb,
  explanation = 'Correct (C): The Statement of Applicability is a required ISO 27001 document that lists all Annex A controls, states whether each is applicable, provides justification for inclusions and exclusions, and indicates implementation status. It bridges risk assessment results to control selection. (A) is wrong because employee access lists are maintained in access control records, not the SoA. (B) is wrong because incident records are part of incident management, not the SoA.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3580;

-- ID 3582: Security and Control Frameworks — COBIT 2019 governance vs. management distinction
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'In COBIT 2019, what distinguishes governance objectives from management objectives?',
  choices = '["Design factors determine the difference", "Enterprise goals determine the difference", "Focus areas determine the difference", "Governance objectives address board-level direction and oversight, while management objectives address planning and execution"]'::jsonb,
  explanation = 'Correct (D): COBIT 2019 separates governance objectives (Evaluate, Direct, and Monitor, performed by the board) from management objectives (Align, Plan, Organize; Build, Acquire, Implement; Deliver, Service, Support; Monitor, Evaluate, Assess, performed by management). This ensures accountability at appropriate levels. (A) is wrong because design factors are used to customize the governance system, not to define the governance-management distinction. (C) is wrong because focus areas are specific topics of concern, not the structural distinction.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3582;

-- ID 3583: Security and Control Frameworks — COBIT 2019 design factor example
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'In COBIT 2019, which of the following is an example of a design factor?',
  choices = '["Enterprise strategy, such as growth/acquisition or innovation/differentiation", "The color scheme of the organization''s website", "The brand of hardware used in the data center", "The physical location of the IT department"]'::jsonb,
  explanation = 'Correct (A): COBIT 2019 uses 11 design factors to tailor the governance system to the enterprise''s specific context. Enterprise strategy is a key design factor that influences which governance and management objectives are prioritized. (B) is wrong because website aesthetics are unrelated to IT governance design factors. (C) is wrong because hardware brand choices are operational decisions, not governance design factors.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3583;

-- ID 3584: Security and Control Frameworks — CIS Controls IG1 definition
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under the CIS Controls, which implementation group represents the minimum standard for all enterprises?',
  choices = '["IG2", "IG1", "IG3", "IG0"]'::jsonb,
  explanation = 'Correct (B): CIS Implementation Group 1 (IG1) represents essential cyber hygiene and is the minimum standard recommended for all enterprises. IG1 contains a subset of controls providing the most fundamental protections against common attacks. IG2 adds controls for more complex risk profiles, and IG3 adds advanced controls for sophisticated threats. (A) is wrong because IG2 is the next tier above the minimum, intended for enterprises with moderate complexity. (D) is wrong because there is no IG0 in the CIS Controls framework.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3584;

-- ID 3585: Security and Control Frameworks — CIS IG2 applicability
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'Which type of organization is CIS Implementation Group 2 (IG2) designed for?',
  choices = '["Organizations with no IT staff or infrastructure", "Only government agencies and defense contractors", "Enterprises with IT staff, moderate complexity, and sensitive data requiring additional protections", "Only organizations facing nation-state-level cyber threats"]'::jsonb,
  explanation = 'Correct (C): IG2 is designed for enterprises that have IT staff managing infrastructure and handle sensitive client or enterprise data. It adds controls for configuration management, data protection, and enhanced access control beyond the essential IG1 hygiene controls. (A) is wrong because organizations with no IT staff typically fall into IG1. (D) is wrong because nation-state-level threats are addressed by IG3, not IG2.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3585;

-- ID 3586: Security and Control Frameworks — COSO component for IT application controls
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Which COSO component most directly addresses the design of IT application controls?',
  choices = '["Control Environment", "Risk Assessment", "Monitoring Activities", "Control Activities"]'::jsonb,
  explanation = 'Correct (D): Control Activities include the policies, procedures, and mechanisms that help ensure management directives are carried out and risks are addressed. IT application controls such as input validation, authorization checks, and processing controls are a subset of control activities. (A) is wrong because Control Environment sets the organizational tone, not specific IT controls. (B) is wrong because Risk Assessment identifies risks but does not define the specific controls to mitigate them.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3586;

-- ID 3589: Security and Control Frameworks — Micro-segmentation benefit in zero trust
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'What is the primary benefit of micro-segmentation in a zero trust architecture?',
  choices = '["It creates granular security zones that limit lateral movement after a system is compromised", "It reduces the total number of firewalls needed", "It eliminates the need for user authentication", "It allows all users to access all network segments equally"]'::jsonb,
  explanation = 'Correct (A): Micro-segmentation divides the network into small, isolated segments with individual access policies. In a zero trust context, this limits lateral movement so that if an attacker compromises one system, they cannot freely move to other systems. This containment minimizes the blast radius of a breach. (B) is wrong because micro-segmentation typically increases the number of enforcement points rather than reducing firewalls. (D) is wrong because micro-segmentation restricts access rather than granting universal access.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3589;

-- ID 3590: Security and Control Frameworks — Security policy document type
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Which security document type provides high-level, mandatory statements of management''s intent and direction?',
  choices = '["Procedures", "Policies", "Guidelines", "Baselines"]'::jsonb,
  explanation = 'Correct (B): Policies are high-level documents that express management''s intent, expectations, and direction for information security. They are mandatory and set the foundation for the security program. (A) is wrong because procedures provide step-by-step instructions for implementing policies. (C) is wrong because guidelines offer recommended practices that are typically optional, not mandatory.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3590;

-- ID 3591: Security and Control Frameworks — Standard document type definition
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'What type of security document specifies mandatory technical requirements that implement a policy?',
  choices = '["Policy", "Guideline", "Procedure", "Standard"]'::jsonb,
  explanation = 'Correct (D): A standard defines mandatory, specific technical requirements that support a policy. For example, specifying AES-256 for data at rest and TLS 1.3 for data in transit provides the mandatory technical requirements implementing an encryption policy. (A) is wrong because a policy states the intent at a high level but does not specify technical requirements. (B) is wrong because guidelines are recommended practices, not mandatory requirements.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3591;

-- ID 3592: Security and Control Frameworks — Procedure document type definition
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'Which security document type provides detailed step-by-step instructions for implementing standards?',
  choices = '["Policy", "Standard", "Procedure", "Guideline"]'::jsonb,
  explanation = 'Correct (C): A procedure provides detailed, step-by-step instructions for implementing standards and policies, including specific configuration steps and commands. (A) is wrong because a policy states management''s intent and direction at a high level. (D) is wrong because guidelines offer recommended but non-mandatory practices rather than mandatory step-by-step instructions.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3592;

-- ID 3595: Security and Control Frameworks — COBIT Capability Level 0 meaning
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'In COBIT 2019, what does Capability Level 0 indicate about a process?',
  choices = '["The process is incomplete and either does not exist or fails to achieve its purpose", "The process is managed with defined metrics", "The process is optimized and continuously improved", "The process is established with standardized practices"]'::jsonb,
  explanation = 'Correct (A): COBIT 2019 Capability Level 0 (Incomplete) means the process does not exist or fails to achieve its process purpose. There is little or no evidence of systematic achievement. This is the lowest capability level and indicates a significant gap requiring attention. (B) is wrong because defined metrics characterize a higher capability level. (C) is wrong because optimization describes Level 5, the highest capability level.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3595;

-- ID 3596: Security and Control Frameworks — NIST CSF Framework Profile purpose
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under the NIST Cybersecurity Framework, what is the purpose of a Framework Profile?',
  choices = '["To list all employees in the cybersecurity team", "To represent the alignment of framework categories with the organization''s business requirements, risk tolerance, and resources", "To define the organization''s annual cybersecurity budget", "To rank the five core functions in order of importance"]'::jsonb,
  explanation = 'Correct (B): A NIST CSF Framework Profile represents the alignment of the framework''s functions, categories, and subcategories with the organization''s specific business requirements, risk tolerance, and available resources. Organizations create Current and Target Profiles, then analyze the gap to prioritize improvements. (A) is wrong because team rosters are not the purpose of a Framework Profile. (D) is wrong because the five functions are complementary and are not ranked in a fixed order of importance.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3596;

-- ID 3597: Security and Control Frameworks — NIST CSF gap analysis approach
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'How should an organization address gaps identified between its NIST CSF Current Profile and Target Profile?',
  choices = '["Implement all missing controls immediately regardless of cost", "Abandon the NIST CSF and select a different framework", "Prioritize remediation based on risk, business impact, and available resources", "Ignore gaps in the Detect function because it is less important than Protect"]'::jsonb,
  explanation = 'Correct (C): Gap analysis between Current and Target Profiles should drive a prioritized, risk-based improvement plan. Not all gaps carry equal risk or urgency, so organizations evaluate each gap against potential business impact, threat likelihood, and available resources. (A) is wrong because implementing everything at once ignores resource constraints and risk prioritization. (D) is wrong because all five NIST CSF functions are important and interconnected.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3597;

-- ID 3598: Security and Control Frameworks — NIST SP 800-53 control family names
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under NIST SP 800-53, which pair correctly matches control family abbreviations to their full names?',
  choices = '["AC stands for Audit Control and SA stands for System Assessment", "CM stands for Crisis Management and IR stands for Information Recovery", "PL stands for Physical Layout and PE stands for Personnel Evaluation", "RA stands for Risk Assessment and IA stands for Identification and Authentication"]'::jsonb,
  explanation = 'Correct (D): Under NIST SP 800-53, RA stands for Risk Assessment (controls for assessing risk to organizational operations and assets) and IA stands for Identification and Authentication (controls for identifying and authenticating users and devices). (A) is wrong because AC stands for Access Control, not Audit Control. (B) is wrong because CM stands for Configuration Management and IR stands for Incident Response.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3598;

-- ID 3599: Security and Control Frameworks — COSO Monitoring Activities component
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under COSO, which component requires tracking security metrics and regularly reviewing control effectiveness?',
  choices = '["Monitoring Activities", "Control Environment", "Risk Assessment", "Control Activities"]'::jsonb,
  explanation = 'Correct (A): Monitoring Activities requires both ongoing monitoring (built into operations) and separate evaluations (periodic assessments) to determine whether controls continue to operate effectively. Without monitoring, the organization cannot detect control failures or degradation over time. (B) is wrong because Control Environment sets the organizational tone and ethical culture. (C) is wrong because Risk Assessment identifies risks but does not include ongoing effectiveness reviews.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3599;

-- ID 3600: Security and Control Frameworks — ISO 27002:2022 four themes
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'What are the four control themes in ISO 27002:2022?',
  choices = '["Administrative, Technical, Physical, Operational", "Organizational, People, Physical, Technological", "Confidentiality, Integrity, Availability, Privacy", "Preventive, Detective, Corrective, Compensating"]'::jsonb,
  explanation = 'Correct (B): ISO 27002:2022 reorganized its 93 controls into four themes: Organizational (37 controls), People (8 controls), Physical (14 controls), and Technological (34 controls). This restructuring replaced the 14-domain structure of the 2013 version. (A) is wrong because Administrative/Technical/Physical/Operational is a generic control classification, not the ISO 27002:2022 structure. (D) is wrong because Preventive/Detective/Corrective/Compensating describes control functions, not the ISO 27002 themes.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3600;

-- ID 3601: Security and Control Frameworks — COBIT and NIST CSF complementarity
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What is the relationship between COBIT 2019 and the NIST Cybersecurity Framework?',
  choices = '["COBIT automatically includes all NIST CSF requirements, making NIST CSF redundant", "NIST CSF is only for government agencies and should not be used by private companies", "They are complementary — COBIT provides broader IT governance while NIST CSF focuses on cybersecurity risk management", "Organizations must choose one framework and eliminate the other"]'::jsonb,
  explanation = 'Correct (C): COBIT 2019 and NIST CSF are complementary frameworks with different scopes. COBIT addresses the full range of IT governance and management, while NIST CSF focuses specifically on cybersecurity risk management. Organizations commonly map controls between them to ensure comprehensive coverage. (A) is wrong because COBIT does not fully replicate all NIST CSF requirements. (B) is wrong because NIST CSF is widely used by both public and private sector organizations.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3601;

-- ID 3602: Security and Control Frameworks — Zero trust first step
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'According to zero trust principles, what should be the first step in implementation?',
  choices = '["Deploy micro-segmentation across all network zones", "Replace all firewalls with next-generation models", "Require biometric authentication for all users immediately", "Identify and classify all assets, data flows, and users to understand what needs protection"]'::jsonb,
  explanation = 'Correct (D): Zero trust implementation begins with comprehensive visibility — identifying and classifying all assets, mapping data flows, and understanding user populations. Without this foundational understanding, the organization cannot define appropriate access policies. Technology deployments come after this discovery phase. (A) is wrong because micro-segmentation requires knowing what assets exist before defining segments. (C) is wrong because authentication changes require understanding the user population first.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3602;

-- ID 3603: Security and Control Frameworks — CIS Controls inventory prioritization
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Why are asset and software inventory controls listed first in the CIS Controls?',
  choices = '["You cannot protect what you do not know exists — inventories are foundational to all other security controls", "Regulatory agencies require them to be implemented first", "They generate the most audit evidence", "They are the easiest controls to implement"]'::jsonb,
  explanation = 'Correct (A): The CIS Controls place asset and software inventories first because they are foundational to every other security activity. Without knowing what hardware and software exists, organizations cannot apply patches, manage configurations, enforce access controls, or monitor for threats effectively. (B) is wrong because the CIS ordering reflects logical dependency, not regulatory mandate. (D) is wrong because ease of implementation is not the primary rationale for the ordering.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3603;

-- ID 3604: Security and Control Frameworks — CISO reporting structure concern
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'What governance concern arises when the CISO reports directly to the CIO?',
  choices = '["The CISO should report to the CFO instead", "The CIO role should be eliminated if a CISO exists", "IT operational priorities may override security concerns, creating a conflict of interest", "The CISO position is unnecessary if a CIO exists"]'::jsonb,
  explanation = 'Correct (C): When the CISO reports to the CIO, IT operational priorities (speed, cost, convenience) may conflict with security requirements (restriction, control, investment). Best practices recommend the CISO have independent reporting to the CEO, board, or a risk committee to prevent security being subordinated to operational pressures. (A) is wrong because reporting to the CFO does not address the independence concern. (D) is wrong because the CISO and CIO serve distinct roles.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3604;

-- ID 3605: Security and Control Frameworks — Stale security policy risk
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'What risk do outdated security policies that have not been reviewed for several years create?',
  choices = '["Policies that old are automatically legally unenforceable", "Gaps between documented controls and actual practices due to changes in threats, technology, and business processes", "A standard review cycle is three years so no concern exists", "Policy age does not affect security posture"]'::jsonb,
  explanation = 'Correct (B): Security policies should be reviewed and updated regularly, typically annually, to reflect changes in the threat landscape, technology environment, and business operations. Stale policies create gaps between documented expectations and actual practices, leading to inconsistent control implementation. (A) is wrong because policy age alone does not determine legal enforceability. (C) is wrong because best practice calls for annual review, not a three-year cycle.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3605;

COMMIT;
