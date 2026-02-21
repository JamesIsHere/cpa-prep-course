-- Migration: Bloom's L1 rebalancing — AUD batch 3 (48 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 48 L2 (Application) questions to L1 (Remember/Understand) depth for AUD section
-- Affected topics: Professional Skepticism and Judgment, Using the Work of Others, Understanding the Entity and Environment, Materiality, Analytical Procedures, Modifications to the Auditor Report, Audit Reports, Ethics and Independence

BEGIN;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4952: Professional Skepticism and Judgment — definition of professional skepticism
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What is professional skepticism as defined by auditing standards?',
  choices = '["A questioning mind and critical assessment of audit evidence", "A presumption that management is dishonest until proven otherwise", "The requirement to obtain absolute assurance about the financial statements", "A willingness to accept management representations without corroboration"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 200.14, professional skepticism is an attitude that includes a questioning mind, being alert to conditions that may indicate possible misstatement due to fraud or error, and a critical assessment of audit evidence. It does not presume dishonesty or honesty but recognizes the possibility of material misstatement. (B) is wrong because professional skepticism involves neither a presumption of dishonesty nor a presumption of honesty — it is a neutral, questioning stance. (D) is wrong because skepticism requires the auditor to evaluate evidence critically rather than accept representations at face value.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4952;

-- ============================================================
-- USING THE WORK OF OTHERS (2 questions)
-- ============================================================

-- ID 5052: Using the Work of Others — group engagement partner responsibility
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 600, what is the group engagement partner''s responsibility regarding component auditors?',
  choices = '["The group engagement partner has no responsibility for component auditors'' work", "The group engagement partner is responsible for the direction, supervision, and performance of the group audit engagement", "The group engagement partner may delegate full responsibility to each component auditor", "The group engagement partner only reviews component auditors'' final reports"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 600.11, the group engagement partner has overall responsibility for the direction, supervision, and performance of the group audit engagement. This responsibility cannot be delegated to component auditors. (A) is wrong because the group engagement partner retains responsibility even when component auditors perform work. (C) is wrong because full delegation of responsibility is not permitted under AU-C 600.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5052;

-- ID 5053: Using the Work of Others — responsibility for opinion when using specialist
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 620, who retains responsibility for the audit opinion when an auditor''s specialist is used?',
  choices = '["Responsibility is shared equally between the auditor and the specialist", "Responsibility shifts to the specialist for the areas where the specialist''s work is used", "The auditor retains sole responsibility for the audit opinion", "Responsibility is determined by the terms of the specialist''s engagement letter"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 620.04, the auditor retains sole responsibility for the audit opinion regardless of whether a specialist is engaged. The specialist''s work is used as audit evidence, but the auditor must evaluate its adequacy and appropriateness. (A) is wrong because the auditor cannot share or divide responsibility for the opinion. (B) is wrong because responsibility does not transfer to the specialist for any portion of the engagement.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5053;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4991: Understanding the Entity and Environment — purpose of understanding the entity
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Under AU-C 315, why is the auditor required to obtain an understanding of the entity and its environment?',
  choices = '["To guarantee that the financial statements are free from all misstatements", "To determine the appropriate tax treatment for the entity''s transactions", "To provide management with business consulting recommendations", "To identify and assess the risks of material misstatement in the financial statements"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 315.04, the auditor obtains an understanding of the entity and its environment, including internal control, to identify and assess the risks of material misstatement of the financial statements, whether due to fraud or error. This understanding forms the basis for designing further audit procedures. (A) is wrong because the auditor provides reasonable, not absolute, assurance and cannot guarantee freedom from all misstatements. (B) is wrong because determining tax treatment is a management and tax advisor responsibility, not the purpose of AU-C 315.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4991;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5011: Materiality — relationship of performance materiality to overall materiality
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Under AU-C 320, what is the relationship between performance materiality and overall materiality?',
  choices = '["Performance materiality is set lower than overall materiality to reduce the risk that aggregate uncorrected misstatements exceed overall materiality", "Performance materiality equals overall materiality for the financial statements as a whole", "Performance materiality is set higher than overall materiality to allow a margin for detected misstatements", "Performance materiality is determined solely by the audit committee"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 320.09, performance materiality is set at an amount lower than materiality for the financial statements as a whole. Its purpose is to reduce to an appropriately low level the probability that the aggregate of uncorrected and undetected misstatements exceeds overall materiality. (B) is wrong because setting performance materiality equal to overall materiality provides no buffer for undetected misstatements. (C) is wrong because a higher amount would increase the risk of aggregate misstatements exceeding materiality.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5011;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5090: Analytical Procedures — required phases for analytical procedures
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 520, during which phases of the audit are analytical procedures required?',
  choices = '["Only during substantive testing", "During the planning phase and the overall review phase", "Only during the final review phase", "During every phase of the audit without exception"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 520.05-.06, analytical procedures are required during two phases: (1) the planning phase, to assist in understanding the entity and identifying areas of potential misstatement, and (2) the overall review phase near the end of the audit, to assess whether the financial statements are consistent with the auditor''s understanding. Substantive analytical procedures during fieldwork are optional. (A) is wrong because substantive testing is not a required phase for analytical procedures. (D) is wrong because analytical procedures are discretionary during fieldwork.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5090;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (1 question)
