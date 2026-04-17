import type { LessonSpec } from "./types";

// First pilot spec — derived from the 2026-04-13 audit that found 20 off-blueprint
// econometric questions in this topic. Captures James's curriculum boundary: basic
// regression for cost estimation and simple exponential smoothing are testable,
// graduate diagnostics and hypothesis testing are not.

export const spec: LessonSpec = {
	topic: "Prospective Analysis and Forecasting",
	section: "bar",
	// AICPA places "Budgeting, forecasting and projection" at BAR/I/B/1 in the 2026
	// blueprint. Note: blueprint.ts folds this into Slayer's bar.1.A group with
	// "Financial Statement Analysis"; the spec anchors to the AICPA structure, not
	// blueprint.ts's reorganization. The blueprint task text + skill levels live in
	// alignment/aicpa-blueprint-tasks.json under this path.
	primaryRef: "BAR/I/B/1",
	secondaryRefs: [],

	inScope: [
		"High-low method for cost behavior estimation (separating fixed and variable components from two data points)",
		"Simple linear regression for cost-volume relationships at the interpretation level — fitting Y = a + bX, identifying intercept as fixed cost and slope as variable cost rate",
		"R-squared as a basic descriptive statistic for goodness of fit (interpreting magnitude only, not for model selection or hypothesis testing)",
		"Basic single-parameter exponential smoothing for next-period forecasting",
		"Sensitivity analysis: changing one input variable to observe the effect on a forecast or budget output",
		"Scenario analysis: building base / upside / downside cases with discrete assumption sets",
		"Cost-volume-profit (CVP) analysis: contribution margin, breakeven point, target profit calculations",
		"Cash flow forecasting: building monthly or quarterly cash flow projections from operating, investing, and financing activities",
		"Budget vs actual variance analysis: identifying favorable / unfavorable variances and tying them to operational drivers",
		"Trend analysis: comparing financial metrics across multiple periods, percentage changes, common-size statements over time",
		"Correlation interpretation at the basic level (positive / negative / no correlation) without computing or testing significance",
		"Pro forma financial statement preparation from assumed growth rates and operating ratios",
		"Forecast horizon definition under AT-C 305 (length of the future period covered by the forecast)",
		"Distinguishing forecasts (best estimate of expected results) from projections (hypothetical 'what-if' results)",
	],

	outOfScope: [
		"Adjusted R-squared as a model-selection criterion or overfitting detector",
		"p-values, t-statistics, F-statistics, or any hypothesis testing on regression coefficients",
		"Confidence intervals or prediction intervals on regression forecasts",
		"Multicollinearity diagnostics (VIF, correlation matrices among predictors)",
		"Heteroscedasticity / heteroskedasticity diagnostics or correction (residual plots, weighted least squares)",
		"Autocorrelation / serial correlation diagnostics",
		"Durbin-Watson statistic",
		"ARIMA, Box-Jenkins methodology, non-stationary time-series modeling",
		"Holt-Winters or any multi-parameter exponential smoothing variant (seasonality decomposition)",
		"Two-stage least squares (2SLS), instrumental variables, simultaneity bias correction",
		"Maximum likelihood estimation (MLE), method of moments, generalized least squares (GLS)",
		"Bayesian inference, Markov chain Monte Carlo (MCMC), prior / posterior distributions",
		"Stochastic processes, Brownian motion, Wiener processes",
		"Eigenvalue decomposition, singular value decomposition (SVD), principal component analysis",
		"Differential equations, partial derivatives, gradient computations",
		"Monte Carlo simulation at the implementation level (mentioning it as a tool is fine; building one is out)",
		"Lagrangian optimization, simplex method, formal linear programming",
		"Granger causality, cointegration, vector autoregression (VAR)",
	],

	keyStandards: [
		"AT-C 305 — Compilation, Examination, and Agreed-Upon Procedures Engagements on Prospective Financial Information",
		"AT-C 520 — Analytical Procedures",
		"AICPA Guide on Prospective Financial Information",
	],

	commonMisconceptions: [
		"Confusing the high-low method with simple linear regression (high-low uses only two extreme points; regression fits all points)",
		"Treating R-squared as a measure of forecast accuracy rather than goodness of historical fit",
		"Conflating sensitivity analysis (one variable changes) with scenario analysis (sets of assumptions change together)",
		"Treating any budget variance as evidence of error rather than information for management investigation",
		"Confusing a forecast (expected results) with a projection (hypothetical results assuming X happens)",
		"Believing that exponential smoothing is suitable for data with strong trend or seasonality (it is not — single-parameter is for stable series)",
		"Treating the contribution margin as profit",
		"Confusing fixed and variable cost classification when costs change in steps or have mixed behavior",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{ term: "adjusted R-squared", pattern: "adjusted\\s+R[-\\s]?(?:squared|²)|R[-\\s]bar\\s+squared", category: "regression diagnostic", why: "Model-selection / overfitting detection via adjusted R² — graduate stats, not CPA." },
		{ term: "p-value", pattern: "p[-\\s]value", category: "hypothesis test", why: "Hypothesis testing on regression coefficients is out of scope." },
		{ term: "t-statistic", pattern: "\\bt[-\\s]statistics?\\b|\\bt[-\\s]stat\\b", category: "hypothesis test", why: "t-statistic testing of regression coefficients is out of scope." },
		{ term: "F-statistic", pattern: "\\bF[-\\s]statistics?\\b|\\bF[-\\s]stat\\b", category: "hypothesis test", why: "F-statistic testing on regression models is out of scope." },
		{ term: "hypothesis testing", pattern: "hypothesis\\s+test(?:ing)?", category: "hypothesis test", why: "Formal hypothesis testing on coefficients is out of scope." },
		{ term: "confidence interval", pattern: "confidence\\s+interval", category: "regression diagnostic", why: "Regression confidence intervals are out of scope." },
		{ term: "prediction interval", pattern: "prediction\\s+interval", category: "regression diagnostic", why: "Forecast prediction intervals are out of scope." },
		{ term: "multicollinearity", pattern: "multi[-\\s]?collinearity", category: "regression diagnostic", why: "Multicollinearity diagnostics are graduate stats." },
		{ term: "VIF", pattern: "\\bVIF\\b|variance\\s+inflation\\s+factor", category: "regression diagnostic", why: "Variance inflation factor — out of scope." },
		{ term: "heteroscedasticity", pattern: "heteros?cedastic|heteroskedastic", category: "regression diagnostic", why: "Heteroscedasticity diagnostics — out of scope." },
		{ term: "autocorrelation", pattern: "auto[-\\s]?correlation|serial\\s+correlation", category: "regression diagnostic", why: "Autocorrelation / serial correlation diagnostics — out of scope." },
		{ term: "Durbin-Watson", pattern: "Durbin[-\\s]Watson", category: "regression diagnostic", why: "Durbin-Watson statistic — out of scope." },
		{ term: "ARIMA", pattern: "\\bARIMA\\b", category: "time series", why: "ARIMA and Box-Jenkins methodology — out of scope." },
		{ term: "Box-Jenkins", pattern: "Box[-\\s]Jenkins", category: "time series", why: "Box-Jenkins methodology — out of scope." },
		{ term: "Holt-Winters", pattern: "Holt[-\\s]Winters", category: "time series", why: "Multi-parameter exponential smoothing variants with seasonality — out of scope." },
		{ term: "2SLS", pattern: "\\b2SLS\\b|two[-\\s]stage\\s+least\\s+squares", category: "econometrics", why: "Two-stage least squares / instrumental variables — out of scope." },
		{ term: "instrumental variable", pattern: "instrumental\\s+variable", category: "econometrics", why: "Instrumental variables — out of scope." },
		{ term: "maximum likelihood", pattern: "maximum\\s+likelihood(?:\\s+estimation)?|\\bMLE\\b", category: "econometrics", why: "MLE — out of scope." },
		{ term: "method of moments", pattern: "method\\s+of\\s+moments", category: "econometrics", why: "Method of moments estimator — out of scope." },
		{ term: "Bayesian", pattern: "Bayesian\\s+(?:inference|analysis|method)|Markov\\s+chain\\s+Monte\\s+Carlo|\\bMCMC\\b", category: "econometrics", why: "Bayesian inference, MCMC — out of scope." },
		{ term: "stochastic process", pattern: "stochastic\\s+process|Brownian\\s+motion|Wiener\\s+process", category: "advanced math", why: "Stochastic processes — out of scope." },
		{ term: "eigenvalue", pattern: "eigenvalue\\s+decomposition|singular\\s+value\\s+decomposition|\\bSVD\\b|principal\\s+component\\s+analysis|\\bPCA\\b", category: "advanced math", why: "Eigenvalue / SVD / PCA — out of scope." },
		{ term: "partial derivative", pattern: "partial\\s+derivative|differential\\s+equation", category: "advanced math", why: "Calculus beyond basic slope/rate language is out of scope." },
		{ term: "Lagrangian", pattern: "Lagrangian\\s+(?:optimization|multiplier|method)|simplex\\s+method|formal\\s+linear\\s+programming", category: "optimization", why: "Lagrangian / simplex / formal LP — out of scope." },
		{ term: "Granger causality", pattern: "Granger\\s+causality|cointegration|vector\\s+auto[-\\s]?regression|\\bVAR\\s+model\\b", category: "time series", why: "Granger causality, cointegration, VAR — out of scope." },
	],

	notes:
		"This topic was the source of the 2026-04-13 off-blueprint audit that deleted 20 questions for graduate-level econometric content. Generator and validator should both enforce the out-of-scope list as ERROR-level for any new content. Stem rewrites and explanation edits should also avoid out-of-scope vocabulary. The single trickiest in-scope item is regression — basic R-squared interpretation is fine, but anything testing model selection, coefficient significance, or diagnostics is out.",
};
