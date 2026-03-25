-- Migration: Question generation — AUD batch 94 (18 questions)
-- Date: 2026-03-25
-- Topic: Modifications to the Auditor Report
-- Difficulty: 5E / 9M / 4H
-- Bloom's: L1:5 / L2:5 / L3:5 / L4:3

BEGIN;

INSERT INTO questions (section_id, topic, stem, choices, correct_index, explanation, difficulty, cognitive_level)
VALUES

-- Q1: medium / L2 — Opinion-first format ordering
(1, 'Modifications to the Auditor Report', $EXPL$Thornton & Associates is drafting an audit report for Redwood Industries under AICPA standards. The engagement partner asks the staff to arrange the report sections. Which section should appear first in the auditor's report?$EXPL$, $EXPL$["Opinion section", "Basis for Opinion section", "Auditor's Responsibilities section", "Responsibilities of Management section"]$EXPL$::jsonb, 0, $EXPL$Correct (A): AU-C 700.21-.23. Under the opinion-first format adopted by the AICPA, the opinion section appears before all other sections, including the basis for opinion. This format was adopted to make reports more useful to readers by leading with the conclusion.
Wrong (B): The basis for opinion follows the opinion section; it does not come first.
Wrong (C): The auditor's responsibilities section appears after both the opinion and basis for opinion sections.
Wrong (D): Management's responsibilities appear after the opinion and basis for opinion but before auditor's responsibilities.$EXPL$, 'medium', 2),

-- Q2: medium / L3 — Going concern inadequate disclosure leads to modified opinion
(1, 'Modifications to the Auditor Report', $EXPL$Hillcrest Manufacturing has substantial doubt about its ability to continue as a going concern. Management refuses to include any going concern disclosures in the financial statements. The auditor determines the omitted disclosures are material but not pervasive. What opinion should the auditor issue?$EXPL$, $EXPL$["Unmodified opinion with an emphasis-of-matter paragraph", "Qualified opinion", "Adverse opinion", "Disclaimer of opinion"]$EXPL$::jsonb, 1, $EXPL$Correct (B): AU-C 570.25-.26. When going concern disclosure is inadequate, an emphasis-of-matter paragraph is insufficient because there is nothing properly disclosed to reference. The omission is a departure from the framework, requiring a qualified opinion (material but not pervasive) or adverse opinion (material and pervasive).
Wrong (A): An EOM paragraph is only appropriate when the going concern uncertainty is adequately disclosed in the financial statements.
Wrong (C): An adverse opinion would require the effect to be both material and pervasive.
Wrong (D): A disclaimer applies to scope limitations, not framework departures.$EXPL$, 'medium', 3),

