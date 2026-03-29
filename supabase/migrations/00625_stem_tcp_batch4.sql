-- Migration: Stem expansion — TCP batch 4 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for TCP section
-- Affected topics: Advanced Basis Calculations, Capital Structure Tax Planning, Entity Choice and Planning, Entity Formation and Liquidation, Entity Formation and Restructuring, Entity Tax Compliance: NOLs and Consolidated Returns, Individual Tax Planning: Compensation, International Tax, Multi-Jurisdictional Tax Planning, Nontaxable Dispositions, Owner-Entity Transactions, Passive Activity and At-Risk Rules, Related Party Transactions, Retirement Plans and Education Savings, Trusts and Estates, Wealth Transfer and Gifting Strategies

BEGIN;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (3 questions)
-- ============================================================

-- ID 4209: Advanced Basis Calculations (13 words)
-- ORIGINAL STEM: The Section 743(b) adjustment applies to which party in a partnership interest transfer?
UPDATE questions SET
  stem = $EXPL$Greer Capital Partners has a Section 754 election in effect. In March 2026, Partner Dawson sells her one-third interest to an outside buyer for $240,000. The buyer''s share of inside basis is $180,000. The resulting Section 743(b) adjustment applies to which party?$EXPL$
WHERE id = 4209;

-- ID 12919: Advanced Basis Calculations (13 words)
-- ORIGINAL STEM: Under IRC Section 704(c), what is a "built-in gain" on contributed partnership property?
UPDATE questions SET
  stem = $EXPL$Nakamura contributes land with a fair market value of $300,000 and an adjusted basis of $120,000 to the Ridgepoint Partnership in exchange for a 40% interest. Under IRC Section 704(c), what is the "built-in gain" on this contributed property?$EXPL$
WHERE id = 12919;

-- ID 14497: Advanced Basis Calculations (13 words)
-- ORIGINAL STEM: Under IRC Section 704(d), what limits a partner's deduction of allocated partnership losses?
UPDATE questions SET
  stem = $EXPL$Thornton is a 25% partner in Elm Street Ventures, which allocates him a $90,000 loss for 2026. Thornton''s outside basis in the partnership is $55,000. Under IRC Section 704(d), what limits Thornton''s deduction of the allocated loss?$EXPL$
WHERE id = 14497;

-- ============================================================
-- CAPITAL STRUCTURE TAX PLANNING (2 questions)
-- ============================================================

-- ID 4326: Capital Structure Tax Planning (18 words)
-- ORIGINAL STEM: A corporation issues $1,000,000 in bonds at a discount, receiving $950,000. The $50,000 original issue discount (OID) is:
UPDATE questions SET
  stem = $EXPL$In January 2026, Halcyon Industries issues $1,000,000 face value 10-year bonds to institutional investors, receiving proceeds of $950,000. For federal tax purposes, the $50,000 original issue discount (OID) is:$EXPL$
WHERE id = 4326;

-- ID 14680: Capital Structure Tax Planning (18 words)
-- ORIGINAL STEM: If the IRS successfully reclassifies a shareholder's debt instrument as equity, how is the repayment of principal treated?
UPDATE questions SET
  stem = $EXPL$Whitfield, the sole shareholder of Cascade Corp, loaned $500,000 to the corporation documented by a promissory note. On audit, the IRS reclassifies the note as an equity contribution. How is Cascade''s repayment of the $500,000 principal treated?$EXPL$
WHERE id = 14680;

-- ============================================================
-- ENTITY CHOICE AND PLANNING (2 questions)
-- ============================================================

-- ID 4284: Entity Choice and Planning (17 words)
-- ORIGINAL STEM: Which of the following is an advantage of operating as a partnership rather than an S corporation?
UPDATE questions SET
  stem = $EXPL$Three investors are forming a new real estate venture and are deciding between an S corporation and a partnership. Their attorney notes that partnerships offer certain structural advantages. Which of the following is an advantage of operating as a partnership rather than an S corporation?$EXPL$
WHERE id = 4284;

-- ID 4308: Entity Choice and Planning (17 words)
-- ORIGINAL STEM: An S corporation issues a second class of stock with different distribution rights. What is the consequence?
UPDATE questions SET
  stem = $EXPL$Pinnacle Technologies, an S corporation, issues preferred shares to a new investor that carry a fixed 6% cumulative dividend preference ahead of common shareholders. What is the consequence of issuing this second class of stock with different distribution rights?$EXPL$
