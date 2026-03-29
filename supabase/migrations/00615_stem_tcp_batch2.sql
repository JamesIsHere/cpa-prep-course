-- Migration: Stem expansion — TCP batch 2 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for TCP section
-- Affected topics: Advanced Basis Calculations, Capital Structure Tax Planning, Entity Choice and Planning, Entity Formation and Liquidation, Entity Formation and Restructuring, Entity Tax Compliance: NOLs and Consolidated Returns, Individual Tax Planning: Compensation, International Tax, Multi-Jurisdictional Tax Planning, Nontaxable Dispositions, Owner-Entity Transactions, Passive Activity and At-Risk Rules, Related Party Transactions, Retirement Plans and Education Savings, Trusts and Estates, Wealth Transfer and Gifting Strategies

BEGIN;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (4 questions)
-- ============================================================

-- ID 1000: Advanced Basis Calculations (11 words)
-- ORIGINAL STEM: What is the ordering rule for S corporation shareholder basis adjustments?
UPDATE questions SET
  stem = $EXPL$Nora owns 40% of Ridgepoint Services Inc., a calendar-year S corporation. At year-end, the company reports ordinary income, tax-exempt income, a cash distribution, and an ordinary loss. In what order must Nora adjust her stock basis for these items?$EXPL$
WHERE id = 1000;

-- ID 12932: Advanced Basis Calculations (11 words)
-- ORIGINAL STEM: How does tax-exempt income affect an S corporation shareholder's stock basis?
UPDATE questions SET
  stem = $EXPL$Kessler Analytics, an S corporation, received $18,000 of tax-exempt municipal bond interest during 2025. Marcus, a 50% shareholder, is computing his year-end stock basis. How does the tax-exempt income affect Marcus''s stock basis?$EXPL$
WHERE id = 12932;

-- ID 999: Advanced Basis Calculations (12 words)
-- ORIGINAL STEM: What is a partner's outside basis when a partnership interest is purchased?
UPDATE questions SET
  stem = $EXPL$On July 1, 2025, Claire purchases a 25% interest in the Sandstone Partnership from a retiring partner for $180,000. The partnership''s total inside basis in its assets is $600,000. What is Claire''s outside basis in the partnership interest?$EXPL$
WHERE id = 999;

-- ID 4189: Advanced Basis Calculations (12 words)
-- ORIGINAL STEM: What is the correct ordering of adjustments to S corporation stock basis?
UPDATE questions SET
  stem = $EXPL$Rafael, the sole shareholder of Beacon Corp (an S corporation), begins 2025 with $50,000 of stock basis. During the year, Beacon reports income, losses, a distribution, and nondeductible expenses. What is the correct ordering of adjustments to Rafael''s stock basis?$EXPL$
WHERE id = 4189;

-- ============================================================
-- CAPITAL STRUCTURE TAX PLANNING (2 questions)
-- ============================================================

-- ID 4316: Capital Structure Tax Planning (15 words)
-- ORIGINAL STEM: A corporation issues bonds to raise capital. The interest paid on corporate bonds is generally:
UPDATE questions SET
  stem = $EXPL$Pinnacle Industries Inc. issues $5 million in 10-year bonds at a 6% coupon rate to finance a new manufacturing facility. For federal income tax purposes, the interest paid on these corporate bonds is generally:$EXPL$
WHERE id = 4316;

-- ID 4323: Capital Structure Tax Planning (15 words)
-- ORIGINAL STEM: The Section 163(j) business interest limitation does not apply to which of the following taxpayers?
UPDATE questions SET
  stem = $EXPL$Crossroads LLC, a retail business, has averaged $22 million in annual gross receipts over the prior three tax years. The company''s CPA is evaluating whether Section 163(j) applies. The Section 163(j) business interest limitation does not apply to which of the following taxpayers?$EXPL$
WHERE id = 4323;

-- ============================================================
-- ENTITY CHOICE AND PLANNING (2 questions)
-- ============================================================

-- ID 4302: Entity Choice and Planning (14 words)
-- ORIGINAL STEM: Which of the following is NOT a requirement for a valid S corporation election?
UPDATE questions SET
  stem = $EXPL$Three entrepreneurs form Trailhead Corp and want to elect S corporation status by filing Form 2553. Their attorney reviews the eligibility criteria. Which of the following is NOT a requirement for a valid S corporation election?$EXPL$
