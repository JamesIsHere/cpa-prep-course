-- Spec cleanup for BAR Financial Statement Analysis (BAR/I/A/1)
-- Post-audit cleanup for 10 banned-term hits flagged by audit-topic-content.ts
-- after the BAR Financial Statement Analysis spec was authored.
--
-- Breakdown:
--   Rewrites: 3 (Q2955, Q2959, Q7973) — core content in scope; banned term
--             is a surface label or distractor contrast that can be
--             replaced without losing the teaching point.
--   Deletes:  7 (Q2943, Q2960, Q2963, Q7838, Q7841, Q14851, Q14862) — the
--             substantive content teaches material that lives in BAR
--             Financial Valuation Methods (EVA, FCFF, extended DuPont)
--             or adjacent topics (Altman/Beneish credit scoring, CVP/DOL).
--
-- Drift categories removed:
--   - Altman Z-score / Beneish M-score credit scoring models (adjacent)
--   - EVA formula and FCFF computation (BAR Financial Valuation territory)
--   - 5-step DuPont decomposition with tax/interest burden ratios
--   - Degree of operating leverage computation (CVP / Prospective territory)
--
-- Net: 187 → 180 questions. Topic remains well above the 1,500-target floor.

BEGIN;

-- ============================================================
-- REWRITES
-- ============================================================

-- Q2955 — FCFF divergence analysis (earnings quality concept)
-- Core concept (accrual earnings vs cash flow divergence, capital allocation
-- interpretation) is in scope for FSA. Reframe to use "free cash flow" as a
-- generic label instead of "FCFF" which carries BAR valuation connotations.
UPDATE questions
SET stem = $EXPL$Pinnacle Technologies reports net income of $8.5 million for the year but negative operating cash flow net of capital expenditures of $(3.2) million. The company recently expanded its manufacturing capacity and launched two new product lines. What does the divergence between positive net income and negative cash flow after capex indicate about the company's capital allocation, and how does this affect an assessment of earnings sustainability?$EXPL$,
    choices = $EXPL$["The divergence indicates accounting fraud because a profitable company cannot legitimately have negative cash flow after capex", "The divergence is meaningless because net income and operating cash flow measure entirely different concepts with no analytical relationship", "The divergence indicates that capital expenditures and working capital investments exceeded cash-generating capacity, raising questions about earnings sustainability", "The divergence indicates the company is paying excessive dividends that drain cash while net income remains positive on the income statement"]$EXPL$::jsonb,
    correct_index = 2,
    explanation = $EXPL$Correct (C): When operating cash flow after capital expenditures is negative while accrual net income is positive, the gap reveals that cash-generating capacity is being absorbed by investment spending. Pinnacle's manufacturing expansion and new product launches explain the large capex outlays. Growth-stage companies routinely report this pattern, but persistent negative cash flow after capex despite positive accrual earnings may require external financing to sustain operations — a classic earnings-quality red flag that ratio analysis and horizontal trend analysis should surface for further investigation.
Wrong (A): Profitable companies frequently have negative cash flow after capex during heavy investment periods; this is a normal growth-stage pattern, not evidence of fraud.
Wrong (B): Net income and operating cash flow are analytically related through the accruals reconciliation; their divergence is one of the primary signals used in earnings-quality analysis.
Wrong (D): Dividends are classified as financing cash flows and are not deducted in computing operating cash flow or cash flow after capex, so they do not explain the divergence.$EXPL$
WHERE id = 2955;

-- Q2959 — ROIC vs cost of capital value creation concept
-- The core concept (returns above cost of capital = value creation) is a
-- legitimate FSA interpretation point. Reframe using "cost of capital" as a
-- generic label instead of WACC, and drop the EVA-framework reference from
-- the explanation.
UPDATE questions
SET stem = $EXPL$A company's return on invested capital (ROIC) is 14% and its cost of capital is 10%. What does this indicate about value creation?$EXPL$,
    choices = $EXPL$["The company is destroying shareholder value", "ROIC and cost of capital are unrelated measures", "The company should increase its cost of capital", "The company is creating economic value because ROIC exceeds the cost of capital"]$EXPL$::jsonb,
    correct_index = 3,
    explanation = $EXPL$Correct (D): When ROIC (14%) exceeds the cost of capital (10%), the company is generating returns above the rate investors require on capital employed. The 4 percentage point spread represents value creation for shareholders. This ROIC-vs-cost-of-capital comparison is a core performance-analysis framework for assessing whether management is allocating capital profitably.
Wrong (A): Value destruction occurs when ROIC falls below the cost of capital. Here ROIC exceeds the cost of capital by 4 percentage points, so value is being created.
Wrong (B): ROIC and cost of capital are directly related measures. Comparing them is the foundation of return-on-capital analysis and capital allocation decisions.
Wrong (C): Increasing the cost of capital would narrow or eliminate the positive spread, reducing value creation rather than improving it.$EXPL$
WHERE id = 2959;

-- Q7973 — Sensitivity analysis definition
-- The core question (what does sensitivity analysis measure) is in scope.
-- Only the Monte Carlo reference in distractor B's explanation trips the
-- ban. Replace with "probabilistic simulation" which conveys the same
-- contrast without the banned term.
UPDATE questions
SET explanation = $EXPL$Correct (A): Under AT-C Section 301, sensitivity analysis measures the impact of changing one input variable at a time on a projected outcome, isolating which assumptions carry the greatest risk to forecast accuracy. This one-at-a-time approach distinguishes it from scenario analysis (which varies multiple inputs together) and from probabilistic approaches that model distributions of outcomes.
Wrong (B): Estimating the probability that results fall within a confidence interval describes probabilistic simulation, not sensitivity analysis. Probabilistic approaches output a distribution of possible outcomes; sensitivity analysis outputs a directional impact.
Wrong (C): Changing all input variables simultaneously describes scenario analysis, which models different states such as best-case, base-case, and worst-case outcomes.
Wrong (D): Comparing prior forecasts to actual results describes forecast accuracy assessment or backtesting, a retrospective rather than prospective technique.$EXPL$
WHERE id = 7973;

-- ============================================================
-- DELETES
-- ============================================================

-- Q2943 — Altman Z-score zone classification (credit scoring model)
DELETE FROM questions WHERE id = 2943;

-- Q2960 — Beneish M-score earnings manipulation threshold
DELETE FROM questions WHERE id = 2960;

-- Q2963 — EVA formula definition (graduate corporate finance)
DELETE FROM questions WHERE id = 2963;

-- Q7838 — FCFF calculation (BAR Financial Valuation territory)
DELETE FROM questions WHERE id = 7838;

-- Q7841 — Degree of operating leverage computation (CVP territory)
DELETE FROM questions WHERE id = 7841;

-- Q14851 — 5-step DuPont interest burden ratio (extended DuPont mechanics)
DELETE FROM questions WHERE id = 14851;

-- Q14862 — 5-step DuPont tax burden ratio (extended DuPont mechanics)
DELETE FROM questions WHERE id = 14862;

COMMIT;