WHERE id = 4308;

-- ============================================================
-- ENTITY FORMATION AND LIQUIDATION (2 questions)
-- ============================================================

-- ID 13271: Entity Formation and Liquidation (17 words)
-- ORIGINAL STEM: Under Section 731(a)(2), when may a partner recognize a loss on a liquidating distribution from a partnership?
UPDATE questions SET
  stem = $EXPL$Ortega receives a liquidating distribution from Maple Partners consisting of $30,000 cash and $15,000 in accounts receivable. Her outside basis in the partnership is $70,000. Under Section 731(a)(2), when may a partner recognize a loss on a liquidating distribution?$EXPL$
WHERE id = 13271;

-- ID 14541: Entity Formation and Liquidation (18 words)
-- ORIGINAL STEM: Under Section 336(a), what is the general rule for a corporation that distributes property in a complete liquidation?
UPDATE questions SET
  stem = $EXPL$Dalton Manufacturing adopts a plan of complete liquidation and distributes equipment with a fair market value of $400,000 and an adjusted basis of $150,000 to its shareholders. Under Section 336(a), what is the general rule for recognizing gain or loss on this distribution?$EXPL$
WHERE id = 14541;

-- ============================================================
-- ENTITY FORMATION AND RESTRUCTURING (2 questions)
-- ============================================================

-- ID 14569: Entity Formation and Restructuring (15 words)
-- ORIGINAL STEM: Under Section 351, what percentage of stock ownership constitutes "control" immediately after a property-for-stock exchange?
UPDATE questions SET
  stem = $EXPL$Five individuals transfer property to a newly formed corporation in exchange for all of its stock. Their tax advisor confirms they meet the Section 351 control requirement. What percentage of stock ownership constitutes "control" immediately after the exchange?$EXPL$
WHERE id = 14569;

-- ID 4999: Entity Formation and Restructuring (16 words)
-- ORIGINAL STEM: The continuity of business enterprise (COBE) doctrine requires that after a reorganization, the acquiring corporation must:
UPDATE questions SET
  stem = $EXPL$Apex Industries acquires all assets of Beacon Corp in a Type A statutory merger. The IRS is evaluating whether the continuity of business enterprise (COBE) doctrine is satisfied. After the reorganization, the acquiring corporation must:$EXPL$
WHERE id = 4999;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (3 questions)
-- ============================================================

-- ID 4074: Entity Tax Compliance: NOLs and Consolidated Returns (16 words)
-- ORIGINAL STEM: Which of the following entities is generally excluded from an affiliated group for consolidated return purposes?
UPDATE questions SET
  stem = $EXPL$Metro Holdings owns 100% of four subsidiaries and is evaluating whether all can be included in a consolidated federal return. The tax director notes that certain entity types are ineligible. Which of the following entities is generally excluded from an affiliated group?$EXPL$
WHERE id = 4074;

-- ID 14598: Entity Tax Compliance: NOLs and Consolidated Returns (16 words)
-- ORIGINAL STEM: How does an affiliated group of corporations elect to file a consolidated federal income tax return?
UPDATE questions SET
  stem = $EXPL$NorthStar Corp and its three wholly owned domestic C corporation subsidiaries want to begin filing a single consolidated return for the 2026 tax year. How does the affiliated group make this election?$EXPL$
WHERE id = 14598;

-- ID 4085: Entity Tax Compliance: NOLs and Consolidated Returns (17 words)
-- ORIGINAL STEM: A calendar-year C corporation must make estimated tax payments in four installments. What are the due dates?
UPDATE questions SET
  stem = $EXPL$Redwood Industries, a calendar-year C corporation, expects to owe $800,000 in federal income tax for 2026. The controller is setting up quarterly estimated tax payments. What are the due dates for these four installments?$EXPL$
WHERE id = 4085;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (8 questions)
-- ============================================================

-- ID 3952: Individual Tax Planning: Compensation (17 words)
-- ORIGINAL STEM: Which of the following best describes the tax treatment of employer-provided group-term life insurance under Section 79?
UPDATE questions SET
  stem = $EXPL$Langley Corp provides $120,000 of group-term life insurance coverage to all full-time employees at no cost. An employee reviewing her W-2 asks how this benefit is taxed. Which of the following best describes the tax treatment under Section 79?$EXPL$
WHERE id = 3952;