-- ============================================================

-- ID 5169: Modifications to the Auditor Report — when a qualified opinion is appropriate
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 705, when is a qualified opinion appropriate?',
  choices = '["When misstatements are material and pervasive to the financial statements", "When the auditor cannot obtain any evidence about the financial statements", "When misstatements are material but not pervasive to the financial statements", "When the financial statements are fairly presented in all material respects"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 705.08, a qualified opinion is expressed when the auditor concludes that misstatements, individually or in the aggregate, are material but not pervasive to the financial statements. (A) is wrong because material and pervasive misstatements require an adverse opinion. (D) is wrong because fair presentation in all material respects results in an unmodified opinion.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5169;

-- ============================================================
-- AUDIT REPORTS (25 questions)
-- ============================================================

-- ID 1716: Audit Reports — disclaimer of opinion trigger
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Under AU-C 705, when should an auditor issue a disclaimer of opinion?',
  choices = '["When misstatements are material but not pervasive", "When the auditor disagrees with management on an accounting treatment", "When the financial statements contain immaterial errors only", "When the auditor cannot obtain sufficient appropriate evidence and the possible effects are material and pervasive"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 705.10, a disclaimer of opinion is issued when the auditor is unable to obtain sufficient appropriate audit evidence and concludes that the possible effects of undetected misstatements could be both material and pervasive. (A) is wrong because material but not pervasive conditions result in a qualified opinion. (B) is wrong because disagreement on accounting treatment leads to a qualified or adverse opinion based on materiality and pervasiveness, not a disclaimer.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1716;

-- ID 1717: Audit Reports — emphasis-of-matter paragraph requirements
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Under AU-C 706, what condition must be met for including an emphasis-of-matter paragraph?',
  choices = '["The matter must be adequately disclosed in the financial statements", "The matter must result in a modification to the auditor''s opinion", "The auditor must obtain written permission from management", "The matter must relate to a scope limitation"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 706.06, an emphasis-of-matter paragraph is included when the auditor considers it necessary to draw users'' attention to a matter that is appropriately presented or disclosed in the financial statements and that is fundamental to users'' understanding. The matter must already be adequately disclosed. (B) is wrong because an emphasis-of-matter paragraph does not modify the opinion. (C) is wrong because management permission is not required.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1717;

-- ID 1720: Audit Reports — key audit matters applicability
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 701, when are key audit matters communicated in a nonissuer audit report?',
  choices = '["In all nonpublic entity audits as a mandatory requirement", "When the auditor is engaged to do so, when required by law, or when the auditor voluntarily decides to communicate them", "Only when the entity has material weaknesses in internal control", "Only for government entity audits"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 701, key audit matters (KAMs) are communicated in the auditor''s report when the auditor is engaged to do so, when required by law or regulation, or when the auditor voluntarily decides to communicate them. KAMs are not a default requirement for all nonpublic entity audits. (A) is wrong because KAMs are not mandatory for all nonissuer audits. (C) is wrong because KAMs relate to significant audit matters, not specifically to internal control weaknesses.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1720;

-- ID 1721: Audit Reports — content of key audit matter disclosures
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under AU-C 701, what must the auditor describe for each key audit matter in the report?',
  choices = '["The specific audit procedures performed and their detailed results", "The dollar amount of each misstatement identified during the audit", "Why the matter was considered a key audit matter and how it was addressed in the audit", "Management''s response to the identified risk"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 701.13, for each key audit matter, the auditor describes why the matter was considered to be a key audit matter and how the matter was addressed in the audit. (A) is wrong because KAM disclosures do not require detailed results of specific procedures. (B) is wrong because specific misstatement dollar amounts are not included in KAM disclosures.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1721;

