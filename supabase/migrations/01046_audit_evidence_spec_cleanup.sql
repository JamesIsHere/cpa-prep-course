-- Spec cleanup for AUD Audit Evidence (AUD/III/B)
-- Post-audit cleanup for 2 banned-term hits flagged by audit-topic-content.ts
-- after the AUD Audit Evidence spec was authored. Both are rewrites — core
-- concepts are in scope; only the sampling-theory label "tolerable
-- misstatement" trips the ban.
--
-- Rewrites: 2 (Q1620, Q1632) — replace "tolerable misstatement" with a
--           non-sampling materiality reference that preserves the teaching
--           point about investigating differences regardless of threshold.
-- Deletes:  0

BEGIN;

-- Q1620 — Confirmation exception investigation
-- Core point is that any confirmation discrepancy must be investigated,
-- not ignored. Replace "tolerable misstatement" (sampling theory) with
-- "account materiality threshold" in the distractor and explanation.
UPDATE questions
SET choices = $EXPL$["Automatically record an adjusting entry for the difference", "Investigate the nature and cause of the difference", "Ignore the difference if it is below the account materiality threshold", "Send a negative confirmation to verify the discrepancy"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (B): Under AU-C 505.A23, when a confirmation response disagrees with the client's records, the auditor should investigate the nature and cause of the discrepancy. Differences may result from timing (payments in transit), client errors, or actual misstatements, and the auditor must determine the cause before deciding on further action.
Wrong (A): Automatically recording an adjustment is premature — the difference may be explained by timing items such as payments or shipments in transit.
Wrong (C): Ignoring a confirmation difference without investigation is inappropriate even if the individual amount seems immaterial, because the difference could indicate a systematic error affecting other balances.
Wrong (D): Sending a negative confirmation after receiving a positive confirmation response with a discrepancy is not a recognized follow-up procedure under AU-C 505.$EXPL$
WHERE id = 1620;

-- Q1632 — Accounting estimate difference investigation
-- Core point (auditor must accumulate and investigate differences even
-- when below a materiality threshold) is in scope. Replace "tolerable
-- misstatement" with "account-level materiality threshold" which conveys
-- the same contrast without invoking sampling theory.
UPDATE questions
SET stem = $EXPL$In evaluating audit evidence about an accounting estimate, the auditor develops an independent expectation that differs from management's estimate by $400,000. The account-level materiality threshold is $500,000. What should the auditor do?$EXPL$,
    choices = $EXPL$["Investigate the cause of the difference and accumulate it as a misstatement for evaluation purposes", "Accept management's estimate because the difference is below the account-level materiality threshold", "Require management to adjust the estimate to match the auditor's expectation", "Issue a qualified opinion because the difference is material"]$EXPL$::jsonb,
    correct_index = 0,
    explanation = $EXPL$Correct (A): Under AU-C 540.12, when the auditor's independent expectation differs from management's estimate, the auditor must investigate the cause of the difference regardless of whether it falls below any account-level materiality threshold. The $400,000 difference must be accumulated as a misstatement for evaluation with other identified misstatements under AU-C 450.05 — individually-below-threshold misstatements can aggregate to a material amount.
Wrong (B): Accepting the estimate solely because the individual difference is below the account-level materiality threshold ignores the requirement to accumulate misstatements that may collectively exceed overall materiality.
Wrong (C): The auditor cannot require management to match the auditor's expectation; the auditor evaluates the reasonableness of management's estimate and may develop a range or a point estimate for comparison.
Wrong (D): Issuing a qualified opinion is premature before investigating the cause of the difference and evaluating it in aggregate with other misstatements.$EXPL$
WHERE id = 1632;

COMMIT;
