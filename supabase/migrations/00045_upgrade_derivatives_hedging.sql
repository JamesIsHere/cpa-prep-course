-- Migration: Upgrade 19 moderate-scoring Derivatives and Hedging questions
-- Fixes: short-stem, short-explanation, length-cuing
-- Target: all questions score 7+ after this migration

-- Q708 [score:5] short-expl(29w) + length-cuing → expand explanation, balance choices
UPDATE questions SET
  choices = '["Current period earnings on the income statement","Other comprehensive income (OCI) on the balance sheet","Retained earnings as a direct adjustment","The hedged item''s carrying amount as a basis adjustment"]',
  explanation = 'Under ASC 815, the effective portion of a cash flow hedge derivative gain or loss is initially reported in other comprehensive income (OCI). It is reclassified from accumulated OCI to earnings in the same period(s) that the hedged forecasted transaction affects earnings. For example, if hedging a forecasted purchase, the OCI amount moves to cost of goods sold when the purchased item is sold. In contrast, the ineffective portion bypasses OCI and is recognized in earnings immediately.'
WHERE id = 708;

-- Q710 [score:6] short-expl(29w) → expand explanation
UPDATE questions SET
  explanation = 'A receive-fixed, pay-floating interest rate swap hedges the fair value exposure of fixed-rate debt. As market interest rates change, the fixed-rate debt''s fair value fluctuates, and the swap''s fair value moves in the opposite direction, providing an offset. Under ASC 815, this qualifies as a fair value hedge because it targets changes in the fair value of a recognized liability. Both the swap''s gain or loss and the hedged item''s change in fair value attributable to the hedged risk are recognized in earnings.'
WHERE id = 710;

-- Q711 [score:5] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'An accountant at Meridian Corp. is determining how to report a cash flow hedge where the derivative gain exceeds the change in expected cash flows. Under ASC 815, the ineffective portion of a cash flow hedge is recognized in:',
  choices = '["Other comprehensive income until the hedged item settles","Current period earnings as a gain or loss immediately","The hedged item''s basis as a carrying amount adjustment","A deferred account and amortized over the hedge term"]'
WHERE id = 711;

-- Q712 [score:6] short-stem(11w) → expand stem
UPDATE questions SET
  stem = 'A CPA is reviewing a structured note that contains an equity-linked return feature within a debt instrument. Under ASC 815, an embedded derivative must be bifurcated from its host contract when:'
WHERE id = 712;

-- Q714 [score:5] short-expl(19w) + length-cuing → expand explanation, balance choices
UPDATE questions SET
  choices = '["Current period earnings on the income statement","The cumulative translation adjustment (CTA) within OCI","Retained earnings as a direct equity adjustment","Cost of goods sold as part of inventory valuation"]',
  explanation = 'Under ASC 815, in a net investment hedge, the effective portion of the hedging gain or loss is recognized in the cumulative translation adjustment (CTA) component of other comprehensive income. This treatment mirrors how translation adjustments on the foreign operation''s net assets are reported, creating a consistent offset within the same OCI component. The CTA amounts remain in accumulated OCI until the foreign entity is sold or substantially liquidated.'
WHERE id = 714;

-- Q717 [score:6] short-stem(5w) → expand stem
UPDATE questions SET
  stem = 'A company enters into a plain-vanilla interest rate swap with a notional amount of $10 million where it pays a fixed rate and receives a floating rate. In a typical interest rate swap arrangement, the parties typically involve:'
WHERE id = 717;

-- Q718 [score:4] short-stem(6w) + short-expl(23w) → expand both
UPDATE questions SET
  stem = 'Following the adoption of ASU 2017-12 (Targeted Improvements to Accounting for Hedging Activities), a company is reviewing its hedge documentation requirements. Under ASU 2017-12, hedge effectiveness assessment:',
  explanation = 'ASU 2017-12 simplified hedge effectiveness testing by allowing a qualitative (rather than quantitative) assessment for hedging relationships where the critical terms of the hedging instrument and hedged item are matched or closely aligned. This reduces the compliance burden of quarterly quantitative testing such as the dollar-offset method. However, if facts and circumstances change such that terms are no longer aligned, the entity must perform quantitative testing. The standard also eliminated the requirement to separately measure and report hedge ineffectiveness for cash flow and net investment hedges.'
