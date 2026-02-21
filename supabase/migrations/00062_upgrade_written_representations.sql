-- Migration: Upgrade 7 moderate-scoring Written Representations questions
-- Fixes: short-stem, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q5131 [score:6] short-stem(7w) → expand with scenario + cite AU-C 580
UPDATE questions SET
  stem = 'The audit of Clearwater Holdings for the year ended December 31, 2025 is nearing completion. The engagement partner at Whitfield & Associates finalizes the auditor''s report on March 5, 2026. The controller asks what date should appear on the management representation letter. Under AU-C 580, the management representation letter should be dated:',
  explanation = 'Under AU-C 580.15, the management representation letter should be dated as of the date of the auditor''s report. This ensures that management''s representations cover the entire period through the report date, including any subsequent events during fieldwork. Choice D is incorrect because using the fiscal year-end date would leave a gap between year-end and the report date during which management makes no representations about subsequent events or completeness of information provided.'
WHERE id = 5131;

-- Q5132 [score:5] short-stem(8w) + length-cuing(12/111) → expand stem, balance choices
UPDATE questions SET
  stem = 'Hartwell Manufacturing''s general counsel asks the engagement team at Prescott & Associates who should sign the management representation letter for the December 2025 audit. The controller, CEO, and CFO are all available. Under AU-C 580, the management representation letter should be signed by:',
  choices = '["Only the chief executive officer, as the highest-ranking member of management","Only external legal counsel, as the party most qualified to make legal representations","Members of management with appropriate responsibilities for the financial statements, typically the CEO and CFO","All members of the board of directors, including independent and non-executive members"]'
WHERE id = 5132;

-- Q5135 [score:5] short-stem(9w) + length-cuing(34/157) → expand stem, balance choices
UPDATE questions SET
  stem = 'On January 22, 2026, three weeks after Ridgeline Corp.''s December 31, 2025 balance sheet date, Ridgeline receives a court ruling that confirms the liability for a lawsuit that was pending at year-end. The audit team at Calloway & Partners must determine how to classify this event. Under AU-C 560, a Type I subsequent event is an event that:',
  choices = '["Occurs after the balance sheet date and provides additional evidence about conditions that existed at the balance sheet date","Occurs after the audit report date and requires reissuance of the financial statements with revised figures","Provides evidence about conditions that arose after the balance sheet date, requiring disclosure but not adjustment","Occurs during fieldwork and has no effect on the financial statements or the auditor''s report"]'
WHERE id = 5135;

-- Q5136 [score:5] short-stem(9w) + length-cuing(29/120) → expand stem, balance choices
UPDATE questions SET
  stem = 'On February 10, 2026, six weeks after Ashford Corp.''s December 31, 2025 year-end, a fire destroys Ashford''s primary warehouse. The engagement team at Mercer & Associates must determine the appropriate treatment. Since the fire resulted from conditions arising after the balance sheet date, this is classified differently from a recognized event. Under AU-C 560, a Type II subsequent event is an event that:',
  choices = '["Provides additional evidence about conditions that existed at the balance sheet date, requiring adjustment","Requires both adjustment to financial statement amounts and expanded disclosure in the footnotes","Provides evidence about conditions arising after the balance sheet date and may require disclosure but not adjustment","Has no relevance to the audit and does not need to be considered in the auditor''s report or disclosures"]'
WHERE id = 5136;

-- Q5137 [score:5] short-stem(8w) + length-cuing(38/177) → expand stem, balance choices
UPDATE questions SET
  stem = 'The auditor at Whitfield & Associates issues the audit report for Thornton Industries on February 28, 2026. On March 10, before the report is released, the auditor learns that a major customer filed for bankruptcy on March 8 — a condition that arose after year-end and affects only the disclosures in Note 14. The auditor considers dual-dating the report rather than extending the report date. Under AU-C 560, dual-dating of the auditor''s report is appropriate when:',
  choices = '["The auditor becomes aware of a material subsequent event after the original report date but before issuance, affecting a specific note","The entity changes its fiscal year-end and issues comparative financial statements under the new period","The audit engagement was performed jointly by two different firms with separate responsibility paragraphs","The entity issues two sets of financial statements — one under GAAP and one under a special purpose framework"]'
WHERE id = 5137;

-- Q5140 [score:6] short-stem(6w) → expand with scenario + cite AU-C 580
UPDATE questions SET
  stem = 'During the audit of Pinecrest Financial Group, a staff auditor asks the engagement partner whether the signed management representation letter can replace substantive testing in areas where management has provided assurances. The partner explains the role of written representations in the audit evidence hierarchy. Under AU-C 580, written representations from management are considered:',
  explanation = 'Under AU-C 580.04, written representations are a necessary form of audit evidence, but they are not sufficient by themselves. They complement other audit evidence but do not substitute for procedures the auditor is required to perform. Choice A is incorrect because management representations are not the most reliable evidence — external confirmations, physical inspection, and recalculation generally provide stronger evidence. Choice D is incorrect because representations supplement rather than replace tests of controls and substantive procedures.'
WHERE id = 5140;

-- Q5143 [score:6] short-stem(8w) → expand with scenario + cite AU-C 560
UPDATE questions SET
  stem = 'The audit team at Glenview & Associates completed fieldwork for Sycamore Corp.''s December 31, 2025 audit and is preparing to date the auditor''s report. The engagement partner reminds the team that they have an active responsibility to perform subsequent events procedures up to a specific date. Under AU-C 560, the auditor''s responsibility for subsequent events extends until:',
  explanation = 'Under AU-C 560.09, the auditor has an active responsibility to perform subsequent events procedures through the date of the auditor''s report. After the report date but before the financial statements are issued, the auditor has no obligation to perform additional procedures but should respond to facts that come to attention. Choice A is incorrect because the balance sheet date marks the end of the reporting period, not the end of the auditor''s subsequent events responsibility. Choice D is incorrect because the SEC filing date is beyond the auditor''s active duty period.'
WHERE id = 5143;