-- ID 12635: Individual Tax Planning: Compensation (17 words)
-- ORIGINAL STEM: What is the additional Medicare tax rate imposed on earned income exceeding $200,000 for a single filer?
UPDATE questions SET
  stem = $EXPL$Dr. Patel, a single filer, earns $310,000 in wages during 2026 and notices an additional withholding on her pay stubs beyond the standard 1.45% Medicare tax. What is the additional Medicare tax rate imposed on earned income exceeding $200,000?$EXPL$
WHERE id = 12635;

-- ID 12652: Individual Tax Planning: Compensation (17 words)
-- ORIGINAL STEM: Under Section 83, what creates a "substantial risk of forfeiture" for property transferred in connection with services?
UPDATE questions SET
  stem = $EXPL$Rivera receives 5,000 restricted shares from her employer that vest ratably over four years contingent on continued employment. Under Section 83, what creates a "substantial risk of forfeiture" for property transferred in connection with services?$EXPL$
WHERE id = 12652;

-- ID 14083: Individual Tax Planning: Compensation (17 words)
-- ORIGINAL STEM: Within what time period must a Section 83(b) election be filed after the transfer of restricted property?
UPDATE questions SET
  stem = $EXPL$On August 15, 2026, Collins receives restricted stock from his employer subject to a three-year vesting schedule. His advisor recommends filing a Section 83(b) election. Within what time period after the transfer must this election be filed?$EXPL$
WHERE id = 14083;

-- ID 12657: Individual Tax Planning: Compensation (18 words)
-- ORIGINAL STEM: Under Section 409A, when must an employee generally make a deferral election for a nonqualified deferred compensation plan?
UPDATE questions SET
  stem = $EXPL$Jennings, a senior VP at Trident Corp, wants to defer $200,000 of her 2027 bonus into the company''s nonqualified deferred compensation plan. Under Section 409A, when must she make this deferral election?$EXPL$
WHERE id = 12657;

-- ID 908: Individual Tax Planning: Compensation (19 words)
-- ORIGINAL STEM: A nonqualified deferred compensation plan violates Section 409A. The employee has $300,000 of vested deferrals. What additional tax applies?
UPDATE questions SET
  stem = $EXPL$Mercer participates in a nonqualified deferred compensation plan at Orion Industries. An IRS audit determines the plan violates Section 409A distribution timing requirements. Mercer has $300,000 of vested deferrals. What additional tax applies to these amounts?$EXPL$
WHERE id = 908;

-- ID 3926: Individual Tax Planning: Compensation (19 words)
-- ORIGINAL STEM: A key executive participates in a rabbi trust arrangement. Which of the following statements about rabbi trusts is correct?
UPDATE questions SET
  stem = $EXPL$Sterling Corp establishes a rabbi trust to fund deferred compensation obligations for its CEO, placing $500,000 with an independent trustee. Which of the following statements about rabbi trusts is correct?$EXPL$
WHERE id = 3926;

-- ID 3948: Individual Tax Planning: Compensation (19 words)
-- ORIGINAL STEM: Which of the following fringe benefits is specifically excluded from income under Section 132(f) as a qualified transportation benefit?
UPDATE questions SET
  stem = $EXPL$Kendall Enterprises is reviewing which commuter benefits it can offer employees on a tax-free basis. The HR director is evaluating options under the qualified transportation fringe benefit rules. Which benefit is specifically excluded from income under Section 132(f)?$EXPL$
WHERE id = 3948;

-- ============================================================
-- INTERNATIONAL TAX (3 questions)
-- ============================================================

-- ID 4115: International Tax (16 words)
-- ORIGINAL STEM: Which of the following is the correct categorization for the Section 904 foreign tax credit limitation?
UPDATE questions SET
  stem = $EXPL$Vanguard Corp, a U.S. multinational, paid $2.4 million in foreign income taxes across several countries in 2026. The tax department is computing the Section 904 foreign tax credit limitation. Which of the following correctly describes how this limitation is categorized?$EXPL$
WHERE id = 4115;

-- ID 14159: International Tax (16 words)
-- ORIGINAL STEM: Under Section 482, what standard does the IRS apply when evaluating transfer prices between related parties?
UPDATE questions SET
  stem = $EXPL$Crestline Corp sells component parts to its wholly owned subsidiary in Ireland at prices below those charged to unrelated customers. The IRS is reviewing these intercompany prices under Section 482. What standard does the IRS apply?$EXPL$