WHERE id = 4302;

-- ID 4289: Entity Choice and Planning (16 words)
-- ORIGINAL STEM: A single-member LLC that does not file Form 8832 is treated for federal tax purposes as:
UPDATE questions SET
  stem = $EXPL$Victoria Chen forms Lakewood Consulting LLC as a single-member limited liability company under state law. She does not file Form 8832. For federal tax purposes, the LLC is treated as:$EXPL$
WHERE id = 4289;

-- ============================================================
-- ENTITY FORMATION AND LIQUIDATION (2 questions)
-- ============================================================

-- ID 1029: Entity Formation and Liquidation (10 words)
-- ORIGINAL STEM: Under Section 351, what are the requirements for tax-free incorporation?
UPDATE questions SET
  stem = $EXPL$Avery and Brenda transfer business equipment and inventory to a newly formed corporation in exchange for all of its stock. They want the transfer to qualify as tax-free under Section 351. What are the requirements for this nonrecognition treatment?$EXPL$
WHERE id = 1029;

-- ID 1032: Entity Formation and Liquidation (13 words)
-- ORIGINAL STEM: Under Section 331, how is a liquidating distribution to a minority shareholder taxed?
UPDATE questions SET
  stem = $EXPL$Greystone Corp adopts a plan of complete liquidation. Derek, who owns 15% of the outstanding stock with a basis of $40,000, receives assets worth $95,000. Under Section 331, how is this liquidating distribution to Derek taxed?$EXPL$
WHERE id = 1032;

-- ============================================================
-- ENTITY FORMATION AND RESTRUCTURING (2 questions)
-- ============================================================

-- ID 4998: Entity Formation and Restructuring (12 words)
-- ORIGINAL STEM: A Section 338(g) election differs from a Section 338(h)(10) election primarily because:
UPDATE questions SET
  stem = $EXPL$Apex Industries acquires 100% of Target Corp stock in a qualified stock purchase. Apex''s tax advisor is comparing a Section 338(g) election with a Section 338(h)(10) election. A 338(g) election differs from a 338(h)(10) election primarily because:$EXPL$
WHERE id = 4998;

-- ID 5002: Entity Formation and Restructuring (13 words)
-- ORIGINAL STEM: In a reorganization, the "device test" under Section 355 is designed to prevent:
UPDATE questions SET
  stem = $EXPL$Orion Corp proposes to spin off its software division into a new subsidiary and distribute the subsidiary''s stock to shareholders. The IRS evaluates the transaction under Section 355. The "device test" in this context is designed to prevent:$EXPL$
WHERE id = 5002;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (3 questions)
-- ============================================================

-- ID 965: Entity Tax Compliance: NOLs and Consolidated Returns (13 words)
-- ORIGINAL STEM: Which of the following entities may NOT be included in a consolidated return?
UPDATE questions SET
  stem = $EXPL$Henderson Holdings owns 100% of four domestic subsidiaries: a C corporation, an S corporation, a REIT, and a manufacturing C corporation. The parent is evaluating consolidated filing. Which of these entities may NOT be included in a consolidated return?$EXPL$
WHERE id = 965;

-- ID 4071: Entity Tax Compliance: NOLs and Consolidated Returns (13 words)
-- ORIGINAL STEM: Under post-TCJA rules, which type of taxpayer may still carry back an NOL?
UPDATE questions SET
  stem = $EXPL$Morrison Agricultural Co. generated a $200,000 net operating loss in 2025. The company''s CPA is researching whether any carryback provision applies. Under post-TCJA rules, which type of taxpayer may still carry back an NOL?$EXPL$
WHERE id = 4071;

-- ID 959: Entity Tax Compliance: NOLs and Consolidated Returns (14 words)
-- ORIGINAL STEM: What is required for a group of affiliated corporations to file a consolidated return?
UPDATE questions SET
  stem = $EXPL$National Brands Inc. owns interests in several domestic subsidiaries and wants to file a single consolidated federal income tax return. What ownership threshold must the parent meet for the group to qualify as an affiliated group?$EXPL$
WHERE id = 959;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (5 questions)
-- ============================================================

