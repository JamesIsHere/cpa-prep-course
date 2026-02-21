-- Migration: Upgrade 8 moderate-scoring Audit Reports questions
-- Fixes: short-stem, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q19 [score:6] short-stem → expand with scenario + cite AU-C 700
UPDATE questions SET
  stem = 'The engagement partner at Calloway & Partners issues an unmodified opinion on Thornfield Manufacturing''s December 31, 2025 financial statements. A staff auditor reviewing the final report asks which specific language is required in the standard unmodified opinion. Under AU-C 700, in an auditor''s unmodified opinion report on a nonissuer, which of the following statements is included?',
  explanation = 'Under AU-C 700.25, the standard unmodified audit report states that the audit was conducted in accordance with auditing standards generally accepted in the United States. The report also clarifies that management is responsible for the financial statements and that the auditor''s responsibility is to express an opinion based on the audit. Choice A is incorrect because audits provide reasonable, not absolute, assurance — no guarantee is made. Choice B is incorrect because the financial statements are management''s responsibility, not the auditor''s.'
WHERE id = 19;

-- Q125 [score:6] short-stem → expand with scenario + cite AU-C 705
UPDATE questions SET
  stem = 'During the audit of Lakeside Distributors, management refuses to provide access to the accounts receivable subsidiary ledger, investment confirmations, and legal correspondence files. These limitations prevent the engagement team at Mercer & Associates from obtaining evidence over accounts representing more than half of total assets. The engagement partner determines the possible effects are pervasive. Under AU-C 705, when would an auditor issue a disclaimer of opinion?',
  explanation = 'Under AU-C 705.10, a disclaimer of opinion is issued when the auditor is unable to obtain sufficient appropriate audit evidence to form an opinion and the potential effects of undetected misstatements could be both material and pervasive. Choice A is incorrect because material misstatements with sufficient evidence lead to qualified or adverse opinions, not disclaimers. Choice C is incorrect because immaterial departures do not affect the opinion type.'
WHERE id = 125;

-- Q327 [score:6] short-stem(9w) → expand with scenario
UPDATE questions SET
  stem = 'During the audit of Cascade Energy Corp., the engagement team at Prescott & Associates encounters a complex revenue recognition issue involving variable consideration on long-term power purchase agreements. The matter was discussed with the audit committee, involves a material account, and required significant auditor judgment. The engagement partner considers whether this qualifies for additional reporting. Under PCAOB AS 3101, a Critical Audit Matter (CAM) is a matter that:',
  explanation = 'Under PCAOB AS 3101.11, a CAM must meet three criteria: (1) communicated or required to be communicated to the audit committee, (2) related to accounts or disclosures material to the financial statements, and (3) involved especially challenging, subjective, or complex auditor judgment. CAMs provide transparency about the audit without modifying the opinion. Choice B is incorrect because a CAM does not change the type of opinion issued. Choice C is incorrect because a material weakness in internal controls is a separate reporting concept under AS 2201.'
WHERE id = 327;

-- Q329 [score:6] short-stem → expand with scenario + cite AU-C 706
UPDATE questions SET
  stem = 'The engagement partner at Whitfield & Associates issues an unmodified opinion on Ridgemont Healthcare''s 2025 financial statements but adds an additional paragraph after the opinion paragraph. The paragraph highlights a pending malpractice lawsuit disclosed in Note 14 that could materially affect the entity''s financial position. Under AU-C 706, an emphasis-of-matter paragraph is required when:',
  explanation = 'Under AU-C 706.06, an emphasis-of-matter paragraph draws attention to a matter that is appropriately presented or disclosed in the financial statements and is fundamental to users'' understanding. Common situations include going concern uncertainties, significant related-party transactions, and adoption of a new accounting standard. Choice A is incorrect because a material misstatement would result in a modified opinion, not an emphasis paragraph. Choice C describes a scope limitation, which leads to a qualified opinion or disclaimer.'
WHERE id = 329;

-- Q331 [score:6] short-stem → expand with scenario + cite PCAOB AS 2201
UPDATE questions SET
  stem = 'Ashford Technologies is a publicly traded company whose audit is conducted under PCAOB standards by Glenview & Associates. The engagement partner explains to the audit committee that the report will include two separate opinions — one on the financial statements and one on the effectiveness of internal controls. Under PCAOB standards, the auditor''s report on a public company must include:',
  explanation = 'Under PCAOB AS 2201, an integrated audit of a public company requires the auditor to issue opinions on both the financial statements (fair presentation under GAAP) and the effectiveness of internal controls over financial reporting (ICFR). Choice B is incorrect because the auditor provides reasonable assurance, not a fraud guarantee. Choice D is incorrect because the PCAOB requires disclosure of the engagement partner''s name and the firm''s PCAOB registration number, not individual staff names.'
WHERE id = 331;

-- Q335 [score:6] short-stem → expand with scenario + cite AU-C 700
UPDATE questions SET
  stem = 'The engagement team at Birchwood & Associates completes fieldwork for the audit of Sycamore Corp. on March 12, 2026, including all subsequent events procedures and final analytical review. The engagement partner signs the report on that date. Under AU-C 700, the date of the auditor''s report should be no earlier than:',
  explanation = 'Under AU-C 700.41, the report date should be no earlier than the date the auditor obtained sufficient appropriate audit evidence to support the opinion, including evidence regarding subsequent events through that date. Choice A is incorrect because the balance sheet date (December 31) precedes the completion of audit work — the auditor needs time after year-end to gather evidence. Choice B is incorrect because the engagement letter date is when the engagement begins, not when sufficient evidence is obtained.'
WHERE id = 335;

-- Q1728 [score:6] short-stem → expand with scenario + cite AU-C 570
UPDATE questions SET
  stem = 'The engagement partner at Calloway & Partners concludes that substantial doubt exists about Kensington Retail''s ability to continue as a going concern, but management''s plans and disclosures in Note 2 are adequate. The partner issues an unmodified opinion with a going concern emphasis-of-matter paragraph. Under AU-C 570, the going concern emphasis-of-matter paragraph should include a reference to:',
  explanation = 'Under AU-C 570.21, the going concern emphasis paragraph should reference the note in the financial statements that describes the conditions giving rise to substantial doubt, management''s evaluation of those conditions, and management''s plans to address them. Choice B is incorrect because the auditor does not include specific projected loss amounts — that level of detail belongs in the financial statement disclosures. Choice D is incorrect because personal guarantees are not part of the auditor''s going concern reporting requirements.'
WHERE id = 1728;

-- Q1750 [score:6] short-stem → expand with scenario + cite AU-C 570
UPDATE questions SET
  stem = 'A staff auditor at Mercer & Associates asks the engagement partner what specific obligation the auditor has regarding going concern when auditing Thornfield Industries'' 2025 financial statements. The partner explains the auditor''s active role during the evaluation period. Under AU-C 570, which of the following is the auditor''s responsibility regarding going concern?',
  explanation = 'Under AU-C 570.10, the auditor''s responsibility is to evaluate whether substantial doubt exists about the entity''s ability to continue as a going concern for a reasonable period of time — defined as one year from the date the financial statements are issued or available to be issued. Choice A is incorrect because the auditor provides no guarantee of continued viability — that would require absolute assurance. Choice C is incorrect because predicting future profitability is a management responsibility, not an auditor obligation.'
WHERE id = 1750;
