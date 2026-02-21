-- Migration: Upgrade 6 Advanced Basis + 5 Wealth Transfer + 5 Entity Choice questions
-- Fixes: short-expl, short-stem, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- === Advanced Basis Calculations (6 questions) ===

-- Q996 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  stem = 'Martinez is a partner in Ridgemont Consulting LLC and begins the year with an outside basis of $50,000. During the year, the partnership allocates $30,000 of ordinary income to Martinez and distributes $20,000 in cash. Under IRC Section 705, what is Martinez''s ending outside basis?',
  explanation = 'Under IRC Section 705, a partner''s outside basis is increased by the partner''s share of partnership income ($30,000) and decreased by distributions ($20,000). Starting basis $50,000 + income $30,000 = $80,000 − distribution $20,000 = $60,000 ending basis. Income increases basis first, then distributions reduce it — this ordering prevents distributions from creating taxable gain when income is allocated in the same year. Choice B ($50,000) incorrectly assumes income and distributions offset each other. Choice C ($80,000) fails to subtract the distribution.'
WHERE id = 996;

-- Q1000 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  stem = 'Chen is the sole shareholder of Ashford Consulting, an S corporation. Chen begins the year with stock basis of $25,000. The corporation reports ordinary income of $15,000, a separately stated long-term capital gain of $5,000, and a charitable contribution of $3,000. Under IRC Section 1367, what is Chen''s ending stock basis?',
  explanation = 'Under IRC Section 1367, S corporation stock basis is adjusted for all items that flow through to the shareholder. Basis increases: ordinary income $15,000 + capital gain $5,000 = $20,000 increase. Basis decreases: charitable contribution $3,000. Ending basis: $25,000 + $20,000 − $3,000 = $42,000. Both income items (ordinary and separately stated) increase basis, while the charitable deduction decreases it. Choice B ($40,000) incorrectly omits the capital gain. Choice C ($45,000) incorrectly omits the charitable contribution reduction.'
WHERE id = 1000;

-- Q1004 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 743(b), when a Section 754 election is in effect, the purchasing partner receives a basis adjustment equal to the difference between the price paid (outside basis) and the purchasing partner''s share of the partnership''s inside basis. Adjustment = $500,000 − (1/3 × $900,000) = $500,000 − $300,000 = $200,000 step-up. This adjustment is allocated among the partnership''s assets under Section 755 and only affects Partner D''s share of depreciation, amortization, and gain/loss calculations. Choice B ($300,000) incorrectly uses Partner D''s share of inside basis as the adjustment. Choice C ($600,000) incorrectly uses the total difference between FMV and inside basis.'
WHERE id = 1004;

-- Q1005 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 1366(d), S corporation losses are deductible only to the extent of the shareholder''s stock and debt basis. Losses first reduce stock basis: $10,000 stock basis absorbs $10,000 of the $20,000 loss, reducing stock basis to $0. The remaining $10,000 of loss then reduces debt basis: $15,000 − $10,000 = $5,000 remaining debt basis. Stock basis = $0, debt basis = $5,000. Choice B reverses the ordering — stock must be reduced to zero before debt basis is used. Choice D ($0/$0) incorrectly suggests the full loss eliminates both bases, but only $20,000 of $25,000 total basis was needed.'
WHERE id = 1005;

-- Q4193 [score:6] short-stem → expand with scenario + cite IRC 1366(d)
UPDATE questions SET
  stem = 'Rivera is the sole shareholder of Thornfield Services, an S corporation. Rivera lends $50,000 directly to the corporation via a promissory note. The corporation also borrows $100,000 from First National Bank, with Rivera personally guaranteeing the loan. The corporation reports a $60,000 operating loss. Rivera must determine whether she has sufficient basis to deduct the full loss. Under IRC Section 1366(d), which of the following creates debt basis for an S corporation shareholder?',
  explanation = 'Under IRC Section 1366(d)(1)(B), only direct loans from the shareholder to the S corporation create debt basis. Rivera''s $50,000 direct loan creates debt basis, but the $100,000 bank loan guaranteed by Rivera does not — even though Rivera is personally liable on the guarantee. This is a critical distinction that differs from partnership rules, where guaranteed debt can increase a partner''s outside basis. Choice B is incorrect because mere guarantees of third-party debt do not create S corporation shareholder debt basis. Choice C and D are also incorrect because only loans directly from the shareholder qualify.'
WHERE id = 4193;

-- Q4194 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'A CPA candidate studying S corporation taxation asks what the accumulated adjustments account (AAA) represents and why it matters for distributions. The instructor explains that AAA is an entity-level account that determines the tax treatment of distributions when an S corporation has accumulated earnings and profits (E&P) from a prior C corporation period. The accumulated adjustments account (AAA) of an S corporation tracks:',
  explanation = 'The AAA tracks the cumulative amount of S corporation income that has been taxed to shareholders but not yet distributed. It is used to determine whether distributions are tax-free returns of previously taxed income (from AAA) or taxable dividends (from accumulated E&P). This distinction matters only when the S corporation has accumulated E&P from a prior C corporation period. Choice A is incorrect because total assets is a balance sheet concept, not related to AAA. Choice C is incorrect because retained earnings is a financial reporting concept under GAAP, while AAA is a tax accounting concept.'
