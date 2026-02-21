-- Migration: Upgrade 3 Individual Taxation: Credits/AMT + 2 Understanding the Entity and Environment
-- Fixes: short-stem, wrong answer key (Q2718), missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q2710 [score:6] short-stem(11w) → expand with scenario + cite IRC
UPDATE questions SET
  stem = 'Marcus and Elena Rodriguez file a joint return for 2026 with modified adjusted gross income (MAGI) of $310,000. Their income includes $45,000 in dividends, $18,000 in long-term capital gains, $12,000 in rental income, and $235,000 in wages. They want to know the rate of the additional tax on their net investment income. Under IRC Section 1411, the Net Investment Income Tax (NIIT) is imposed at what rate?',
  explanation = 'Under IRC Section 1411, the NIIT is a 3.8% surtax imposed on the lesser of net investment income or the excess of MAGI over the applicable threshold ($250,000 for MFJ). This tax was enacted as part of the Affordable Care Act and applies to interest, dividends, capital gains, rental income, royalties, and certain passive business income. Choice B (2.9%) is incorrect — that is the Medicare tax rate on wages, not the NIIT rate. Choice A (1.5%) and Choice D (6.2%) do not correspond to any current investment surtax provision.'
WHERE id = 2710;

-- Q2712 [score:6] short-stem(9w) → expand with scenario + cite IRC
UPDATE questions SET
  stem = 'Marcus and Elena Rodriguez file a joint return for 2026. Their tax advisor explains that the Net Investment Income Tax only applies when MAGI exceeds a specific threshold that varies by filing status. Under IRC Section 1411, the NIIT threshold for married filing jointly taxpayers is:',
  explanation = 'Under IRC Section 1411(b), the NIIT applies to married filing jointly taxpayers when MAGI exceeds $250,000. The thresholds are $200,000 for single and head of household filers, $250,000 for MFJ, and $125,000 for married filing separately. These thresholds are not indexed for inflation and have remained unchanged since enactment. Choice B ($200,000) is the threshold for single filers, not MFJ. Choice A ($125,000) is the threshold for married filing separately.'
WHERE id = 2712;

-- Q2718 [score:6] WRONG ANSWER KEY: marked A but explanation says D → fix key + expand stem
UPDATE questions SET
  stem = 'A CPA candidate is studying alternative minimum tax adjustments for a client who placed $500,000 of 7-year MACRS personal property in service during 2026. Under regular tax, the property uses the 200% declining balance method. The candidate must determine the AMT depreciation adjustment. Which of the following correctly describes MACRS depreciation for AMT purposes?',
  correct_index = 3,
  choices = '["Depreciation is not allowed for AMT purposes and must be added back entirely","AMT uses the same 200% declining balance method as regular tax with no adjustment","AMT requires straight-line depreciation over the ADS recovery period for all personal property","AMT requires the 150% declining balance method for personal property instead of the 200% method used for regular tax"]',
  explanation = 'For AMT purposes, personal property that uses the 200% declining balance method under regular MACRS must instead use the 150% declining balance method, creating a timing difference that is an AMT adjustment item. The difference reverses over the life of the asset as the slower AMT depreciation eventually catches up to regular depreciation. Choice A is incorrect because depreciation is allowed for AMT — it is simply calculated using a different method. Choice B is incorrect because the whole point of the adjustment is that AMT uses a slower method than regular tax.'
WHERE id = 2718;

-- Q4992 [score:6] short-stem(10w) → expand with scenario + cite AU-C 315
UPDATE questions SET
  stem = 'During the planning phase of the audit of Cascade Energy Corp., the engagement team at Prescott & Associates reviews the company''s strategic plan, which includes aggressive expansion into three new markets funded by significant debt issuance. The engagement partner explains that understanding these business objectives helps the team focus on areas of elevated risk. Under AU-C 315, understanding the entity''s objectives and strategies helps the auditor identify:',
  explanation = 'Under AU-C 315.12, understanding the entity''s objectives and strategies allows the auditor to identify business risks — risks arising from significant conditions, events, or circumstances that could adversely affect the entity''s ability to achieve its objectives. These business risks may result in material misstatement if the financial statements do not adequately reflect the entity''s business reality. Choice A is incorrect because staffing plans are an administrative matter, not the purpose of understanding entity strategy. Choice D is incorrect because the predecessor auditor''s approach is addressed through separate communication under AU-C 210.'
WHERE id = 4992;

-- Q5004 [score:6] short-stem(11w) → expand with scenario + cite AU-C 240/315
UPDATE questions SET
  stem = 'While reviewing the financial statements of Ashford Electronics, the engagement team at Mercer & Associates notices that management changed the depreciation method for fixed assets from double-declining balance to straight-line, extended estimated useful lives on three asset categories, and selected the most favorable revenue recognition timing permitted under ASC 606 — all of which increased reported earnings. Under AU-C 315 and AU-C 240, the entity''s selection of accounting policies may indicate management bias if:',
  explanation = 'Under AU-C 240.A50 and AU-C 315.A90, when management consistently selects accounting policies or changes accounting estimates in ways that increase reported earnings without clear business justification, this pattern may indicate management bias toward favorable financial reporting. The auditor should be alert to such patterns as potential indicators of earnings management or fraud risk. Choice B is incorrect because following industry practice with a clear rationale does not indicate bias. Choice C is incorrect because consistency alone does not rule out bias — consistently aggressive policies are still biased.'
WHERE id = 5004;
