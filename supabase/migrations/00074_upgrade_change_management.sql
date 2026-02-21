-- Migration: Upgrade 3 moderate-scoring Change Management questions
-- Fixes: short-stem, absolute-assurance, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q5412 [score:6] short-stem(11w) → expand with scenario + cite ITIL
UPDATE questions SET
  stem = 'Ridgemont Financial Services is implementing ITIL-aligned change management processes after a failed ERP upgrade caused two days of downtime. The CIO establishes a cross-functional group of IT managers, business stakeholders, and security analysts to review all proposed infrastructure and application changes before implementation. Under ITIL change management, what is the PRIMARY purpose of a Change Advisory Board (CAB)?',
  explanation = 'Under ITIL change management, the Change Advisory Board (CAB) is a cross-functional group that assesses, prioritizes, and authorizes proposed changes based on risk, impact, and resource requirements. The CAB does not write code, perform testing, or monitor production systems — those are responsibilities of development teams, QA teams, and operations monitoring, respectively. Choice A is incorrect because code development is an implementation activity performed by developers, not an advisory board function. Choice D describes a detective control (monitoring), not the CAB''s authorization role.'
WHERE id = 5412;

-- Q5419 [score:6] short-stem(9w) → expand with scenario
UPDATE questions SET
  stem = 'After a system outage caused by an undocumented configuration change, Thornfield Manufacturing''s IT director implements a configuration management database (CMDB). The director establishes reference points for each system''s known-good state, enabling the team to detect and evaluate any deviations. In configuration management, "baseline identification" refers to:',
  explanation = 'A baseline in configuration management is a formally reviewed and agreed-upon specification or configuration that serves as a reference point for subsequent changes. Baselines enable organizations to compare current states against known-good states and to understand what has changed over time. Choice A is incorrect because baseline identification is about establishing reference points, not deleting records from the CMDB. Choice C is incorrect because an initial software installation is a deployment activity, not a formal baseline identification process.'
WHERE id = 5419;

-- Q5427 [score:6] absolute-assurance → replace distractors, add citation
UPDATE questions SET
  stem = 'Ashford Healthcare deploys a new patient records module using a phased rollout — releasing it to one clinic at a time over six weeks. During the rollout to the second clinic, staff report data migration errors that corrupt appointment histories. The IT director pauses the rollout, fixes the migration script, and resumes deployment to the remaining clinics only after validating the fix. What is the PRIMARY advantage of the phased rollout approach in this scenario?',
  choices = '["It eliminates the need for rollback procedures by isolating each deployment to a single location","It allows the organization to halt the rollout, fix the issue, and prevent the error from affecting remaining locations","It reduces the total cost of the deployment by spreading implementation expenses across multiple budget periods","It ensures that all locations receive the same software version simultaneously without manual intervention"]',
  explanation = 'The primary advantage of a phased rollout is containment — when issues are discovered, the organization can pause the deployment, resolve the problem, and protect remaining locations from the same error. This limits the blast radius of failures. Choice A is incorrect because phased rollouts do not eliminate rollback needs — the affected clinic still requires rollback or remediation. Choice D describes a big-bang deployment approach, which is the opposite of phased rollout.'
WHERE id = 5427;
