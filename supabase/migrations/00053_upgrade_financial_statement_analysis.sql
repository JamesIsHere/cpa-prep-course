-- Migration: Upgrade 15 moderate-scoring Financial Statement Analysis questions
-- Fixes: short-stem, short-explanation, length-cuing
-- Target: all questions score 7+ after this migration

-- Q601 [score:6] short-expl(25w) → expand explanation
UPDATE questions SET
  explanation = 'The quick ratio (acid-test ratio) excludes inventory and prepaid expenses from current assets because they are less liquid: Quick assets = $500,000 - $150,000 inventory - $30,000 prepaids = $320,000. Quick ratio = $320,000 / $250,000 = 1.28. Choice B (2.00) is the current ratio ($500,000 / $250,000), which includes all current assets. Choice C (1.60) may result from excluding only prepaids but not inventory. A quick ratio above 1.0 suggests the company can meet short-term obligations without relying on inventory sales.'
WHERE id = 601;

-- Q603 [score:6] short-expl(24w) → expand explanation
UPDATE questions SET
  explanation = 'Inventory turnover = COGS / Average inventory = $1,200,000 / $200,000 = 6.0 times per year. Days sales in inventory (DSI) = 365 / Inventory turnover = 365 / 6.0 = 60.8 days. DSI measures how many days, on average, inventory sits before being sold. A lower DSI indicates faster inventory movement. Choice B (6.0) is the turnover ratio itself, not the days metric. Choice C (30.4) would result from dividing by 12 months instead of converting to days. Industry benchmarking is essential since optimal DSI varies significantly by sector.'
WHERE id = 603;

-- Q604 [score:6] short-expl(27w) → expand explanation
UPDATE questions SET
  explanation = 'In a common-size (vertical analysis) income statement, each line item is expressed as a percentage of revenue (net sales), making revenue the 100% base. This allows comparison across companies of different sizes and identification of margin trends over time. For example, if COGS is $600,000 on revenue of $1,000,000, it appears as 60%. On a common-size balance sheet, the base is total assets (not revenue). Choice B (net income) is the bottom line, not the base. Choice D (gross profit) is an intermediate subtotal, not the denominator.'
WHERE id = 604;

-- Q606 [score:6] short-stem(6w) → expand stem with scenario
UPDATE questions SET
  stem = 'A financial analyst at Prescott Retail is evaluating how long it takes the company to convert inventory purchases into cash collections from customers. The operating cycle is calculated as:'
WHERE id = 606;

-- Q608 [score:4] short-stem(10w) + short-expl(29w) → expand both
UPDATE questions SET
  stem = 'Evergreen Manufacturing reports EBIT of $500,000 and annual interest expense of $200,000, resulting in a times interest earned (TIE) ratio of 2.5. What does this ratio indicate about the company?',
  explanation = 'Times interest earned = EBIT / Interest expense = $500,000 / $200,000 = 2.5. This means Evergreen''s operating earnings can cover its interest obligations 2.5 times, providing a moderate but not strong cushion for creditors. Lenders typically prefer TIE ratios above 3.0. Choice A confuses TIE with a percentage-of-revenue calculation. Choice C misinterprets TIE as a cash reserve measure — TIE is an income-based coverage ratio, not a liquidity measure. Choice D incorrectly uses net income rather than EBIT as the numerator.'
WHERE id = 608;

-- Q610 [score:4] short-stem(6w) + short-expl(26w) → expand both
UPDATE questions SET
  stem = 'A financial analyst at Birchwood Corp. is comparing three years of income statements to identify trends in revenue growth, cost structure, and profitability. This technique — horizontal analysis — is best described as:',
  explanation = 'Horizontal analysis (trend analysis) compares financial data across multiple periods by calculating both dollar and percentage changes for each line item. For example, if revenue grew from $2 million to $2.4 million, horizontal analysis reports a $400,000 increase (20% growth). This technique helps identify trends, turning points, and growth rates over time. Choice A describes vertical analysis (common-size statements), which compares each item to a base within a single period. Choice C describes benchmarking, and Choice D also describes vertical analysis using a balance sheet base.'
WHERE id = 610;

