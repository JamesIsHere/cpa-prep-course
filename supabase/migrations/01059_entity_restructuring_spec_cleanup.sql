-- Spec cleanup for TCP Entity Formation and Restructuring (TCP/II/A/2)
-- Post-audit cleanup after authoring tcp-entity-formation-and-
-- restructuring (29th registered spec, twelfth of Stage 3).
--
-- Census v3 flagged 18/67 questions at 26.9%. Spec authoring
-- whitelisted 10 (the rightful-owner §355/§338/continuity-of-interest
-- content that IS this topic's core). Audit surfaced 8 remaining
-- flags across three drift surfaces:
--
-- REWRITE (1) — legitimate §355 question with banned distractor
--   Q5002  — §355 device test question. Distractor D references
--            §269; rewrite removes the specific section citation
--            while keeping the distinguishing concept.
--
-- DELETE (7) — off-topic content
--   Q13566 — §382 NOL computation (long-term tax-exempt rate × value);
--            pure §382 mechanics belonging to NOLs topic
--   Q13583 — §269 anti-abuse acquisition for NOL; separate anti-abuse
--            topic
--   Q14572 — partnership contribution nonrecognition (pure §721);
--            Partnerships (REG) territory
--   Q14576 — entity comparison (C corp vs partnership liability
--            contribution); Entity Choice and Planning territory
--   Q14583 — partnership interest for services; Partnerships territory
--   Q14585 — partnership formation gain recognition (§721(b));
--            Partnerships territory
--   Q14588 — corporate vs partnership formation control comparison;
--            Entity Choice and Planning territory
--
-- Net: 67 → 60.

BEGIN;

-- ============================================================
-- Q5002 — REWRITE: drop §269 reference in distractor D
-- ============================================================
UPDATE questions
SET choices = $EXPL$["Using a distribution to circumvent the continuity of interest requirement","Using a spin-off principally as a device for distributing E&P as capital gains instead of dividends","Transferring assets between related corporations without recognizing gain","Acquiring a loss corporation solely to use its net operating losses under a separate anti-abuse rule"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (B): Under IRC §355(a)(1)(B), the device test prevents taxpayers from using corporate divisions (spin-offs, split-offs, split-ups) primarily as a mechanism to distribute earnings and profits at capital gains rates rather than as ordinary dividends. The IRS examines objective factors such as subsequent sales of distributed stock, whereas a bona-fide business division satisfies the test.
Wrong (A): The continuity of interest requirement is a separate doctrine under §368 addressing shareholder-level continuity, rather than the device test's purpose under §355.
Wrong (C): §351 and related provisions address nonrecognition transfers between related corporations, whereas the device limitation is specific to divisive §355 transactions.
Wrong (D): A separate anti-abuse rule addresses acquisitions made principally to obtain NOL benefits, whereas the device test under §355 targets a different concern — the use of divisive transactions as capital-gain-dividend substitutes.$EXPL$
WHERE id = 5002;

-- ============================================================
-- DELETES — 7 off-topic
-- ============================================================
DELETE FROM questions WHERE id IN (13566, 13583, 14572, 14576, 14583, 14585, 14588);

COMMIT;
