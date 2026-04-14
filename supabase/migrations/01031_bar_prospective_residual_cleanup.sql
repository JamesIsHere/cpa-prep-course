-- Residual cleanup for BAR "Prospective Analysis and Forecasting" surfaced by
-- the post-01030 audit. Four questions flagged: two deletes and two rewrites.
--
-- Context: commit 79b78d0 added bannedTerms to the three BAR specs for the
-- first time, and the post-batch re-audit against those terms revealed four
-- questions that slipped through:
--
--   Q619   — pre-existing, "confidence interval" in distractor A
--   Q12978 — pre-existing, "p-values" in wrong-answer explanation; ALSO a
--            class-1 key desync (correct_index=1 points to a wrong-content
--            choice while the explanation argues the opposite)
--   Q12990 — pre-existing, "confidence interval" in wrong-answer explanation
--   Q14788 — from batch 32 (01030), "autocorrelation" + Cook's distance,
--            which is graduate-level regression diagnostics
--
-- The three pre-existing residuals are from the 01024 cleanup pass that ran
-- before bannedTerms existed as an enforcement mechanism; 01024 caught them
-- as prose-visible drift but missed the lower-volume terms that only surface
-- via the term-regex scan.
--
-- Q14788 is the single question from the newly-generated batch 32 that the
-- spec-constrained generator produced with out-of-scope content. With this
-- migration, the new-batch drift rate drops from 1/26 (~3.8%) to 0/25 (0%).
-- Going forward, validate-migration's spec-aware check (commit 8963d92)
-- will block this failure mode at write time for any future BAR batch
-- because the bannedTerms are now live on the spec.
--
-- Disposition rationale per question is in the commit message.

BEGIN;

-- ── DELETE 2 questions ──────────────────────────────────────────────

-- Q12978: two problems stacked. (1) The correct_index=1 points to choice
-- "A high R² confirms that ice cream sales cause electricity changes,
-- validating the model" — which is CLEARLY the wrong interpretation, while
-- the explanation ("Correct (B): ... A high R-squared does not establish
-- causation") argues the opposite. Class-1 letter/index desync. (2) The
-- wrong-answer explanation for choice A mentions "p-values" as a statistical
-- significance criterion, which is out of scope. Delete rather than rewrite
-- because the key desync makes rebuilding the question riskier than just
-- deleting it.
DELETE FROM questions WHERE id = 12978;

-- Q14788: tests Cook's distance for regression outlier detection against a
-- 1.0 threshold. Cook's distance is graduate-level regression diagnostics;
-- it's adjacent to the leverage/influence/residual topics that the spec's
-- outOfScope list describes as "multicollinearity diagnostics... residual
-- plots, weighted least squares" territory. The distractor's reference to
-- autocorrelation was the audit's trip point, but the core concept the
-- question tests is itself out of scope. Delete.
DELETE FROM questions WHERE id = 14788;

-- ── REWRITE 2 questions ─────────────────────────────────────────────

-- Q619: tests regression extrapolation limits beyond the observed data
-- range. The core question concept is in-scope ("Simple linear regression
-- for cost-volume relationships at the interpretation level" per the spec)
-- and the correct answer (C) is clean. The only issue is distractor A using
-- "confidence interval" as a wrong-answer red-herring. Replace choice A
-- with an equivalent wrong-answer that doesn't reference confidence
-- intervals. Correct_index stays 2.
UPDATE questions SET
  choices = $EXPL$["The prediction is reliable because an R-squared of 0.88 guarantees 88% accuracy regardless of the input value used", "Extrapolation improves accuracy because the model becomes more precise as the independent variable increases beyond the observed sample range", "R-squared of 0.88 measures in-sample fit only; at 15,000 hours the linear cost relationship may break down due to overtime, capacity, or inefficiency effects", "The model is invalid at any point because an R-squared below 1.00 means the regression equation has no meaningful predictive value"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 270-10 cost estimation principles, R-squared of 0.88 indicates 88% of variation in production costs is explained by machine hours within the observed 2,000-8,000 hour range. At 15,000 hours, nearly double the maximum observed, the cost structure may change nonlinearly. R-squared is an in-sample statistic, not a guarantee of out-of-range accuracy. Wrong (A): R-squared measures historical fit within the observed data, not the accuracy of predictions outside that range. Wrong (B): Extrapolation degrades reliability because the model has no data to validate assumptions beyond 8,000 hours. Wrong (D): An R-squared of 0.88 is strong; it does not need to be 1.00 to have predictive value.$EXPL$
WHERE id = 619;

-- Q12990: tests the "forecast horizon" definition (explicitly in-scope per
-- the spec bullet "Forecast horizon definition under AT-C 305"). The core
-- question is clean. The only issue is wrong-answer explanation for choice
-- C using "confidence interval" as a contrast term. Replace with "projection
-- range" (a non-loaded synonym). Correct_index stays 1.
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under AICPA AT-C Section 301, the forecast horizon refers to the length of the future time period covered by the forecast, such as one quarter, one year, or five years. Longer horizons generally involve greater uncertainty and require broader assumptions about future conditions. Wrong (A): The number of independent variables describes model complexity in regression rather than the time frame of a forecast. Wrong (C): The range between highest and lowest projected values describes a projection range, whereas the forecast horizon refers to the period of time covered. Wrong (D): The minimum sample size for statistical significance is a data requirement, not the projection time period.$EXPL$
WHERE id = 12990;

COMMIT;
