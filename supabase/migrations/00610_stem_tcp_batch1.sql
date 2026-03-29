-- Migration: Stem expansion — TCP batch 1 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for TCP section
-- Affected topics: Advanced Basis Calculations, Capital Structure Tax Planning, Entity Choice and Planning, Entity Formation and Restructuring, Entity Tax Compliance: NOLs and Consolidated Returns, Individual Tax Planning: Compensation, International Tax, Multi-Jurisdictional Tax Planning, Nontaxable Dispositions, Owner-Entity Transactions, Passive Activity and At-Risk Rules, Related Party Transactions, Retirement Plans and Education Savings, Trusts and Estates, Wealth Transfer and Gifting Strategies

BEGIN;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (4 questions)
-- ============================================================

-- ID 4182: Advanced Basis Calculations (9 words)
-- ORIGINAL STEM: The inside basis of a partnership asset refers to:
UPDATE questions SET
  stem = $EXPL$Granite Ridge Partners owns commercial real estate and equipment contributed by its three partners at formation. The partnership tracks its own adjusted basis in each asset on its books. The inside basis of a partnership asset refers to:$EXPL$
WHERE id = 4182;

-- ID 4184: Advanced Basis Calculations (9 words)
-- ORIGINAL STEM: What is the purpose of a Section 754 election?
UPDATE questions SET
  stem = $EXPL$Dawson purchases a 25% interest in Maple Creek Partners from a retiring partner for $400,000. The partnership''s total asset basis is $1,200,000, creating a discrepancy between Dawson''s purchase price and his share of inside basis. What is the purpose of a Section 754 election?$EXPL$
WHERE id = 4184;

-- ID 12918: Advanced Basis Calculations (9 words)
-- ORIGINAL STEM: How are partnership nonrecourse deductions generally allocated among partners?
UPDATE questions SET
  stem = $EXPL$Ridgeline Ventures borrows $2 million on a nonrecourse note secured solely by partnership property to finance a new development project. The loan creates additional deductions flowing through to the partners. How are partnership nonrecourse deductions generally allocated among partners?$EXPL$
WHERE id = 12918;

-- ID 12913: Advanced Basis Calculations (10 words)
-- ORIGINAL STEM: What is partnership minimum gain under Treasury Regulation Section 1.704-2?
UPDATE questions SET
  stem = $EXPL$Clearwater LP has a building with an adjusted basis of $600,000 subject to a $900,000 nonrecourse mortgage. The excess of the debt over the property''s basis creates a concept tracked under Treasury Regulation Section 1.704-2. What is partnership minimum gain?$EXPL$
WHERE id = 12913;

-- ============================================================
-- CAPITAL STRUCTURE TAX PLANNING (3 questions)
-- ============================================================

-- ID 4325: Capital Structure Tax Planning (8 words)
-- ORIGINAL STEM: Disallowed business interest expense under Section 163(j) is:
UPDATE questions SET
  stem = $EXPL$Pinnacle Manufacturing Corp incurred $1.2 million of business interest expense in 2025 but could only deduct $900,000 under the Section 163(j) limitation. The remaining $300,000 of disallowed business interest expense is:$EXPL$
WHERE id = 4325;

-- ID 4321: Capital Structure Tax Planning (14 words)
-- ORIGINAL STEM: Under Section 163(j), the business interest expense deduction for most taxpayers is limited to:
UPDATE questions SET
  stem = $EXPL$Atlas Industrial Corp, a C corporation with $50 million in average annual gross receipts, incurred significant interest expense on acquisition debt in 2025. The controller is computing the allowable deduction. Under Section 163(j), the business interest expense deduction for most taxpayers is limited to:$EXPL$
WHERE id = 4321;

-- ID 4342: Capital Structure Tax Planning (14 words)
-- ORIGINAL STEM: A tax-exempt organization borrows money to acquire an investment property. The interest expense is:
UPDATE questions SET
  stem = $EXPL$The Westfield Community Foundation, a Section 501(c)(3) organization, borrows $800,000 to purchase a commercial rental property expected to generate unrelated business income. The interest expense on this debt-financed property is:$EXPL$
WHERE id = 4342;

-- ============================================================
-- ENTITY CHOICE AND PLANNING (2 questions)
-- ============================================================

