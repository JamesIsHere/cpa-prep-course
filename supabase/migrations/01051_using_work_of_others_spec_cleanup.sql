-- Spec cleanup for AUD Using the Work of Others (AUD/II/F)
-- Post-audit cleanup after authoring the aud-using-the-work-of-others
-- spec (20th registered spec, third of Stage 3).
--
-- Spec authoring alone converted 11 of the 18 census hits from false
-- positives into defended scope (all the `component auditor` hits on
-- group audit content). The remaining 7 flags are all about SOC
-- reports — content that IS in-scope for user auditor reliance on
-- service organizations (AU-C 402) but that hit the newly-added
-- bans for AT-C 320 (SOC engagement execution) and "trust services
-- criteria" (SOC 2 territory).
--
-- Triage: all 7 are REWRITES. The core concept-level teaching is
-- in-scope (SOC 1 vs SOC 2 vs SOC 3 distinction from user auditor
-- perspective, subservice organization concept, inclusive vs
-- carve-out method, SOC 1 restricted-use, management's written
-- assertion as part of the SOC report package). Surface drift is
-- the AT-C 320 regulatory citations and the "trust services
-- criteria" term of art, which this spec bans because the service
-- auditor's engagement execution standards are not the user
-- auditor's reliance standards. Rewrites replace the citations
-- with concept-level phrasing and paraphrase "trust services
-- criteria" as "security, availability, and similar operational
-- controls" to preserve the teaching.
--
-- Net: 64 → 64 (no deletes, all rewrites).

BEGIN;

