-- Migration: Upgrade 21 moderate-scoring Advanced Revenue and Intangibles questions
-- Fixes: short-stem, short-explanation, length-cuing
-- Target: all questions score 7+ after this migration

-- Q661 [score:5] short-stem(8w) + short-expl(26w) → expand both
UPDATE questions SET
  stem = 'A construction company enters a contract with bonuses for early completion and penalties for delays. The company must estimate the variable transaction price. Under ASC 606, variable consideration is estimated using:',
  explanation = 'ASC 606 requires variable consideration (rebates, bonuses, penalties, returns) to be estimated using either the expected value method (probability-weighted sum of possible outcomes, best for large populations of similar contracts) or the most likely amount method (single most likely outcome, best for binary outcomes like a performance bonus). The entity selects the method that better predicts the amount of consideration it will receive. Additionally, the constraint on variable consideration limits the recognized amount to that which is probable not to result in a significant revenue reversal.'
WHERE id = 661;

-- Q663 [score:6] short-expl(26w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 606, the transaction price is allocated to performance obligations based on relative standalone selling prices (SSP). Total SSP = $100,000 + $30,000 + $20,000 = $150,000. Since the total SSP equals the transaction price of $150,000, each obligation''s allocation equals its SSP. License allocation = ($100,000 / $150,000) x $150,000 = $100,000. If total SSP exceeded the transaction price, each obligation would receive a proportionally lower allocation, reflecting a bundle discount.'
WHERE id = 663;

-- Q664 [score:6] short-expl(26w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 606, if a contract modification adds goods or services that are distinct and the price increase reflects their standalone selling prices, the modification is treated as a separate contract and accounted for prospectively. This means the original contract continues unchanged and the new goods/services are treated as a new arrangement. If either condition is not met, the modification is combined with the original contract and may require a cumulative catch-up adjustment or prospective treatment depending on whether the remaining goods are distinct.'
WHERE id = 664;

-- Q665 [score:5] short-expl(27w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 606, a franchise license is classified as symbolic IP (right to access) when the franchisor''s ongoing activities — such as marketing campaigns, brand management, quality standards, and supply chain support — significantly affect the utility of the licensed IP. Revenue for symbolic IP is recognized over time as the franchisee accesses and benefits from the evolving brand. In contrast, functional IP (a right to use, such as a completed software license) is recognized at the point in time when the license transfers.'
WHERE id = 665;

-- Q666 [score:6] short-expl(29w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 606, an entity is an agent when it does not control the goods or services before they are transferred to the customer. Indicators of agent status include never taking possession, not bearing inventory risk, and not setting the price. An agent reports revenue net (commission only): $500 x 10% = $50. A principal controls the goods before transfer and reports gross revenue. The principal-versus-agent determination significantly affects reported revenue but not gross profit.'
WHERE id = 666;

-- Q667 [score:6] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'A software company enters a contract with a $500,000 base fee plus a potential $100,000 performance bonus that management believes is likely. Under ASC 606, the constraint on variable consideration requires that:'
WHERE id = 667;

-- Q668 [score:6] short-stem(5w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA is reviewing the accounting treatment for goodwill recognized in a prior-year business combination. Under ASC 350, goodwill is tested for impairment:',
  choices = '["Only when specific triggering events or circumstances occur","At least annually, or more frequently if triggering events are present","On a five-year cycle as required by the reporting entity''s policy","Whenever the entity''s stock price declines by more than twenty percent"]'
WHERE id = 668;

-- Q669 [score:4] short-stem(11w) + short-expl(29w) → expand both
UPDATE questions SET
  stem = 'A reporting unit has a carrying amount of $8 million (including $2.5 million of goodwill) and a fair value determined to be $6.5 million. Under the ASC 350 goodwill impairment test, the impairment loss equals:',
  explanation = 'Under the simplified one-step impairment test in ASC 350, the impairment loss equals the excess of the reporting unit''s carrying amount over its fair value: $8,000,000 - $6,500,000 = $1,500,000. However, the loss is capped at the carrying amount of goodwill ($2,500,000), so the recognized impairment is $1,500,000. Goodwill cannot be reduced below zero. After impairment, the remaining goodwill balance is $2,500,000 - $1,500,000 = $1,000,000.'
WHERE id = 669;

-- Q672 [score:4] short-stem(11w) + short-expl(22w) → expand both
UPDATE questions SET
  stem = 'After recognizing a $3 million goodwill impairment charge in the prior year, a reporting unit''s fair value has since recovered and now exceeds its carrying amount. Under U.S. GAAP, once goodwill has been written down for impairment, it:',
  explanation = 'Under U.S. GAAP (ASC 350), goodwill impairment losses are permanent and cannot be reversed, even if the reporting unit''s fair value subsequently recovers. This conservative treatment reflects the difficulty of determining whether the recovery represents a reversal of the original impairment or creation of new internally generated goodwill. IFRS (IAS 36) similarly prohibits reversal of goodwill impairment, making this one of the few areas where both frameworks reach the same conclusion.'
WHERE id = 672;

-- Q674 [score:6] short-expl(29w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 606, the residual approach determines a performance obligation''s SSP as the total transaction price minus the sum of observable SSPs of the other obligations. This method is permitted only when the SSP of a particular good or service is highly variable (sold at a wide range of prices) or uncertain (not yet established). The residual approach should not be used when the SSP is reasonably determinable through the adjusted market assessment or expected cost plus margin methods.'
WHERE id = 674;

-- Q675 [score:6] short-expl(26w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 606, an entity is an agent when it does not obtain control of the goods before transfer to the customer. The travel agency never takes possession of hotel rooms, does not bear inventory risk, and does not set the room price — all indicators of agent status. Agent revenue is reported net at the commission amount: $500 x 10% = $50. Reporting gross revenue of $500 would overstate the agency''s economic activity because it merely facilitates the transaction between the hotel and the customer.'
WHERE id = 675;

-- Q3109 [score:6] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'A CPA is reviewing the post-acquisition accounting for a trademark with no foreseeable limit on its revenue-generating life. Under ASC 350, indefinite-lived intangible assets are:'
WHERE id = 3109;

-- Q3110 [score:5] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A reporting unit with $4 million of allocated goodwill has a carrying amount of $15 million and a determined fair value of $12.5 million. Under the simplified ASC 350 impairment test, goodwill impairment is measured as:',
  choices = '["The excess of the carrying amount of goodwill over its estimated fair value","The excess of the reporting unit carrying amount over fair value, limited to the goodwill balance","The difference between the original acquisition purchase price and current book value","A standard ten percent reduction of the original goodwill amount on an annual basis"]'
WHERE id = 3110;

-- Q3112 [score:5] short-stem(6w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A consulting firm has completed the first phase of a two-phase engagement and has earned revenue, but payment is contingent on completing the second phase. Under ASC 606, contract assets represent:',
  choices = '["Cash received from customers before performance obligations have been satisfied","A right to consideration that is conditional on something other than the passage of time","Unconditional rights to receive payment where only time must pass before collection","Amounts that have been billed to the customer but not yet collected as of year-end"]'
WHERE id = 3112;

-- Q3116 [score:6] short-stem(8w) → expand stem
UPDATE questions SET
  stem = 'A CPA candidate is determining whether revenue should be recognized at a point in time or over time for a janitorial services contract. Under ASC 606, a performance obligation is satisfied over time if:'
WHERE id = 3116;

-- Q3117 [score:6] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A software company pays a $15,000 sales commission to its sales representative for securing a three-year SaaS contract. Under ASC 606 and ASC 340-40, costs to obtain a contract such as sales commissions should be:',
  choices = '["Expensed immediately as a selling cost in all circumstances","Capitalized if recoverable and amortized over the period of benefit","Added to the transaction price allocated to performance obligations","Deducted from recognized revenue as a contra-revenue adjustment"]'
WHERE id = 3117;

-- Q3122 [score:5] short-stem(4w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A company acquired a patent with a 15-year legal life and a customer list with an estimated economic life of 8 years. Under ASC 350, finite-lived intangible assets are:',
  choices = '["Tested for impairment on a fixed annual schedule but never amortized","Exempt from impairment testing once amortization begins","Written off immediately as an expense in the period of acquisition","Amortized over their useful life and tested for impairment when triggering events occur"]'
WHERE id = 3122;

-- Q3124 [score:5] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A retailer awards one loyalty point for every $10 spent, and 100 points can be redeemed for a $5 discount on future purchases. Under ASC 606, a customer loyalty program that provides a material right represents:',
  choices = '["A marketing expense recognized immediately when the points are issued","A warranty obligation accrued at the estimated redemption cost","A separate performance obligation requiring allocation of the transaction price","A contingent liability disclosed in the notes to the financial statements"]'
WHERE id = 3124;

-- Q3128 [score:5] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A SaaS company collects $120,000 in January for a 12-month subscription beginning that month. Under ASC 606, the amount collected in advance as contract liabilities (deferred revenue) represents:',
  choices = '["Revenue that has been earned through performance but not yet billed","Payments received before the entity satisfies the related performance obligations","Losses anticipated on contracts that will be unprofitable over their term","Estimated future warranty costs accrued at the time of the initial sale"]'
WHERE id = 3128;

-- Q3358 [score:5] short-stem(9w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A construction equipment manufacturer allows a customer to pay $500,000 two years after delivery of a machine with a cash price of $460,000. Under ASC 606, a significant financing component exists when:',
  choices = '["Payment is due within the standard 30-day billing terms","The contract includes variable consideration tied to performance milestones","The timing of payment provides a significant financing benefit to either party","The entity offers a volume discount for purchasing multiple units"]'
WHERE id = 3358;

-- Q3420 [score:5] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A construction contractor has completed 60% of a building project and has a right to bill the customer upon passing each milestone inspection. Under ASC 606, a contract asset becomes a receivable when:',
  choices = '["The customer remits payment for the outstanding invoice balance","The entity''s right to consideration becomes unconditional, requiring only the passage of time","The specific performance obligation is first identified in the contract","The contract is signed by both the entity and the customer"]'
WHERE id = 3420;
