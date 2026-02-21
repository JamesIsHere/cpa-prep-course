-- Migration: Upgrade 19 moderate-scoring Prospective Analysis and Forecasting questions
-- Fixes: short-stem, short-explanation, absolute-assurance, length-cuing
-- Target: all questions score 7+ after this migration

-- Q616 [score:6] short-expl(26w) → expand explanation with AT-C citation
UPDATE questions SET
  explanation = 'Under AICPA attestation standards (AT-C Section 305), financial forecasts — based on expected conditions and the responsible party''s expected course of action — may be distributed for general use. Financial projections, which incorporate one or more hypothetical assumptions (''what-if'' scenarios), are restricted to specified parties who can discuss the assumptions with the responsible party. Choice A is incorrect because projections are limited-use, not general-use. Choice D is incorrect because forecasts are explicitly permitted for general distribution.'
WHERE id = 616;

-- Q617 [score:6] short-expl(17w) → expand explanation
UPDATE questions SET
  explanation = 'Exponential smoothing formula: New forecast = alpha x Actual + (1 - alpha) x Previous forecast = 0.3(600) + 0.7(500) = 180 + 350 = 530 units. The smoothing constant alpha controls responsiveness to recent data: higher alpha values weight recent observations more heavily, making the forecast more reactive to changes. With alpha = 0.3, the model places 70% weight on the prior forecast, producing a conservative, stable prediction. Choice B (550) incorrectly uses equal weights, and Choice C (570) reverses the alpha weighting.'
WHERE id = 617;

-- Q618 [score:6] short-expl(24w) → expand explanation
UPDATE questions SET
  explanation = 'In the percentage-of-sales method, items that spontaneously vary with revenue — accounts receivable, inventory, and accounts payable — are projected as a constant percentage of forecasted sales. Long-term debt does not spontaneously vary with sales because it requires deliberate financing decisions by management (issuing bonds, taking loans). Similarly, equity and fixed assets typically require discrete management actions rather than scaling automatically with revenue. Choice D (accounts payable) is incorrect because trade payables typically increase proportionally with purchase volume tied to sales.'
WHERE id = 618;

-- Q619 [score:6] short-expl(26w) → expand explanation
UPDATE questions SET
  explanation = 'Substituting into the regression equation: Y = $40,000 + $8(15,000) = $40,000 + $120,000 = $160,000. The intercept ($40,000) represents fixed overhead costs regardless of activity level, and the slope ($8) represents the variable overhead rate per machine hour. The R-squared of 0.88 indicates strong explanatory power — machine hours explain 88% of overhead cost variation — making this a reliable predictor. Choice B ($120,000) omits the fixed component, and Choice D ($80,000) incorrectly halves the variable portion.'
WHERE id = 619;

-- Q620 [score:4] short-stem(10w) + short-expl(29w) → expand both
UPDATE questions SET
  stem = 'Meridian Analytics is building a regression model to forecast quarterly sales using advertising expenditure as the independent variable. The model produces an R-squared value of 0.75. What does this R-squared value indicate about the model?',
  explanation = 'R-squared (the coefficient of determination) measures the proportion of variation in the dependent variable explained by the independent variable(s). An R-squared of 0.75 means that 75% of the variation in Meridian''s quarterly sales is explained by advertising expenditure, while the remaining 25% is due to other factors not captured in the model. Choice A confuses R-squared with a probability of prediction accuracy. Choice C confuses R-squared with the correlation coefficient (r), which would be the square root of R-squared. Choice D misinterprets R-squared as a confidence level.'
WHERE id = 620;

-- Q621 [score:4] short-stem(10w) + short-expl(28w) → expand both
UPDATE questions SET
  stem = 'Calloway Consulting is preparing a financial forecast for a client considering a new product launch. The team debates whether to use sensitivity analysis or scenario analysis to evaluate forecast uncertainty. Sensitivity analysis differs from scenario analysis in that sensitivity analysis:',
  explanation = 'Sensitivity analysis isolates the impact of a single variable by changing one input at a time while holding all other assumptions constant — for example, varying only the sales growth rate to see its effect on projected net income. Scenario analysis, by contrast, changes multiple variables simultaneously to model different plausible states of the world (optimistic, base, and pessimistic cases). Choice A describes scenario analysis, not sensitivity analysis. Choice C is incorrect because sensitivity analysis produces multiple estimates (one per variable tested), not a single point estimate.'
WHERE id = 621;

-- Q622 [score:5] short-expl(25w) + length-cuing(5/29) → balance choices, expand explanation
UPDATE questions SET
  choices = '["An audit of the prospective financial statements","An examination providing positive assurance","A negative assurance engagement on forecasts","An integrated audit of projections and controls"]',
  explanation = 'Under AT-C Section 305, a CPA may perform an examination (providing positive assurance that assumptions are reasonable), agreed-upon procedures, or a compilation on prospective financial statements. Audits are not performed on forward-looking information because the events have not yet occurred and cannot be verified against objective evidence. Choice A is incorrect because auditing standards (AU-C) apply to historical financial statements. Choice C is incorrect because negative assurance is associated with reviews, not examinations of prospective statements.'
WHERE id = 622;