-- ID 12658: Individual Tax Planning: Compensation (13 words)
-- ORIGINAL STEM: What is the effect of the Social Security wage base on self-employment tax?
UPDATE questions SET
  stem = $EXPL$Patricia, a self-employed consultant, earned $250,000 of net self-employment income in 2026. She is calculating her SE tax liability and considering the Social Security wage base of $181,200. What is the effect of this wage base on her SE tax?$EXPL$
WHERE id = 12658;

-- ID 14629: Individual Tax Planning: Compensation (13 words)
-- ORIGINAL STEM: Under Section 132(m), which employer-provided benefit is excluded from an employee's gross income?
UPDATE questions SET
  stem = $EXPL$Whitfield Corp maintains a 401(k) plan and offers several advisory services to employees. The HR director asks which benefits qualify for a tax exclusion. Under Section 132(m), which employer-provided benefit is excluded from an employee''s gross income?$EXPL$
WHERE id = 14629;

-- ID 902: Individual Tax Planning: Compensation (14 words)
-- ORIGINAL STEM: Under Section 83(b), what is the purpose of an 83(b) election for restricted stock?
UPDATE questions SET
  stem = $EXPL$On March 1, 2025, Tessa receives 5,000 shares of restricted stock from her employer worth $10 per share, vesting over four years. Her CPA suggests filing a Section 83(b) election within 30 days. What is the primary purpose of this election?$EXPL$
WHERE id = 902;

-- ID 3930: Individual Tax Planning: Compensation (14 words)
-- ORIGINAL STEM: Which of the following correctly describes the tax treatment of restricted stock units (RSUs)?
UPDATE questions SET
  stem = $EXPL$Blake''s compensation package at Veridian Tech includes 2,000 restricted stock units that vest ratably over three years. Blake asks his tax advisor about the income recognition rules. Which of the following correctly describes the tax treatment of RSUs?$EXPL$
WHERE id = 3930;

-- ID 3937: Individual Tax Planning: Compensation (14 words)
-- ORIGINAL STEM: Which of the following best describes a "working condition fringe benefit" under Section 132?
UPDATE questions SET
  stem = $EXPL$Eastwick Corp provides its regional sales manager with a company vehicle used exclusively for client visits and business travel. The manager asks whether this benefit is taxable. Which of the following best describes a "working condition fringe benefit" under Section 132?$EXPL$
WHERE id = 3937;

-- ============================================================
-- INTERNATIONAL TAX (3 questions)
-- ============================================================

-- ID 4125: International Tax (12 words)
-- ORIGINAL STEM: Which of the following is NOT a category of Subpart F income?
UPDATE questions SET
  stem = $EXPL$Global Dynamics Inc., a U.S. parent, owns 100% of a CFC incorporated in Ireland. The CFC earns multiple types of income that may trigger current U.S. inclusion. Which of the following is NOT a category of Subpart F income?$EXPL$
WHERE id = 4125;

-- ID 972: International Tax (13 words)
-- ORIGINAL STEM: Under Section 267A, a deduction is disallowed for payments between related parties if:
UPDATE questions SET
  stem = $EXPL$Techstone Inc., a U.S. corporation, makes a $2 million royalty payment to its wholly owned subsidiary in a low-tax jurisdiction. The IRS reviews the transaction under Section 267A. A deduction is disallowed for this related-party payment if:$EXPL$
WHERE id = 972;

-- ID 4105: International Tax (13 words)
-- ORIGINAL STEM: Which of the following types of income is classified as Subpart F income?
UPDATE questions SET
  stem = $EXPL$Falcon Corp, a U.S. shareholder, owns 60% of a CFC based in Singapore. The CFC earns various types of income during 2025. Which of the following types of income is classified as Subpart F income?$EXPL$
WHERE id = 4105;

-- ============================================================
-- MULTI-JURISDICTIONAL TAX PLANNING (2 questions)
-- ============================================================

-- ID 4970: Multi-Jurisdictional Tax Planning (13 words)
-- ORIGINAL STEM: Under AU-C 210, what is a required element of an audit engagement letter?
UPDATE questions SET
  stem = $EXPL$Prescott & Langley CPA firm is preparing an engagement letter for a new audit client, Greenfield Enterprises. The firm wants to ensure compliance with AU-C 210. What is a required element of this engagement letter?$EXPL$
