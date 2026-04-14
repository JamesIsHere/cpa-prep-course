-- Light edit to Q7835 (BAR / Financial Statement Analysis) explanation. The question's
-- substance — R² = 0.47 means the simple regression model is inadequate for budgeting —
-- is squarely on-blueprint forecasting analysis. The keyed answer (A) is reachable
-- without graduate statistics knowledge.
--
-- The off-blueprint vocabulary appears only in the Wrong (C) rebuttal, which mentions
-- "t-statistic and p-value" as things "must be evaluated" to establish significance. The
-- student doesn't need to know either to recognize choice C is wrong; they just need to
-- know that R² alone doesn't validate the model. Rewriting the rebuttal to make the same
-- point in CPA-exam-appropriate vocabulary.
--
-- Also flagged by the bank-wide quant-jargon scan (1 of 8). Other 7: 1 deleted (Q7959), 5
-- kept as legitimate ASC 718 / ASC 815 conceptual content, 1 borderline kept as-is (Q14268
-- vega reference).

BEGIN;

UPDATE questions SET
  stem = $EXPL$Hartwell Manufacturing uses simple linear regression to predict quarterly maintenance costs (Y) based on machine hours (X). Results show Y = $28,000 + $9.50X with R-squared = 0.47 and a standard error of $15,200. The CFO proposes using this model to budget next quarter's maintenance at 5,000 machine hours. Evaluate this proposal.$EXPL$,
  choices = '["The model is inadequate because R-squared of 0.47 leaves most variation unexplained", "The model is adequate because the $28,000 intercept correctly captures fixed costs", "The model is acceptable because any positive R-squared confirms the model is reliable", "The predicted $75,500 cost is reliable because the slope coefficient is positive"]'::jsonb,
  explanation = $EXPL$Correct (A): Per AT-C 520 analytical procedures, an R-squared of 0.47 means machine hours explain less than half the variation in maintenance costs, with 53% of cost behavior unexplained by the model. A regression with that much residual noise is not a sufficient basis for budgeting; the CFO should add predictors (equipment age, work order volume, parts costs) or use the model only as a directional sanity check rather than a budget input.
Wrong (B): A reasonable-looking intercept approximates fixed costs in the simple cost-behavior model, but it says nothing about whether the regression as a whole explains enough of the variation to be reliable. A model can have a sensible intercept and still be too noisy to budget against.
Wrong (C): A positive R-squared by itself does not validate the model. R-squared of 0.47 means more than half of the variation is unexplained, and that unexplained portion is exactly the budgeting risk the CFO needs to worry about rather than a credential for the model.
Wrong (D): A positive slope coefficient confirms only the direction of the relationship between machine hours and maintenance costs. It does not bound the prediction error, which here is large enough ($15,200 standard error on a $75,500 forecast) to make the point estimate unreliable for budgeting purposes.$EXPL$,
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 7835;

COMMIT;