-- ID 1723: Audit Reports — predecessor auditor reissuing a report
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Under AU-C 560, what should a predecessor auditor do before reissuing a report on prior-period financial statements?',
  choices = '["Accept without additional procedures since the work was already completed", "Perform a complete re-audit of the prior-period financial statements", "Obtain a new engagement letter from the entity''s audit committee", "Read the current-period financial statements and the successor auditor''s report"]'::jsonb,
  explanation = 'Correct (D): Before reissuing a report, the predecessor auditor should read the current-period financial statements, obtain a representation letter from management, compare the prior-period statements with those previously reported on, and read the successor auditor''s report. These procedures help identify events that may affect the previously issued report. (A) is wrong because the predecessor must perform additional procedures before reissuing. (B) is wrong because a complete re-audit is not required.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1723;

-- ID 1724: Audit Reports — auditor responsibility for other information
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 720, what is the auditor''s responsibility for other information in documents containing audited financial statements?',
  choices = '["Read the other information and consider whether there is a material inconsistency with the financial statements", "Audit the other information with the same rigor as the financial statements", "Disclaim all responsibility for other information", "Verify the accuracy of all statistical data in the annual report"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 720, the auditor reads the other information and considers whether there is a material inconsistency between the other information and the financial statements, or whether the other information appears to contain a material misstatement of fact. (B) is wrong because the auditor does not audit the other information. (C) is wrong because the auditor has a read-and-consider responsibility, not a blanket disclaimer.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1724;

-- ID 1726: Audit Reports — reporting on supplementary information
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 725, how may the auditor report on supplementary information accompanying audited financial statements?',
  choices = '["Only as a separate standalone report", "As an other-matter paragraph in the auditor''s report or in a separate report", "Only as part of the opinion paragraph", "Only when the supplementary information is required by GAAP"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 725, the auditor may report on supplementary information either in an other-matter paragraph within the report on the financial statements or in a separate report. Both options are acceptable. (A) is wrong because the report need not be standalone — it can be included in the main auditor''s report. (D) is wrong because voluntarily presented supplementary information can also be reported on.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1726;

-- ID 1728: Audit Reports — going concern emphasis-of-matter paragraph content
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under AU-C 570, what must a going concern emphasis-of-matter paragraph reference?',
  choices = '["The specific dollar amount of the entity''s projected losses", "The exact date the entity is expected to cease operations", "The note in the financial statements that discloses the relevant conditions and events", "Management''s personal guarantee of the entity''s survival"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 570.21, the going concern emphasis paragraph references the note in the financial statements that describes the conditions giving rise to substantial doubt, management''s evaluation of those conditions, and management''s plans to address them. (A) is wrong because projected loss amounts belong in financial statement disclosures, not the emphasis paragraph. (B) is wrong because auditors do not predict a specific cessation date.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1728;

-- ID 1729: Audit Reports — change in accounting principle effect on report
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Under AU-C 708, how does a properly disclosed change in accounting principle affect the auditor''s report?',
  choices = '["The auditor issues a qualified opinion for the inconsistency", "The auditor issues an adverse opinion", "The auditor issues an unmodified opinion with no additional paragraphs", "The auditor includes an emphasis-of-matter paragraph regarding the change"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 708, a change in accounting principle that is properly applied and adequately disclosed requires the auditor to include an emphasis-of-matter paragraph in the report. This paragraph draws attention to the change so users understand the effect on comparability. The opinion itself remains unmodified. (A) is wrong because a properly disclosed and applied change does not require a qualification. (C) is wrong because an emphasis-of-matter paragraph is required even though the opinion is unmodified.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1729;

-- ID 1731: Audit Reports — regulatory basis report for general use
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under AU-C 800, what must the auditor''s report include when regulatory-basis financial statements are intended for general use?',
  choices = '["An opinion on the regulatory basis and a separate paragraph stating the statements are not in conformity with GAAP", "A disclaimer of opinion on the regulatory basis", "An unmodified opinion without any additional paragraphs", "An adverse opinion only"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 800, when regulatory-basis financial statements are intended for general use, the auditor expresses an opinion on whether the statements are presented in accordance with the regulatory basis and includes a separate paragraph stating that the statements are not in accordance with GAAP. This dual opinion ensures users understand the reporting basis. (B) is wrong because a disclaimer is not required for regulatory-basis statements. (D) is wrong because an adverse opinion alone is not the required format.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1731;

-- ID 1733: Audit Reports — auditor response to management-imposed scope limitation
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 705, what should an auditor do first when management imposes a scope limitation?',
  choices = '["Immediately issue a disclaimer of opinion", "Request that management remove the limitation and communicate the matter to those charged with governance", "Withdraw from the engagement without further communication", "Issue an unmodified opinion and document the limitation in the workpapers"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 705, when management imposes a scope limitation, the auditor should first request removal of the limitation. If management refuses, the auditor communicates with those charged with governance and determines whether alternative procedures are possible. Only after exhausting these steps does the auditor determine the appropriate opinion modification. (A) is wrong because a disclaimer is premature before requesting removal of the limitation. (C) is wrong because withdrawal without communication is not the required first step.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1733;