WHERE id = 4970;

-- ID 4981: Multi-Jurisdictional Tax Planning (13 words)
-- ORIGINAL STEM: A throwout rule differs from a throwback rule in that a throwout rule:
UPDATE questions SET
  stem = $EXPL$Hartwell Industries has sales in three states but is not taxable in one of them. The company''s tax advisor is analyzing how each state''s apportionment formula handles untaxed sales. A throwout rule differs from a throwback rule in that a throwout rule:$EXPL$
WHERE id = 4981;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (2 questions)
-- ============================================================

-- ID 1239: Nontaxable Dispositions (11 words)
-- ORIGINAL STEM: Under Section 453, what is the installment method of reporting gain?
UPDATE questions SET
  stem = $EXPL$In October 2025, Reynolds sells undeveloped land with a basis of $80,000 for $200,000, receiving $50,000 at closing and the balance in three annual installments. Under Section 453, what is the installment method of reporting the gain on this sale?$EXPL$
WHERE id = 1239;

-- ID 1240: Nontaxable Dispositions (12 words)
-- ORIGINAL STEM: Under Section 453, how is depreciation recapture treated in an installment sale?
UPDATE questions SET
  stem = $EXPL$Dawson sells manufacturing equipment with $45,000 of accumulated depreciation on an installment basis, receiving payments over four years. Under Section 453, how is the depreciation recapture component treated in this installment sale?$EXPL$
WHERE id = 1240;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (3 questions)
-- ============================================================

-- ID 13513: Owner-Entity Transactions (11 words)
-- ORIGINAL STEM: Which family members are included in Section 318 constructive ownership attribution?
UPDATE questions SET
  stem = $EXPL$Garrett owns 30% of Oakmont Corp. His father, brother, and daughter also hold shares. Garrett''s tax advisor is applying the Section 318 constructive ownership rules. Which family members'' shares are attributed to Garrett under Section 318?$EXPL$
WHERE id = 13513;

-- ID 13518: Owner-Entity Transactions (11 words)
-- ORIGINAL STEM: What type of property triggers ordinary income recharacterization under Section 1239?
UPDATE questions SET
  stem = $EXPL$Sandra, who owns 100% of Crestline Corp, sells a commercial building to the corporation for $600,000, resulting in a $150,000 gain. Crestline will use and depreciate the building. What type of property triggers ordinary income recharacterization under Section 1239?$EXPL$
WHERE id = 13518;

-- ID 13498: Owner-Entity Transactions (12 words)
-- ORIGINAL STEM: What is the purpose of the constructive ownership rules under Section 318?
UPDATE questions SET
  stem = $EXPL$Montrose Corp is evaluating whether a stock redemption from a 40% shareholder qualifies as a sale or exchange. The shareholder''s spouse and adult children also own shares. What is the purpose of the constructive ownership rules under Section 318?$EXPL$
WHERE id = 13498;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (5 questions)
-- ============================================================

-- ID 6016: Passive Activity and At-Risk Rules (12 words)
-- ORIGINAL STEM: Under IRC Section 469(d)(2), how are tax credits from passive activities treated?
UPDATE questions SET
  stem = $EXPL$Jordan invested $100,000 in a solar energy limited partnership that generated $12,000 of rehabilitation tax credits in 2025. Jordan does not materially participate. Under Section 469(d)(2), how are these tax credits from a passive activity treated?$EXPL$
WHERE id = 6016;

-- ID 6080: Passive Activity and At-Risk Rules (12 words)
-- ORIGINAL STEM: What is the general definition of a passive activity under Section 469?
UPDATE questions SET
  stem = $EXPL$Dr. Holt, a full-time surgeon, owns a 30% interest in a restaurant where she spends fewer than 50 hours per year. She is determining how to classify the restaurant for tax purposes. What is the general definition of a passive activity under Section 469?$EXPL$
WHERE id = 6080;

-- ID 918: Passive Activity and At-Risk Rules (13 words)
-- ORIGINAL STEM: Which of the following is a test for material participation under Section 469?
UPDATE questions SET
  stem = $EXPL$Kevin, a software engineer, spends 520 hours managing a landscaping business he co-owns during 2025. He is evaluating whether his involvement meets the material participation standard. Which of the following is a test for material participation under Section 469?$EXPL$