WHERE id = 4194;

-- === Wealth Transfer and Gifting (5 questions) ===

-- Q924 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  stem = 'In 2026, Thornton makes gifts of $20,000 each to five grandchildren. The annual gift tax exclusion for 2026 is $19,000 per donee. Thornton wants to know the total amount of taxable gifts that must be reported on Form 709. Under IRC Section 2503, what is the total amount of taxable gifts?',
  explanation = 'Under IRC Section 2503(b), each gift exceeds the $19,000 annual exclusion by $1,000. Taxable gifts per donee = $20,000 − $19,000 = $1,000. Total taxable gifts across all five donees = $1,000 × 5 = $5,000. These taxable gifts reduce Thornton''s lifetime exemption but do not trigger current gift tax unless the cumulative lifetime exemption has been exhausted. Choice A ($0) incorrectly assumes the full $20,000 is excluded. Choice B ($95,000) incorrectly treats the entire gift amount as taxable without applying the annual exclusion.'
WHERE id = 924;

-- Q928 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 2702, the taxable gift for a GRAT equals the fair market value of the assets transferred minus the present value of the retained annuity interest: $2,000,000 − $1,500,000 = $500,000. The grantor''s retained annuity interest ($200,000/year for 10 years) is valued using the Section 7520 rate (120% of the applicable federal midterm rate). If the trust assets appreciate faster than the 7520 rate, the excess passes to the remainder beneficiaries transfer-tax-free. Choice A ($2,000,000) ignores the retained interest entirely. Choice C ($1,500,000) uses the retained interest value as the gift rather than subtracting it.'
WHERE id = 928;

-- Q933 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 2505, the unified credit shelters cumulative lifetime gifts up to the exemption amount ($14,500,000 in 2026 as extended by H.R. 1). Cumulative taxable gifts = $5,018,000 (Year 1) + $6,000,000 (Year 2) = $11,018,000. Since $11,018,000 is below the $14,500,000 exemption, no gift tax is owed — the unified credit fully shelters both gifts. Choice B ($564,800) incorrectly calculates tax on only the Year 2 gift without considering the remaining exemption. Choice C ($2,400,000) appears to apply the 40% rate to the Year 2 gift without applying the unified credit.'
WHERE id = 933;

-- Q1300 [score:6] short-stem → expand with scenario + cite H.R. 1
UPDATE questions SET
  stem = 'A high-net-worth client asks her CPA at Prescott & Associates when the elevated estate and gift tax lifetime exemption is scheduled to sunset. The CPA explains that H.R. 1 (the One Big Beautiful Bill) extended the TCJA''s higher exemption amounts beyond their original 2025 expiration. Under H.R. 1, the elevated estate and gift tax lifetime exemption was extended through:',
  explanation = 'H.R. 1 extended the elevated estate and gift tax lifetime exemption (originally set to sunset after 2025 under TCJA) through 2029. Without this extension, the exemption would have reverted to approximately $7 million (indexed for inflation). The extension gives high-net-worth individuals additional years to utilize the higher exemption amount ($14.5 million for 2026) in estate and gift tax planning. Choice A (2026) is incorrect because the original TCJA sunset was after 2025 — H.R. 1 extends further. Choice D is incorrect because the extension is not permanent; it sunsets after 2029.'
WHERE id = 1300;

-- Q4001 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  stem = 'A CPA candidate studying wealth transfer taxation asks what the current generation-skipping transfer tax (GSTT) rate is for 2026. The instructor explains that the GSTT imposes a flat tax on transfers that skip a generation — such as grandparent-to-grandchild transfers — in addition to any estate or gift tax. Under IRC Chapter 13, what is the GSTT rate for 2026?',
  explanation = 'Under IRC Section 2641, the generation-skipping transfer tax rate for 2026 is a flat 40%, the same as the maximum estate and gift tax rate. The GSTT applies in addition to any estate or gift tax on transfers to skip persons (generally grandchildren or persons more than one generation below the transferor). The GSTT exemption for 2026 is $13.99 million, matching the unified estate and gift tax exemption. Choice A (35%) is incorrect — that was the rate under prior law. Choice C (39.6%) is incorrect — that is the pre-TCJA top individual income tax rate, not the GSTT rate.'
WHERE id = 4001;

-- === Entity Choice and Planning (5 questions) ===