WHERE id = 14159;

-- ID 14651: International Tax (17 words)
-- ORIGINAL STEM: For purposes of the GILTI computation under Section 951A, what does qualified business asset investment (QBAI) represent?
UPDATE questions SET
  stem = $EXPL$A U.S. shareholder is computing its GILTI inclusion for 2026. Its CFC operates a manufacturing plant abroad with $12 million in depreciable tangible assets. For purposes of the GILTI computation under Section 951A, what does qualified business asset investment (QBAI) represent?$EXPL$
WHERE id = 14651;

-- ============================================================
-- MULTI-JURISDICTIONAL TAX PLANNING (2 questions)
-- ============================================================

-- ID 4972: Multi-Jurisdictional Tax Planning (15 words)
-- ORIGINAL STEM: Which of the following best describes an economic nexus standard for state income tax purposes?
UPDATE questions SET
  stem = $EXPL$DataStream Inc., headquartered in Texas, sells cloud software subscriptions to customers in 40 states without any physical offices or employees outside Texas. Several states assert income tax jurisdiction. Which of the following best describes an economic nexus standard?$EXPL$
WHERE id = 4972;

-- ID 14316: Multi-Jurisdictional Tax Planning (16 words)
-- ORIGINAL STEM: What standard does IRC Section 482 apply to transactions between related parties in a multinational group?
UPDATE questions SET
  stem = $EXPL$GlobalTech U.S. licenses intellectual property to its wholly owned subsidiary in Singapore, charging a below-market royalty rate. The IRS examines the arrangement under IRC Section 482. What standard applies to these related-party transactions?$EXPL$
WHERE id = 14316;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (2 questions)
-- ============================================================

-- ID 14387: Nontaxable Dispositions (13 words)
-- ORIGINAL STEM: Which of the following events qualifies as an involuntary conversion under Section 1033?
UPDATE questions SET
  stem = $EXPL$Harmon Enterprises lost its primary warehouse in a flood in September 2026 and received $800,000 in insurance proceeds. Harmon''s tax advisor is evaluating potential gain deferral options. Which of the following events qualifies as an involuntary conversion under Section 1033?$EXPL$
WHERE id = 14387;

-- ID 4355: Nontaxable Dispositions (15 words)
-- ORIGINAL STEM: For condemnation of real property held for business or investment, the replacement property standard is:
UPDATE questions SET
  stem = $EXPL$The state condemns a commercial building owned by Prescott Holdings for a highway project, paying $1.2 million. Prescott plans to reinvest the proceeds to defer gain under Section 1033. For condemned real property held for business or investment, the replacement property standard is:$EXPL$
WHERE id = 4355;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (3 questions)
-- ============================================================

-- ID 992: Owner-Entity Transactions (14 words)
-- ORIGINAL STEM: Under Section 311, what happens when a corporation distributes appreciated property to a shareholder?
UPDATE questions SET
  stem = $EXPL$BrightPath Corp declares a property dividend, distributing equipment with a fair market value of $250,000 and an adjusted basis of $90,000 to its sole shareholder. Under Section 311, what happens when a corporation distributes appreciated property?$EXPL$
WHERE id = 992;

-- ID 4147: Owner-Entity Transactions (14 words)
-- ORIGINAL STEM: Which of the following best describes the reasonable compensation issue for S corporation shareholder-employees?
UPDATE questions SET
  stem = $EXPL$Delaney, the sole shareholder-employee of an S corporation, pays herself a $40,000 salary and takes $260,000 in distributions. The IRS examines this arrangement. Which of the following best describes the reasonable compensation issue?$EXPL$
WHERE id = 4147;

-- ID 989: Owner-Entity Transactions (16 words)
-- ORIGINAL STEM: Under Section 351, what is the tax treatment when a transferor receives stock solely for services?
UPDATE questions SET
  stem = $EXPL$Hoffman contributes legal services valued at $75,000 in exchange for 15% of the stock of a newly formed corporation. The other founders contribute property. Under Section 351, what is the tax treatment when a transferor receives stock solely for services?$EXPL$
WHERE id = 989;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (5 questions)
-- ============================================================

-- ID 5961: Passive Activity and At-Risk Rules (15 words)
-- ORIGINAL STEM: Under Section 465, which type of entity is generally exempt from the at-risk limitation rules?
UPDATE questions SET
  stem = $EXPL$Westbrook Consulting LLC invests in a leveraged equipment leasing venture. The tax manager is determining whether the at-risk limitation rules under Section 465 apply. Which type of entity is generally exempt from these rules?$EXPL$