WHERE id = 718;

-- Q3189 [score:6] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'A CPA candidate is studying the different types of derivative instruments and their characteristics. Among the common derivative instruments, a forward contract is best described as:'
WHERE id = 3189;

-- Q3191 [score:5] short-stem(9w) → expand stem
UPDATE questions SET
  stem = 'An investor purchases a call option on 100 shares of stock with a strike price of $50 and pays a $3 premium per share. A call option gives the holder the right to:'
WHERE id = 3191;

-- Q3193 [score:5] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A company holds a $5 million fixed-rate bond classified as available-for-sale and enters into an interest rate swap to convert the exposure to a floating rate. Under ASC 815, a fair value hedge is designated to hedge:',
  choices = '["The variability of expected future cash flows from forecasted transactions","A net investment in a foreign subsidiary or foreign operation","Changes in fair value of a recognized asset, liability, or firm commitment","Only equity investments held in the trading portfolio"]'
WHERE id = 3193;

-- Q3194 [score:5] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A company with $20 million in variable-rate debt tied to SOFR wants to lock in its future interest payments. Under ASC 815, a cash flow hedge is designated to hedge:',
  choices = '["The variability of expected future cash flows from a forecasted transaction or variable-rate obligation","Changes in the fair value of a recognized fixed-rate asset or liability","The net investment in a foreign subsidiary measured in a different currency","Goodwill impairment risk arising from business combination transactions"]'
WHERE id = 3194;

-- Q3197 [score:6] short-stem(4w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A company designated an interest rate swap as a cash flow hedge of its variable-rate debt, but the swap''s reference rate differs from the debt''s index. Under ASC 815, hedge ineffectiveness occurs when:',
  choices = '["The derivative perfectly offsets every change in the hedged item","The change in fair value of the hedge does not exactly offset the hedged item change","The derivative expires on its scheduled maturity date","Market interest rates remain stable throughout the period"]'
WHERE id = 3197;

-- Q3202 [score:5] short-stem(8w) → expand stem
UPDATE questions SET
  stem = 'A U.S. parent company has a wholly owned subsidiary operating in the United Kingdom with net assets denominated in British pounds. A net investment hedge under ASC 815 hedges:'
WHERE id = 3202;

-- Q3206 [score:6] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'An options trader purchases a call option for $8 when the stock is trading at $45 with a strike price of $40. In options pricing, the time value of an option equals:'
WHERE id = 3206;

-- Q3209 [score:6] short-stem(4w) → expand stem
UPDATE questions SET
  stem = 'A U.S. company with a Japanese subsidiary needs to manage both the interest rate and currency exposures on yen-denominated debt. Unlike a plain-vanilla interest rate swap, a currency swap involves:'
WHERE id = 3209;

-- Q3211 [score:6] short-stem(6w) → expand stem
UPDATE questions SET
  stem = 'A company hedges its jet fuel purchases using crude oil futures contracts because no liquid jet fuel futures market exists. The imperfect correlation between these two commodities creates basis risk in hedging, which refers to:'
WHERE id = 3211;

-- Q3213 [score:5] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'An agricultural producer wants to protect against a decline in wheat prices while keeping some upside potential, and wants to minimize the net premium cost. To achieve this, a collar strategy on a commodity involves:'
WHERE id = 3213;

-- Q3217 [score:6] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA is evaluating whether a structured financial instrument meets the criteria for derivative accounting. Under the standard, which of the following characteristics defines a derivative under ASC 815?',
  choices = '["It must be listed and traded on a regulated exchange","It has a notional amount, requires no or small initial investment, and permits net settlement","It must have a contractual maturity of one year or less","It must involve delivery of a physical commodity at settlement"]'
WHERE id = 3217;

-- Q3374 [score:4] short-stem(6w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A treasury manager at Parkview Industries wants to protect against rising interest rates on variable-rate debt without paying a net premium. The manager structures options so the premium paid for the floor equals the premium received from the cap. A zero-cost collar is achieved when:',
  choices = '["Both the cap strike and floor strike are set at the current market rate","The premium paid for one option equals the premium received from the other","The derivative instrument has no notional amount assigned to it","The hedging relationship achieves one hundred percent effectiveness"]'
WHERE id = 3374;
