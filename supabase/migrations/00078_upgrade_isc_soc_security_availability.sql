-- Migration: Upgrade 11 ISC moderate questions (SOC, Security, Availability, IT Audit)
-- Fixes: short-stem, short-expl, absolute-assurance, length-cuing, missing citations
-- Target: all questions score 7+ after this migration

-- === SOC Report Content and Structure (1 question) ===

-- Q5463 [score:6] short-stem(11w) → expand with scenario
UPDATE questions SET
  stem = 'Thornfield Payroll Services uses a third-party cloud provider (the subservice organization) to host its payroll database. In its SOC 2 report, Thornfield uses the carve-out method and identifies several controls that the cloud provider is expected to have in place for Thornfield''s control objectives to be fully met. Under AICPA SOC guidance, which of the following BEST describes complementary subservice organization controls (CSOCs)?',
  explanation = 'Complementary subservice organization controls (CSOCs) are controls that the service organization''s system design assumes the subservice organization has implemented for the overall control objectives to be achieved. When using the carve-out method, the SOC report identifies CSOCs so user entities understand that additional controls outside the report''s scope are necessary. Choice A incorrectly describes complementary user entity controls (CUECs), not CSOCs. Choice C is incorrect because the service auditor tests the service organization''s controls, not the subservice organization''s controls under the carve-out method.'
WHERE id = 5463;

-- === SOC Reporting (4 questions) ===

-- Q1220 [score:5] short-stem(9w) → expand with scenario
UPDATE questions SET
  stem = 'Ridgemont Financial Services receives a SOC 2 Type II report from its cloud hosting provider covering the period January 1 through September 30, 2025. Ridgemont''s fiscal year ends December 31, 2025, leaving a three-month gap. The hosting provider issues a letter addressing whether any significant changes occurred to the system or controls between October 1 and December 31. Under SOC reporting guidance, a bridge letter (gap letter) from a service organization:',
  explanation = 'A bridge letter is a written representation from the service organization''s management covering the gap between the end of the SOC report period and the user entity''s year-end. It addresses whether significant changes occurred to the system, controls, or control environment during the gap period. Choice B is incorrect because a bridge letter is a management representation, not an independent examination — it provides no assurance comparable to a SOC report. Choice D is incorrect because the user auditor must still evaluate whether additional procedures are needed based on the gap period and the bridge letter''s content.'
WHERE id = 1220;

-- Q3883 [score:6] absolute-assurance → replace distractor
UPDATE questions SET
  stem = 'After completing the SOC 2 Type II examination of Ashford Data Services, the service auditor issues an unqualified (unmodified) opinion. The engagement partner at Mercer & Associates, who audits one of Ashford''s user entities, evaluates the SOC report. Under AICPA SOC guidance, an unqualified opinion in a SOC report indicates:',
  choices = '["The service organization has no control deficiencies of any kind and all controls operated perfectly","The system description is fairly presented, controls are suitably designed, and for Type II they operated effectively","The service organization''s financial statements are free from material misstatement under GAAP","The service auditor has verified that all user entities received uninterrupted service throughout the period"]',
  explanation = 'An unqualified SOC opinion means the service auditor concluded that the system description is fairly presented, controls are suitably designed to meet the specified criteria, and (for Type II) controls operated effectively during the examination period. Choice A is incorrect because an unqualified opinion does not mean zero deficiencies — it means no material exceptions were identified. Minor deviations may exist and be reported in the detailed testing results without modifying the overall opinion.'
WHERE id = 3883;

-- Q3888 [score:5] short-stem(11w) + length-cuing(50/156) → expand stem, balance choices
UPDATE questions SET
  stem = 'In the SOC 2 Type II report for Kensington Cloud Services, the report includes a written statement from Kensington''s management asserting that the system description is accurate, controls are designed properly, and controls operated effectively throughout the period. Under AICPA SOC guidance, management''s assertion in a SOC report addresses:',
  choices = '["The service auditor''s testing methodology, sample sizes, and the criteria used to evaluate control effectiveness","Whether the system description is fairly presented, controls are suitably designed, and for Type II they operated effectively","The user entity''s level of satisfaction with the service organization''s performance and uptime guarantees","The competitive position of the service organization relative to other providers in the same industry"]'
WHERE id = 3888;

-- Q3893 [score:6] length-cuing(46/180) → balance choices
UPDATE questions SET
  stem = 'Thornfield Insurance Company receives a SOC 1 Type II report from its claims processing vendor covering January through September 2025. Thornfield''s year-end is December 31, and the user auditor at Calloway & Partners needs assurance about the October through December gap period. Under SOC reporting guidance, a bridge letter in the context of SOC reporting serves which of the following purposes?',
  choices = '["It bridges the gap between two different SOC report types, allowing a Type I to substitute for a Type II","It provides the service organization''s representation about whether significant changes occurred after the SOC report period","It bridges the communication gap between the service auditor and the user entity''s independent auditor","It replaces the need for a new SOC examination by extending the existing report''s coverage to the user''s year-end"]'
WHERE id = 3893;

-- === Security Controls and Monitoring (2 questions) ===