-- Q3: hard / L4 — Updated opinion when prior-period modification is resolved
(1, 'Modifications to the Auditor Report', $EXPL$In the prior year, Oakridge Corp received a qualified opinion because it failed to disclose a material lease obligation. In the current year, management corrected the disclosures. When reporting on the comparative financial statements, the auditor updates the prior-year opinion to unmodified. Which additional reporting element is most appropriate?$EXPL$, $EXPL$["A basis for qualified opinion paragraph for the current year", "A disclaimer paragraph explaining the prior limitation", "An other-matter paragraph explaining the reason for the updated opinion", "An emphasis-of-matter paragraph highlighting the prior-year correction"]$EXPL$::jsonb, 2, $EXPL$Correct (C): AU-C 700.56-.57. When an auditor issues an updated (changed) opinion on prior-period financial statements, the report should include an other-matter paragraph explaining the date and type of the previous opinion, the circumstances that led to it, and the reason for the update.
Wrong (A): Since the current year has no qualification, no basis for qualified opinion paragraph is needed for the current period.
Wrong (B): A disclaimer is used when the auditor cannot obtain sufficient evidence, not to explain resolved prior qualifications.
Wrong (D): An EOM paragraph references matters disclosed in the financial statements, not changes in the auditor's opinion.$EXPL$, 'hard', 4),

-- Q4: easy / L1 — Auditor report title requirement
(1, 'Modifications to the Auditor Report', $EXPL$What word must be included in the title of a standard audit report under AICPA standards?$EXPL$, $EXPL$["Certified", "Registered", "Qualified", "Independent"]$EXPL$::jsonb, 3, $EXPL$Correct (D): AU-C 700.23. The title of the auditor's report must include the word "independent" (e.g., "Independent Auditor's Report") to convey that the auditor has met all relevant ethical independence requirements.
Wrong (A): "Certified" is not a required element of the report title under AU-C 700.
Wrong (B): "Registered" is not required in the audit report title; it may appear in PCAOB contexts but is not a GAAS title requirement.
Wrong (C): "Qualified" describes a type of opinion, not a required title element.$EXPL$, 'easy', 1),

-- Q5: hard / L4 — Multiple departures combined pervasiveness evaluation
(1, 'Modifications to the Auditor Report', $EXPL$During the audit of Cascade Enterprises, the auditor identifies three separate material misstatements: understated depreciation affecting fixed assets by $1.2 million, failure to accrue a $900,000 warranty liability, and improper revenue recognition of $750,000. Individually, each misstatement is material but not pervasive. Taken together, the misstatements affect assets, liabilities, revenue, and expenses. What is the most appropriate opinion?$EXPL$, $EXPL$["Adverse opinion", "Qualified opinion with three basis paragraphs", "Disclaimer of opinion", "Unmodified opinion with three emphasis-of-matter paragraphs"]$EXPL$::jsonb, 0, $EXPL$Correct (A): AU-C 705.08-.10. When evaluating pervasiveness, the auditor considers the aggregate effect of misstatements. Although each misstatement individually is not pervasive, their combined effect on multiple financial statement elements (assets, liabilities, revenue, expenses) makes the aggregate impact material and pervasive, warranting an adverse opinion.
Wrong (B): A qualified opinion is insufficient because the combined effect of the misstatements is pervasive across the financial statements.
Wrong (C): A disclaimer applies to scope limitations, not to identified misstatements that management refuses to correct.
Wrong (D): EOM paragraphs do not address misstatements; they highlight properly disclosed matters.$EXPL$, 'hard', 4),

-- Q6: medium / L3 — EOM explicit statement that opinion is not modified
(1, 'Modifications to the Auditor Report', $EXPL$Baker & Klein CPAs includes an emphasis-of-matter paragraph in the audit report for Sycamore Health Group regarding a significant subsequent event. A junior associate drafts the paragraph but omits one required element. Under AU-C 706, which statement must be included in every emphasis-of-matter paragraph?$EXPL$, $EXPL$["A description of the auditor's procedures performed on the matter", "A statement that the auditor's opinion is not modified with respect to this matter", "A quantification of the financial impact of the matter", "A recommendation for how the entity should address the matter"]$EXPL$::jsonb, 1, $EXPL$Correct (B): AU-C 706.07-.08. Every emphasis-of-matter paragraph must explicitly state that the auditor's opinion is not modified with respect to the matter emphasized. This prevents readers from misinterpreting the paragraph as a qualification.
Wrong (A): The EOM paragraph references where the matter is disclosed; it does not describe the auditor's procedures.
Wrong (C): Quantification of financial impact is not a required element of an EOM paragraph.
Wrong (D): The auditor does not include recommendations in the audit report.$EXPL$, 'medium', 3),

-- Q7: medium / L2 — Comparative FS with different opinions for different periods
(1, 'Modifications to the Auditor Report', $EXPL$Weaver & Associates audits both years of comparative financial statements for Pinnacle Corp. The current year statements are fairly presented, but the prior year contains a material (but not pervasive) inventory overstatement that management will not correct. What opinion combination should the auditor's report contain?$EXPL$, $EXPL$["Qualified opinion on both years", "Adverse opinion on the prior year and unmodified on the current year", "Unmodified opinion on the current year and qualified opinion on the prior year", "Disclaimer on the prior year and unmodified on the current year"]$EXPL$::jsonb, 2, $EXPL$Correct (C): AU-C 700.53-.54. When comparative financial statements are presented, the auditor may express different opinions on different periods within the same report. A material but not pervasive misstatement in the prior year warrants a qualified opinion for that year, while the current year receives an unmodified opinion.
Wrong (A): The current year is fairly presented and does not warrant qualification.
Wrong (B): An adverse opinion requires the misstatement to be both material and pervasive; here it is only material but not pervasive.
Wrong (D): A disclaimer applies to scope limitations, not to identified misstatements.$EXPL$, 'medium', 2),

-- Q8: easy / L1 — Key language in adverse opinion
(1, 'Modifications to the Auditor Report', $EXPL$When issuing an adverse opinion, which phrase does the auditor use in the opinion paragraph?$EXPL$, $EXPL$["The financial statements present fairly, except for", "The auditor does not express an opinion", "The financial statements are not presented fairly", "The financial statements present fairly in all material respects"]$EXPL$::jsonb, 2, $EXPL$Correct (C): AU-C 705.23. An adverse opinion states that the financial statements "are not presented fairly" in accordance with the applicable financial reporting framework. This is the strongest negative conclusion an auditor can express.
Wrong (A): "Except for" language is used in a qualified opinion, not an adverse opinion.
Wrong (B): "Does not express an opinion" is the language of a disclaimer, not an adverse opinion.
Wrong (D): "Present fairly in all material respects" is the unmodified opinion language.$EXPL$, 'easy', 1),

-- Q9: medium / L2 — Basis section naming convention for qualified opinion
(1, 'Modifications to the Auditor Report', $EXPL$Green Valley Foods receives a qualified opinion from its auditors due to an unjustified change in depreciation method. In the audit report, the section explaining the reason for the qualification should be titled:$EXPL$, $EXPL$["Basis for Qualified Opinion", "Basis for Opinion", "Qualified Opinion Explanation", "Matters Giving Rise to Qualification"]$EXPL$::jsonb, 0, $EXPL$Correct (A): AU-C 705.17-.20. When a qualified opinion is issued, the report must include a section titled "Basis for Qualified Opinion" that describes the matter giving rise to the modification. Each type of modified opinion has a correspondingly named basis section.
Wrong (B): "Basis for Opinion" is the heading used in an unmodified opinion report, not a qualified opinion report.
Wrong (C): "Qualified Opinion Explanation" is not a recognized heading under auditing standards.
Wrong (D): "Matters Giving Rise to Qualification" is not the standard heading prescribed by AU-C 705.$EXPL$, 'medium', 2),

-- Q10: easy / L1 — Going concern evaluation period
(1, 'Modifications to the Auditor Report', $EXPL$Under GAAS, the auditor's going concern evaluation covers what time period?$EXPL$, $EXPL$["Six months from the balance sheet date", "One year from the date the financial statements are issued or available to be issued", "Two years from the audit report date", "The same period as the financial statements under audit"]$EXPL$::jsonb, 1, $EXPL$Correct (B): AU-C 570.13. The auditor evaluates whether substantial doubt exists about the entity's ability to continue as a going concern for a reasonable period of time, defined as one year from the date the financial statements are issued (or available to be issued).
Wrong (A): Six months is too short; the standard requires a one-year evaluation period.
Wrong (C): Two years exceeds the required evaluation period under AU-C 570.
Wrong (D): The evaluation period is measured from issuance, not limited to the period covered by the financial statements.$EXPL$, 'easy', 1),

-- Q11: medium / L3 — Disclaimer removes reasonable assurance language
(1, 'Modifications to the Auditor Report', $EXPL$Park & Rivera CPAs is preparing a disclaimer of opinion for Zenith Holdings due to pervasive scope limitations. The engagement manager reviews the draft report. Which modification to the standard Auditor's Responsibilities section is required when issuing a disclaimer?$EXPL$, $EXPL$["Add a paragraph describing alternative procedures attempted", "Include a statement that the firm remains independent", "Remove the statement about obtaining reasonable assurance", "Replace the responsibilities section with a reference to management's responsibilities"]$EXPL$::jsonb, 2, $EXPL$Correct (C): AU-C 705.29-.30. When a disclaimer of opinion is issued, the Auditor's Responsibilities section must be modified to remove language about obtaining reasonable assurance and about whether the financial statements are free from material misstatement, since the auditor was unable to complete the audit.
Wrong (A): Describing alternative procedures is not a required modification to the responsibilities section.
Wrong (B): Independence is addressed in the Basis for Opinion section, not as a special modification for disclaimers.
Wrong (D): The responsibilities section is modified, not replaced entirely with a reference to management's section.$EXPL$, 'medium', 3),

-- Q12: medium / L2 — Other-matter paragraph for predecessor auditor
(1, 'Modifications to the Auditor Report', $EXPL$Collins & Hart CPAs has been engaged to audit Pacific Rim Corp for the first time. The prior-year comparative statements were audited by a predecessor firm that has since dissolved. Collins & Hart decides not to reissue the predecessor's report. How should the successor auditor address the prior-period statements?$EXPL$, $EXPL$["Issue a disclaimer on the prior period", "Re-perform the predecessor's audit procedures", "Omit any reference to the prior period", "Include an other-matter paragraph referencing the predecessor auditor's report"]$EXPL$::jsonb, 3, $EXPL$Correct (D): AU-C 700.55-.57. When comparative statements include a prior period audited by a predecessor auditor whose report is not reissued, the successor auditor should include an other-matter paragraph stating that the prior period was audited by another auditor, the type of opinion expressed, and the date of that report.
Wrong (A): A disclaimer is not appropriate merely because a predecessor audited the prior period.
Wrong (B): The successor is not required to re-perform the predecessor's procedures to reference their report.
Wrong (C): Omitting reference would leave users without information about the audit status of the comparative prior-period statements.$EXPL$, 'medium', 2),

-- Q13: easy / L1 — PCAOB CAMs not required for non-issuers
(1, 'Modifications to the Auditor Report', $EXPL$Critical Audit Matters (CAMs) are required in auditor reports issued under which set of standards?$EXPL$, $EXPL$["PCAOB standards for public company audits", "AICPA GAAS for all audits", "Both PCAOB and GAAS equally", "Neither PCAOB nor GAAS"]$EXPL$::jsonb, 0, $EXPL$Correct (A): AS 3101.11-.17 (PCAOB). Critical Audit Matters are required only in audit reports for public companies (issuers) conducted under PCAOB standards. Non-issuer audits under AICPA GAAS do not require CAMs, though key audit matters may be voluntarily communicated.
Wrong (B): AICPA GAAS does not require CAMs for non-issuer audits.
Wrong (C): The requirement applies only to PCAOB audits of issuers, not equally to both.
Wrong (D): PCAOB standards do require CAMs, so "neither" is incorrect.$EXPL$, 'easy', 1),

-- Q14: easy / L1 — Report date definition
(1, 'Modifications to the Auditor Report', $EXPL$The date of the auditor's report should be no earlier than the date the auditor:$EXPL$, $EXPL$["Began fieldwork", "Obtained sufficient appropriate audit evidence", "Delivered the report to management", "Completed the engagement quality review"]$EXPL$::jsonb, 1, $EXPL$Correct (B): AU-C 700.41-.42. The auditor's report date should be no earlier than the date on which the auditor has obtained sufficient appropriate audit evidence to support the opinion. This includes evidence that the financial statements have been prepared and management has accepted responsibility.
Wrong (A): The start of fieldwork is too early; the report date reflects completion of evidence gathering.
Wrong (C): Delivery of the report occurs after the report date, not before.
Wrong (D): While engagement quality review may be required, the standard ties the report date to obtaining sufficient appropriate evidence.$EXPL$, 'easy', 1),

-- Q15: hard / L3 — Quantification in basis for adverse opinion
(1, 'Modifications to the Auditor Report', $EXPL$Meridian Technologies receives an adverse opinion because it failed to consolidate a significant subsidiary, distorting virtually every line item. The auditor is preparing the Basis for Adverse Opinion section. Under AU-C 705, when is the auditor required to quantify the effects of the misstatement in the basis paragraph?$EXPL$, $EXPL$["Always, regardless of circumstances", "Only when the misstatement is isolated to one financial statement line item", "When practicable, describing and quantifying the financial effects of the misstatement", "Never, because quantification could imply an alternative opinion"]$EXPL$::jsonb, 2, $EXPL$Correct (C): AU-C 705.20-.22. When issuing a qualified or adverse opinion due to material misstatement, the basis section should describe and quantify the financial effects of the misstatement when practicable. If quantification is not practicable, the auditor should so state.
Wrong (A): Quantification is required when practicable, not in all circumstances; sometimes the pervasive nature makes quantification impracticable.
Wrong (B): The requirement is not limited to single line items; it applies to any misstatement when effects can be reasonably determined.
Wrong (D): Auditing standards explicitly require quantification when practicable; there is no prohibition.$EXPL$, 'hard', 3),

-- Q16: medium / L2 — Other-matter paragraph for restricted-use reports
(1, 'Modifications to the Auditor Report', $EXPL$Davis & Associates issues a special-purpose audit report intended only for the entity and its primary lender. To communicate this restriction, the auditor should include:$EXPL$, $EXPL$["An emphasis-of-matter paragraph stating the report is restricted", "A disclaimer of opinion", "A qualified opinion referencing the limited distribution", "An other-matter paragraph restricting the distribution or use of the report"]$EXPL$::jsonb, 3, $EXPL$Correct (D): AU-C 905.06-.08. When an audit report is intended for specified parties, the auditor includes an other-matter paragraph that restricts the distribution or use of the report. This alerts readers that the report was not intended for general distribution.
Wrong (A): An emphasis-of-matter paragraph references matters disclosed in the financial statements, not report distribution restrictions.
Wrong (B): A disclaimer is used for scope limitations, not to restrict distribution.
Wrong (C): Report distribution restrictions do not warrant a qualified opinion.$EXPL$, 'medium', 2),

-- Q17: hard / L4 — Group audit component auditor reference in modified report
(1, 'Modifications to the Auditor Report', $EXPL$Sterling Group's auditor serves as group engagement partner. A component auditor audited a subsidiary representing 35% of consolidated revenue. The group auditor decides to make reference to the component auditor. Separately, the group auditor identifies a material but not pervasive inventory misstatement in the parent company. How should the group auditor's report address both matters?$EXPL$, $EXPL$["Issue a qualified opinion referencing the component auditor in the basis for qualified opinion and dividing responsibility in the opinion paragraph", "Issue two separate reports: one qualified for the parent and one unmodified referencing the component auditor", "Issue an adverse opinion because the combination of reference and qualification is pervasive", "Issue an unmodified opinion with an emphasis-of-matter paragraph covering both matters"]$EXPL$::jsonb, 0, $EXPL$Correct (A): AU-C 600.24 and AU-C 705.17. The group auditor may both make reference to a component auditor and issue a modified opinion. The opinion paragraph divides responsibility by noting the component auditor's portion, and the basis for qualified opinion paragraph describes the parent's inventory misstatement. Both elements coexist in one report.
Wrong (B): The group auditor issues a single report on the group financial statements, not separate reports for parent and subsidiary.
Wrong (C): Making reference to a component auditor does not add pervasiveness to an existing qualification.
Wrong (D): An identified material misstatement requires a modified opinion, not merely an EOM paragraph.$EXPL$, 'hard', 4),

-- Q18: medium / L3 — EOM placement requirement
(1, 'Modifications to the Auditor Report', $EXPL$Langford Corp adopts a new revenue recognition standard, which is properly accounted for and disclosed. The auditor decides to include an emphasis-of-matter paragraph. According to AU-C 706, where in the report should this paragraph be placed, and what heading should it use?$EXPL$, $EXPL$["Before the opinion section, titled 'Important Accounting Change'", "Immediately after the opinion section, titled 'Emphasis of Matter'", "Within the basis for opinion section, without a separate heading", "At the end of the report, titled 'Supplemental Information'"]$EXPL$::jsonb, 1, $EXPL$Correct (B): AU-C 706.07-.09. An emphasis-of-matter paragraph must appear immediately after the opinion section, use the heading "Emphasis of Matter" (or similar appropriate heading), and reference where the matter is disclosed in the financial statements.
Wrong (A): The EOM paragraph follows the opinion section; it does not precede it.
Wrong (C): The EOM paragraph is a separate, distinctly headed section, not embedded within the basis for opinion.
Wrong (D): Placement at the end of the report does not comply with AU-C 706; the paragraph must follow the opinion section.$EXPL$, 'medium', 3)
;

COMMIT;
