-- Migration: Upgrade 15 moderate-scoring Stock Compensation and Business Combinations questions
-- Fixes: short-stem, short-explanation, length-cuing
-- Target: all questions score 7+ after this migration

-- Q677 [score:6] short-expl(21w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 718, total compensation cost = Number of options x Grant-date fair value = 15,000 x $10 = $150,000. This cost is recognized ratably over the 3-year vesting (service) period: $150,000 / 3 = $50,000 per year. The fair value is measured once at grant date (typically using Black-Scholes or a lattice model) and is not remeasured. Choice A ($150,000) is the total cost, not the annual expense. Choice C ($30,000) incorrectly divides by 5 years. If employees forfeit before vesting, previously recognized expense is reversed in the period of forfeiture.'
WHERE id = 677;

-- Q679 [score:5] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A compensation committee at Oakmont Industries is deciding whether to grant executives restricted stock or stock options. Under ASC 718, restricted stock differs from stock options in that restricted stock:',
  choices = '["Has no exercise price — employees receive actual shares subject to forfeiture restrictions","Is always more valuable to the employee than an equivalent number of stock options","Is specifically excluded from the scope of ASC 718 compensation guidance","Does not require the company to recognize any compensation expense over the vesting period"]'
WHERE id = 679;

-- Q680 [score:6] short-expl(22w) + length-cuing → expand explanation, balance choices
UPDATE questions SET
  choices = '["Historical cost as recorded on the acquiree''s books","Book value per the acquiree''s most recent balance sheet","Fair value as of the acquisition date under ASC 805","The lower of historical cost or current market value"]',
  explanation = 'ASC 805 requires all identifiable assets acquired and liabilities assumed in a business combination to be recognized at their acquisition-date fair values, regardless of their carrying amounts on the acquiree''s books. This fair value measurement establishes the new cost basis for the combined entity. The difference between fair value of net identifiable assets and the purchase consideration determines goodwill (or a bargain purchase gain). Choice A and B are incorrect because historical cost and book value are supplanted by the acquisition-date fair value principle under the acquisition method.'
WHERE id = 680;

-- Q681 [score:6] short-expl(25w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 805, goodwill = Consideration transferred - Fair value of net identifiable assets = $10,000,000 - $7,000,000 = $3,000,000. The $300,000 in legal and advisory fees are acquisition-related costs that must be expensed as incurred — they are not capitalized as part of the purchase price or added to goodwill. This treatment changed under SFAS 141R (now ASC 805), which eliminated the prior practice of capitalizing deal costs. Choice A ($3,300,000) incorrectly adds the legal fees to goodwill. Choice C ($2,700,000) incorrectly subtracts them from goodwill.'
WHERE id = 681;

-- Q683 [score:6] short-expl(24w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 805-30-25, when the fair value of net identifiable assets exceeds the purchase price, a bargain purchase has occurred. The acquirer must first reassess whether all acquired assets and assumed liabilities have been properly identified and measured at fair value. If the excess remains after this reassessment, the acquirer recognizes a gain in earnings on the acquisition date. Choice A is incorrect because ASC 805 eliminated the concept of recording negative goodwill as a liability. Choice D is incorrect because the gain is recognized immediately, not deferred and amortized.'
WHERE id = 683;

-- Q684 [score:5] short-expl(25w) + length-cuing → expand explanation, balance choices
UPDATE questions SET
  choices = '["Never remeasured after the initial recognition at acquisition date","Remeasured at fair value each period with changes recorded in goodwill","Remeasured at fair value each period with changes recorded in earnings","Amortized on a straight-line basis over the contractual earn-out period"]',
  explanation = 'Under ASC 805, contingent consideration classified as a liability is remeasured at fair value each reporting period after the measurement period ends, with changes in fair value recognized in earnings (not as adjustments to goodwill). During the measurement period (up to one year), adjustments related to facts existing at acquisition are recorded against goodwill. After the measurement period closes, all changes flow through the income statement. Choice A is incorrect because liability-classified contingent consideration requires ongoing remeasurement. Choice D confuses contingent consideration with a fixed obligation.'
WHERE id = 684;

-- Q685 [score:6] short-expl(23w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 805-10-25, the acquirer has a measurement period of up to 12 months from the acquisition date to finalize provisional amounts in the purchase price allocation. During this window, the acquirer may adjust asset and liability fair values as new information about facts and circumstances that existed at the acquisition date is obtained. These measurement-period adjustments are recognized retrospectively as if the accounting had been completed on the acquisition date. Choice A (6 months) and Choice D (24 months) are not supported by the standard. Choice C is incorrect because the period is measured from the acquisition date, not the fiscal year-end.'
WHERE id = 685;

-- Q690 [score:4] short-stem(6w) + short-expl(28w) → expand both
UPDATE questions SET
  stem = 'A CPA candidate studying ASC 805 encounters the concept of goodwill arising from a business combination. The candidate needs to understand what goodwill represents on the acquirer''s consolidated balance sheet. In a business combination, goodwill represents:',
  explanation = 'Goodwill = Consideration transferred + Fair value of NCI + Fair value of previously held equity interest - Fair value of net identifiable assets acquired. Goodwill captures the value of acquired synergies, assembled workforce, customer relationships not separately identifiable, and other intangible value that does not meet the recognition criteria for separate identification under ASC 805. Choice A (book value) is not relevant — the acquisition method uses fair value. Choice C describes tangible assets, which are separately identifiable. Choice D describes market capitalization, which is the total equity value, not the excess paid over net assets.'
WHERE id = 690;

-- Q3138 [score:6] short-stem(5w) → expand stem with scenario
UPDATE questions SET
  stem = 'Westfield Capital acquires all outstanding shares of Birch Creek Manufacturing for $8 million. After careful valuation, the fair value of Birch Creek''s net identifiable assets totals $9.5 million. Under ASC 805, a bargain purchase occurs when:'
WHERE id = 3138;

-- Q3140 [score:6] short-stem(9w) → expand stem with scenario
UPDATE questions SET
  stem = 'Ridgeline Corp. grants its CEO 50,000 stock options that vest only if the company achieves $100 million in cumulative revenue over three years. The company''s compensation committee asks how this performance target affects the accounting for the award. Under ASC 718, a performance condition that affects vesting:'
WHERE id = 3140;

-- Q3142 [score:6] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'Granite Holdings acquires Summit Enterprises and the purchase agreement includes an earn-out provision that will pay the former owners an additional $2 million if Summit achieves certain EBITDA targets over the next two years. Under ASC 805, contingent consideration (earn-out) in a business combination is:',
  choices = '["Ignored until the earn-out payment is actually made to the seller","Measured at fair value at acquisition date and included in the purchase price","Recorded as a general and administrative expense when the agreement is signed","Prohibited by ASC 805 and must be structured as a separate transaction"]'
WHERE id = 3142;

-- Q3143 [score:6] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'After acquiring Willow Creek Corp. on March 1, the acquirer discovers that the initial fair value estimates for certain intangible assets were based on incomplete information. The acquirer wants to adjust the purchase price allocation. Under ASC 805, the measurement period for a business combination is:',
  choices = '["Unlimited, with no deadline for finalizing the purchase price allocation","Up to one year from the acquisition date for finalizing provisional amounts","Exactly six months from the closing date of the transaction","The remainder of the fiscal year in which the acquisition takes place"]'
WHERE id = 3143;

-- Q3145 [score:5] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'During the purchase price allocation for its acquisition of a competitor, Ashford Industries identifies a five-year noncompete agreement signed by the former CEO of the target company. Under ASC 805, noncompete agreements acquired in a business combination are classified as:',
  choices = '["Part of goodwill, since they cannot be separately identified or valued","Finite-lived intangible assets, amortized over the agreement''s contractual term","Contingent liabilities requiring remeasurement at each reporting date","Operating expenses recognized immediately in the period of acquisition"]'
WHERE id = 3145;

-- Q3151 [score:6] short-stem(5w) → expand stem with scenario
UPDATE questions SET
  stem = 'Crestline Holdings held a 25% equity method investment in Lakeview Industries for several years. Crestline then acquires an additional 50% of Lakeview''s shares to obtain control. Under ASC 805, a step acquisition occurs when:'
WHERE id = 3151;

-- Q3366 [score:5] short-stem(7w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'After being acquired by Northgate Capital, the subsidiary''s controller asks whether the subsidiary should restate its own standalone financial statements to reflect the new fair values established in the business combination. Under ASC 805-50, pushdown accounting in a business combination means:',
  choices = '["The parent pushes its operating losses down to reduce the subsidiary''s retained earnings","The subsidiary adjusts its own books to reflect the new fair value basis from the acquisition","The parent adjusts its separate books to reflect the subsidiary''s pre-acquisition carrying values","The subsidiary distributes a special dividend to push excess cash up to the parent entity"]'
WHERE id = 3366;
