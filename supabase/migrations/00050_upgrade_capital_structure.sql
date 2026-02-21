-- Migration: Upgrade 20 moderate-scoring Capital Structure and Valuation questions
-- Fixes: short-stem, short-explanation, length-cuing
-- Target: all questions score 7+ after this migration

-- Q628 [score:6] short-expl(19w) → expand explanation
UPDATE questions SET
  explanation = 'Using CAPM: Cost of equity = Risk-free rate + Beta x Market risk premium = 3% + 1.5(6%) = 3% + 9% = 12%. The CAPM model compensates investors for systematic risk only (measured by beta). A beta of 1.5 means the stock is 50% more volatile than the market, so investors demand a return 50% above the market risk premium beyond the risk-free rate.'
WHERE id = 628;

-- Q629 [score:6] short-expl(11w) → expand explanation
UPDATE questions SET
  explanation = 'WACC = Weight of debt x After-tax cost of debt + Weight of equity x Cost of equity = 0.40(6%)(1 - 0.25) + 0.60(14%) = 0.40(4.5%) + 0.60(14%) = 1.80% + 8.40% = 10.20%. The after-tax cost of debt is used because interest expense is tax-deductible, creating a tax shield that effectively reduces the cost of debt financing. WACC represents the minimum return the company must earn on its assets to satisfy all capital providers.'
WHERE id = 629;

-- Q630 [score:4] short-stem(11w) + short-expl(26w) → expand both
UPDATE questions SET
  stem = 'A CPA candidate is studying theories of capital structure and encounters the pecking order theory, which explains how firms prioritize financing sources based on information asymmetry costs. Under the pecking order theory, companies prefer financing in which order?',
  explanation = 'The pecking order theory (Myers and Majluf, 1984) states that firms prefer internal financing first, then debt, and finally equity as a last resort. This ordering minimizes information asymmetry costs: retained earnings involve no external scrutiny, debt requires some disclosure, and equity issuance signals to the market that management believes shares may be overvalued. The theory explains why profitable firms tend to rely on internal funds and avoid equity offerings.'
WHERE id = 630;

-- Q631 [score:4] short-stem(6w) + short-expl(22w) → expand both
UPDATE questions SET
  stem = 'An investment analyst is constructing a portfolio and needs to distinguish between systematic and unsystematic risk. In the Capital Asset Pricing Model (CAPM), beta measures which type of risk?',
  explanation = 'Beta measures systematic (market) risk — the sensitivity of a security''s returns to overall market movements. A beta of 1.0 means the stock moves in line with the market; a beta greater than 1.0 indicates higher volatility than the market. CAPM compensates investors only for systematic risk because unsystematic (firm-specific) risk can be diversified away through portfolio construction. Total risk, measured by standard deviation, includes both systematic and unsystematic components.'
WHERE id = 631;

-- Q633 [score:6] short-expl(28w) → expand explanation
UPDATE questions SET
  explanation = 'Modigliani-Miller Proposition I with taxes states: Value of levered firm = Value of unlevered firm + (Tax rate x Debt). The tax shield from deductible interest payments increases firm value because the government effectively subsidizes the cost of debt financing. For example, if the tax rate is 30% and debt is $1 million, the firm gains $300,000 in present value from the perpetual tax shield. However, this model assumes no bankruptcy costs, which the trade-off theory later addresses.'
WHERE id = 633;

-- Q634 [score:6] short-expl(17w) → expand explanation
UPDATE questions SET
  explanation = 'Using the dividend growth model (Gordon Growth Model): Cost of equity = D1/P0 + g = $3.00/$50.00 + 4% = 6% + 4% = 10%. The first term ($3/$50 = 6%) represents the dividend yield, and g (4%) represents the expected constant growth rate. This model provides an alternative to CAPM for estimating cost of equity and works best for mature companies with stable, predictable dividend growth.'
WHERE id = 634;

-- Q635 [score:6] short-expl(26w) → expand explanation
UPDATE questions SET
  explanation = 'The trade-off theory states that the optimal capital structure balances the tax benefits of debt (interest deductibility creating a tax shield) against the costs of financial distress (bankruptcy risk, agency costs, loss of customers and suppliers). As debt increases, the marginal benefit of the tax shield is eventually offset by increasing probability and expected costs of financial distress. The optimal debt ratio maximizes firm value at the point where the marginal tax benefit equals the marginal distress cost.'
WHERE id = 635;

-- Q636 [score:6] short-expl(29w) → expand explanation
UPDATE questions SET
  explanation = 'First calculate contribution margin (CM) = $800,000 - $500,000 = $300,000, then EBIT = CM - Fixed costs = $300,000 - $180,000 = $120,000. Degree of operating leverage (DOL) = CM/EBIT = $300,000/$120,000 = 2.50. Degree of financial leverage (DFL) = EBIT/(EBIT - Interest) = $120,000/($120,000 - $40,000) = 1.50. Degree of total leverage (DTL) = DOL x DFL = 2.50 x 1.50 = 3.75. This means a 1% change in sales produces a 3.75% change in EPS.'