-- Q613 [score:4] short-stem(10w) + short-expl(27w) → expand both
UPDATE questions SET
  stem = 'A credit analyst reviewing Halcyon Industries notes that the company reports total liabilities of $6 million and total stockholders'' equity of $2 million, resulting in a debt-to-equity ratio of 3.0. What does this ratio indicate?',
  explanation = 'Debt-to-equity = Total liabilities / Total stockholders'' equity = $6,000,000 / $2,000,000 = 3.0. This means Halcyon has $3 of debt for every $1 of equity, indicating high financial leverage and significant reliance on creditor financing. A ratio this high increases financial risk because fixed interest obligations consume a larger share of operating income. Choice A reverses the ratio — equity is not three times debt. Choice C describes the equity multiplier (assets/equity), not the debt-to-equity ratio. Choice D is factually incorrect given the $6 million in liabilities.'
WHERE id = 613;

-- Q2927 [score:6] short-expl(28w) → expand explanation
UPDATE questions SET
  explanation = 'Accounts receivable turnover = Net credit sales / Average AR = $3,600,000 / $400,000 = 9.0 times per year. This measures how efficiently a company collects its receivables during the period. Converting to days: 365 / 9.0 = 40.6 days average collection period. A higher turnover ratio indicates faster collection and more efficient credit management. Choice B (8.0) and Choice D (7.2) likely result from using total sales instead of net credit sales or using ending AR instead of the average. Choice C (10.0) may stem from a rounding error in the division.'
WHERE id = 2927;

-- Q2928 [score:6] short-expl(26w) → expand explanation
UPDATE questions SET
  explanation = 'Debt-to-equity ratio = Total debt / Total equity = $2,000,000 / $3,000,000 = 0.67. This ratio measures the proportion of financing from creditors relative to shareholders. A ratio below 1.0 means the company relies more on equity than debt financing, suggesting relatively conservative capital structure. Choice A (0.40) reverses the calculation or uses incorrect values. Choice B (0.60) may result from dividing debt by total capital ($5M) instead of equity. Choice C (1.50) reverses the numerator and denominator, computing equity-to-debt.'
WHERE id = 2928;

-- Q2930 [score:6] short-expl(28w) → expand explanation
UPDATE questions SET
  explanation = 'Times interest earned = EBIT (operating income) / Interest expense = $450,000 / $150,000 = 3.0 times. This solvency ratio measures the company''s ability to cover interest payments from operating earnings before interest and taxes are deducted. Creditors and analysts use TIE to assess the margin of safety for debt service. Choice A (2.0) may result from subtracting rather than dividing. Choice B (0.33) inverts the ratio (interest/EBIT). Choice C (4.5) may incorrectly add interest to operating income before dividing.'
WHERE id = 2930;

-- Q2931 [score:5] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA candidate is reviewing vertical analysis techniques and encounters a common-size balance sheet. On a common-size balance sheet, total assets equal:',
  choices = '["The company''s net income for the period","Total stockholders'' equity at period end","Total liabilities at the balance sheet date","100%, serving as the base for all line items"]'
WHERE id = 2931;

-- Q2932 [score:6] short-stem(6w) → expand stem with scenario
UPDATE questions SET
  stem = 'An analyst at Waverly Foods is calculating profitability ratios and needs to determine what percentage of each sales dollar remains after covering the direct cost of producing goods. Gross profit margin is calculated as:'
WHERE id = 2932;

-- Q2948 [score:5] short-stem(7w) → expand stem with scenario
UPDATE questions SET
  stem = 'A financial analyst observes that a manufacturing company with heavy fixed costs in plant and equipment experiences large swings in operating income when sales volume changes by even a small percentage. A firm''s operating leverage is high when:'
WHERE id = 2948;

-- Q2958 [score:6] short-stem(5w) → expand stem with scenario
UPDATE questions SET
  stem = 'During a liquidity analysis of Lakewood Medical Group, an analyst calculates how many days the company could continue paying operating expenses using only its cash, short-term investments, and receivables — without any additional revenue. The defensive interval ratio measures:'
WHERE id = 2958;

-- Q2963 [score:6] short-stem(7w) → expand stem with scenario
UPDATE questions SET
  stem = 'A CFO at Ironbridge Industries wants to determine whether the company is generating returns above its cost of capital and creating shareholder value. Economic value added (EVA) is calculated as:'
WHERE id = 2963;
