-- Migration: Upgrade 14 moderate-scoring Pension and Postretirement Benefits questions
-- Fixes: short-stem, short-explanation, length-cuing, absolute-assurance
-- Target: all questions score 7+ after this migration

-- Q1089 [score:6] short-expl(26w) → expand explanation
UPDATE questions SET
  explanation = 'Ending PBO = Beginning PBO + Service cost + Interest cost - Actuarial gains - Benefits paid = $3,000,000 + $200,000 + $150,000 (interest: $3M x 5%) - $30,000 - $150,000 = $3,170,000. Interest cost accrues on the beginning PBO because the passage of time moves the obligation one period closer to settlement. Actuarial gains decrease the PBO because actual experience was more favorable than assumed, while benefits paid reduce the obligation as payments are made to retirees.'
WHERE id = 1089;

-- Q1090 [score:6] short-expl(18w) → expand explanation
UPDATE questions SET
  explanation = 'Ending plan assets = Beginning fair value + Actual return + Employer contributions - Benefits paid = $2,400,000 + $180,000 + $300,000 - $200,000 = $2,680,000. Plan assets increase through investment returns and employer contributions and decrease as benefits are paid to retirees. For the pension cost calculation, the expected return (not actual) is used on the income statement, with the difference between actual and expected deferred through OCI.'
WHERE id = 1090;

-- Q1092 [score:5] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'An actuary is calculating whether cumulative unrecognized actuarial gains and losses exceed the corridor threshold and must be amortized. Under ASC 715, the corridor approach defines the corridor amount as:',
  choices = '["Ten percent of the ending projected benefit obligation","Ten percent of the greater of beginning PBO or beginning plan asset fair value","Five percent of the average projected benefit obligation for the period","Ten percent of the beginning projected benefit obligation only"]'
WHERE id = 1092;

-- Q3289 [score:6] short-stem(6w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA candidate is comparing the three measures of pension obligation — the PBO, ABO, and VBO — and needs to identify which one incorporates projected future salary increases. Under ASC 715, the projected benefit obligation (PBO) measures:',
  choices = '["Benefits earned to date based only on current salary levels without growth assumptions","The current fair market value of plan assets held in the pension trust","Only benefits payable to retired employees who are currently receiving pension payments","The actuarial present value of all benefits attributed to service to date, incorporating future salary increases"]'
WHERE id = 3289;

-- Q3292 [score:5] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA is reviewing the components of net periodic pension cost for a defined benefit plan. Under ASC 715, service cost in net periodic pension cost represents:',
  choices = '["Interest accrued on the beginning projected benefit obligation balance","The investment return earned on plan assets during the current period","The present value of benefits earned by employees for current-period service","Administrative and trustee costs of operating the pension trust"]'
WHERE id = 3292;

-- Q3293 [score:6] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'When computing net periodic pension cost for a defined benefit plan, one component reflects the time value of money on the outstanding obligation. Under ASC 715, interest cost in the pension cost calculation is computed as:'
WHERE id = 3293;

-- Q3294 [score:6] short-stem(5w) → expand stem
UPDATE questions SET
  stem = 'A CPA candidate is learning how plan asset investment performance affects net periodic pension cost. In the pension cost calculation under ASC 715, the expected return on plan assets:'
WHERE id = 3294;

-- Q3296 [score:5] short-stem(9w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A company amends its pension plan to retroactively increase benefits for employees with ten or more years of service. Under ASC 715, prior service cost arising from this plan amendment is:',
  choices = '["Recognized immediately as a component of pension expense in current earnings","Excluded from the financial statements until the benefits are actually paid","Recognized in OCI and amortized to pension cost over the remaining service period","Charged directly against retained earnings as a cumulative-effect adjustment"]'
WHERE id = 3296;

-- Q3300 [score:4] short-stem(5w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'Ridgemont Manufacturing announces the closure of one of its three plants, eliminating 200 positions and significantly reducing the expected future service years for those employees. Under ASC 715, a plan curtailment occurs when:',
  choices = '["A plan amendment retroactively increases the level of benefits for participating employees","Plan assets decline in fair value because of unfavorable market conditions during the period","The company voluntarily increases its annual contributions to the pension trust above the required amount","An event significantly reduces expected future service years or eliminates benefit accrual for a significant group"]'
WHERE id = 3300;

-- Q3303 [score:4] short-stem(6w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A company decides to transfer its entire pension obligation to an insurance company by purchasing group annuity contracts for all plan participants. Under ASC 715, a pension plan settlement occurs when:',
  choices = '["The company amends the plan to increase the level of retirement benefits","New employees are enrolled in the defined benefit pension plan for the first time","The company revises its assumption for the expected long-term return on plan assets","The employer irrevocably transfers the pension obligation to a third party such as an insurer"]'
WHERE id = 3303;

-- Q3304 [score:5] short-stem(9w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'During the annual actuarial valuation, the actuary determines that actual employee turnover was lower than assumed, increasing the projected benefit obligation. Under ASC 715, actuarial gains and losses arise from:',
  choices = '["Changes in the investment allocation strategy of plan assets","Voluntary employee contributions to the defined benefit plan","Differences between actuarial assumptions and actual experience, or changes in assumptions","Changes in federal tax law affecting pension contribution deductibility"]'
WHERE id = 3304;

-- Q3395 [score:5] absolute-assurance → fix distractor
UPDATE questions SET
  choices = '["The employer promises a specific retirement benefit based on a formula","The employer''s obligation is limited to making specified contributions; the investment risk is borne by employees","Only defined contribution plans require actuarial calculations for funding","Defined contribution plans are exempt from ERISA reporting requirements"]'
WHERE id = 3395;

-- Q3401 [score:6] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA is comparing the accounting treatment of other post-employment benefit (OPEB) plans to defined benefit pension plans. Under ASC 715-60, OPEB plans typically differ from pension plans in that OPEB benefits:',
  choices = '["Must always be funded through a dedicated irrevocable trust","Have no specific accounting standards governing their measurement","Are often unfunded or significantly underfunded, with obligations sensitive to health care cost trends","Are recognized on a cash basis and never accrued as a liability"]'
WHERE id = 3401;

-- Q3427 [score:5] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A company amends its pension plan to reduce the benefit formula multiplier from 2% to 1.5% per year of service. Under ASC 715, a negative plan amendment that reduces future benefits creates:',
  choices = '["Prior service cost that is recognized as an expense in OCI","No accounting impact because the amendment affects only future periods","An immediate gain recognized in current period earnings","A prior service credit in OCI that reduces future net periodic pension cost"]'
WHERE id = 3427;