-- ID 1734: Audit Reports — meaning of except-for language
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'In an audit report, what type of opinion does the phrase except for the effects of the matter described indicate?',
  choices = '["A disclaimer of opinion", "An adverse opinion", "A qualified opinion", "An unmodified opinion with emphasis-of-matter"]'::jsonb,
  explanation = 'Correct (C): The except-for language is the hallmark of a qualified opinion. It indicates that the auditor has identified a matter that is material but not pervasive to the financial statements. The opinion paragraph carves out that specific exception while expressing an opinion on the remainder. (A) is wrong because a disclaimer of opinion states that the auditor does not express an opinion. (B) is wrong because an adverse opinion states that the financial statements are not fairly presented.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1734;

-- ID 1736: Audit Reports — basis for opinion section content
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under AU-C 705, what must the Basis for Qualified Opinion section include?',
  choices = '["Only a general statement that the financial statements are misstated", "A recommendation for how management should correct the issue", "A reference to the applicable tax code section", "A description of the matter giving rise to the modification and quantification of the effects if practicable"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 705, the Basis for Qualified (or Adverse) Opinion section must describe the matter giving rise to the modification. For misstatements, the auditor quantifies the financial effects if practicable. For scope limitations, the auditor describes why sufficient evidence could not be obtained. (A) is wrong because a general statement alone is insufficient — the specific matter must be described. (B) is wrong because the auditor does not make recommendations for corrective action in this section.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1736;

-- ID 1737: Audit Reports — not referencing the component auditor
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Under AU-C 600, what happens when the group engagement partner decides not to reference the component auditor in the report?',
  choices = '["The group engagement partner assumes responsibility for the component auditor''s work as it relates to the group opinion", "The group engagement partner has no responsibility for the component auditor''s work", "The group engagement partner must disclaim an opinion on the group financial statements", "The group engagement partner must reperform all of the component auditor''s procedures"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 600, when the group engagement partner decides not to reference the component auditor, the group engagement partner assumes responsibility for the component auditor''s work. This requires sufficient involvement through direction, supervision, or review. (B) is wrong because not referencing the component auditor means assuming, not disclaiming, responsibility. (D) is wrong because assuming responsibility requires sufficient involvement but not complete reperformance of all procedures.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1737;

-- ID 1739: Audit Reports — resolving a prior-year scope limitation
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'Under AU-C 710, how should the auditor handle the prior-period opinion when a prior-year scope limitation is resolved?',
  choices = '["Maintain the original disclaimer of opinion regardless of new evidence", "Update the opinion on the prior-period financial statements based on the results of additional procedures performed", "Issue a qualified opinion regardless of the results", "Issue an adverse opinion due to the original limitation"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 710, when a prior-year scope limitation has been resolved through procedures performed in the current year, the auditor updates the opinion on the prior-period financial statements based on the results of those additional procedures. The auditor is not required to maintain the original opinion if circumstances have changed. (A) is wrong because the original opinion should be updated when the limitation is resolved. (C) is wrong because a qualified opinion is not automatic — the updated opinion depends on the results of the additional procedures.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1739;

-- ID 1740: Audit Reports — subsequent event after report date but before release
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 560, what should the auditor do when a subsequent event occurs after the report date but before the report is released?',
  choices = '["Ignore the event since it occurred after the report date", "Issue a completely new audit report with a new engagement letter", "Dual-date the report for the subsequent event or extend the report date", "Add a disclaimer paragraph about the subsequent event"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 560, when a subsequent event occurs between the report date and the date the report is released, the auditor may either dual-date the report (keeping the original date except for the specific event) or extend the report date to the later date. (A) is wrong because the auditor has a responsibility for subsequent events discovered before the report is released. (B) is wrong because a new engagement letter is not required — the original engagement covers the reporting period.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1740;

-- ID 1741: Audit Reports — reasonably possible contingency with adequate disclosure
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under auditing standards, what opinion is appropriate when a reasonably possible contingency is adequately disclosed in the notes?',
  choices = '["An unmodified opinion, since the matter is properly disclosed", "A qualified opinion due to the uncertainty", "A disclaimer of opinion due to the contingency", "An adverse opinion due to the potential loss"]'::jsonb,
  explanation = 'Correct (A): A contingency that is reasonably possible and properly disclosed in the notes to the financial statements does not require modification of the auditor''s opinion. GAAP requires note disclosure for reasonably possible contingencies, and if management has complied, the auditor issues an unmodified opinion. (B) is wrong because proper disclosure of a reasonably possible contingency does not warrant a qualified opinion. (C) is wrong because a disclaimer is reserved for situations where the auditor cannot obtain sufficient evidence, not for properly disclosed contingencies.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1741;

