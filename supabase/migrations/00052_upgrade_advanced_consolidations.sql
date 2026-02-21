-- Migration: Upgrade 15 moderate-scoring Advanced Consolidations questions
-- Fixes: short-stem, short-explanation, length-cuing
-- Target: all questions score 7+ after this migration

-- Q692 [score:6] short-expl(17w) → expand explanation
UPDATE questions SET
  explanation = 'Total intercompany profit on the downstream sale = $80,000 - $50,000 = $30,000. Since 25% of the inventory remains unsold at year-end, the unrealized profit to be eliminated is $30,000 x 25% = $7,500. Only the unsold portion is eliminated because the sold portion (75%) has been realized through sale to an external party. Choice A ($30,000) eliminates the entire intercompany profit regardless of what was resold. Choice C ($22,500) represents the realized portion that should not be eliminated.'
WHERE id = 692;

-- Q693 [score:5] short-expl(29w) + length-cuing → expand explanation, balance choices
UPDATE questions SET
  choices = '["Majority voting ownership exceeding 50% of outstanding shares","Power to direct significant activities and obligation to absorb losses or receive benefits","The single largest equity investment in the VIE among all holders","A written contractual agreement specifying the obligation to consolidate"]',
  explanation = 'Under ASC 810, the primary beneficiary of a variable interest entity must have both: (1) the power to direct the activities that most significantly affect the VIE''s economic performance, and (2) the obligation to absorb potentially significant losses or the right to receive potentially significant benefits. Both criteria must be met — having only one is insufficient. Choice A is incorrect because VIE consolidation is not based on voting ownership; that applies to the voting interest model. Choice C is incorrect because the largest equity holder is not automatically the primary beneficiary.'
WHERE id = 693;

-- Q694 [score:6] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'Cascade Holdings initially acquired a 30% equity method investment in Alpine Corp. for $4.2 million. Two years later, Cascade purchases an additional 45% for $7.8 million, obtaining control. Under ASC 805, in a step acquisition, the previously held equity interest is:'
WHERE id = 694;

