-- Migration: Upgrade 6 moderate-scoring Professional Skepticism and Judgment questions
-- Fixes: short-stem, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q4950 [score:6] short-stem(6w) → expand with scenario + cite AU-C 200
UPDATE questions SET
  stem = 'A newly hired staff auditor at Calloway & Partners asks the engagement partner to define professional skepticism before beginning fieldwork on the audit of Thornfield Industries. The partner explains that it is a foundational concept that shapes how auditors approach every engagement. Under AU-C 200, professional skepticism is best described as:',
  explanation = 'Under AU-C 200.14, professional skepticism is an attitude that includes a questioning mind, alertness to conditions that may indicate possible misstatement due to fraud or error, and a critical assessment of audit evidence. It does not mean assuming management is dishonest, but rather maintaining an objective and questioning approach throughout the audit. Choice B is incorrect because skepticism does not presume dishonesty — it presumes neither honesty nor dishonesty. Choice C is incorrect because the auditor can accept management representations as one form of evidence, not refuse them entirely.'
WHERE id = 4950;

-- Q4953 [score:6] short-stem(6w) → expand with scenario + cite AU-C 200
UPDATE questions SET
  stem = 'During a training session at Mercer & Associates, the engagement partner explains that every audit decision — from setting materiality to evaluating estimates — requires the auditor to exercise a specific cognitive skill. A staff auditor asks for a formal definition of this skill. Under AU-C 200, professional judgment in auditing refers to:',
  explanation = 'Under AU-C 200.15, professional judgment is the application of relevant training, knowledge, and experience within the context provided by auditing, accounting, and ethical standards in making informed decisions about appropriate courses of action. It is essential in all aspects of the audit, from planning through forming the opinion. Choice B is incorrect because professional judgment is a qualitative cognitive process, not a mathematical formula. Choice C is incorrect because the client''s assessment of accounting treatment is a management responsibility, not a definition of auditor judgment.'
WHERE id = 4953;

-- Q4959 [score:6] short-stem(6w) → expand with scenario
UPDATE questions SET
  stem = 'The audit team at Prescott & Associates uses an automated data analytics tool to test 100% of Ridgemont Logistics'' journal entries for unusual patterns. The tool flags 12 entries as anomalous. A senior auditor immediately clears all 12 flags after confirming the entries processed without system errors, without investigating the business rationale for the transactions. The engagement partner identifies this as a cognitive bias. Automation bias in auditing refers to:',
  explanation = 'Automation bias occurs when auditors place excessive trust in the outputs of automated tools, data analytics, or computer-assisted audit techniques without applying sufficient professional skepticism to evaluate whether the results are reasonable and the underlying data is reliable. In this scenario, the senior auditor accepted the system''s processing confirmation without questioning the business substance of the flagged entries. Choice B is incorrect because automation bias is about over-reliance on technology, not a preference for manual methods. Choice D is incorrect because using CAATs in all engagements is not itself a bias — the bias is in uncritically accepting their outputs.'
WHERE id = 4959;

-- Q4964 [score:6] short-stem(9w) → expand with scenario
UPDATE questions SET
  stem = 'During the audit of Kensington Retail Corp., the engagement team obtains a management representation that all related party transactions have been disclosed. A more junior team member is inclined to accept this representation without further corroboration. The engagement partner intervenes and insists on performing independent procedures to confirm the completeness of related party disclosures. The partner explains that this reflects the concept of presumptive doubt. Under AU-C 200, "presumptive doubt" in professional skepticism means:',
  explanation = 'Presumptive doubt means that the auditor should not be satisfied with less-than-persuasive evidence when more persuasive evidence could reasonably be obtained. In this scenario, the management representation alone is less persuasive than independent corroboration through inquiry, public record searches, or confirmation. Choice A is incorrect because presumptive doubt does not mean rejecting all evidence — it means seeking the most persuasive evidence available. Choice C is incorrect because it overstates the concept — presumptive doubt does not assume fraud exists, but rather demands rigorous evidence before drawing conclusions.'
WHERE id = 4964;

-- Q4965 [score:6] short-stem(10w) → expand with scenario
UPDATE questions SET
  stem = 'While performing analytical procedures on Ashford Distribution''s 2025 revenue, the audit senior at Glenview & Associates uses the prior-year revenue of $42 million as the starting point and adjusts only slightly for known factors, arriving at an expectation of $43.5 million. Actual revenue is $48.2 million — an 11% increase driven by a major new customer onboarded mid-year. The senior''s reliance on the prior-year figure as a reference point illustrates a common cognitive trap. Anchoring bias in auditing most commonly manifests when an auditor:',
  explanation = 'Anchoring bias occurs when an auditor gives disproportionate weight to the first piece of information encountered (the "anchor"), such as prior-year balances, and insufficiently adjusts expectations for current-year conditions. In this scenario, the senior''s expectation was anchored to the prior-year figure, causing the team to underweight the new customer''s impact. Choice B is incorrect because selecting items from one population describes a sampling design issue, not a cognitive bias. Choice D is incorrect because relying on client schedules relates to evidence reliability, not anchoring.'
WHERE id = 4965;

-- Q4969 [score:6] length-cuing(42/130) → balance choices, expand with scenario
UPDATE questions SET
  stem = 'After a high-profile inventory fraud at a prior audit client, the engagement team at Birchwood & Associates applies heightened scrutiny to inventory for every engagement — even clients in service industries with minimal physical inventory. The team allocates disproportionate audit hours to inventory counts while underinvesting in revenue and receivables testing. The engagement partner recognizes this pattern as a cognitive bias. The availability heuristic threatens professional skepticism by causing auditors to:',
  choices = '["Overtest high-risk areas at the expense of equally important lower-risk areas on the engagement","Rely too heavily on audit software outputs without verifying the underlying data or assumptions","Underestimate the importance of performing planning analytical procedures during the risk assessment phase","Overemphasize readily recalled or recent experiences when assessing risks rather than considering the full range of possibilities"]'
WHERE id = 4969;
