-- Migration: Upgrade 6 moderate-scoring Modifications to the Auditor Report questions
-- Fixes: short-stem, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q5169 [score:5] short-stem(10w) → expand with scenario + cite AU-C 705
UPDATE questions SET
  stem = 'During the audit of Lakewood Hospitality Group, the engagement team at Prescott & Associates discovers that the client capitalized $1.2 million in marketing costs that should have been expensed under ASC 720. The misstatement is material to the income statement but does not affect most other financial statement line items. The engagement partner must determine the appropriate opinion. Under AU-C 705, a qualified opinion is appropriate when the auditor concludes that:',
  explanation = 'Under AU-C 705.08, a qualified opinion is expressed when the auditor concludes that misstatements, individually or in the aggregate, are material but not pervasive to the financial statements. "Not pervasive" means the misstatements do not affect a substantial portion of the financial statements and are limited to specific elements or accounts. Choice A describes the threshold for an adverse opinion, not a qualified opinion. Choice D describes an unmodified opinion, which is issued when no material misstatements exist.'
WHERE id = 5169;

-- Q5170 [score:6] short-stem(10w) → expand with scenario + cite AU-C 705
UPDATE questions SET
  stem = 'The audit team at Birchwood & Associates discovers that Grandview Properties failed to consolidate three material subsidiaries in its 2025 financial statements. The unconsolidated subsidiaries represent 40% of total assets and 35% of revenue, and the omission distorts the overall financial position, results of operations, and cash flows. The engagement partner determines the misstatement is both material and pervasive. Under AU-C 705, an adverse opinion is expressed when the auditor concludes that:',
  explanation = 'Under AU-C 705.09, an adverse opinion is expressed when the auditor, having obtained sufficient appropriate audit evidence, concludes that misstatements are both material and pervasive to the financial statements. Pervasive means the effects are not confined to specific elements but affect a substantial portion of the statements or are fundamental to users'' understanding. Choice A describes the basis for a disclaimer, not an adverse opinion — the auditor has obtained evidence in this case. Choice B incorrectly suggests immaterial misstatements would trigger a modified opinion.'
WHERE id = 5170;

-- Q5171 [score:4] short-stem(7w) + length-cuing(44/150) → expand stem, balance choices
UPDATE questions SET
  stem = 'Hartwell & Co. is engaged to audit Ridgecrest Energy for the year ended December 31, 2025. Management refuses to allow the auditors access to inventory records, investment confirmations, and minutes of board meetings. These scope limitations prevent the team from obtaining evidence over accounts representing 60% of total assets. The engagement partner determines the possible effects are material and pervasive. Under AU-C 705, a disclaimer of opinion is appropriate when:',
  choices = '["The financial statements contain only immaterial misstatements that do not affect any user''s decisions","The auditor cannot obtain sufficient appropriate audit evidence and the possible effects are material and pervasive","The auditor discovers a single fraud during the audit that has been fully corrected by management","Management provides all requested information but the auditor disagrees with the accounting treatment used"]'
WHERE id = 5171;

-- Q5172 [score:5] short-stem(10w) + length-cuing(29/179) → expand stem, balance choices
UPDATE questions SET
  stem = 'The auditor at Calloway & Partners issues an unmodified opinion on Sycamore Corp.''s 2025 financial statements but includes an additional paragraph after the opinion paragraph highlighting a pending regulatory investigation that is appropriately disclosed in Note 18. This paragraph does not modify the opinion. Under AU-C 706, an emphasis-of-matter paragraph is included in the auditor''s report to:',
  choices = '["Modify the auditor''s opinion from unmodified to qualified due to the disclosed uncertainty","Draw users'' attention to a matter that is appropriately presented or disclosed and is fundamental to users'' understanding","Replace the basis for opinion paragraph when the auditor identifies a significant disclosure item","Limit the auditor''s legal liability for matters disclosed in the financial statement footnotes"]'
WHERE id = 5172;

-- Q5182 [score:6] length-cuing(33/105) → balance choices, add citation
UPDATE questions SET
  stem = 'During the audit of Cascade Timber Products, the engagement team at Waverly & Associates learns that a flood destroyed the client''s accounts payable records for the first six months of the fiscal year. Management did not cause the destruction and cooperates fully with alternative procedures, but the team cannot obtain sufficient evidence over those payables. Under AU-C 705, a scope limitation imposed by circumstances beyond management''s control would result in:',
  choices = '["An unmodified opinion because management was not at fault for the record destruction","An adverse opinion because the records were destroyed and the payable balances cannot be verified","A qualified opinion or disclaimer depending on the materiality and pervasiveness of the potential effects","Withdrawal from the engagement, since the auditor cannot complete the audit without the destroyed records"]',
  explanation = 'Under AU-C 705.13, a scope limitation — regardless of whether it is imposed by management or by circumstances — requires the auditor to evaluate the potential effects on the financial statements. If the possible effects are material but not pervasive, a qualified opinion is appropriate. If the possible effects are material and pervasive, a disclaimer is warranted. Choice A is incorrect because the cause of the limitation does not determine the opinion — only the materiality and pervasiveness of the missing evidence matter.'
WHERE id = 5182;

-- Q5188 [score:5] short-stem(10w) + length-cuing(39/152) → expand stem, balance choices
UPDATE questions SET
  stem = 'After concluding that scope limitations on the audit of Thornfield Pharmaceuticals are material and pervasive, the engagement partner at Glenview & Associates issues a disclaimer of opinion. The partner must ensure the report language differs from the standard unmodified report in several key ways. Under AU-C 705, when an auditor disclaims an opinion, the auditor''s report should:',
  choices = '["Include the standard description of auditor responsibilities and confirm that sufficient evidence was obtained","Include an emphasis-of-matter paragraph explaining why the scope was limited by management or circumstances","Follow the same structure as an unmodified opinion report, changing only the wording in the opinion paragraph","Omit the standard reasonable assurance language and describe the specific reasons for the inability to form an opinion"]'
WHERE id = 5188;
