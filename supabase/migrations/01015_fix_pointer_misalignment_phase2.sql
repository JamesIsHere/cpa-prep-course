-- Fix 16 questions where correct_index pointed at the wrong choice while the explanation
-- itself argued for a different (correct) choice. These were flagged as "fail" during the
-- 2026-04-11 Phase 2 correctness verification run. In every case below, the stem and the
-- substance of the explanation are sound — only the stored correct_index is wrong.
--
-- Each fix is a pure correct_index UPDATE. Explanation text is left intact; a follow-up
-- cleanup batch will re-align the "Correct (X)" letter labels inside the explanation text
-- so the label matches the new index.
--
-- Evidence for each fix is quoted inline from the stored explanation.

BEGIN;

-- ── AUD ──────────────────────────────────────────────────────────────────

-- Q15814: goodwill impairment audit procedure
--   from=2 "Require full write-down" → to=1 "Evaluate reasonableness of assumptions"
--   Explanation: "the auditor must evaluate the reasonableness of significant assumptions used in the fair value measurement"
UPDATE questions SET correct_index = 1 WHERE id = 15814;

-- Q15837: materiality directionality
--   from=3 "Only misstatements that exceed 5% of net income" → to=2 "Either overstatement or understatement"
--   Explanation: "Both overstatements and understatements, whether from error or fraud, can meet this threshold"
UPDATE questions SET correct_index = 2 WHERE id = 15837;

-- Q12837: observation as control test — limitation
--   from=3 "Controls in the revenue cycle but not other cycles" → to=2 "The point in time at which the observation takes place"
--   Explanation: "Observation provides evidence that a control is being performed at the time of observation"
--   Note: the "Wrong (C)" sentence in this question's explanation literally admits C is "the correct concept" — clearest pointer error in the set.
UPDATE questions SET correct_index = 2 WHERE id = 12837;

-- Q13093: inquiry sufficiency
--   from=2 "Inquiry is the most reliable form of audit evidence" → to=1 "Inquiry may corroborate other evidence but is not sufficient by itself"
--   Explanation: "inquiry alone is generally not sufficient to provide appropriate audit evidence"
UPDATE questions SET correct_index = 1 WHERE id = 13093;

-- Q13869: professional skepticism definition
--   from=3 "Relying exclusively on external third-party confirmations" → to=2 "Maintaining a questioning mind and critically assessing audit evidence"
--   Explanation: "an attitude that includes a questioning mind, being alert to conditions that may indicate possible misstatement, and a critical assessment"
UPDATE questions SET correct_index = 2 WHERE id = 13869;

-- ── FAR ──────────────────────────────────────────────────────────────────

-- Q15148: short-term obligation reclassification on post-BS refinancing
--   from=2 "Yes, but only if the refinancing agreement was completed before December 31" → to=3 "No, unless the entity has both the intent and demonstrated ability to refinance on a long-term basis"
--   Explanation: "A completed refinancing after year-end but before issuance satisfies this" (refutes current=2); ASC 470-10-45-14 = intent + ability (matches to=3)
UPDATE questions SET correct_index = 3 WHERE id = 15148;

-- Q15149: subsequent event evaluation date for nonpublic entity
--   from=3 "The date of the auditor's report" → to=2 "March 20, Year 2"
--   Explanation: "For a non-SEC filer, the relevant date is when the statements are available to be issued. Since Maxton provides them on March 20, that is the evaluation date"
UPDATE questions SET correct_index = 2 WHERE id = 15149;

-- Q15150: post-BS tax law change and deferred tax assets (Type II event)
--   from=0 "Remeasure deferred tax assets at the new rate in the Year 1 financial statements" → to=1 "Disclose the tax rate change and its estimated impact in the notes"
--   Explanation: "The correct treatment is to disclose the impact in Year 1 notes as a Type II event"; ASC 740-10-45-15 + 855 — remeasurement happens in Year 2 (enactment period)
UPDATE questions SET correct_index = 1 WHERE id = 15150;