WHERE id = 5961;

-- ID 6068: Passive Activity and At-Risk Rules (15 words)
-- ORIGINAL STEM: Under Section 465(b)(3), which type of borrowed amount is excluded from a taxpayer's at-risk amount?
UPDATE questions SET
  stem = $EXPL$Franklin borrows $200,000 from his brother to invest in a film production partnership. The loan is fully recourse with a written promissory note. Under Section 465(b)(3), which type of borrowed amount is excluded from a taxpayer''s at-risk amount?$EXPL$
WHERE id = 6068;

-- ID 3983: Passive Activity and At-Risk Rules (16 words)
-- ORIGINAL STEM: Which of the following is classified as portfolio income rather than passive income under Section 469?
UPDATE questions SET
  stem = $EXPL$Garcia holds a limited partnership interest in a real estate venture and also owns publicly traded stocks and bonds. She is categorizing her income for passive activity limitation purposes. Which of the following is classified as portfolio income under Section 469?$EXPL$
WHERE id = 3983;

-- ID 5916: Passive Activity and At-Risk Rules (17 words)
-- ORIGINAL STEM: Under IRC Section 469, which type of income is classified as portfolio income rather than passive income?
UPDATE questions SET
  stem = $EXPL$Brennan is a limited partner in two rental partnerships and also earns dividends and interest from personal brokerage accounts. His CPA is applying the passive activity rules. Under Section 469, which type of income is classified as portfolio income?$EXPL$
WHERE id = 5916;

-- ID 5987: Passive Activity and At-Risk Rules (17 words)
-- ORIGINAL STEM: Which of the following situations is excluded from the rental activity definition under the Section 469 regulations?
UPDATE questions SET
  stem = $EXPL$Lakeside Hospitality LLC operates a beachfront resort where the average guest stay is four days. The tax advisor is evaluating whether this qualifies as a rental activity. Which situation is excluded from the rental activity definition under the Section 469 regulations?$EXPL$
WHERE id = 5987;

-- ============================================================
-- RELATED PARTY TRANSACTIONS (2 questions)
-- ============================================================

-- ID 1253: Related Party Transactions (17 words)
-- ORIGINAL STEM: Under Section 267, what is the consequence of a loss on a sale to a related party?
UPDATE questions SET
  stem = $EXPL$Henderson sells 1,000 shares of Apex stock to his daughter for $40,000. His adjusted basis in the shares is $65,000. Under Section 267, what is the consequence of the $25,000 loss on this sale to a related party?$EXPL$
WHERE id = 1253;

-- ID 4394: Related Party Transactions (17 words)
-- ORIGINAL STEM: A taxpayer sells property to his brother at FMV for a $20,000 gain. Is the gain recognized?
UPDATE questions SET
  stem = $EXPL$Patterson sells investment land to his brother Marcus for $120,000, its current fair market value. Patterson''s adjusted basis is $100,000, resulting in a $20,000 gain. Under Section 267, is this gain recognized?$EXPL$
WHERE id = 4394;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (5 questions)
-- ============================================================

-- ID 4061: Retirement Plans and Education Savings (16 words)
-- ORIGINAL STEM: What is the maximum SEP IRA contribution for an employee with compensation of $350,000 in 2026?
UPDATE questions SET
  stem = $EXPL$Greenfield Dental Associates sponsors a SEP IRA for its employees. Dr. Greenfield, age 52, earns $350,000 in compensation for 2026. What is the maximum SEP IRA contribution the practice can make on her behalf?$EXPL$
WHERE id = 4061;

-- ID 7782: Retirement Plans and Education Savings (16 words)
-- ORIGINAL STEM: What type of income is required to make a contribution to an individual retirement account (IRA)?
UPDATE questions SET
  stem = $EXPL$Morrison, age 45, receives $80,000 in rental income and $12,000 in stock dividends during 2026 but has no wages or self-employment income. She wants to contribute to an IRA. What type of income is required to make a contribution?$EXPL$
WHERE id = 7782;

