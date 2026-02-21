-- Migration: Upgrade 5 moderate-scoring Materiality questions
-- Fixes: short-stem, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q5011 [score:6] short-stem(7w) → expand with scenario + cite AU-C 320
UPDATE questions SET
  stem = 'The engagement partner at Calloway & Partners is planning the audit of Ashford Electronics, which has $48 million in total revenue. The partner sets overall materiality at $480,000 (1% of revenue) and then determines a lower threshold for designing further audit procedures. Under AU-C 320, performance materiality is set at an amount:',
  explanation = 'Under AU-C 320.09, performance materiality is set at an amount lower than materiality for the financial statements as a whole. Its purpose is to reduce to an appropriately low level the probability that the aggregate of uncorrected and undetected misstatements exceeds overall materiality. It provides a buffer for misstatements that may exist but remain undetected. Choice A is incorrect because setting performance materiality equal to overall materiality provides no buffer for undetected misstatements. Choice B is incorrect because a higher amount would increase — not reduce — the risk of aggregate misstatements exceeding materiality.'
WHERE id = 5011;

-- Q5013 [score:6] short-stem(10w) → expand with scenario + cite AU-C 320/530
UPDATE questions SET
  stem = 'While planning the audit of Ridgemont Logistics, the engagement senior at Mercer & Associates sets overall materiality at $250,000 and performance materiality at $187,500. For a specific accounts receivable sampling procedure, the senior sets a threshold of $187,500 as the maximum acceptable misstatement in that account. Under AU-C 530, the concept of tolerable misstatement is most closely related to:',
  explanation = 'Under AU-C 530.05, tolerable misstatement is the application of performance materiality to a particular sampling procedure. It represents the maximum misstatement in a specific account balance, class of transactions, or disclosure that the auditor is willing to accept without concluding the account is materially misstated. It is set at or below performance materiality. Choice A is incorrect because tolerable misstatement applies to individual accounts, not the financial statements as a whole. Choice C describes detected misstatements, which are the result of testing — not a threshold set during planning.'
WHERE id = 5013;

-- Q5015 [score:6] short-stem(8w) → expand with scenario + cite AU-C 320
UPDATE questions SET
  stem = 'A staff auditor at Prescott & Associates is studying for the CPA exam and asks the engagement partner to explain the relationship between materiality and audit risk. The partner uses the Ashford Distribution audit as an example: when overall materiality was raised from $300,000 to $500,000, the team reduced sample sizes and performed fewer procedures. Under AU-C 320, the relationship between materiality and audit risk is:',
  explanation = 'Under AU-C 320.A1, there is an inverse relationship between materiality and audit risk. As the materiality level increases, audit risk decreases because a higher threshold means the auditor can tolerate a larger misstatement before it becomes material, requiring less extensive testing. Conversely, a lower materiality level increases audit risk because smaller misstatements become significant, requiring more procedures. Choice A is incorrect because it states a direct relationship, which is the opposite of the actual relationship. Choice C is incorrect because the two concepts are fundamentally linked in audit planning.'
WHERE id = 5015;

-- Q5020 [score:6] short-stem(11w) → expand with scenario + cite AU-C 320
UPDATE questions SET
  stem = 'Midway through the audit of Kensington Retail Corp., the engagement team at Waverly & Associates learns that a major product line was discontinued, significantly changing the entity''s financial profile. The engagement partner revises overall materiality downward from $400,000 to $250,000. Under AU-C 320.13, when the auditor revises materiality during the audit, the auditor should:',
  explanation = 'Under AU-C 320.13, when materiality is revised during the audit, the auditor must evaluate whether the overall audit strategy and audit plan need to be revised. A downward revision may require additional procedures because the testing performed at the original higher threshold may not provide sufficient evidence at the lower amount. Choice B is incorrect because materiality can be revised either upward or downward depending on circumstances. Choice D is incorrect because materiality may need to be revised at any point during the audit, not only during the final evaluation.'
WHERE id = 5020;

-- Q5024 [score:6] short-stem(7w) → expand with scenario + cite AU-C 320
UPDATE questions SET
  stem = 'During the planning phase of the Thornfield Industries audit, the engagement partner at Birchwood & Associates selects total revenue as the benchmark and applies 1% to arrive at overall materiality of $520,000. A new staff auditor asks whether auditing standards prescribe a specific percentage or formula. Under AU-C 320, materiality is determined by the auditor and:',
  explanation = 'Under AU-C 320.04, the determination of materiality is a matter of the auditor''s professional judgment, affected by the auditor''s perception of the financial information needs of users. Auditing standards do not prescribe a specific percentage or formula. The auditor selects appropriate benchmarks (revenue, total assets, net income) and applies percentages based on the entity''s specific circumstances. Choice A is incorrect because, while the auditor may communicate materiality to those charged with governance, disclosure is not required by AU-C 320. Choice B incorrectly suggests auditing standards mandate a fixed formula.'
WHERE id = 5024;
