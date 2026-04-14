-- Delete Q7959 (BAR / Financial Statement Analysis) — multiple regression coefficient
-- significance testing via t-statistics. The question explicitly tests interpretation of
-- t-statistics (X1=8.2, X2=5.4, X3=1.1) on individual coefficients in a multi-variable
-- regression, which is graduate-statistics hypothesis testing rather than CPA-exam
-- forecasting / financial statement analysis.
--
-- Found by the bank-wide quant-jargon scan; one of 8 candidates flagged across all 8,833
-- questions. The other 7 candidates were either on-blueprint (ASC 718 stock comp / ASC 815
-- warrants conceptual) or borderline.
--
-- Validate-migration's Gap 2 will sweep this ID from verified-ids.json pass automatically.

BEGIN;

DELETE FROM questions WHERE id = 7959;

COMMIT;