WHERE id = 636;

-- Q637 [score:6] short-stem(9w) → expand stem
UPDATE questions SET
  stem = 'A CFO is evaluating how various economic and company-specific changes would affect the firm''s weighted average cost of capital. Which of the following changes would increase a company''s WACC?'
WHERE id = 637;

-- Q638 [score:6] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'A CPA candidate studying the Capital Asset Pricing Model needs to identify the component that represents the additional return investors demand for investing in risky assets rather than risk-free securities. In CAPM, the market risk premium represents:'
WHERE id = 638;

-- Q639 [score:4] short-stem(11w) + short-expl(29w) → expand both
UPDATE questions SET
  stem = 'When calculating the weighted average cost of capital, an analyst notices that the after-tax cost of debt is significantly lower than the pre-tax rate. The after-tax cost of debt is lower than the pre-tax cost because:',
  explanation = 'Interest expense is deductible for income tax purposes, creating a tax shield that effectively reduces the cost of borrowing. The formula is: After-tax cost of debt = Pre-tax rate x (1 - Tax rate). For example, with a 6% pre-tax rate and 25% tax rate, the after-tax cost is 6% x 0.75 = 4.5%. The government subsidizes 25% of the interest cost through reduced taxes. This tax advantage is a key reason why moderate amounts of debt can lower a firm''s overall WACC.'
WHERE id = 639;

-- Q3002 [score:6] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'In a frictionless capital market with no taxes, bankruptcy costs, or information asymmetry, Modigliani and Miller demonstrated a foundational proposition about firm value. According to Modigliani-Miller Proposition I without taxes, the value of a firm:'
WHERE id = 3002;

-- Q3010 [score:5] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A company with $5 million in fixed-rate debt and $3 million in equity has greater earnings volatility per share than a comparable all-equity firm. Financial leverage increases the variability of returns to equity holders because:',
  choices = '["Debt payments fluctuate with the company''s operating performance","Interest expense is a fixed obligation that must be paid regardless of earnings","Equity holders are required to receive dividends before debt holders are paid","Debt reduces the overall tax burden, amplifying the effect of revenue changes"]'
WHERE id = 3010;

-- Q3019 [score:5] short-stem(2w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A portfolio manager is evaluating whether to add a high-beta stock to a diversified portfolio. In the Capital Asset Pricing Model framework, beta measures:',
  choices = '["The total risk of a stock including both systematic and unsystematic components","The standard deviation of the stock''s historical returns over a given period","The unsystematic risk of a stock that can be eliminated through diversification","The systematic risk of a stock, measuring its sensitivity to overall market movements"]'
WHERE id = 3019;

-- Q3021 [score:6] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'A CPA candidate studying the conflicts between shareholders and bondholders encounters the concept of agency costs arising from the debtor-creditor relationship. Agency costs of debt include all of the following EXCEPT:'
WHERE id = 3021;

-- Q3023 [score:6] short-stem(6w) → expand stem
UPDATE questions SET
  stem = 'A financial analyst is comparing the business risk of two companies that operate in the same industry but have very different capital structures. To isolate the effect of leverage on beta, the Hamada equation is used to:'
WHERE id = 3023;

-- Q3025 [score:6] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'During a board meeting, the CFO discusses how the company''s debt load amplifies the impact of an economic downturn on its ability to meet obligations. A highly leveraged company is most vulnerable to which risk?'
WHERE id = 3025;

-- Q3026 [score:6] short-stem(5w) → expand stem
UPDATE questions SET
  stem = 'A company has exhausted its retained earnings and must now raise additional capital by issuing new debt or equity. The rate the company pays on this next increment of financing is known as the marginal cost of capital, which:'
WHERE id = 3026;

-- Q3031 [score:6] short-stem(9w) → expand stem
UPDATE questions SET
  stem = 'A junior analyst argues that retained earnings have zero cost because the company does not write a check to anyone for using them. The senior analyst corrects this view by explaining that when computing WACC, the cost of retained earnings is:'
WHERE id = 3031;

-- Q3356 [score:5] short-stem(7w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A company plans to raise $50 million through a public equity offering and expects to pay $3 million in underwriting and registration fees. These flotation costs affect the cost of new equity because the flotation cost of issuing new equity:',
  choices = '["Reduces the effective cost of equity since the fees are tax-deductible expenses","Increases the effective cost of equity because the company receives less than the market price","Has no measurable impact on the company''s weighted average cost of capital","Only increases the cost of debt financing through higher interest rate spreads"]'
WHERE id = 3356;