-- ID 4300: Entity Choice and Planning (10 words)
-- ORIGINAL STEM: A limited partner's share of partnership ordinary income is generally:
UPDATE questions SET
  stem = $EXPL$Nguyen invested $150,000 as a limited partner in Cascade Capital LP and does not participate in the firm''s day-to-day management. For the current year, the partnership allocates $40,000 of ordinary income to Nguyen. A limited partner''s share of partnership ordinary income is generally:$EXPL$
WHERE id = 4300;

-- ID 4298: Entity Choice and Planning (12 words)
-- ORIGINAL STEM: An S corporation cannot have which of the following as a shareholder?
UPDATE questions SET
  stem = $EXPL$Brightline Technologies Inc. is evaluating whether to elect S corporation status under Section 1362. The founders review the ownership structure to ensure all shareholders qualify. An S corporation cannot have which of the following as a shareholder?$EXPL$
WHERE id = 4298;

-- ============================================================
-- ENTITY FORMATION AND RESTRUCTURING (3 questions)
-- ============================================================

-- ID 4996: Entity Formation and Restructuring (9 words)
-- ORIGINAL STEM: A Type F reorganization under Section 368(a)(1)(F) applies to:
UPDATE questions SET
  stem = $EXPL$Northstar Inc., a Delaware corporation, reincorporates in Texas by forming a new Texas entity and transferring all assets and liabilities. The shareholders receive identical stock in the new corporation. A Type F reorganization under Section 368(a)(1)(F) applies to:$EXPL$
WHERE id = 4996;

-- ID 13582: Entity Formation and Restructuring (11 words)
-- ORIGINAL STEM: Under Section 1036, a tax-free exchange of stock is permitted when:
UPDATE questions SET
  stem = $EXPL$Warren holds 500 shares of Redwood Corp Class A voting common stock. Redwood offers shareholders the option to exchange their Class A shares for newly issued Class B nonvoting common stock. Under Section 1036, a tax-free exchange of stock is permitted when:$EXPL$
WHERE id = 13582;

-- ID 4989: Entity Formation and Restructuring (12 words)
-- ORIGINAL STEM: The continuity of interest (COI) doctrine requires that in a tax-free reorganization:
UPDATE questions SET
  stem = $EXPL$Global Dynamics Corp proposes to acquire Summit Technologies in a transaction intended to qualify as a tax-free reorganization. Summit''s shareholders will receive a combination of Global Dynamics stock and cash. The continuity of interest doctrine requires that in a tax-free reorganization:$EXPL$
WHERE id = 4989;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (3 questions)
-- ============================================================

-- ID 4093: Entity Tax Compliance: NOLs and Consolidated Returns (12 words)
-- ORIGINAL STEM: What triggers the acceleration rule for intercompany transactions in a consolidated group?
UPDATE questions SET
  stem = $EXPL$Apex Corp and its wholly owned subsidiary Beta Corp file a consolidated return. In 2023, Beta sold inventory to Apex at a $200,000 gain, which was deferred under the matching rule. In 2025, Beta is sold to an unrelated buyer. What triggers the acceleration rule for intercompany transactions in a consolidated group?$EXPL$
WHERE id = 4093;

-- ID 13744: Entity Tax Compliance: NOLs and Consolidated Returns (12 words)
-- ORIGINAL STEM: What tax year must all members of a consolidated return group use?
UPDATE questions SET
  stem = $EXPL$Falcon Industries acquires 100% of Eagle Manufacturing, which had been using a June 30 fiscal year end. Eagle will now join Falcon''s existing consolidated return group. What tax year must all members of a consolidated return group use?$EXPL$
WHERE id = 13744;

-- ID 960: Entity Tax Compliance: NOLs and Consolidated Returns (13 words)
-- ORIGINAL STEM: Under the TCJA, how are net operating losses (NOLs) generated after 2017 treated?
UPDATE questions SET
  stem = $EXPL$Westbrook Corp generated a $500,000 net operating loss in 2024. The CFO is determining whether the loss can be carried back to offset prior-year income. Under the TCJA, how are NOLs generated after 2017 treated?$EXPL$
WHERE id = 960;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (5 questions)
-- ============================================================