-- ID 4039: Retirement Plans and Education Savings (17 words)
-- ORIGINAL STEM: An employee participates in a SIMPLE IRA plan in 2026. What is the maximum employee elective deferral?
UPDATE questions SET
  stem = $EXPL$Chen, age 38, works for a small accounting firm with 40 employees that sponsors a SIMPLE IRA plan. She wants to maximize her elective deferral for 2026. What is the maximum employee elective deferral allowed?$EXPL$
WHERE id = 4039;

-- ID 4041: Retirement Plans and Education Savings (17 words)
-- ORIGINAL STEM: Which of the following is a key advantage of a Roth IRA compared to a traditional IRA?
UPDATE questions SET
  stem = $EXPL$Wallace, age 35, is deciding between contributing to a Roth IRA and a traditional IRA for 2026. Her financial advisor highlights a key benefit of the Roth option. Which of the following is a key advantage of a Roth IRA compared to a traditional IRA?$EXPL$
WHERE id = 4041;

-- ID 4055: Retirement Plans and Education Savings (17 words)
-- ORIGINAL STEM: Which of the following is a qualified higher education expense for purposes of tax-free 529 plan distributions?
UPDATE questions SET
  stem = $EXPL$The Nguyen family withdraws $25,000 from a Section 529 plan to pay their daughter''s college costs for the fall 2026 semester. They want to confirm the distribution is tax-free. Which of the following is a qualified higher education expense for purposes of 529 plan distributions?$EXPL$
WHERE id = 4055;

-- ============================================================
-- TRUSTS AND ESTATES (1 questions)
-- ============================================================

-- ID 1015: Trusts and Estates (16 words)
-- ORIGINAL STEM: Under the Internal Revenue Code, an estate filing Form 1041 is allowed a personal exemption of:
UPDATE questions SET
  stem = $EXPL$The executor of the estate of Margaret Hollis is preparing the estate''s first Form 1041 income tax return for the 2026 fiscal year. Under the Internal Revenue Code, the estate is allowed a personal exemption deduction of:$EXPL$
WHERE id = 1015;

-- ============================================================
-- WEALTH TRANSFER AND GIFTING STRATEGIES (5 questions)
-- ============================================================

-- ID 12806: Wealth Transfer and Gifting Strategies (14 words)
-- ORIGINAL STEM: What type of gift qualifies for the annual gift tax exclusion under Section 2503(b)?
UPDATE questions SET
  stem = $EXPL$Eleanor transfers $19,000 to an irrevocable trust for her grandson''s benefit. The trust includes a Crummey withdrawal power allowing the grandson to demand distributions for 30 days after each contribution. What type of gift qualifies for the annual gift tax exclusion under Section 2503(b)?$EXPL$
WHERE id = 12806;

-- ID 14663: Wealth Transfer and Gifting Strategies (14 words)
-- ORIGINAL STEM: Under what circumstance must a donor file Form 709, United States Gift Tax Return?
UPDATE questions SET
  stem = $EXPL$In 2026, Fitzgerald gives $25,000 in cash to his niece and $15,000 to his nephew. He made no other gifts during the year and the annual exclusion is $19,000. Under what circumstance must Fitzgerald file Form 709?$EXPL$
WHERE id = 14663;

-- ID 14669: Wealth Transfer and Gifting Strategies (14 words)
-- ORIGINAL STEM: What is the relationship between the federal gift tax and the federal estate tax?
UPDATE questions SET
  stem = $EXPL$A wealth planning attorney explains to her client that lifetime gifts and transfers at death are governed by a single integrated system. What is the relationship between the federal gift tax and the federal estate tax?$EXPL$
WHERE id = 14669;

-- ID 937: Wealth Transfer and Gifting Strategies (15 words)
-- ORIGINAL STEM: The alternate valuation date under Section 2032 allows the executor to value estate assets at:
UPDATE questions SET
  stem = $EXPL$The executor of the Caldwell estate is considering electing the alternate valuation date under Section 2032 because asset values declined sharply after the decedent''s death. This election allows the executor to value estate assets at:$EXPL$
WHERE id = 937;

-- ID 4021: Wealth Transfer and Gifting Strategies (15 words)
-- ORIGINAL STEM: A charitable remainder trust must meet the 10% remainder test. What does this requirement mean?
UPDATE questions SET
  stem = $EXPL$An estate planner is structuring a charitable remainder annuity trust for a 70-year-old client who wants to benefit a university. The advisor notes the trust must satisfy the 10% remainder test. What does this requirement mean?$EXPL$
WHERE id = 4021;

COMMIT;
