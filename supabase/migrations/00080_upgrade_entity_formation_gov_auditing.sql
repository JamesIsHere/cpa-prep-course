-- Migration: Upgrade 3 Entity Formation and Restructuring + 2 Government Auditing Standards
-- Fixes: short-stem, short-expl, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- === Entity Formation and Restructuring (3 questions) ===

-- Q5495 [score:6] short-stem(8w) → expand with scenario + cite IRC 368
UPDATE questions SET
  stem = 'Thornfield Corp.''s board of directors votes to restructure the company''s capital by exchanging all outstanding $100 par preferred stock for newly issued common stock. No new entity is created and no assets are transferred to another corporation. The company''s tax advisor classifies this as a tax-free reorganization. Under IRC Section 368(a)(1)(E), a Type E reorganization involves:',
  explanation = 'Under IRC Section 368(a)(1)(E), a Type E reorganization is a recapitalization — a reshuffling of a single corporation''s capital structure. Examples include exchanging bonds for stock, preferred stock for common stock, or bonds for bonds with different terms. A recapitalization must have a valid business purpose and is limited to changes within a single corporation. Choice A is incorrect because a transfer of assets to a controlled corporation describes a Section 351 transaction or a Type D reorganization. Choice B is incorrect because a statutory merger is a Type A reorganization under Section 368(a)(1)(A).'
WHERE id = 5495;

-- Q5500 [score:6] short-stem(9w) → expand with scenario + cite IRC 368
UPDATE questions SET
  stem = 'Ashford Industries, a Delaware corporation, decides to reincorporate in Nevada for tax and governance advantages. The company forms a new Nevada corporation, merges the Delaware entity into it, and the shareholders receive identical shares in the new entity. The structure, ownership, and operations remain unchanged. Under IRC Section 368(a)(1)(F), a Type F reorganization applies to:',
  explanation = 'Under IRC Section 368(a)(1)(F), a Type F reorganization involves a mere change in identity, form, or place of organization of a single corporation. Common examples include changing the state of incorporation (redomestication), changing the corporate name, or converting from a corporation to an LLC that elects corporate tax treatment. Choice A is incorrect because an acquisition of one corporation by another for voting stock describes a Type B reorganization. Choice D is incorrect because an insolvency reorganization under federal bankruptcy law is a Type G reorganization under Section 368(a)(1)(G).'
WHERE id = 5500;

-- Q5508 [score:6] short-stem(10w) → expand with scenario + cite IRC 368
UPDATE questions SET
  stem = 'Ridgemont Manufacturing files for Chapter 11 bankruptcy protection. Under the court-approved reorganization plan, Ridgemont transfers substantially all of its assets to Cascade Industries in exchange for Cascade voting stock, which is distributed to Ridgemont''s creditors in satisfaction of their claims. The tax advisor evaluates whether this qualifies as a tax-free reorganization. Under IRC Section 368(a)(1)(G), a Type G reorganization applies specifically to:',
  explanation = 'Under IRC Section 368(a)(1)(G), a Type G reorganization involves a transfer of assets by a debtor corporation to an acquiring corporation pursuant to a court-approved plan in a Title 11 bankruptcy or similar insolvency proceeding. Type G reorganizations have relaxed continuity of interest requirements — creditors receiving stock can satisfy the continuity requirement, which is a critical accommodation for insolvent entities where shareholders may receive nothing. Choice B is incorrect because partnership-to-corporation conversions are addressed under other code sections, not Type G. Choice D is incorrect because debt-for-equity exchanges within a single corporation are Type E recapitalizations.'
WHERE id = 5508;

-- === Government Auditing Standards (2 questions) ===

-- Q1128 [score:6] short-expl(26w) → expand explanation with citation
UPDATE questions SET
  stem = 'A staff auditor at Mercer & Associates is studying for the CPA exam and asks the engagement partner which types of engagements exist under Government Auditing Standards (the Yellow Book) that do not have a direct equivalent in AICPA GAAS. The partner describes an engagement type that evaluates program effectiveness, economy, and efficiency. Under GAGAS, which of the following is a type of engagement that exists under GAGAS but has no equivalent under AICPA GAAS?',
  explanation = 'Under Government Auditing Standards (the Yellow Book), performance audits evaluate government programs and activities for effectiveness (achieving intended results), economy (minimizing costs), and efficiency (maximizing output from resources). This engagement type is unique to GAGAS — the AICPA standards framework does not include an equivalent. Choice A is incorrect because financial statement audits exist under both GAGAS and GAAS. Choice B is incorrect because agreed-upon procedures engagements are available under both frameworks. Choice D is incorrect because review engagements also exist under AICPA AR-C standards.'
WHERE id = 1128;

-- Q1426 [score:6] length-cuing(43/165) → balance choices, expand stem
UPDATE questions SET
  stem = 'The Office of the Inspector General commissions an engagement to evaluate whether a federal job training program is achieving its stated goal of placing 80% of participants in employment within six months. The auditors gather evidence about placement rates, cost per placement, and program management practices. Under Government Auditing Standards, a performance audit is designed to:',
  choices = '["Express an opinion on the fairness of the program''s financial statements under GAAP or another framework","Compile financial data and program statistics for management''s internal use without providing assurance","Provide findings or conclusions based on evidence evaluated against criteria, addressing program effectiveness, economy, or efficiency","Perform specific agreed-upon procedures as requested by the program administrator and report factual findings"]',
  explanation = 'Under Government Auditing Standards (the Yellow Book), performance audits provide findings and conclusions based on sufficient, appropriate evidence evaluated against established criteria. They address program effectiveness (are goals being met?), economy (are costs minimized?), and efficiency (are resources used optimally?). Choice A is incorrect because expressing an opinion on financial statements is the purpose of a financial audit, not a performance audit. Choice D is incorrect because agreed-upon procedures engagements follow a client-specified scope, whereas performance audits are designed by the auditors based on the program''s objectives and risks.'
WHERE id = 1426;