-- Q696 [score:6] short-expl(29w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 810-10-45, when a parent sells shares of a subsidiary but retains control (e.g., reducing ownership from 80% to 60%), the transaction is accounted for as an equity transaction. The difference between the proceeds received and the adjustment to NCI is recorded in additional paid-in capital (APIC). No gain or loss is recognized in earnings because the transaction is between owners within the same consolidated group. Choice A is incorrect because gain/loss recognition only applies when control is lost. Choice C is incorrect because control is retained, so deconsolidation does not occur.'
WHERE id = 696;

-- Q697 [score:4] short-stem(8w) + short-expl(26w) → expand both
UPDATE questions SET
  stem = 'During the consolidation of Pinnacle Group''s financial statements, the accounting team discovers that Pinnacle''s wholly owned subsidiary holds $2 million of bonds originally issued by the parent to external investors. For consolidation purposes, intercompany bonds are treated as if:',
  explanation = 'When one affiliate holds the bonds of another affiliate, ASC 810 requires the consolidated statements to treat the debt as constructively retired on the intercompany acquisition date. The bond payable on the issuing affiliate''s books and the bond investment on the purchasing affiliate''s books are eliminated, along with all intercompany interest revenue and expense. Any difference between the carrying amounts at the date of intercompany purchase creates a constructive gain or loss. Choice A is incorrect because the bonds are no longer arm''s-length obligations from the consolidated entity''s perspective.'
WHERE id = 697;

-- Q700 [score:5] short-expl(26w) + length-cuing → expand explanation, balance choices
UPDATE questions SET
  choices = '["No gain is recognized on the previously held interest","A gain of $300,000 recognized in earnings on the acquisition date","A gain of $1,800,000 recognized in other comprehensive income","A gain of $500,000 recognized as an adjustment to goodwill"]',
  explanation = 'Under ASC 805, in a step acquisition the previously held equity interest must be remeasured to fair value on the acquisition date. The gain equals fair value minus carrying value: $1,800,000 - $1,500,000 = $300,000, recognized in earnings. This remeasurement ensures that the total consideration used to calculate goodwill reflects current fair values for all interests. Choice A is incorrect because ASC 805 explicitly requires remeasurement. Choice C is incorrect because the gain is recognized in earnings, not OCI. The total consideration for goodwill calculation is $5,000,000 (new) + $1,800,000 (remeasured) = $6,800,000.'
WHERE id = 700;

-- Q701 [score:6] short-expl(29w) → expand explanation
UPDATE questions SET
  explanation = 'Under ASC 810-10-40, when a parent loses control of a subsidiary (e.g., selling shares below the 50% threshold), full deconsolidation is required. The subsidiary''s assets, liabilities, and NCI are removed from the consolidated balance sheet. Any retained noncontrolling interest is recognized at fair value on the deconsolidation date, and a gain or loss is calculated as: (Proceeds + Fair value of retained interest) minus (Carrying amount of subsidiary''s net assets including goodwill). Choice A is incorrect because consolidation requires control. Choice D is incorrect because deconsolidation is a prospective event, not a retroactive restatement.'
WHERE id = 701;

-- Q702 [score:6] short-stem(7w) → expand stem with scenario
UPDATE questions SET
  stem = 'Redwood Industries owns 80% of Cedar Corp. Cedar sells finished goods to Redwood (an upstream intercompany sale) at a markup. At year-end, $120,000 of unrealized intercompany profit exists in Redwood''s inventory. When preparing consolidated statements, the noncontrolling interest in Cedar:'
WHERE id = 702;

-- Q704 [score:6] short-stem(11w) → expand stem with scenario
UPDATE questions SET
  stem = 'An accounting manager at Granite Holdings is preparing consolidated financial statements for the first time after acquiring 100% of Jasper Inc. The manager needs to prepare the basic consolidation elimination entry. This entry removes the parent''s investment account against:'
WHERE id = 704;

-- Q705 [score:4] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'Evergreen Corp. issued $5 million in 6% bonds to external investors. Two years later, Evergreen''s subsidiary purchased $2 million face value of those bonds on the open market at 97 (a discount). A constructive gain or loss on intercompany bonds arises from:',
  choices = '["The difference in stated interest rates between the affiliated entities","The difference between carrying amounts of the payable and the investment at intercompany acquisition","A change in the credit rating of the issuing affiliate after the intercompany purchase","The cumulative amortization of goodwill allocated to the subsidiary''s reporting unit"]'
WHERE id = 705;

-- Q3160 [score:5] short-stem(9w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA is evaluating whether a special purpose entity created to securitize receivables qualifies as a variable interest entity. Under ASC 810, a variable interest entity must be consolidated by:',
  choices = '["The entity that holds the majority of the VIE''s outstanding voting shares","Any entity that has a contractual or financial relationship with the VIE","The entity that provided the initial equity funding to capitalize the VIE","The primary beneficiary with power to direct activities and absorb losses or receive benefits"]'
WHERE id = 3160;

-- Q3167 [score:5] short-stem(6w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A financial analyst at Brookstone Capital is reviewing a joint venture that was capitalized with only $500,000 of equity to support $12 million in total assets, with the remainder funded through senior debt facilities. Under ASC 810, an entity is classified as a variable interest entity if:',
  choices = '["Its common stock is publicly traded on a recognized exchange","Its equity investment at risk is insufficient to finance activities without subordinated support","Its total assets exceed $10 million at the end of the reporting period","It conducts substantially all of its operations in a foreign jurisdiction"]'
WHERE id = 3167;

-- Q3170 [score:5] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'Sterling Holdings owned 75% of Birch Corp. and fully consolidated it for three years. Sterling then sold its entire 75% interest to an unrelated buyer, retaining no ownership. Under ASC 810, when a parent loses control of a subsidiary through deconsolidation, the parent:',
  choices = '["Continues to consolidate the subsidiary through the end of the current fiscal year","Records the disposal as a stock split with no gain or loss recognized","Writes off the investment balance entirely and records an impairment charge","Recognizes a gain or loss based on proceeds plus fair value of any retained interest less carrying amount"]'
WHERE id = 3170;

-- Q3185 [score:6] short-stem(9w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'An accountant is preparing financial statements for three retail companies that are all owned by the same individual but have no parent-subsidiary relationship among them. Combined financial statements (as distinct from consolidated statements) may be appropriate when:',
  choices = '["A parent-subsidiary relationship exists between two or more of the entities","The entities operate in different countries and need currency translation","Only a single entity is involved and it has multiple operating segments","Common ownership or management exists but no parent-subsidiary relationship"]'
WHERE id = 3185;

-- Q3370 [score:5] short-stem(3w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA candidate studying consolidation methods encounters a question about whether a parent should include 100% or only its proportionate share of a subsidiary''s assets and liabilities. Under U.S. GAAP, proportional consolidation is:',
  choices = '["The required method for all subsidiaries regardless of ownership percentage","Not generally permitted; full consolidation is required for controlled subsidiaries","Required exclusively for variable interest entities under ASC 810","Used for all equity method investments when ownership exceeds 20%"]'
WHERE id = 3370;
