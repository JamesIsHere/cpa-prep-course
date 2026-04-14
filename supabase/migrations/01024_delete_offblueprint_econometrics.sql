-- Delete 20 off-blueprint questions from BAR / "Prospective Analysis and Forecasting".
--
-- The AICPA 2026 BAR Blueprint "Budgeting, forecasting and projection" tasks specify only:
--   "Use forecasting and projection techniques to model financial results including
--    revenue growth, cost and expense characteristics and profitability."
--   "Analyze results of forecasts and projections using ratio analysis and explanations of
--    correlations to, or variations from, key financial indices."
--
-- Slayer's curriculum covers basic regression for cost estimation and simple exponential
-- smoothing as forecasting techniques — those questions stay. The questions below test
-- graduate-level econometrics (multicollinearity, heteroscedasticity, autocorrelation,
-- Durbin-Watson, ARIMA, Holt-Winters seasonality, 2SLS, instrumental variables, regression
-- hypothesis testing via p-values and t-statistics, model selection via adjusted R²,
-- regression confidence/prediction intervals) which is not on the CPA exam under any
-- interpretation of the blueprint.
--
-- Q12990 is held out — it uses "confidence interval" in a "communicating forecast
-- uncertainty to a banker" framing that may be on-blueprint at CPA depth; reviewing
-- separately.
--
-- Q12980 was just keyed via 01023 today as a content-misplacement fix; the keyed answer
-- is correct as a graduate-stats answer but the question itself is off-blueprint, so the
-- delete supersedes the fix.
--
-- Validate-migration's Gap 2 logic will remove these 20 IDs from verified-ids.json pass
-- automatically.

BEGIN;

-- ── HARD signals (13) — unambiguous graduate econometrics ────────

-- Q12982: multiple regression multicollinearity diagnostics
DELETE FROM questions WHERE id = 12982;

-- Q12984: Holt-Winters triple-exponential smoothing (seasonality decomposition)
DELETE FROM questions WHERE id = 12984;

-- Q12995: 2SLS / instrumental variables / simultaneity in macroeconomic forecasting
DELETE FROM questions WHERE id = 12995;

-- Q14103: autocorrelation diagnosis via Durbin-Watson statistic
DELETE FROM questions WHERE id = 14103;

-- Q14105: multicollinearity diagnostics in multiple regression
DELETE FROM questions WHERE id = 14105;

-- Q14110: heteroscedasticity diagnostics via residual plot
DELETE FROM questions WHERE id = 14110;

-- Q14111: Holt-Winters seasonality method selection
DELETE FROM questions WHERE id = 14111;

-- Q14117: autocorrelation / Durbin-Watson with regression diagnostics
DELETE FROM questions WHERE id = 14117;

-- Q14132: combined multicollinearity + heteroscedasticity diagnostics
DELETE FROM questions WHERE id = 14132;

-- Q14783: multicollinearity diagnostics
DELETE FROM questions WHERE id = 14783;

-- Q14784: residual plot heteroscedasticity / autocorrelation / Durbin-Watson
DELETE FROM questions WHERE id = 14784;

-- Q14785: ARIMA / non-stationary time series methodology
DELETE FROM questions WHERE id = 14785;

-- Q14795: heteroscedasticity / autocorrelation in OLS estimation
DELETE FROM questions WHERE id = 14795;

-- ── MEDIUM signals (7) — regression hypothesis testing / model selection ─

-- Q627: t-statistic on regression coefficient (hypothesis testing)
DELETE FROM questions WHERE id = 627;

-- Q12975: regression prediction confidence interval (graduate stats)
DELETE FROM questions WHERE id = 12975;

-- Q12980: adjusted R² as model-selection / overfitting criterion (graduate stats)
-- Note: keyed via 01023 today; delete supersedes the prior fix.
DELETE FROM questions WHERE id = 12980;

-- Q12993: multiple regression p-value / variable significance testing
DELETE FROM questions WHERE id = 12993;

-- Q14113: p-value + t-statistic on regression coefficients
DELETE FROM questions WHERE id = 14113;

-- Q14125: t-statistic in revenue forecasting model
DELETE FROM questions WHERE id = 14125;

-- Q14127: adjusted R² with degrees-of-freedom / small-sample regression critique
DELETE FROM questions WHERE id = 14127;

COMMIT;