-- ID 904: Individual Tax Planning: Compensation (12 words)
-- ORIGINAL STEM: Which of the following types of compensation is excluded from gross income?
UPDATE questions SET
  stem = $EXPL$Martinez, a marketing manager at Orion Health Systems, receives a compensation package that includes salary, a year-end bonus, vacation pay, and employer-paid group health insurance. Which of the following types of compensation is excluded from gross income?$EXPL$
WHERE id = 904;

-- ID 3945: Individual Tax Planning: Compensation (12 words)
-- ORIGINAL STEM: Which of the following statements regarding the Section 83(b) election is correct?
UPDATE questions SET
  stem = $EXPL$In January 2025, Patel receives 5,000 shares of restricted stock from her employer, Vertex Technologies, subject to a three-year vesting schedule. Patel''s tax advisor recommends considering a Section 83(b) election. Which of the following statements regarding the election is correct?$EXPL$
WHERE id = 3945;

-- ID 12654: Individual Tax Planning: Compensation (12 words)
-- ORIGINAL STEM: What is the combined self-employment tax rate applied to net self-employment earnings?
UPDATE questions SET
  stem = $EXPL$Reeves operates a sole proprietorship consulting business and earned $185,000 of net profit in 2025. She is calculating her self-employment tax liability for the year. What is the combined self-employment tax rate applied to net self-employment earnings?$EXPL$
WHERE id = 12654;

-- ID 14095: Individual Tax Planning: Compensation (12 words)
-- ORIGINAL STEM: Which individuals are eligible to receive incentive stock options under Section 422?
UPDATE questions SET
  stem = $EXPL$TechVault Inc. is designing a new stock option plan and wants to issue incentive stock options (ISOs) under Section 422 to key contributors, including employees, independent contractors, and outside board members. Which individuals are eligible to receive ISOs?$EXPL$
WHERE id = 14095;

-- ID 905: Individual Tax Planning: Compensation (13 words)
-- ORIGINAL STEM: What is the tax treatment of a nonqualified stock option (NQSO) at exercise?
UPDATE questions SET
  stem = $EXPL$In March 2025, Torres exercises nonqualified stock options to purchase 2,000 shares of her employer''s stock at $15 per share when the market price is $42 per share. What is the tax treatment of an NQSO at exercise?$EXPL$
WHERE id = 905;

-- ============================================================
-- INTERNATIONAL TAX (3 questions)
-- ============================================================

-- ID 14642: International Tax (9 words)
-- ORIGINAL STEM: Under Section 884, what is the branch profits tax?
UPDATE questions SET
  stem = $EXPL$Kensington Ltd., a UK-based corporation, operates a U.S. branch that earns $3 million in effectively connected income. After paying regular U.S. corporate tax, the branch remits after-tax profits to the home office. Under Section 884, what is the branch profits tax?$EXPL$
WHERE id = 14642;

-- ID 971: International Tax (10 words)
-- ORIGINAL STEM: Under Section 957, what defines a controlled foreign corporation (CFC)?
UPDATE questions SET
  stem = $EXPL$Trident Corp, a U.S. multinational, owns 55% of the voting stock of a subsidiary incorporated in Ireland. Several other U.S. persons each own between 10% and 15%. Under Section 957, what defines a controlled foreign corporation?$EXPL$
WHERE id = 971;

-- ID 973: International Tax (12 words)
-- ORIGINAL STEM: Under Section 245A, what is the dividends received deduction for foreign-source dividends?
UPDATE questions SET
  stem = $EXPL$Harmon Industries, a domestic C corporation, owns 25% of a foreign subsidiary that pays a $2 million dividend from its foreign-source earnings. Harmon is evaluating the tax treatment of this dividend. Under Section 245A, what is the dividends received deduction for foreign-source dividends?$EXPL$
WHERE id = 973;

-- ============================================================
-- MULTI-JURISDICTIONAL TAX PLANNING (2 questions)
-- ============================================================

-- ID 14329: Multi-Jurisdictional Tax Planning (12 words)
-- ORIGINAL STEM: In the context of international tax treaties, what is a permanent establishment?
UPDATE questions SET
  stem = $EXPL$Sakura Electronics, a Japanese corporation, maintains a sales office and warehouse in Chicago staffed by full-time employees who negotiate and finalize contracts with U.S. customers. In the context of the U.S.-Japan tax treaty, what is a permanent establishment?$EXPL$