-- Q830 [score:5] short-stem(10w) + length-cuing(14/65) → expand stem, balance choices
UPDATE questions SET
  stem = 'Ridgemont Healthcare is evaluating authentication methods for its patient records system after a credential stuffing attack compromised several accounts that used only passwords. The IT security team recommends upgrading to a stronger authentication approach. Which of the following authentication methods provides the STRONGEST security?',
  choices = '["Username, password, and a one-time code from an authenticator app — combining two distinct factors","Username and password only — relying on password complexity requirements to prevent unauthorized access","A security question and answer — using personal knowledge as a second verification layer","A four-digit numeric PIN — providing quick access while meeting basic authentication requirements"]',
  explanation = 'Multi-factor authentication (MFA) combining something you know (password) with something you have (authenticator app generating a one-time code) provides significantly stronger security than single-factor methods. Even if the password is compromised, the attacker cannot access the account without the second factor. Choice B is incorrect because passwords alone are vulnerable to phishing, credential stuffing, and brute force attacks. Choice C is incorrect because security questions are often easily researched through social media or public records.'
WHERE id = 830;

-- Q838 [score:6] short-stem(11w) → expand with scenario
UPDATE questions SET
  stem = 'After a security audit at Ashford Financial Group, the auditor recommends that the database administrator''s account be restricted to only the databases the DBA manages, rather than having server-wide administrative access. The IT director explains that this recommendation follows a fundamental security principle. Which of the following BEST describes the principle of least privilege?',
  explanation = 'The principle of least privilege dictates that users, applications, and processes should receive only the minimum permissions necessary to perform their required functions — no more, no less. This limits the potential damage from accidents, errors, or compromised credentials by constraining what any single account can access or modify. Choice B is incorrect because granting administrative access for self-service troubleshooting violates least privilege by providing far more access than the job role requires. Choice C is incorrect because universal read access contradicts least privilege, even if motivated by transparency goals.'
WHERE id = 838;

-- === System Availability and Change Management (2 questions) ===

-- Q1292 [score:6] short-stem(10w) → expand with scenario
UPDATE questions SET
  stem = 'At 2:00 AM on a Saturday, Thornfield Bank''s core banking system goes offline due to a corrupted database index. The on-call engineer must restore service immediately and cannot wait for the Monday morning Change Advisory Board meeting to approve the fix. Under ITIL change management, an emergency change is best defined as:',
  explanation = 'An emergency change must be implemented immediately to address a critical issue — such as a security breach, system outage, or data loss risk — that cannot wait for the normal change management approval process. Emergency changes bypass standard CAB review due to urgency but require post-implementation review and documentation to maintain governance. Choice A is incorrect because a request from senior management does not automatically qualify as an emergency — it must involve a critical operational issue. Choice C is incorrect because a routine patch applied during a scheduled maintenance window follows normal change procedures, not emergency procedures.'
WHERE id = 1292;

-- Q1295 [score:6] short-stem(6w) → expand with scenario
UPDATE questions SET
  stem = 'After a failed firewall configuration change caused a network outage at Ridgemont Logistics, the IT director implements a centralized repository to track all IT assets, their configurations, and their interdependencies. When the next change is proposed, the team can now assess which systems would be affected. Under ITIL service management, a Configuration Management Database (CMDB) maintains:',
  explanation = 'A CMDB maintains records of all IT assets (called configuration items or CIs) along with their configurations, attributes, and relationships to other CIs. This includes hardware, software, network devices, and their interdependencies. The CMDB supports change management by enabling impact analysis — understanding which systems are affected by a proposed change. Choice A is incorrect because license management is only one small subset of CMDB data, not its full scope. Choice D is incorrect because user access management is handled by identity and access management systems, not the CMDB.'
WHERE id = 1295;

-- === IT Audit Frameworks (2 questions) ===

-- Q1059 [score:6] short-expl(29w) → expand explanation with wrong-answer analysis
UPDATE questions SET
  explanation = 'Annualized Loss Expectancy (ALE) is calculated as Single Loss Expectancy (SLE) multiplied by the Annualized Rate of Occurrence (ARO). SLE is $200,000 (the damage per incident), and ARO is 0.25 (once every 4 years = 1/4 per year). ALE = $200,000 × 0.25 = $50,000 per year. This metric helps organizations compare the cost of implementing controls against the expected annual loss. Choice A ($200,000) incorrectly uses the full SLE without annualizing it. Choice B ($800,000) incorrectly multiplies SLE by 4 years instead of dividing the occurrence rate.'
WHERE id = 1059;

-- Q3832 [score:5] short-stem(10w) → expand with scenario
UPDATE questions SET
  stem = 'An IT auditor at Prescott & Associates is evaluating Lakeside Financial''s IT governance maturity. The auditor recommends adopting a comprehensive framework for governing enterprise information and technology. The framework should address governance objectives, management objectives, and align IT goals with business goals. COBIT 2019 is a governance framework developed by which organization?',
  explanation = 'COBIT (Control Objectives for Information and Related Technologies) 2019 is developed and maintained by ISACA (formerly the Information Systems Audit and Control Association). It provides a comprehensive framework for the governance and management of enterprise information and technology, covering 40 governance and management objectives. Choice A is incorrect because the AICPA develops auditing standards and the Trust Services Criteria, not COBIT. Choice D is incorrect because NIST develops the Cybersecurity Framework (CSF), not COBIT.'
WHERE id = 3832;