WHERE id = 918;

-- ID 6030: Passive Activity and At-Risk Rules (13 words)
-- ORIGINAL STEM: Under IRC Section 469(j)(8), which characteristic defines an activity as a rental activity?
UPDATE questions SET
  stem = $EXPL$Thornton LLC leases heavy construction equipment to contractors under long-term agreements. The owners are determining whether the activity is classified as a rental activity for passive loss purposes. Under Section 469(j)(8), which characteristic defines an activity as a rental activity?$EXPL$
WHERE id = 6030;

-- ID 5946: Passive Activity and At-Risk Rules (14 words)
-- ORIGINAL STEM: Under Section 469, how are passive activity losses treated for a personal service corporation?
UPDATE questions SET
  stem = $EXPL$Brightline Medical PC, a personal service corporation owned entirely by physician-shareholders, invests in a rental property that generates a $40,000 loss. Under Section 469, how are passive activity losses treated for a personal service corporation?$EXPL$
WHERE id = 5946;

-- ============================================================
-- RELATED PARTY TRANSACTIONS (3 questions)
-- ============================================================

-- ID 14471: Related Party Transactions (12 words)
-- ORIGINAL STEM: Under Section 267(b)(1), are half-siblings (sharing one common parent) considered related parties?
UPDATE questions SET
  stem = $EXPL$James sells stock at a $15,000 loss to his half-sister Laura, with whom he shares the same father but has a different mother. James''s CPA reviews whether the loss is deductible. Under Section 267(b)(1), are half-siblings considered related parties?$EXPL$
WHERE id = 14471;

-- ID 4384: Related Party Transactions (14 words)
-- ORIGINAL STEM: Under the wash sale rule, the 30-day window for acquiring substantially identical securities extends:
UPDATE questions SET
  stem = $EXPL$On November 10, 2025, Patel sells 200 shares of Nexus Corp stock at a $6,000 loss. She is considering repurchasing similar shares soon. Under the wash sale rule, the 30-day window for acquiring substantially identical securities extends:$EXPL$
WHERE id = 4384;

-- ID 4399: Related Party Transactions (14 words)
-- ORIGINAL STEM: Under the wash sale rule, what is the holding period for the replacement securities?
UPDATE questions SET
  stem = $EXPL$On March 5, 2025, Rivera sells shares at a loss and repurchases substantially identical shares on March 20. A wash sale is triggered. Under the wash sale rule, what is the holding period for the replacement securities?$EXPL$
WHERE id = 4399;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (5 questions)
-- ============================================================

-- ID 4042: Retirement Plans and Education Savings (12 words)
-- ORIGINAL STEM: A 403(b) plan is available to employees of which types of organizations?
UPDATE questions SET
  stem = $EXPL$Dr. Weiss recently accepted a teaching position at a private university. The HR department offers enrollment in the institution''s 403(b) retirement plan. A 403(b) plan is available to employees of which types of organizations?$EXPL$
WHERE id = 4042;

-- ID 14226: Retirement Plans and Education Savings (12 words)
-- ORIGINAL STEM: What is the primary characteristic of an employee stock ownership plan (ESOP)?
UPDATE questions SET
  stem = $EXPL$Hawthorne Manufacturing is considering establishing an ESOP to provide employees with an ownership stake in the company. The CFO asks the plan consultant to explain the structure. What is the primary characteristic of an employee stock ownership plan?$EXPL$
WHERE id = 14226;

-- ID 4035: Retirement Plans and Education Savings (13 words)
-- ORIGINAL STEM: Which of the following correctly describes the Roth IRA income limits for 2026?
UPDATE questions SET
  stem = $EXPL$Elena, a single taxpayer with modified AGI of $160,000 in 2026, wants to make a direct Roth IRA contribution. Her financial advisor reviews the eligibility rules. Which of the following correctly describes the Roth IRA income limits for 2026?$EXPL$
WHERE id = 4035;