WHERE id = 14329;

-- ID 4966: Multi-Jurisdictional Tax Planning (13 words)
-- ORIGINAL STEM: A state that adopts "rolling conformity" to the Internal Revenue Code will automatically:
UPDATE questions SET
  stem = $EXPL$The state of Centerville defines its corporate income tax base by reference to the Internal Revenue Code as currently in effect, updating automatically whenever Congress enacts changes. A state that adopts rolling conformity to the IRC will automatically:$EXPL$
WHERE id = 4966;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (2 questions)
-- ============================================================

-- ID 14373: Nontaxable Dispositions (8 words)
-- ORIGINAL STEM: In a partial condemnation, what are severance damages?
UPDATE questions SET
  stem = $EXPL$The state highway department condemns a 2-acre strip along the front of Henderson''s 20-acre commercial parcel for road widening. Henderson receives $300,000 for the taken strip plus an additional payment for the decline in value of the remaining 18 acres. In a partial condemnation, what are severance damages?$EXPL$
WHERE id = 14373;

-- ID 14392: Nontaxable Dispositions (8 words)
-- ORIGINAL STEM: What is the purpose of IRS Form 6252?
UPDATE questions SET
  stem = $EXPL$Collins sold investment land in 2025 for $500,000, receiving $100,000 at closing and the balance in four annual installments. Collins''s tax preparer needs to report the gain proportionally as each payment is received. What is the purpose of IRS Form 6252?$EXPL$
WHERE id = 14392;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (3 questions)
-- ============================================================

-- ID 13507: Owner-Entity Transactions (8 words)
-- ORIGINAL STEM: Under Section 302, what is a stock redemption?
UPDATE questions SET
  stem = $EXPL$Midway Corp repurchases 200 of its outstanding shares from shareholder Dunn for $150,000 in cash. Dunn originally purchased the shares for $80,000. The tax advisor must determine whether this transaction qualifies as a sale or a distribution. Under Section 302, what is a stock redemption?$EXPL$
WHERE id = 13507;

-- ID 13521: Owner-Entity Transactions (9 words)
-- ORIGINAL STEM: Under Section 318(a)(3), what is the owner-to-entity attribution rule?
UPDATE questions SET
  stem = $EXPL$Garza owns 60% of Highland Corp and also personally owns 200 shares of unrelated Beacon Inc. Highland''s tax advisor is analyzing whether Garza''s Beacon shares should be attributed to Highland for related-party purposes. Under Section 318(a)(3), what is the owner-to-entity attribution rule?$EXPL$
WHERE id = 13521;

-- ID 13508: Owner-Entity Transactions (10 words)
-- ORIGINAL STEM: What is a constructive dividend for federal income tax purposes?
UPDATE questions SET
  stem = $EXPL$Keene, the sole shareholder of Keene Consulting Inc., uses the corporation''s beach house for two weeks of personal vacation each summer without paying rent. The IRS examiner is reviewing this arrangement. What is a constructive dividend for federal income tax purposes?$EXPL$
WHERE id = 13508;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (5 questions)
-- ============================================================

-- ID 5993: Passive Activity and At-Risk Rules (10 words)
-- ORIGINAL STEM: What happens to disallowed passive activity losses under Section 469?
UPDATE questions SET
  stem = $EXPL$Dr. Okafor, a full-time surgeon, invested in a limited partnership that generated a $45,000 loss in 2025. She has no passive income from other sources to offset the loss. What happens to disallowed passive activity losses under Section 469?$EXPL$
WHERE id = 5993;

-- ID 917: Passive Activity and At-Risk Rules (11 words)
-- ORIGINAL STEM: Under Section 469, what is the grouping election for passive activities?
UPDATE questions SET
  stem = $EXPL$Reynolds owns a restaurant and an adjacent catering business that share employees, equipment, and management. She wants to combine the two operations for purposes of applying the material participation tests. Under Section 469, what is the grouping election for passive activities?$EXPL$
WHERE id = 917;

-- ID 919: Passive Activity and At-Risk Rules (11 words)
-- ORIGINAL STEM: Under Section 465, what is the purpose of the at-risk rules?
UPDATE questions SET
  stem = $EXPL$Foster contributed $50,000 cash and obtained a $200,000 nonrecourse loan to invest in a film production partnership. The partnership generated a $180,000 loss allocated to Foster. Under Section 465, what is the purpose of the at-risk rules?$EXPL$