-- Q623 [score:4] short-stem(10w) + short-expl(29w) → expand both
UPDATE questions SET
  stem = 'Ridgeline Manufacturing uses a simple moving average to forecast monthly demand. To prepare the April production schedule, the operations manager calculates a 3-month simple moving average. Which data does this forecast use?',
  explanation = 'A 3-month simple moving average uses the three most recent months of actual data to compute an average forecast. For April, this means averaging actual demand from January, February, and March. Each month receives equal weight (1/3). Choice B is incorrect because April''s actual data is unknown at forecast time. Choice C incorrectly uses forecast data rather than actuals. Choice D uses the wrong time window — December through February would forecast March, not April. The simplicity of equal weighting is both a strength (easy to compute) and a weakness (slow to respond to trends).'
WHERE id = 623;

-- Q627 [score:6] short-expl(29w) → expand explanation
UPDATE questions SET
  explanation = 'The standard error of the estimate (SEE) measures the average distance of observed data points from the regression line, indicating the typical size of prediction errors in the same units as the dependent variable. A smaller standard error means observations cluster more tightly around the regression line, producing more precise predictions. R-squared measures the proportion of variation explained (not prediction error magnitude). The correlation coefficient measures the strength and direction of the linear relationship. The t-statistic tests whether individual regression coefficients are statistically significantly different from zero.'
WHERE id = 627;

-- Q2972 [score:6] short-stem(9w) → expand stem with scenario
UPDATE questions SET
  stem = 'A budget analyst at Clearwater Industries is evaluating how a 10% increase in raw material costs would affect the company''s projected operating margin, while holding all other inputs constant. This technique — sensitivity analysis in financial forecasting — is best described as:'
WHERE id = 2972;

-- Q2973 [score:6] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'Brightfield Capital is evaluating risk for a new infrastructure project and wants to model thousands of possible outcomes using probability distributions for multiple uncertain inputs simultaneously. Monte Carlo simulation differs from sensitivity analysis primarily because it:'
WHERE id = 2973;

-- Q2974 [score:6] short-expl(18w) → expand explanation
UPDATE questions SET
  explanation = 'The pro forma income statement is constructed step by step: Revenue of $5,000,000 less COGS at 60% ($3,000,000) yields gross profit of $2,000,000. Subtracting operating expenses of $1,200,000 gives operating income of $800,000. Applying the 25% tax rate produces tax expense of $200,000, leaving projected net income of $600,000. Choice B ($800,000) incorrectly omits the tax provision. Choice C ($450,000) likely applies the tax rate to revenue rather than operating income. Pro forma statements are essential for planning capital needs and communicating financial expectations to stakeholders.'
WHERE id = 2974;

-- Q2975 [score:6] short-stem(6w) → expand stem with scenario
UPDATE questions SET
  stem = 'A junior analyst at Westbrook Financial is preparing a five-year revenue forecast for a retail client and proposes using the percent-of-sales method to project the balance sheet. The percent-of-sales forecasting method assumes that:'
WHERE id = 2975;

-- Q2976 [score:6] short-stem(7w) → expand stem with scenario
UPDATE questions SET
  stem = 'An FP&A team at Garrison Industries has prepared three versions of its capital expenditure forecast: optimistic, base, and pessimistic. In scenario analysis, the base case represents:'
WHERE id = 2976;

-- Q2984 [score:6] short-expl(27w) → expand explanation
UPDATE questions SET
  explanation = 'Using the percent-of-sales method: Projected AR = Forecasted revenue x Historical AR-to-sales ratio = $8,000,000 x 12% = $960,000. The method assumes the historical relationship between AR and revenue will persist in the forecast period, which is reasonable when the company''s credit terms, customer mix, and collection efficiency remain stable. Choice A ($780,000) incorrectly applies the ratio to Year 1 revenue. Choice B ($800,000) appears to be a rounding error. Choice C ($650,000) likely uses Year 1 AR without adjusting for revenue growth.'
WHERE id = 2984;

-- Q2987 [score:6] absolute-assurance → fix banned distractor
UPDATE questions SET
  choices = '["A statement that the prospective results may not be achieved","An opinion on whether the forecast will be achieved","A statement of limited assurance on the underlying assumptions","An audit opinion on the forecast methodology"]'
WHERE id = 2987;

-- Q2989 [score:6] short-stem(8w) → expand stem with scenario
UPDATE questions SET
  stem = 'The CFO of Ashford Manufacturing wants to forecast next year''s utility costs and asks the finance team to identify a statistical technique that models the relationship between utility expense (dependent variable) and production volume (independent variable). Regression analysis is used in forecasting primarily to:'
WHERE id = 2989;

-- Q2999 [score:6] short-stem(11w) → expand stem with scenario
UPDATE questions SET
  stem = 'A CPA at Thornton & Associates is engaged to examine a set of prospective financial statements prepared by a mid-size construction company seeking bank financing. Which statement about prospective financial statements is correct under AICPA standards?'
WHERE id = 2999;

-- Q3352 [score:6] short-stem(9w) → expand stem with scenario
UPDATE questions SET
  stem = 'A demand planner at Summit Distribution is selecting a time series method that automatically assigns greater weight to recent sales data while gradually discounting older observations. Exponential smoothing is a time series forecasting method that:'
WHERE id = 3352;