-- ID 947: Retirement Plans and Education Savings (14 words)
-- ORIGINAL STEM: What is the tax consequence of converting a traditional IRA to a Roth IRA?
UPDATE questions SET
  stem = $EXPL$In 2025, Henderson, age 52, converts his $120,000 traditional IRA (all pre-tax contributions and earnings) to a Roth IRA. He made no nondeductible contributions. What is the tax consequence of this conversion?$EXPL$
WHERE id = 947;

-- ID 7770: Retirement Plans and Education Savings (14 words)
-- ORIGINAL STEM: Which type of retirement plan is covered by the Pension Benefit Guaranty Corporation (PBGC)?
UPDATE questions SET
  stem = $EXPL$A large manufacturer with both a defined benefit pension plan and a 401(k) plan is concerned about funding shortfalls. The CFO asks which plan carries federal insurance protection. Which type of retirement plan is covered by the PBGC?$EXPL$
WHERE id = 7770;

-- ============================================================
-- TRUSTS AND ESTATES (2 questions)
-- ============================================================

-- ID 4263: Trusts and Estates (12 words)
-- ORIGINAL STEM: A simple trust is allowed a personal exemption deduction of what amount?
UPDATE questions SET
  stem = $EXPL$The Barrett Family Trust is classified as a simple trust for 2025 because it is required to distribute all income currently, makes no charitable contributions, and does not distribute corpus. What personal exemption deduction is this trust allowed?$EXPL$
WHERE id = 4263;

-- ID 4256: Trusts and Estates (13 words)
-- ORIGINAL STEM: What form is used to report the income of an estate or trust?
UPDATE questions SET
  stem = $EXPL$After Margaret Walsh''s death in January 2025, her executor must file an annual income tax return for the estate. What form is used to report the income of an estate or trust?$EXPL$
WHERE id = 4256;

-- ============================================================
-- WEALTH TRANSFER AND GIFTING STRATEGIES (5 questions)
-- ============================================================

-- ID 14187: Wealth Transfer and Gifting Strategies (11 words)
-- ORIGINAL STEM: What deduction does Section 2058 allow for federal estate tax purposes?
UPDATE questions SET
  stem = $EXPL$The estate of Franklin Morris, a Florida resident who died in 2025, paid $320,000 in state estate taxes. The estate''s attorney is preparing the federal estate tax return. What deduction does Section 2058 allow for federal estate tax purposes?$EXPL$
WHERE id = 14187;

-- ID 3994: Wealth Transfer and Gifting Strategies (12 words)
-- ORIGINAL STEM: In 2026, what is the annual gift tax exclusion amount per donee?
UPDATE questions SET
  stem = $EXPL$Evelyn plans to make cash gifts to each of her four grandchildren during 2026. She wants to give the maximum amount without filing a gift tax return. In 2026, what is the annual gift tax exclusion amount per donee?$EXPL$
WHERE id = 3994;

-- ID 3996: Wealth Transfer and Gifting Strategies (12 words)
-- ORIGINAL STEM: What is the unified estate and gift tax exemption amount for 2026?
UPDATE questions SET
  stem = $EXPL$Walter, a widower, is working with his estate attorney to evaluate how much wealth he can transfer free of federal estate and gift tax. What is the unified estate and gift tax exemption amount for 2026?$EXPL$
WHERE id = 3996;

-- ID 3998: Wealth Transfer and Gifting Strategies (12 words)
-- ORIGINAL STEM: Which of the following transfers qualifies for the annual gift tax exclusion?
UPDATE questions SET
  stem = $EXPL$In December 2025, Robert makes several transfers: $15,000 cash to his daughter, a remainder interest in a trust to his nephew, and a $10,000 contribution to a Crummey trust for his grandson. Which of these transfers qualifies for the annual gift tax exclusion?$EXPL$
WHERE id = 3998;

-- ID 4010: Wealth Transfer and Gifting Strategies (12 words)
-- ORIGINAL STEM: Which of the following transfers is subject to the generation-skipping transfer tax?
UPDATE questions SET
  stem = $EXPL$Helen, age 78, is considering several wealth transfers: a gift to her daughter, a direct gift to her granddaughter, and a distribution from a trust to her grandson. Helen''s advisor reviews the GSTT implications. Which of these transfers is subject to the generation-skipping transfer tax?$EXPL$
WHERE id = 4010;

COMMIT;
