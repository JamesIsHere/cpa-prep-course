-- Spec cleanup for AUD Audit Planning (AUD/II/A)
-- Post-audit cleanup after authoring aud-audit-planning (26th
-- registered spec, ninth of Stage 3).
--
-- Census v2 flagged 9/61 questions at 15% on `component auditor` and
-- `tolerable misstatement`. Spec authoring whitelisted NONE of those
-- (not a rightful-owner pattern — both concepts now have dedicated
-- owners: Using the Work of Others owns AU-C 600 group audit; Audit
-- Sampling owns AU-C 530 sampling variables; Materiality owns AU-C
-- 320 allocation). The full audit exposed 12 flags across the drift
-- surfaces: group audit concepts (8 questions), service organization
-- SOC reliance (2 questions), fraud brainstorming (1 question), and
-- tolerable misstatement at account level (1 question).
--
-- Triage:
--
-- REWRITES (4) — legitimate planning questions with banned terms used
-- only as examples or distractors
--   Q6    — overall audit strategy "least likely consider" question;
--           stem example includes "component auditors" which rewrite
--           replaces with a generic planning factor
--   Q269  — planning consideration of a service organization; rewrite
--           removes AU-C 402 depth and SOC report references
--   Q1455 — overall audit strategy for multi-location entity; rewrite
--           removes "component auditors" language while keeping the
--           engagement-characteristics concept
--   Q1456 — service organization payroll consideration; rewrite drops
--           SOC 1 Type 2 distractor citation
--
-- DELETES (8) — pure Using the Work of Others, Materiality, or Risk
-- Assessment (fraud) content that drifted into Audit Planning
--   Q268  — group engagement partner evaluation of component auditor
--   Q1447 — tolerable misstatement at account level (Materiality)
--   Q1451 — group engagement partner responsibilities over group audit
--   Q1460 — component materiality under AU-C 600.24
--   Q1467 — AU-C 240 fraud brainstorming session (Risk Assessment)
--   Q1468 — evaluating component auditor competence
--   Q1475 — component auditor misstatement communication under AU-C 600.41
--   Q1483 — multi-jurisdiction group audit challenges
--
-- Net: 61 → 53.

BEGIN;

-- ============================================================
-- Q6 — REWRITE: drop "component auditors" example from stem
-- ============================================================
UPDATE questions
SET stem = $EXPL$Hartwell & Associates is developing the overall audit strategy for its new client, a mid-size technology distributor. The engagement partner considers staffing needs, interim testing dates, coordination with other engagements, and various other factors. Which of the following would the auditor least likely consider when developing the overall audit strategy?$EXPL$,
    explanation = $EXPL$Correct (A): Under AU-C 300.08, the overall audit strategy considers engagement characteristics, reporting objectives, and the nature and timing of resources. Expected fee revenue is a firm business matter rather than a factor in developing the audit strategy under GAAS.
Wrong (B): The entity's industry and regulatory environment directly affects the audit approach, whereas fee revenue has no bearing on procedures.
Wrong (C): The entity's accounting policies are relevant to planning because they affect assertion-level risk assessment, unlike internal firm economics.
Wrong (D): Preliminary engagement activities inform the audit strategy under AU-C 300.06, rather than being excluded as an administrative concern.$EXPL$
WHERE id = 6;

-- ============================================================
-- Q269 — REWRITE: service organization planning consideration
-- Drop AU-C 402 depth and the SOC report reference
-- ============================================================
UPDATE questions
SET explanation = $EXPL$Correct (B): Under AU-C 300 planning principles, when a client uses a third party for significant transaction processing, the auditor must understand the nature and significance of those services and how they affect the client's internal controls. This assessment informs the planned risk assessment procedures and further audit procedures, whereas ignoring the third party would leave the auditor without adequate understanding of a significant transaction cycle.
Wrong (A): Ignoring the third-party processor would leave the auditor without adequate understanding of controls, whereas AU-C 300 requires consideration of all significant processes.
Wrong (C): The auditor cannot require the client to change its business operations; rather, the auditor must work within the client's existing structure.
Wrong (D): While the auditor may need procedures affecting the third party, direct contact is not the planning-stage first step, whereas understanding the significance of services is.$EXPL$
WHERE id = 269;

-- ============================================================
-- Q1455 — REWRITE: strategy for multi-location entity
-- Drop "component auditors in foreign locations" from correct answer
-- ============================================================
UPDATE questions
SET choices = $EXPL$["The characteristics of the engagement, including the geographic scope and specialized resources needed for foreign locations","Only the domestic operations since foreign operations are immaterial by definition","Having the client's internal audit department audit the foreign operations","Deferring the foreign operations audit to a subsequent year"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (A): Under AU-C 300.07, the overall audit strategy requires consideration of the engagement's characteristics, including geographic locations, industry-specific reporting, and the resources needed to perform the audit. A multi-country engagement affects the strategy because planning resources and timing must address each location, whereas ignoring foreign operations would leave significant risk areas unaddressed.
Wrong (B): Foreign operations are not immaterial by definition, whereas each operation must be assessed regardless of location to identify risks of material misstatement.
Wrong (C): The client's internal audit department cannot substitute for the external auditor's responsibilities for foreign operations, unlike external procedures that provide independent evidence.
Wrong (D): Deferring foreign operations to a subsequent year would leave significant audit risks unaddressed and violate AU-C 300 planning requirements, rather than being an acceptable simplification.$EXPL$
WHERE id = 1455;

-- ============================================================
-- Q1456 — REWRITE: service organization, drop SOC 1 Type 2 distractor
-- ============================================================
UPDATE questions
SET choices = $EXPL$["Automatically request a detailed controls report from the service organization","Require the entity to bring payroll processing in-house before accepting the engagement","Obtain an understanding of how the service organization's services affect the entity's internal control relevant to the audit","Ignore the service organization because payroll is not a significant account"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (C): Under AU-C 300 planning principles, the auditor must obtain an understanding of how third-party services affect the entity's internal control relevant to the audit. This understanding helps identify and assess risks of material misstatement arising from outsourced processes, whereas the specific form of additional procedures is determined after that understanding is obtained.
Wrong (A): A detailed controls report may be useful in a later procedure design stage, but it is not automatically required at planning; rather, the auditor first determines what understanding is needed.
Wrong (B): There is no requirement for the entity to bring outsourced functions in-house, unlike the auditor's obligation to address the risk through appropriate procedures.
Wrong (D): Payroll for 400 employees is likely significant to the financial statements and cannot be ignored during risk assessment, whereas a truly immaterial outsourced function might warrant less planning attention.$EXPL$
WHERE id = 1456;

-- ============================================================
-- DELETES — 8 off-topic (group audit, materiality, fraud depth)
-- ============================================================
DELETE FROM questions WHERE id IN (268, 1447, 1451, 1460, 1467, 1468, 1475, 1483);

COMMIT;