-- ID 1742: Audit Reports — omitted statement of cash flows
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 705, what opinion should the auditor issue when a required financial statement is materially omitted?',
  choices = '["An unmodified opinion with an emphasis-of-matter paragraph", "A qualified or adverse opinion for the departure from the financial reporting framework", "A disclaimer of opinion", "An unmodified opinion with no additional paragraphs"]'::jsonb,
  explanation = 'Correct (B): Omission of a required financial statement constitutes a departure from the applicable financial reporting framework. Depending on whether the omission is material but not pervasive or material and pervasive, the auditor issues a qualified or adverse opinion. (A) is wrong because a material omission of a required statement is a GAAP departure requiring opinion modification, not merely an emphasis-of-matter paragraph. (C) is wrong because a disclaimer is for scope limitations, not known departures from the reporting framework.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1742;

-- ID 1743: Audit Reports — reporting on a single financial statement
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 805, is an auditor permitted to report on a single financial statement?',
  choices = '["No, the auditor must always report on a complete set of financial statements", "No, a single-statement report requires a disclaimer on the other statements", "Yes, the auditor may report on a single financial statement and the opinion relates only to that statement", "Yes, but only if the auditor also audits the income statement"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 805, the auditor is permitted to report on a single financial statement or a specific element of a financial statement. The opinion relates only to that specific statement. (A) is wrong because AU-C 805 explicitly permits single-statement engagements. (D) is wrong because the auditor is not required to audit other statements to form an opinion on a single statement.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1743;

-- ID 1744: Audit Reports — single statement report after adverse opinion on complete set
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under AU-C 805, can the auditor report on a single financial statement after issuing an adverse opinion on the complete set?',
  choices = '["No, an adverse opinion on the complete set prevents reporting on any component", "Yes, but only if management requests it in writing", "No, unless the entity is a government entity", "Yes, if the single statement is not affected by the matter causing the adverse opinion and the reports are not published together"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 805, the auditor may report on a single financial statement even when an adverse opinion was issued on the complete set, provided the matter causing the adverse opinion does not affect the single statement and the reports are not published together to avoid confusion. (A) is wrong because AU-C 805 does not impose a blanket prohibition after an adverse opinion. (B) is wrong because written management request is not the relevant condition — the condition relates to whether the adverse matter affects the single statement.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1744;

-- ID 1745: Audit Reports — when emphasis-of-matter paragraph is required
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 706, which of the following requires an emphasis-of-matter paragraph?',
  choices = '["A change in accounting principle, going concern doubt, or a matter the auditor believes is fundamental to users'' understanding", "A situation where the auditor wants to disclaim an opinion", "A financial statement that contains only immaterial misstatements", "A request from the entity to highlight a favorable result"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 706, an emphasis-of-matter paragraph is required when the auditor considers it necessary to draw users'' attention to matters fundamental to their understanding of the financial statements. Common required circumstances include going concern doubt, changes in accounting principles, and certain significant uncertainties. (B) is wrong because a disclaimer relates to scope limitations, not emphasis-of-matter requirements. (D) is wrong because the auditor''s professional judgment — not the entity''s request — determines whether an emphasis paragraph is included.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1745;

-- ID 1746: Audit Reports — standards cited in the Basis for Opinion section
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'In an unmodified audit report, what standards does the Basis for Opinion section reference?',
  choices = '["International Financial Reporting Standards", "Auditing standards generally accepted in the United States of America", "Generally accepted accounting principles", "Internal auditing standards"]'::jsonb,
  explanation = 'Correct (B): The Basis for Opinion section states that the audit was conducted in accordance with auditing standards generally accepted in the United States of America (GAAS). GAAS governs how the audit is performed. (A) is wrong because IFRS is a financial reporting framework, not an auditing standard. (C) is wrong because GAAP is the financial reporting framework against which financial statements are evaluated, not the standard under which the audit is conducted.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1746;

