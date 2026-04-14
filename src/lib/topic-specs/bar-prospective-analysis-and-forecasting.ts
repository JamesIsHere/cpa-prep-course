import type { TopicSpec } from "./types";

// First pilot spec — derived from the 2026-04-13 audit that found 20 off-blueprint
// econometric questions in this topic. Captures James's curriculum boundary: basic
// regression for cost estimation and simple exponential smoothing are testable,
// graduate diagnostics and hypothesis testing are not.

export const spec: TopicSpec = {
	topic: "Prospective Analysis and Forecasting",
	section: "bar",
	// AICPA places "Budgeting, forecasting and projection" at BAR/I/B/1 in the 2026
	// blueprint. Note: blueprint.ts folds this into Slayer's bar.1.A group with
	// "Financial Statement Analysis"; the spec anchors to the AICPA structure, not
	// blueprint.ts's reorganization. The blueprint task text + skill levels live in
	// alignment/aicpa-blueprint-tasks.json under this path.
	blueprintRef: "BAR/I/B/1",

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

	notes:
		"This topic was the source of the 2026-04-13 off-blueprint audit that deleted 20 questions for graduate-level econometric content. Generator and validator should both enforce the out-of-scope list as ERROR-level for any new content. Stem rewrites and explanation edits should also avoid out-of-scope vocabulary. The single trickiest in-scope item is regression — basic R-squared interpretation is fine, but anything testing model selection, coefficient significance, or diagnostics is out.",
};
