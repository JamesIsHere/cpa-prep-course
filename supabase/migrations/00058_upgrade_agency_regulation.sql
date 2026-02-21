-- Migration: Upgrade 9 moderate-scoring Agency and Regulation questions
-- Fixes: short-stem, absolute-assurance, length-cuing
-- Target: all questions score 7+ after this migration

-- Q2480 [score:6] short-stem(6w) → expand stem with scenario
UPDATE questions SET
  stem = 'Reeves hires Langston to negotiate the sale of commercial property on Reeves''s behalf, giving Langston the authority to accept offers within a specified price range. This arrangement illustrates the most common way an agency relationship is formed. An agency relationship is created when:'
WHERE id = 2480;

-- Q2481 [score:6] short-stem(8w) → expand stem with scenario
UPDATE questions SET
  stem = 'Caldwell signs a written agreement authorizing Fletcher to purchase inventory on behalf of Caldwell''s retail business, specifying the maximum quantities and price limits. The authority Fletcher receives through this written agreement is known as express authority. Express authority in an agency relationship arises when:'
WHERE id = 2481;

-- Q2482 [score:4] short-stem(9w) + absolute-assurance → expand stem, fix distractor
UPDATE questions SET
  stem = 'Parker is hired as a purchasing agent for Thornton Industries and is given express authority to buy raw materials. While placing a materials order, Parker also arranges shipping with a freight carrier — an act not specifically mentioned in the agreement but customary for purchasing agents. Implied authority of an agent includes the power to:',
  choices = '["Take any action the agent believes would benefit the principal","Perform acts that are reasonably necessary and customary to carry out the agent''s express authority","Enter into contracts that exceed the scope of the express authorization","Delegate all responsibilities to a subagent without the principal''s consent"]'
WHERE id = 2482;

-- Q2483 [score:6] short-stem(4w) → expand stem with scenario
UPDATE questions SET
  stem = 'Stratton Corp. places Davis in charge of its purchasing department, gives Davis a company title and business cards, and allows Davis to meet with suppliers at trade shows. Stratton later claims Davis had no authority to sign a particular supply contract. The supplier argues that Stratton''s conduct created the appearance of authority. Apparent authority exists when:'
WHERE id = 2483;

-- Q2489 [score:4] short-stem(9w) + absolute-assurance → expand stem, fix distractor
UPDATE questions SET
  stem = 'Mitchell, a real estate agent, is hired by Weston to sell a commercial property. During the listing period, Mitchell discovers that a developer is willing to pay above market value for the property and considers purchasing it personally for a quick resale profit. An agent''s duty of loyalty requires the agent to:',
  choices = '["Disclose all material information to the principal, avoid self-dealing, and not compete with the principal during the agency","Work exclusively for one principal at all times with no outside engagements","Accept any compensation offered by the principal without negotiation or objection","Obtain a court order before entering into any transaction on the principal''s behalf"]'
WHERE id = 2489;

-- Q2491 [score:4] short-stem(8w) + absolute-assurance + length-cuing → expand stem, fix distractor, balance choices
UPDATE questions SET
  stem = 'Garrison hires Abbott as a sales representative and instructs Abbott to travel to client sites across the state, with Abbott paying travel expenses out of pocket. After completing the trips, Abbott submits receipts totaling $3,200 and requests reimbursement. The principal owes the agent a duty to:',
  choices = '["Provide a written employment contract before the agency relationship begins","Ensure the agent''s physical safety at all times during the course of employment","Disclose the principal''s complete financial records to the agent upon request","Compensate the agent as agreed and reimburse authorized expenses incurred on the principal''s behalf"]'
WHERE id = 2491;

-- Q2493 [score:5] short-stem(7w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'Henderson has served as a sales agent for Prescott Industries for five years under an oral agreement with no fixed term. Henderson wants to know what events could end the agency relationship. An agency relationship may be terminated by:',
  choices = '["Only the mutual written agreement of the principal and the agent","A court order issued at the request of a regulatory agency","The death of either the principal or the agent, by operation of law","Only the passage of a time period specified in the original agreement"]'
WHERE id = 2493;

-- Q2495 [score:5] short-stem(9w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'Dawson, an agent, exceeds authorized authority and signs a two-year supply contract on behalf of Mercer Corp. When Mercer''s CEO learns of the contract, the CEO decides the terms are favorable and affirms the deal. Ratification of an unauthorized act by a principal requires:',
  choices = '["The principal had knowledge of all material facts and capacity to authorize the act originally","The third party expressly agreed to the ratification in a signed writing","The agent acted in bad faith when exceeding the scope of authorized authority","A written ratification document filed with the appropriate state court"]'
WHERE id = 2495;

-- Q2500 [score:6] short-stem(6w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A bank lends $500,000 to Thornton Corp. and, as part of the loan agreement, receives authority to sell Thornton''s warehouse if the loan goes into default. Thornton later attempts to revoke the bank''s authority. An agency coupled with an interest:',
  choices = '["May be freely revoked by the principal at any time without the agent''s consent","Cannot be revoked because the agent has a property interest in the subject matter","Terminates automatically upon the death or incapacity of the principal","Is created only by court order following a judicial determination of necessity"]'
WHERE id = 2500;