-- ID 1747: Audit Reports — restatement of prior-year financial statements
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 708, how should the auditor address a restatement of prior-year financial statements?',
  choices = '["Ignore the restatement since it relates to the prior year", "Issue an adverse opinion for the current year", "Include an emphasis-of-matter paragraph referencing the restatement note", "Issue a qualified opinion on the current year"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 708, when prior-year financial statements are restated to correct a material misstatement, the auditor adds an emphasis-of-matter paragraph that references the note describing the restatement. This alerts users to the correction and its effects on the comparative financial statements. (A) is wrong because the restatement must be addressed in the current report on comparative statements. (B) is wrong because the restatement of prior-year statements does not automatically require an adverse opinion on the current year.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1747;

-- ID 1749: Audit Reports — material disclosure deficiency opinion
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Under AU-C 705, what opinion is appropriate when a required GAAP disclosure is materially omitted but the omission is not pervasive?',
  choices = '["An unmodified opinion", "An adverse opinion", "A disclaimer of opinion", "A qualified opinion for the departure from GAAP"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 705, an inadequate or missing disclosure required by GAAP constitutes a departure from the applicable financial reporting framework. If the departure is material but not pervasive, a qualified opinion is appropriate. The Basis for Qualified Opinion section would describe the omitted disclosure. (A) is wrong because a material disclosure omission requires opinion modification. (B) is wrong because an adverse opinion is reserved for misstatements that are both material and pervasive.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1749;

-- ID 1750: Audit Reports — auditor responsibility for going concern
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 570, what is the auditor''s responsibility regarding going concern?',
  choices = '["To evaluate whether there is substantial doubt about the entity''s ability to continue as a going concern for a reasonable period of time", "To guarantee the entity''s ability to continue as a going concern", "To predict the entity''s future profitability", "To determine whether the entity should file for bankruptcy"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 570.10, the auditor''s responsibility is to evaluate whether substantial doubt exists about the entity''s ability to continue as a going concern for a reasonable period of time — defined as one year from the date the financial statements are issued or available to be issued. (B) is wrong because the auditor provides no guarantee of continued viability. (C) is wrong because predicting future profitability is a management responsibility, not an auditor obligation.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1750;

-- ============================================================
-- ETHICS AND INDEPENDENCE (16 questions)
-- ============================================================

-- ID 262: Ethics and Independence — management participation threat definition
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under the AICPA Code of Professional Conduct, what creates a management participation threat to independence?',
  choices = '["Performing tax advisory services for the client", "Making management decisions or performing management functions for the client", "Having a close relative working at the client", "Earning a significant portion of revenue from the client"]'::jsonb,
  explanation = 'Correct (B): Under the AICPA Code (ET 1.295), a management participation threat occurs when the auditor assumes management responsibilities — making decisions, directing activities, or performing functions that are properly the role of client management. (A) is wrong because tax advisory services do not inherently create management participation threats — they may create self-review threats instead. (C) is wrong because a close relative working at the client creates a familiarity threat, not a management participation threat.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 262;

-- ID 263: Ethics and Independence — conceptual framework approach steps
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code, what does the conceptual framework approach require when no specific independence rule addresses a situation?',
  choices = '["Automatic withdrawal from the engagement", "Consultation with the PCAOB before proceeding", "Identification and evaluation of threats with application of safeguards if needed", "Notification to the state board of accountancy"]'::jsonb,
  explanation = 'Correct (C): The conceptual framework is a principles-based approach used when the Code does not have a specific rule. The CPA must identify threats, evaluate their significance, and apply safeguards to reduce them to an acceptable level. If safeguards cannot adequately reduce the threat, the CPA must decline or withdraw. (A) is wrong because automatic withdrawal is not required — the CPA first evaluates threats and considers safeguards. (B) is wrong because PCAOB consultation is not part of the AICPA conceptual framework process.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 263;

-- ID 265: Ethics and Independence — SEC de minimis exception threshold
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Under SEC independence rules, what is the de minimis exception threshold for non-audit service fees?',
  choices = '["1% of total fees paid to the auditor", "3% of total fees paid to the auditor", "10% of total fees paid to the auditor", "5% of total fees paid to the auditor"]'::jsonb,
  explanation = 'Correct (D): The SEC provides a de minimis exception allowing non-audit services that were not pre-approved if the aggregate fees are less than 5% of total fees paid to the auditor, the services were not recognized as non-audit services at the time, and the services are promptly brought to the audit committee''s attention. (A) is wrong because 1% is too low — the threshold is 5%. (B) is wrong because the threshold is 5%, not 3%.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 265;

