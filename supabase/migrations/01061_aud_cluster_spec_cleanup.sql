-- Spec cleanup for the AUD cluster — Internal Controls, Tests of
-- Controls, Audit Reports, Misstatements and Control Deficiencies
-- (Quality Management cleared 0 flags via spec loosening alone).
-- Post-audit cleanup after authoring specs #36-40 (nineteenth
-- through twenty-third of Stage 3).
--
-- Cluster spec state:
--   - Quality Management: peer review program ban removed (adjacent
--     concept, legitimately referenced in QM questions). 0 flags.
--   - Audit Reports: AS 3101 and component auditor bans removed
--     (CAMs at concept level and reporting presentation for group
--     audits are both in scope). Remaining 2 flags handled below.
--   - Internal Controls, Tests of Controls, Misstatements: cleanup
--     as follows.
--
-- DELETES (11) — off-topic content:
--   Q286, Q287  — Internal Controls: SOC 1 Type 2 user reliance
--                 questions (Using the Work of Others territory)
--   Q1562       — Internal Controls: service organization payroll
--                 evaluation (Using the Work of Others)
--   Q12819      — Tests of Controls: pure attribute sampling
--                 definition (Audit Sampling territory)
--   Q12831      — Tests of Controls: SOC 1 Type 1 vs Type 2 report
--                 distinction (ISC SOC cluster / Using the Work of
--                 Others)
--   Q12841      — Tests of Controls: SOC 1 Type 2 CUEC evaluation
--                 (Using the Work of Others)
--   Q12843      — Tests of Controls: "risk of assessing control
--                 risk too low defined as" — pure Audit Sampling
--                 territory
--   Q332        — Audit Reports: integrated audit material weakness
--                 reporting (AS 2201 / integrated audit depth)
--   Q5051       — Misstatements: integrated audit material weakness
--                 indicators (AS 2201)
--   Q6095       — Misstatements: pure tolerable misstatement
--                 definition in sampling context (Audit Sampling)
--   Q6191       — Misstatements: integrated audit material weakness
--                 severity classification (AS 2201)
--
-- REWRITES (5) — legitimate questions with banned distractors:
--   Q10    — Internal Controls: COSO components. Drop SQMS 2
--            reference from distractor D.
--   Q1277  — Internal Controls: entity-level controls and ITGCs.
--            Drop AS 2201 reference from distractor D.
--   Q327   — Audit Reports: CAM definition. Drop AS 2201 citation
--            from explanation Wrong (C).
--   Q6148  — Misstatements: loan loss reserve management bias.
--            Rewrite distractor A to drop "tolerable misstatement"
--            term while keeping the distinguishing concept.
--   Q6413  — Misstatements: sample projection concept. Rewrite
--            distractors B and D to drop the "tolerable misstatement"
--            and "sampling risk" terms.
--
-- Net: 268 cluster questions → 257.

BEGIN;