-- Q1040 [score:6] short-stem → expand with scenario + cite IRC 1361
UPDATE questions SET
  stem = 'A business owner considering S corporation election asks her CPA at Mercer & Associates about the maximum number of shareholders the entity can have without losing its S election. The CPA explains that the IRC imposes a strict limit. Under IRC Section 1361(b)(1)(A), an S corporation is limited to how many shareholders?',
  explanation = 'Under IRC Section 1361(b)(1)(A), an S corporation may have no more than 100 shareholders. Members of a family (defined as individuals within six generations of a common ancestor) are treated as one shareholder for this purpose. All shareholders must be U.S. individuals, certain trusts, or estates. Choice A (50) is incorrect — the limit was raised from 75 to 100 in 2004. Choice D is incorrect because S corporations have a strict numerical limit, unlike partnerships and LLCs.'
WHERE id = 1040;

-- Q1042 [score:6] short-stem → expand with scenario + cite IRC 1361
UPDATE questions SET
  stem = 'Ashford Industries is evaluating whether to elect S corporation status. The company''s ownership includes two U.S. individuals, a single-member LLC owned by a U.S. citizen, a qualified Subchapter S trust (QSST), and a nonresident alien who holds a 5% interest. The CPA at Calloway & Partners reviews the shareholder eligibility rules. Under IRC Section 1361(b)(1)(C), which of the following is NOT an eligible S corporation shareholder?',
  explanation = 'Under IRC Section 1361(b)(1)(C), nonresident aliens cannot be S corporation shareholders. Eligible shareholders are limited to U.S. citizens and residents, certain trusts (QSSTs, ESBTs, grantor trusts, voting trusts), and estates. Corporations, partnerships, and nonresident aliens are ineligible. The 5% interest held by the nonresident alien would prevent Ashford from making a valid S election. Choice A is incorrect because U.S. resident individuals are eligible. Choice B is incorrect because a single-member LLC owned by a U.S. individual is a disregarded entity whose owner is the eligible shareholder.'
WHERE id = 1042;

-- Q1043 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  stem = 'Rodriguez is a general partner in Ridgemont Consulting LLP. The partnership allocates $100,000 of ordinary business income to Rodriguez for 2026. Rodriguez wants to know how much of this income is subject to self-employment tax. Under IRC Section 1402, for self-employment tax purposes, a general partner must pay SE tax on:',
  explanation = 'Under IRC Section 1402(a), a general partner''s distributive share of partnership ordinary business income is subject to self-employment tax (15.3% up to the Social Security wage base, 2.9% Medicare above that), regardless of whether the income is actually distributed. This is a key disadvantage of general partnerships compared to S corporations, where shareholder distributions are not subject to SE tax. Choice A is incorrect because partnership income is subject to SE tax for general partners. Choice C is incorrect because the SE tax applies to the full distributive share of ordinary business income, not just guaranteed payments.'
WHERE id = 1043;

-- Q1044 [score:6] short-stem → expand with scenario + cite IRC 199A
UPDATE questions SET
  stem = 'A tax advisor at Prescott & Associates is evaluating the Section 199A qualified business income deduction for several clients. One client owns a law firm, another owns a medical practice, a third owns an architecture firm, and a fourth owns a consulting practice. The advisor must determine which businesses qualify as specified service trades or businesses (SSTBs), which face deduction limitations at higher income levels. Under IRC Section 199A, SSTBs include all of the following EXCEPT:',
  explanation = 'Under IRC Section 199A(d)(2), architecture and engineering are specifically excluded from the SSTB definition — a notable carve-out from the broader professional services category. SSTBs include health, law, accounting, actuarial science, performing arts, consulting, athletics, financial services, and brokerage services. At higher taxable income levels, the QBI deduction phases out entirely for SSTBs. Choice A is incorrect because law is explicitly listed as an SSTB. Choice B is incorrect because medical practices fall under "health," which is an SSTB.'
WHERE id = 1044;

-- Q1302 [score:6] short-stem → expand with scenario + cite H.R. 1
UPDATE questions SET
  stem = 'A tax advisor at Mercer & Associates is advising clients on how the extension of TCJA individual tax provisions under H.R. 1 affects their 2026 planning. The advisor reviews the key provisions that were set to expire after 2025 but have now been extended. Under H.R. 1, the extended TCJA individual tax provisions include:',
  explanation = 'H.R. 1 extended the TCJA individual income tax provisions that were scheduled to sunset after 2025. Key provisions include the 37% top marginal rate (down from the pre-TCJA 39.6%), wider tax brackets, the nearly doubled standard deduction ($30,000 MFJ for 2026), and the $10,000 SALT deduction cap. Choice A is incorrect because there is no flat 25% rate — the progressive rate structure with a 37% top rate was maintained. Choice C is incorrect because the standard deduction was nearly doubled under TCJA, not eliminated. Choice D is incorrect because the AMT was retained with higher exemption amounts, not repealed.'
WHERE id = 1302;