-- ID 267: Ethics and Independence — bookkeeping services independence condition
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Under the AICPA Code, what condition must be met for a CPA firm to provide bookkeeping services to a non-issuer audit client while maintaining independence?',
  choices = '["Client management must oversee the service and accept responsibility for results", "The CPA must obtain PCAOB approval", "The work must be reviewed by the state board of accountancy", "The CPA must not charge fees for the bookkeeping services"]'::jsonb,
  explanation = 'Correct (A): For non-audit services provided to non-issuer audit clients, the AICPA requires that client management oversee the service and accept responsibility for results. The CPA must not assume management responsibilities. (B) is wrong because PCAOB approval is not required for non-issuer engagements. (D) is wrong because the CPA may charge fees — the independence condition relates to management oversight, not fee arrangements.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 267;

-- ID 1308: Ethics and Independence — direct financial interest rule
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under the AICPA Code, what is the effect of a covered member holding any direct financial interest in an audit client?',
  choices = '["Independence is not impaired because the interest is immaterial", "Independence is impaired regardless of materiality", "Independence is impaired only if the covered member is the engagement partner", "Independence is not impaired if the interest was inherited rather than purchased"]'::jsonb,
  explanation = 'Correct (B): Under the AICPA Code, any direct financial interest in an attest client by a covered member or their immediate family impairs independence regardless of materiality. Whether the interest was inherited, purchased, or received as a gift does not change this result. (A) is wrong because materiality is irrelevant for direct financial interests. (D) is wrong because the method of acquisition does not affect the independence impairment.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1308;

-- ID 1309: Ethics and Independence — self-interest threat definition
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under the AICPA conceptual framework, which threat arises when an auditor has a financial interest in the audit client?',
  choices = '["Advocacy threat", "Familiarity threat", "Self-interest threat", "Undue influence threat"]'::jsonb,
  explanation = 'Correct (C): A financial interest in the audit client creates a self-interest threat because the auditor could be influenced to protect their own financial position rather than exercise independent judgment. (A) is wrong because an advocacy threat arises when the auditor promotes the client''s position, not from holding a financial interest. (B) is wrong because familiarity threats arise from personal relationships, not financial interests.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1309;

-- ID 1310: Ethics and Independence — familiarity threat definition
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Under the AICPA conceptual framework, which category of threat arises from a close personal relationship between an auditor and client management?',
  choices = '["Self-review threat", "Advocacy threat", "Management participation threat", "Familiarity threat"]'::jsonb,
  explanation = 'Correct (D): A close family or personal relationship between a covered member and client management creates a familiarity threat. The concern is that the auditor may become too sympathetic to the client''s interests due to the personal relationship. (A) is wrong because a self-review threat arises from auditing one''s own work product. (C) is wrong because a management participation threat arises from assuming management functions, not from personal relationships.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1310;

-- ID 1311: Ethics and Independence — self-review threat definition
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under the AICPA Code, what type of threat is created when a CPA firm audits financial statements it also prepared?',
  choices = '["Self-review threat", "Undue influence threat", "Familiarity threat", "Advocacy threat"]'::jsonb,
  explanation = 'Correct (A): When a CPA firm audits financial statements that it also prepared, a self-review threat exists because the auditor may not objectively evaluate their own work product. Under the AICPA Code, this service is permitted for non-issuers provided that management takes responsibility and the firm applies safeguards. (B) is wrong because undue influence threats arise from external pressure, not from auditing one''s own work. (D) is wrong because advocacy threats arise from promoting the client''s position, not from reviewing one''s own work.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1311;

-- ID 1312: Ethics and Independence — undue influence threat definition
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'Under the AICPA conceptual framework, which threat arises when a client pressures the auditor to change the audit opinion?',
  choices = '["Advocacy threat", "Undue influence threat", "Familiarity threat", "Self-interest threat"]'::jsonb,
  explanation = 'Correct (B): When a client pressures the auditor to change the audit opinion by threatening to terminate the engagement, this constitutes an undue influence threat. The client is attempting to exert pressure that could cause the auditor to subordinate professional judgment. (A) is wrong because advocacy threats arise from the auditor promoting the client''s position, not from client pressure on the auditor. (D) is wrong because self-interest threats involve the auditor''s own financial interests, not external pressure from the client.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1312;

-- ID 1313: Ethics and Independence — advocacy threat definition
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code, which threat to independence is created when a CPA serves as an expert witness on behalf of an audit client?',
  choices = '["Self-review threat", "Familiarity threat", "Advocacy threat", "Self-interest threat"]'::jsonb,
  explanation = 'Correct (C): Serving as an expert witness on behalf of an audit client creates an advocacy threat because the CPA is promoting or defending the client''s position rather than acting as an independent evaluator. (A) is wrong because self-review threats involve auditing one''s own work product. (D) is wrong because self-interest threats involve the auditor''s own financial interests, not testifying on behalf of the client.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1313;