-- Q13346 — SOC 1 vs SOC 2 purpose distinction (user reliance)
-- Strip "trust services criteria" and AT-C 205/320 cites; keep the
-- user-auditor decision framework.
UPDATE questions
SET choices = $EXPL$["To evaluate controls over financial reporting at a service organization", "To evaluate controls relevant to security, availability, processing integrity, confidentiality, or privacy at a service organization", "To provide a general-use report for any external stakeholder", "To replace the need for a user auditor to perform any testing"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (B): Under AU-C 402, a user auditor evaluating which SOC report to request must understand the difference in focus. A SOC 2 report addresses controls relevant to operational criteria (security, availability, processing integrity, confidentiality, and privacy) at the service organization, whereas a SOC 1 report addresses controls over the user entities' financial reporting. For a financial statement audit, SOC 1 is the relevant report; SOC 2 addresses a different purpose.
Wrong (A): Controls over financial reporting are addressed by SOC 1 rather than SOC 2, so this reverses the two report types.
Wrong (C): SOC 2 reports are restricted-use rather than general-use reports; SOC 3 is the general-use alternative.
Wrong (D): No SOC report eliminates the user auditor's need to evaluate controls at the user entity, however a SOC 1 Type 2 report may allow the user auditor to reduce the extent of their own substantive testing.$EXPL$
WHERE id = 13346;

-- Q13358 — Service auditor responsibility in SOC 1 Type 2 (user perspective)
-- Strip AT-C 320.03 citation; keep the concept that the service auditor
-- reports on system description + controls, which the user auditor
-- relies on under AU-C 402.
UPDATE questions
SET explanation = $EXPL$Correct (B): Under AU-C 402, a user auditor relies on the service auditor's SOC 1 report, which expresses an opinion on whether the description of the service organization's system is fairly presented, whether the controls are suitably designed, and (in a Type 2 engagement) whether the controls operated effectively throughout the specified period. Understanding what the service auditor is reporting on is essential for the user auditor to interpret the report rather than misuse it.
Wrong (A): The service auditor reports on the service organization's controls, whereas the user auditor reports on the user entity's financial statements.
Wrong (C): No audit engagement can eliminate all risks; the service auditor provides reasonable assurance about controls rather than absolute assurance.
Wrong (D): The service auditor is engaged by the service organization rather than by the user entity.$EXPL$
WHERE id = 13358;

-- Q13362 — Subservice organization definition (user reliance)
-- Strip AT-C 320.07 citation.
UPDATE questions
SET explanation = $EXPL$Correct (B): Under AU-C 402, a subservice organization is a service organization used by another service organization to perform some of the services provided to user entities that are relevant to those user entities' internal control over financial reporting. The user auditor must understand whether subservice organizations exist because this affects whether the primary SOC 1 report covers all relevant controls or whether additional procedures are needed.
Wrong (A): A subsidiary of the user entity is part of the user entity itself rather than a subservice organization.
Wrong (C): The internal audit function is part of the service organization rather than a separate subservice organization.
Wrong (D): Regulatory bodies oversee compliance rather than performing services on behalf of the service organization.$EXPL$
WHERE id = 13362;

-- Q13370 — Inclusive vs carve-out method (user reliance)
-- Strip AT-C 320.A11 citation. The inclusive vs carve-out distinction
-- directly affects whether the user auditor needs to obtain a separate
-- SOC report for the subservice organization.
UPDATE questions
SET explanation = $EXPL$Correct (B): Under AU-C 402, the inclusive method means the service organization's description of its system and the scope of the SOC 1 engagement include the relevant control objectives and controls of the subservice organization. The service auditor tests both the service organization's and the subservice organization's controls, which means the user auditor can rely on one report to cover both layers. This is significant because the alternative (carve-out method) leaves subservice organization controls outside the SOC 1 report and requires the user auditor to obtain additional evidence.
Wrong (A): Excluding subservice organizations from the scope describes the carve-out method rather than the inclusive method.
Wrong (C): SOC 1 reports cover service organization controls rather than user entity internal controls.
Wrong (D): SOC 1 reports are restricted-use regardless of whether the inclusive or carve-out method is used.$EXPL$
WHERE id = 13370;

-- Q15753 — SOC 1 report restricted-use (user auditor advising client)
-- Strip AT-C 320.53 citation; keep the user-auditor advisory scenario.
UPDATE questions
SET explanation = $EXPL$Correct (B): Under AU-C 402, SOC 1 reports are restricted-use reports intended only for management of the service organization, user entities that use the service, and the user auditors of those user entities. They are not intended for general distribution or for parties who lack sufficient knowledge to interpret the report properly. A user auditor advising a client should redirect the CFO away from sharing the SOC 1 with prospective investors.
Wrong (A): SOC 1 reports are restricted-use rather than general-use reports; SOC 3 is the general-use alternative.
Wrong (C): The reports are also available to user entities and their auditors, rather than being limited solely to service organization management.
Wrong (D): A confidentiality agreement does not expand the intended audience of a restricted-use report, unlike a general-use report which has no such restriction.$EXPL$
WHERE id = 15753;

-- Q15755 — SOC 3 as the general-use alternative
-- Strip "trust services criteria" jargon from stem and explanation;
-- paraphrase to "operational security and availability controls".
-- Also strip AT-C 205 citation.
UPDATE questions
SET stem = $EXPL$What type of SOC report is designed for general use and provides a seal or short-form report on whether a service organization's controls meet criteria for security, availability, and related operational areas?$EXPL$,
    explanation = $EXPL$Correct (D): Under AU-C 402 and the broader SOC reporting framework, a SOC 3 report is a general-use report that provides a short-form opinion on whether controls at a service organization meet established criteria for security, availability, processing integrity, confidentiality, and privacy. Unlike SOC 1 and SOC 2 reports, SOC 3 reports do not contain detailed descriptions of tests and results, and they can be freely distributed to any party. SOC 3 is not useful to a user auditor for a financial statement audit because it covers operational rather than financial-reporting controls.
Wrong (A): SOC 1 Type 1 reports address controls relevant to user entities' financial reporting and are restricted-use, rather than general-use.
Wrong (B): SOC 1 Type 2 reports are also restricted-use and focus on financial reporting controls, whereas SOC 3 is general-use.
Wrong (C): SOC 2 Type 2 reports address operational criteria but are restricted-use with detailed testing results, unlike the general-use SOC 3 format.$EXPL$
WHERE id = 15755;

-- Q15759 — Management's written assertion in SOC 1 engagement
-- Strip AT-C 320.12-.13 citation. The management assertion is part of
-- the SOC 1 package the user auditor relies on under AU-C 402.
UPDATE questions
SET explanation = $EXPL$Correct (C): Under AU-C 402, the user auditor relies on a SOC 1 report that includes management's written assertion. In a SOC 1 engagement, management's assertion addresses whether the description of the service organization's system is fairly presented, whether the controls were suitably designed, and (for Type 2) whether the controls operated effectively throughout the specified period. The user auditor needs to understand the scope of this assertion to evaluate the report's usefulness as audit evidence.
Wrong (A): Management's assertion is about the system description and control design/effectiveness rather than the organization's profitability.
Wrong (B): A SOC 1 engagement is not an audit of the service organization's financial statements; it examines controls relevant to user entities' financial reporting.
Wrong (D): User entity satisfaction is not part of the management assertion in a SOC engagement, however user entity evaluation of service quality is a separate operational concern.$EXPL$
WHERE id = 15759;

COMMIT;