-- ── BAR ──────────────────────────────────────────────────────────────────

-- Q14936: DuPont analysis — same equity multiplier, same risk
--   from=0 "Company B is riskier... must be 2.0 versus Company A's 2.0" (literally broken: 2.0 vs 2.0 identifies them as equal) → to=2 "Both companies have identical risk profiles"
--   Explanation: "Both have the same financial leverage of 2.0, meaning their capital structures carry equal risk"
--   Note: choice A text is nonsensical and choice C's justification ("since their ROEs are equal") is a weak reason — both should be rewritten in the follow-up polish batch.
UPDATE questions SET correct_index = 2 WHERE id = 14936;

-- Q15051: ERISA funding vs GAAP pension expense
--   from=3 "ERISA funding directly determines the amount of pension expense" → to=1 "ERISA minimum funding is based on tax law and actuarial standards while GAAP expense follows ASC 715"
--   Explanation: "ERISA governs cash contributions; ASC 715 governs financial reporting" — the two are calculated independently
UPDATE questions SET correct_index = 1 WHERE id = 15051;

-- Q15058: OPEB vs pension attribution period
--   from=2 "OPEB benefits use the expected retirement date while pension benefits use the full eligibility date" (literally backwards) → to=1 "OPEB cost is front-loaded because the attribution period ends at the full eligibility date"
--   Explanation: "ASC 715-60-35-6 requires OPEB benefits to be attributed from the employee's date of hire to the full eligibility date... This front-loads OPEB cost recognition"
UPDATE questions SET correct_index = 1 WHERE id = 15058;

-- Q15060: pension actuarial gain vs existing loss in AOCI
--   from=0 "reducing the net actuarial loss in AOCI to a net loss of zero" → to=2 "reducing the net actuarial loss in AOCI from $200,000 to a net gain of $20,000"
--   Explanation: "the net position would be a $20,000 gain (credit), not just reducing to zero"; math: $220K gain − $200K loss = $20K net gain
UPDATE questions SET correct_index = 2 WHERE id = 15060;

-- Q15595: trade-off theory — optimal capital structure condition
--   from=3 "The marginal tax benefit of debt equals zero" → to=1 "Total firm value is maximized and WACC is minimized"
--   Explanation: "the optimal capital structure occurs where the marginal tax shield equals the marginal distress cost... At this point, WACC is minimized and firm value is maximized"
UPDATE questions SET correct_index = 1 WHERE id = 15595;

-- Q15614: bond portfolio immunization against rate changes
--   from=3 "The portfolio is immunized only if rates rise; a rate decrease would create a shortfall" (nonsensical) → to=1 "not immunized... convexity mismatches create residual risk, but the duration matching provides a first-order hedge"
--   Explanation: "Duration matching provides first-order immunization... perfect immunization also requires matching convexity... duration matching provides substantial but not perfect protection"
UPDATE questions SET correct_index = 1 WHERE id = 15614;

-- ── ISC ──────────────────────────────────────────────────────────────────

-- Q15749: automated data quality control for vendor payment overages
--   from=3 "Scheduling quarterly data quality audits" → to=2 "Implementing automated data quality exception reports that flag out-of-range values"
--   Explanation: "automated exception reports that trigger when data values fall outside defined thresholds provide near-real-time detection"
UPDATE questions SET correct_index = 2 WHERE id = 15749;

-- ── TCP ──────────────────────────────────────────────────────────────────

-- Q15794: S corporation family shareholder attribution rule
--   from=2 "Only spouses are counted as one shareholder" → to=1 "Family members within six generations of a common ancestor are counted as one shareholder"
--   Explanation: "members of a family — defined as a common ancestor and all lineal descendants within six generations, plus their spouses — are treated as a single shareholder"
--   Note: "Wrong (B)" sentence in this question's explanation contradicts itself.
UPDATE questions SET correct_index = 1 WHERE id = 15794;

COMMIT;