-- ID 1314: Ethics and Independence — immaterial indirect financial interest
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Under the AICPA Code, which type of financial interest held by a covered member does NOT impair independence?',
  choices = '["A direct financial interest in the audit client of any amount", "A material indirect financial interest in the audit client", "A direct financial interest held in a blind trust", "An immaterial indirect financial interest held through a diversified mutual fund"]'::jsonb,
  explanation = 'Correct (D): An immaterial indirect financial interest does not impair independence. Owning shares in a diversified mutual fund that holds stock in the audit client is an indirect interest, and if immaterial to the covered member, it does not impair independence. (A) is wrong because direct financial interests impair independence regardless of materiality. (B) is wrong because material indirect interests also impair independence. (C) is wrong because a blind trust does not convert a direct interest into an indirect one.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1314;

-- ID 1318: Ethics and Independence — integrity principle definition
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under the AICPA Code of Professional Conduct, what does the principle of integrity primarily require?',
  choices = '["Honesty and candor within the constraints of client confidentiality", "Technical competence in all areas of practice", "Refusal of all engagements that involve risk", "Subordination of personal judgment to the client''s preferences"]'::jsonb,
  explanation = 'Correct (A): Integrity under the AICPA Code requires a CPA to be honest, candid, and not subordinate the public interest to personal gain or advantage. Its core meaning is honesty and truthfulness in professional dealings, tempered by the obligation of client confidentiality. (B) is wrong because technical competence is addressed by the due care principle, not integrity. (D) is wrong because integrity requires independence of judgment, not subordination to clients.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1318;

-- ID 1319: Ethics and Independence — seeking employment with audit client
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under the AICPA Code, what is the effect on independence when an engagement team member seeks employment with the audit client?',
  choices = '["No action is required because independence is only impaired if the member is hired", "Independence is impaired and the member must be removed from the engagement", "The engagement partner evaluates the situation only if the member is hired", "No threat exists because the member was not hired"]'::jsonb,
  explanation = 'Correct (B): Under the AICPA Code, when a member of the engagement team seeks or discusses employment with an audit client, independence is impaired. The member must be removed from the engagement, and any work they performed must be reviewed by other team members. This applies regardless of whether the employment was actually obtained. (A) is wrong because independence is impaired at the point of seeking employment, not only upon being hired. (D) is wrong because the threat arises from seeking employment, not from the outcome.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1319;

-- ID 1320: Ethics and Independence — start of the professional engagement period
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code, when does the period of the professional engagement begin for independence purposes?',
  choices = '["When the CPA begins fieldwork at the client''s office", "When the CPA signs the engagement letter", "When the CPA begins to perform any attest services or signs the engagement letter, whichever is earlier", "When the financial statements under audit are issued"]'::jsonb,
  explanation = 'Correct (C): The period of the professional engagement begins when the CPA either signs an initial engagement letter or begins to perform any attest services, whichever is earlier. Independence must be maintained throughout this entire period through the date of the final report. (A) is wrong because the period starts before fieldwork — it begins at engagement acceptance. (D) is wrong because the issuance date marks the end of the period, not the beginning.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1320;

-- ID 1321: Ethics and Independence — IRS representation threat type
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under the AICPA Code, what type of threat does representing an audit client before the IRS create?',
  choices = '["Self-interest threat", "Familiarity threat", "Management participation threat", "Advocacy threat, which is permissible if the matter is administrative and not adversarial"]'::jsonb,
  explanation = 'Correct (D): Representing a client before the IRS creates an advocacy threat. Under the AICPA Code, the threat may be acceptable if the representation involves routine administrative tax matters such as responding to IRS inquiries. However, representing the client in adversarial proceedings such as Tax Court would likely impair independence. (A) is wrong because self-interest threats involve the auditor''s financial interests, not representing the client. (B) is wrong because familiarity threats arise from personal relationships, not from providing representation services.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1321;

-- ID 1322: Ethics and Independence — safeguard for familiarity threat from long association
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Which safeguard is most effective in mitigating a familiarity threat caused by long association with an audit client?',
  choices = '["Rotating the engagement partner off the engagement", "Increasing the audit fee to reflect the additional risk", "Assigning a less experienced team to the engagement", "Reducing the scope of the audit procedures"]'::jsonb,
  explanation = 'Correct (A): Rotating the engagement partner is the most effective safeguard against familiarity threats from long association. Fresh perspective from a new leader helps ensure objectivity is maintained. (B) is wrong because increasing fees does not address the familiarity threat. (D) is wrong because reducing scope is never an appropriate response to an independence threat.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1322;

COMMIT;