WHERE id = 919;

-- ID 920: Passive Activity and At-Risk Rules (11 words)
-- ORIGINAL STEM: Under Section 469, how are passive activity losses netted across activities?
UPDATE questions SET
  stem = $EXPL$Harper owns interests in three passive activities: Activity A generated $30,000 of income, Activity B produced a $50,000 loss, and Activity C produced a $10,000 loss. Under Section 469, how are passive activity losses netted across activities?$EXPL$
WHERE id = 920;

-- ID 5998: Passive Activity and At-Risk Rules (11 words)
-- ORIGINAL STEM: Under Section 469, which of the following defines a rental activity?
UPDATE questions SET
  stem = $EXPL$Brennan owns a lakefront cabin that she rents to vacationers for weekly stays throughout the summer. She also owns a commercial office building leased to a single tenant on a five-year term. Under Section 469, which of the following defines a rental activity?$EXPL$
WHERE id = 5998;

-- ============================================================
-- RELATED PARTY TRANSACTIONS (3 questions)
-- ============================================================

-- ID 1248: Related Party Transactions (8 words)
-- ORIGINAL STEM: Under Section 267, which relationships create related-party status?
UPDATE questions SET
  stem = $EXPL$Thornton sells depreciated stock to her brother for $18,000 and separately sells other stock at a loss to a corporation she controls. Her tax advisor is evaluating whether the loss deductions will be disallowed. Under Section 267, which relationships create related-party status?$EXPL$
WHERE id = 1248;

-- ID 1251: Related Party Transactions (12 words)
-- ORIGINAL STEM: Under Section 267, how does family attribution work for determining related-party status?
UPDATE questions SET
  stem = $EXPL$Franklin owns 30% of Crestwood Corp, and his daughter owns an additional 25%. Franklin''s tax advisor needs to determine whether Franklin is deemed to own more than 50% of the corporation. Under Section 267, how does family attribution work for determining related-party status?$EXPL$
WHERE id = 1251;

-- ID 4378: Related Party Transactions (12 words)
-- ORIGINAL STEM: Which of the following individuals are NOT related parties under Section 267(b)?
UPDATE questions SET
  stem = $EXPL$Rivera sold investment property at a loss to a family member and wants to confirm the loss is deductible. Her advisor reviews the Section 267(b) definitions. Which of the following individuals are NOT related parties under Section 267(b)?$EXPL$
WHERE id = 4378;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (5 questions)
-- ============================================================

-- ID 14223: Retirement Plans and Education Savings (7 words)
-- ORIGINAL STEM: What is a money purchase pension plan?
UPDATE questions SET
  stem = $EXPL$Lakewood Engineering, a mid-size manufacturer, is considering establishing a qualified retirement plan that requires fixed annual employer contributions regardless of profitability. The HR director is researching plan types. What is a money purchase pension plan?$EXPL$
WHERE id = 14223;

-- ID 946: Retirement Plans and Education Savings (9 words)
-- ORIGINAL STEM: What is the purpose of a SIMPLE IRA plan?
UPDATE questions SET
  stem = $EXPL$Burke owns a landscaping company with 35 employees and wants to offer a retirement benefit with minimal administrative burden. His accountant suggests a plan designed specifically for small employers. What is the purpose of a SIMPLE IRA plan?$EXPL$
WHERE id = 946;

-- ID 7790: Retirement Plans and Education Savings (11 words)
-- ORIGINAL STEM: What distinguishes a Roth 401(k) from a Roth IRA regarding eligibility?
UPDATE questions SET
  stem = $EXPL$Jensen, a senior executive earning $450,000 annually, wants to make after-tax retirement contributions that grow tax-free. She is comparing the Roth 401(k) option in her employer''s plan with a Roth IRA. What distinguishes a Roth 401(k) from a Roth IRA regarding eligibility?$EXPL$
WHERE id = 7790;

-- ID 14232: Retirement Plans and Education Savings (11 words)
-- ORIGINAL STEM: What is the IRS rule regarding indirect (60-day) rollovers between IRAs?
UPDATE questions SET
  stem = $EXPL$In April 2025, Whitman withdraws $80,000 from her Traditional IRA and deposits the funds into a savings account while deciding on a new investment strategy. She plans to redeposit the funds into another IRA. What is the IRS rule regarding indirect (60-day) rollovers between IRAs?$EXPL$