-- ============================================================
-- Q10 — REWRITE: drop SQMS 2 reference in distractor D
-- ============================================================
UPDATE questions
SET choices = $EXPL$["Substantive testing","Analytical procedures","Control environment","A firm-level quality management measure separate from the client's internal control"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (C): Under COSO and AU-C 315, the five components of internal control are control environment, risk assessment, control activities, information and communication, and monitoring activities. The control environment sets the tone at the top and is the foundation for all other components, whereas firm-level quality management is a separate concept applicable to the audit firm rather than to the client.
Wrong (A): Substantive testing is an audit procedure performed by the auditor rather than a component of the entity's internal control.
Wrong (B): Analytical procedures are audit techniques used by auditors, rather than part of the COSO internal control framework.
Wrong (D): Firm-level quality management applies to the auditor's own firm rather than to the client's internal control components under COSO.$EXPL$
WHERE id = 10;

-- ============================================================
-- Q1277 — REWRITE: drop AS 2201 from distractor D
-- ============================================================
UPDATE questions
SET choices = $EXPL$["ITGCs are unaffected because they operate independently of entity-level controls","The auditor cannot rely on ITGCs functioning effectively","ITGCs must be tested twice to compensate for the weakness","The auditor should issue an adverse opinion on internal controls as an automatic consequence"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (B): Under AU-C 315, entity-level controls establish the governance framework within which all other controls — including ITGCs — operate. When entity-level controls are weak, the auditor cannot presume ITGCs are functioning effectively because the environment that supports those controls is compromised, whereas a strong entity-level environment supports reliance on ITGCs.
Wrong (A): ITGCs do not operate independently; they depend on the governance environment established by entity-level controls under AU-C 315, rather than standing apart from it.
Wrong (C): There is no requirement to test ITGCs twice; weak entity-level controls mean ITGCs cannot be relied upon regardless of additional testing, rather than being fixable through repeated procedures.
Wrong (D): An adverse opinion on internal controls is a separate integrated-audit reporting conclusion rather than an automatic consequence of weak entity-level controls.$EXPL$
WHERE id = 1277;

-- ============================================================
-- Q327 — REWRITE: drop AS 2201 reference in explanation Wrong (C)
-- ============================================================
UPDATE questions
SET explanation = $EXPL$Correct (B): Under PCAOB AS 3101, a CAM must meet three criteria: communicated or required to be communicated to the audit committee, related to material accounts or disclosures, and involved especially challenging, subjective, or complex auditor judgment.
Wrong (A): A CAM does not change the type of opinion issued — it is additional communication, rather than a basis for modification.
Wrong (C): A material weakness in ICFR is a separate reporting concept under integrated audit standards, whereas a CAM is a reporting matter under the financial statement audit report.
Wrong (D): A disclaimer results from scope limitations, rather than from the identification of critical audit matters.$EXPL$
WHERE id = 327;

-- ============================================================
-- Q6148 — REWRITE: drop tolerable misstatement from distractor A
-- ============================================================
UPDATE questions
SET choices = $EXPL$["The difference exceeds a purely quantitative threshold established for the audit","Management should be required to adjust the financial statements before the audit report is issued","The estimate reflects a possible management bias that could indicate additional judgmental misstatements","The loan loss reserve should be reclassified from an estimate to a contingent liability"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (C): Under AU-C 540, the auditor must evaluate whether differences between management's estimates and the auditor's estimates indicate possible management bias. A $600,000 difference favoring lower reserves may signal intentional understatement, whereas an even-balanced range of reasonable estimates would not raise the same bias concern.
Wrong (A): Comparing the difference to a purely quantitative threshold is only one aspect of the analysis, whereas the primary concern is evaluating whether management bias exists with broader implications for other estimates.
Wrong (B): Requiring adjustment before issuing the report may be premature, whereas the auditor must first determine whether the difference indicates bias or falls within a reasonable range.
Wrong (D): Reclassifying the loan loss reserve as a contingent liability is a separate accounting classification issue, rather than a matter of evaluating management bias in estimation.$EXPL$
WHERE id = 6148;

-- ============================================================
-- Q6413 — REWRITE: drop "tolerable misstatement" and "sampling risk"
-- terms from distractors B and D
-- ============================================================
UPDATE questions
SET choices = $EXPL$["The projected misstatement, which estimates the likely error in the untested population based on the sample results","A preset maximum acceptable error established before testing begins, rather than calculated from sample results","The clearly trivial threshold, which determines if the errors need to be accumulated","A preset audit-level buffer established during planning, rather than derived from sample results"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (A): Under AU-C 450, the auditor must project the misstatement found in a sample to the entire population. The $12,000 known misstatement found in 40 of 1,600 invoices must be extrapolated to estimate the likely total misstatement in the untested portion, whereas the known amount alone understates the population effect.
Wrong (B): The preset maximum acceptable error is established before testing begins as an allocation from materiality, rather than calculated from sample results — it serves a different purpose than projected misstatement.
Wrong (C): The clearly trivial threshold determines whether individual misstatements need to be accumulated, rather than how sample errors should be projected to the population.
Wrong (D): The preset audit-level buffer is determined during planning to reduce the risk of aggregate undetected error, rather than being derived from sample results like the projected misstatement.$EXPL$
WHERE id = 6413;

-- ============================================================
-- DELETES — 11 off-topic
-- ============================================================
DELETE FROM questions WHERE id IN (286, 287, 1562, 12819, 12831, 12841, 12843, 332, 5051, 6095, 6191);

COMMIT;