WHERE id = 14232;

-- ID 14240: Retirement Plans and Education Savings (11 words)
-- ORIGINAL STEM: What type of individual may establish a Keogh (HR-10) retirement plan?
UPDATE questions SET
  stem = $EXPL$Chambers earns income from both a full-time W-2 position and a freelance graphic design business reported on Schedule C. She wants to establish a Keogh (HR-10) plan. What type of individual may establish a Keogh retirement plan?$EXPL$
WHERE id = 14240;

-- ============================================================
-- TRUSTS AND ESTATES (2 questions)
-- ============================================================

-- ID 1013: Trusts and Estates (8 words)
-- ORIGINAL STEM: Under Sections 671-679, what defines a grantor trust?
UPDATE questions SET
  stem = $EXPL$In 2025, Walsh creates an irrevocable trust for the benefit of her children but retains the power to revoke the trust at any time. Her attorney advises that this power has significant income tax consequences. Under Sections 671-679, what defines a grantor trust?$EXPL$
WHERE id = 1013;

-- ID 1014: Trusts and Estates (12 words)
-- ORIGINAL STEM: Under Section 661, what is the distribution deduction for a complex trust?
UPDATE questions SET
  stem = $EXPL$The Pemberton Family Trust earned $120,000 of rental income and $30,000 of dividend income in 2025. The trustee distributed $90,000 to beneficiaries and accumulated the remainder. Under Section 661, what is the distribution deduction for a complex trust?$EXPL$
WHERE id = 1014;

-- ============================================================
-- WEALTH TRANSFER AND GIFTING STRATEGIES (5 questions)
-- ============================================================

-- ID 931: Wealth Transfer and Gifting Strategies (10 words)
-- ORIGINAL STEM: What is the purpose of the generation-skipping transfer tax (GSTT)?
UPDATE questions SET
  stem = $EXPL$Eleanor, a wealthy retiree with a $20 million estate, plans to transfer assets directly to her grandchildren, bypassing her children entirely. Her estate attorney warns that an additional federal transfer tax may apply. What is the purpose of the generation-skipping transfer tax?$EXPL$
WHERE id = 931;

-- ID 12808: Wealth Transfer and Gifting Strategies (10 words)
-- ORIGINAL STEM: What is portability in the context of federal estate tax?
UPDATE questions SET
  stem = $EXPL$Howard died in 2024 with a taxable estate of $5 million, leaving his entire estate to his surviving spouse, Margaret. Margaret''s estate planner advises her that Howard''s unused estate tax exemption may benefit her. What is portability in the context of federal estate tax?$EXPL$
WHERE id = 12808;

-- ID 930: Wealth Transfer and Gifting Strategies (11 words)
-- ORIGINAL STEM: Under Section 2503(e), what payments are excluded from the gift tax?
UPDATE questions SET
  stem = $EXPL$Vandermeer pays $85,000 directly to her grandson''s university for tuition and $40,000 directly to a hospital for her mother''s medical bills. She wonders whether these payments count against her annual gift tax exclusion. Under Section 2503(e), what payments are excluded from the gift tax?$EXPL$
WHERE id = 930;

-- ID 4020: Wealth Transfer and Gifting Strategies (11 words)
-- ORIGINAL STEM: Which of the following is NOT a type of generation-skipping transfer?
UPDATE questions SET
  stem = $EXPL$An estate planning attorney is reviewing a client''s proposed transfers to grandchildren and great-grandchildren to determine which transactions trigger the generation-skipping transfer tax. Which of the following is NOT a type of generation-skipping transfer?$EXPL$
WHERE id = 4020;

-- ID 12807: Wealth Transfer and Gifting Strategies (11 words)
-- ORIGINAL STEM: What does the gross estate include for federal estate tax purposes?
UPDATE questions SET
  stem = $EXPL$Caldwell died owning a personal residence, a brokerage account, a life insurance policy on which he held all incidents of ownership, and a revocable living trust. The executor is identifying assets includible in the estate. What does the gross estate include for federal estate tax purposes?$EXPL$
WHERE id = 12807;

COMMIT;
