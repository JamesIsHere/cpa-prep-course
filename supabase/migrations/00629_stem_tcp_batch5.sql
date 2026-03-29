-- Migration: Stem expansion — TCP batch 5 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for TCP section
-- Affected topics: Advanced Basis Calculations, Capital Structure Tax Planning, Entity Choice and Planning, Entity Formation and Liquidation, Entity Formation and Restructuring, Entity Tax Compliance: NOLs and Consolidated Returns, Individual Tax Planning: Compensation, International Tax, Multi-Jurisdictional Tax Planning, Nontaxable Dispositions, Owner-Entity Transactions, Passive Activity and At-Risk Rules, Related Party Transactions, Retirement Plans and Education Savings, Trusts and Estates, Wealth Transfer and Gifting Strategies

BEGIN;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (3 questions)
-- ============================================================

-- ID 14490: Advanced Basis Calculations (14 words)
-- ORIGINAL STEM: Under Section 733, how does a current cash distribution affect a partner's outside basis?
UPDATE questions SET
  stem = $EXPL$Westbrook Partners LP distributes $80,000 in cash to partner Lydia Chen during the current year as a non-liquidating distribution. Lydia''s outside basis in her partnership interest is $120,000 before the distribution. Under Section 733, how does this current cash distribution affect Lydia''s outside basis?$EXPL$
WHERE id = 14490;

-- ID 4185: Advanced Basis Calculations (15 words)
-- ORIGINAL STEM: Once a partnership makes a Section 754 election, how long does it remain in effect?
UPDATE questions SET
  stem = $EXPL$Granite Ridge Partners files a Section 754 election on its 2025 return after one of the partners sells her interest to an outside buyer. The managing partner asks the tax advisor how long the election will remain in effect once made.$EXPL$
WHERE id = 4185;

-- ID 14506: Advanced Basis Calculations (15 words)
-- ORIGINAL STEM: Under IRC Section 1014, what basis does a beneficiary receive in an inherited partnership interest?
UPDATE questions SET
  stem = $EXPL$Howard Patel, a 25% partner in Summit Consulting LLP, passes away on June 15, 2026. His partnership interest had an adjusted basis of $90,000 and a fair market value of $250,000 at death. Under IRC Section 1014, what basis does the beneficiary receive in the inherited partnership interest?$EXPL$
WHERE id = 14506;

-- ============================================================
-- CAPITAL STRUCTURE TAX PLANNING (2 questions)
-- ============================================================

-- ID 4339: Capital Structure Tax Planning (19 words)
-- ORIGINAL STEM: When a corporation repurchases its own bonds at a premium (above par value), the premium paid is treated as:
UPDATE questions SET
  stem = $EXPL$Trident Industries issued $5 million of 10-year bonds at par in 2020. In 2026, with market interest rates lower, Trident repurchases the bonds for $5,300,000 in the open market. The $300,000 premium paid above par value is treated as:$EXPL$
WHERE id = 4339;

-- ID 14685: Capital Structure Tax Planning (19 words)
-- ORIGINAL STEM: Under the Section 163(j) business interest limitation formula, floor plan financing interest is associated with which type of business?
UPDATE questions SET
  stem = $EXPL$A tax advisor is reviewing the Section 163(j) business interest limitation for a client and notes that floor plan financing interest receives special treatment under the formula. Floor plan financing interest is specifically associated with which type of business?$EXPL$
WHERE id = 14685;

-- ============================================================
-- ENTITY CHOICE AND PLANNING (2 questions)
-- ============================================================

-- ID 4296: Entity Choice and Planning (18 words)
-- ORIGINAL STEM: Which entity type allows owners the most flexibility in allocating income, deductions, and credits disproportionate to ownership percentages?
UPDATE questions SET
  stem = $EXPL$Three investors are forming a new real estate venture. One will contribute capital, another will contribute management expertise, and the third will contribute a property. They want to allocate income, deductions, and credits in varying ratios that differ from their ownership percentages. Which entity type provides the most flexibility for these disproportionate allocations?$EXPL$
WHERE id = 4296;

-- ID 4310: Entity Choice and Planning (19 words)
-- ORIGINAL STEM: Under the Section 199A qualified business income (QBI) deduction, which entity type does NOT generate QBI for its owners?
UPDATE questions SET
  stem = $EXPL$Rachel Mendez is evaluating entity structures for a new manufacturing business and wants to maximize the Section 199A qualified business income deduction for the owners. Which entity type does NOT generate QBI for its owners?$EXPL$
WHERE id = 4310;

-- ============================================================
-- ENTITY FORMATION AND LIQUIDATION (2 questions)
-- ============================================================

-- ID 1025: Entity Formation and Liquidation (19 words)
-- ORIGINAL STEM: Under Section 336, a corporation that completely liquidates recognizes gain or loss on distributed property as if it were:
UPDATE questions SET
  stem = $EXPL$Beacon Enterprises, a C corporation, adopts a plan of complete liquidation in 2026. The corporation holds appreciated real estate and equipment that will be distributed to shareholders. Under Section 336, the corporation recognizes gain or loss on the distributed property as if it were:$EXPL$
WHERE id = 1025;

-- ID 1030: Entity Formation and Liquidation (19 words)
-- ORIGINAL STEM: Section 351 does not apply if the transfer is to an investment company. This anti-abuse rule targets transfers that:
UPDATE questions SET
  stem = $EXPL$Four individuals each hold concentrated stock positions in different publicly traded companies. They propose transferring their respective holdings to a newly formed corporation in exchange for its stock. Section 351 nonrecognition does not apply if the transfer is to an investment company. This anti-abuse rule targets transfers that:$EXPL$
WHERE id = 1030;

-- ============================================================
-- ENTITY FORMATION AND RESTRUCTURING (2 questions)
-- ============================================================

-- ID 14585: Entity Formation and Restructuring (16 words)
-- ORIGINAL STEM: Under Section 721(b), in what situation is gain recognized when property is contributed to a partnership?
UPDATE questions SET
  stem = $EXPL$Two investors each contribute appreciated marketable securities to a newly formed partnership. The partnership will function primarily as a pooled investment vehicle. Under Section 721(b), in what situation is gain recognized when property is contributed to a partnership?$EXPL$
WHERE id = 14585;

-- ID 4991: Entity Formation and Restructuring (18 words)
-- ORIGINAL STEM: Under AU-C 315, why is the auditor required to obtain an understanding of the entity and its environment?
UPDATE questions SET
  stem = $EXPL$During the planning phase of a financial statement audit, a senior auditor at Kellner & Associates is documenting the procedures required by AU-C 315. Why is the auditor required to obtain an understanding of the entity and its environment?$EXPL$
WHERE id = 4991;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (3 questions)
-- ============================================================

-- ID 4097: Entity Tax Compliance: NOLs and Consolidated Returns (17 words)
-- ORIGINAL STEM: Which of the following best describes the purpose of the intercompany transaction rules in a consolidated return?
UPDATE questions SET
  stem = $EXPL$Orion Holdings files a consolidated return with its two wholly owned subsidiaries. During 2026, Sub A sells inventory to Sub B at a $200,000 profit. Sub B has not yet resold the inventory to outside customers. Which of the following best describes the purpose of the intercompany transaction rules in this consolidated return?$EXPL$
WHERE id = 4097;

-- ID 13763: Entity Tax Compliance: NOLs and Consolidated Returns (18 words)
-- ORIGINAL STEM: In the first year a consolidated return is filed, what consent is required from the affiliated group members?
UPDATE questions SET
  stem = $EXPL$Pinnacle Corp acquired 100% of Atlas Inc. in January 2026, forming an affiliated group eligible to file a consolidated return. The CFO is preparing to file the group''s first consolidated Form 1120. In this first year, what consent is required from the affiliated group members?$EXPL$
WHERE id = 13763;

-- ID 14612: Entity Tax Compliance: NOLs and Consolidated Returns (18 words)
-- ORIGINAL STEM: For how many years may a corporation carry forward excess charitable contributions that exceed the annual deduction limit?
UPDATE questions SET
  stem = $EXPL$Redwood Manufacturing, a C corporation with $2 million taxable income in 2026, donates $400,000 to qualified charities, exceeding its 10% annual limit. The tax director needs to determine the carryforward period. For how many years may the corporation carry forward the excess charitable contributions?$EXPL$
WHERE id = 14612;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (4 questions)
-- ============================================================

-- ID 12656: Individual Tax Planning: Compensation (19 words)
-- ORIGINAL STEM: Under Section 119, what conditions must be met for employer-provided meals to be excluded from an employee's gross income?
UPDATE questions SET
  stem = $EXPL$Coastal Resort & Spa provides free meals to its kitchen and front-desk staff in the hotel dining room during their shifts. The resort''s controller is reviewing whether these meals can be excluded from the employees'' gross income. Under Section 119, what conditions must be met for the exclusion to apply?$EXPL$
WHERE id = 12656;

-- ID 14087: Individual Tax Planning: Compensation (19 words)
-- ORIGINAL STEM: Under Section 409A, what is the general rule regarding the acceleration of payments from a nonqualified deferred compensation plan?
UPDATE questions SET
  stem = $EXPL$Vanguard Technologies maintains a nonqualified deferred compensation plan for its senior executives. The CEO requests an early lump-sum payout of his deferred balance to fund a personal investment. Under Section 409A, what is the general rule regarding the acceleration of payments from such a plan?$EXPL$
WHERE id = 14087;

-- ID 14098: Individual Tax Planning: Compensation (19 words)
-- ORIGINAL STEM: Under Section 83, which event triggers the inclusion of property received for services in the service provider's gross income?
UPDATE questions SET
  stem = $EXPL$Priya Sharma receives 5,000 shares of restricted stock from her employer, Nexus Biotech, as part of her compensation package. The shares vest over a four-year schedule and she does not make a Section 83(b) election. Under Section 83, which event triggers inclusion of the stock in Priya''s gross income?$EXPL$
WHERE id = 14098;

-- ID 3924: Individual Tax Planning: Compensation (20 words)
-- ORIGINAL STEM: In 2026, an employer provides qualified transportation fringe benefits to employees. What is the maximum monthly exclusion for qualified parking?
UPDATE questions SET
  stem = $EXPL$Sterling Financial Group provides its downtown office employees with employer-paid parking in a nearby garage as a qualified transportation fringe benefit in 2026. The HR director is confirming the excludable limits. What is the maximum monthly exclusion for qualified parking?$EXPL$
WHERE id = 3924;

-- ============================================================
-- INTERNATIONAL TAX (3 questions)
-- ============================================================

-- ID 4113: International Tax (18 words)
-- ORIGINAL STEM: Delta Corp pays $400,000 in foreign income taxes. Its Section 904 limitation is $350,000. What is the result?
UPDATE questions SET
  stem = $EXPL$Delta Corp, a U.S. domestic corporation, operates a branch in Germany and pays $400,000 in foreign income taxes for 2026. After computing the Section 904 foreign tax credit limitation formula, the allowable credit is capped at $350,000. What is the result?$EXPL$
WHERE id = 4113;

-- ID 14162: International Tax (18 words)
-- ORIGINAL STEM: Under Section 988, how are gains and losses from foreign currency transactions generally characterized for U.S. tax purposes?
UPDATE questions SET
  stem = $EXPL$Meridian Exports, a U.S. corporation, invoices a Japanese customer in yen. Between the invoice date and payment date, the exchange rate shifts, creating a currency gain on the receivable. Under Section 988, how are gains and losses from such foreign currency transactions generally characterized for U.S. tax purposes?$EXPL$
WHERE id = 14162;

-- ID 1303: International Tax (19 words)
-- ORIGINAL STEM: For tax years beginning after December 31, 2025, the Section 250 deduction for Global Intangible Low-Taxed Income (GILTI) is:
UPDATE questions SET
  stem = $EXPL$Atlas Global Inc., a U.S. C corporation, has a significant GILTI inclusion from its controlled foreign corporations for its 2026 tax year. The tax director is calculating the Section 250 deduction to reduce the effective tax rate on the GILTI amount. For tax years beginning after December 31, 2025, the Section 250 deduction for GILTI is:$EXPL$
WHERE id = 1303;

-- ============================================================
-- MULTI-JURISDICTIONAL TAX PLANNING (2 questions)
-- ============================================================

-- ID 4982: Multi-Jurisdictional Tax Planning (17 words)
-- ORIGINAL STEM: Which of the following activities would likely cause a corporation to exceed the protection of P.L. 86-272?
UPDATE questions SET
  stem = $EXPL$Larkspur Industries, headquartered in Ohio, sells tangible personal property to customers in several states where it has no office or warehouse. The company currently relies on P.L. 86-272 to avoid state income tax in those states. Which of the following activities would likely cause Larkspur to exceed the protection of P.L. 86-272?$EXPL$
WHERE id = 4982;

-- ID 14330: Multi-Jurisdictional Tax Planning (17 words)
-- ORIGINAL STEM: Which of the following is classified as foreign personal holding company income under the Subpart F rules?
UPDATE questions SET
  stem = $EXPL$Vertex Corp, a U.S. multinational, owns a controlled foreign corporation in Ireland that earns several types of income. The U.S. tax advisor is determining which income must be included currently as Subpart F income. Which of the following is classified as foreign personal holding company income under the Subpart F rules?$EXPL$
WHERE id = 14330;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (2 questions)
-- ============================================================

-- ID 14388: Nontaxable Dispositions (15 words)
-- ORIGINAL STEM: Under Section 1033, when does the replacement period begin to run for an involuntary conversion?
UPDATE questions SET
  stem = $EXPL$A fire destroys the warehouse of Palmer Distribution Co. in September 2026, and the insurance company pays $1.2 million in December 2026. Palmer plans to elect Section 1033 deferral and purchase a replacement warehouse. When does the replacement period begin to run?$EXPL$
WHERE id = 14388;

-- ID 4354: Nontaxable Dispositions (16 words)
-- ORIGINAL STEM: For an involuntary conversion of business property (not condemnation), the replacement property must meet which standard?
UPDATE questions SET
  stem = $EXPL$A tornado destroys a specialized cold-storage facility owned by Glacier Foods Inc. The company receives insurance proceeds and plans to reinvest under Section 1033 to defer the gain. For this involuntary conversion of business property (not a condemnation), the replacement property must meet which standard?$EXPL$
WHERE id = 4354;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (2 questions)
-- ============================================================

-- ID 4174: Owner-Entity Transactions (16 words)
-- ORIGINAL STEM: Under Section 267(b), which of the following relationships is considered related for purposes of loss disallowance?
UPDATE questions SET
  stem = $EXPL$A CPA is advising a client who sold stock at a loss and wants to claim the deduction. The CPA must determine whether the buyer is a related party under Section 267(b). Which of the following relationships is considered related for purposes of loss disallowance?$EXPL$
WHERE id = 4174;

-- ID 988: Owner-Entity Transactions (17 words)
-- ORIGINAL STEM: Under Section 362, what basis does a corporation take in property received in a Section 351 exchange?
UPDATE questions SET
  stem = $EXPL$Morgan transfers equipment with a fair market value of $300,000 and an adjusted basis of $180,000 to a newly formed corporation in exchange for 100% of its stock, qualifying under Section 351. Under Section 362, what basis does the corporation take in the equipment?$EXPL$
WHERE id = 988;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (4 questions)
-- ============================================================

-- ID 3960: Passive Activity and At-Risk Rules (18 words)
-- ORIGINAL STEM: Which of the following is one of the seven tests for material participation under the Section 469 regulations?
UPDATE questions SET
  stem = $EXPL$Dr. Navarro, a full-time surgeon, also owns a 40% interest in a restaurant. She logged 520 hours at the restaurant in 2026 and wants to deduct its $75,000 loss against her surgical income. Which of the following is one of the seven tests for material participation under the Section 469 regulations?$EXPL$
WHERE id = 3960;

-- ID 5930: Passive Activity and At-Risk Rules (18 words)
-- ORIGINAL STEM: Under IRC Section 469(c)(2), how is a rental activity generally classified regardless of the taxpayer's level of participation?
UPDATE questions SET
  stem = $EXPL$Kevin Park owns a duplex he personally manages, spending over 600 hours per year on tenant screening, maintenance, and rent collection. Despite his extensive involvement, he wonders how the rental income and losses are classified. Under IRC Section 469(c)(2), how is a rental activity generally classified regardless of the taxpayer''s level of participation?$EXPL$
WHERE id = 5930;

-- ID 5949: Passive Activity and At-Risk Rules (18 words)
-- ORIGINAL STEM: Under IRC Section 469, which of the following taxpayers is subject to the passive activity loss limitation rules?
UPDATE questions SET
  stem = $EXPL$A tax advisor is reviewing several clients'' returns to determine which ones face passive activity loss limitations. The clients include individuals, an S corporation shareholder, a closely held C corporation, and a widely held C corporation. Under IRC Section 469, which of the following taxpayers is subject to the passive activity loss limitation rules?$EXPL$
WHERE id = 5949;

-- ID 3989: Passive Activity and At-Risk Rules (19 words)
-- ORIGINAL STEM: Which of the following taxpayers would most likely qualify as a real estate professional for purposes of Section 469(c)(7)?
UPDATE questions SET
  stem = $EXPL$A CPA is advising four clients who each own rental properties generating losses. Each client has a different primary occupation and varying hours spent in real property activities. Which of the following taxpayers would most likely qualify as a real estate professional for purposes of Section 469(c)(7)?$EXPL$
WHERE id = 3989;

-- ============================================================
-- RELATED PARTY TRANSACTIONS (2 questions)
-- ============================================================

-- ID 14461: Related Party Transactions (17 words)
-- ORIGINAL STEM: What does Section 267(a)(2) require when an accrual-basis taxpayer owes an expense to a related cash-basis payee?
UPDATE questions SET
  stem = $EXPL$Harper Corp, an accrual-basis C corporation, accrues a $150,000 year-end bonus on December 31, 2026, payable to its sole shareholder, a cash-basis taxpayer. The bonus is not paid until April 2027. What does Section 267(a)(2) require regarding Harper Corp''s deduction?$EXPL$
WHERE id = 14461;

-- ID 14464: Related Party Transactions (17 words)
-- ORIGINAL STEM: Under Section 267(a)(1), what happens to a loss that is disallowed on a sale between related parties?
UPDATE questions SET
  stem = $EXPL$Robert sells stock with a basis of $75,000 to his daughter Mia for $50,000, resulting in a $25,000 realized loss. The loss is disallowed under Section 267(a)(1). What happens to this disallowed loss?$EXPL$
WHERE id = 14464;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (6 questions)
-- ============================================================

-- ID 7788: Retirement Plans and Education Savings (17 words)
-- ORIGINAL STEM: What is the federal income tax treatment of contributions made to a Section 529 education savings plan?
UPDATE questions SET
  stem = $EXPL$Elena Torres contributes $20,000 to an Illinois Section 529 plan for her daughter''s future college expenses. Elena is preparing her federal income tax return and asks her CPA about the deductibility of the contribution. What is the federal income tax treatment of contributions made to a Section 529 plan?$EXPL$
WHERE id = 7788;

-- ID 14231: Retirement Plans and Education Savings (17 words)
-- ORIGINAL STEM: What is the purpose of an ABLE (Achieving a Better Life Experience) account under IRC Section 529A?
UPDATE questions SET
  stem = $EXPL$The parents of a 22-year-old who became disabled at age 16 are exploring tax-advantaged savings options for their child''s long-term care and living expenses. Their financial advisor recommends an ABLE account. What is the purpose of an ABLE account under IRC Section 529A?$EXPL$
WHERE id = 14231;

-- ID 950: Retirement Plans and Education Savings (19 words)
-- ORIGINAL STEM: A participant in a 401(k) plan takes a hardship distribution of $30,000 at age 40. Which statement is correct?
UPDATE questions SET
  stem = $EXPL$Marcus Reeves, age 40, faces unexpected medical bills and requests a hardship distribution of $30,000 from his employer''s 401(k) plan. The plan administrator approves the withdrawal. Which statement correctly describes the tax consequences of this distribution?$EXPL$
WHERE id = 950;

-- ID 4032: Retirement Plans and Education Savings (19 words)
-- ORIGINAL STEM: In 2026, what is the maximum elective deferral an employee under age 50 can contribute to a 401(k) plan?
UPDATE questions SET
  stem = $EXPL$Jessica Nguyen, age 35, recently joined Calloway Engineering and is enrolling in the company''s 401(k) plan for 2026. She earns $120,000 annually and wants to maximize her elective deferrals. What is the maximum elective deferral an employee under age 50 can contribute to a 401(k) plan in 2026?$EXPL$
WHERE id = 4032;

-- ID 4038: Retirement Plans and Education Savings (19 words)
-- ORIGINAL STEM: Which of the following retirement plans does NOT impose a 10% early withdrawal penalty for distributions before age 59???????
UPDATE questions SET
  stem = $EXPL$A 45-year-old client needs to access retirement funds and is concerned about the 10% early withdrawal penalty. The CPA reviews the client''s accounts, which include a traditional IRA, a Roth IRA, a 401(k), and a defined benefit plan. Which of these retirement plans does NOT impose a 10% early withdrawal penalty for distributions before age 59½?$EXPL$
WHERE id = 4038;

-- ID 4064: Retirement Plans and Education Savings (19 words)
-- ORIGINAL STEM: A taxpayer uses $12,000 from a 529 plan to pay for K-12 private school tuition. Is the distribution tax-free?
UPDATE questions SET
  stem = $EXPL$David and Maria Lopez withdraw $12,000 from their daughter''s Section 529 plan to pay tuition at a private elementary school for the 2026 academic year. They ask their tax advisor whether this distribution is tax-free.$EXPL$
WHERE id = 4064;

-- ============================================================
-- TRUSTS AND ESTATES (2 questions)
-- ============================================================

-- ID 4262: Trusts and Estates (16 words)
-- ORIGINAL STEM: Which of the following trusts is generally required to use a calendar year for tax purposes?
UPDATE questions SET
  stem = $EXPL$An attorney is preparing trust documents for a client and advises that certain trust types must adopt a calendar year for tax reporting. The client asks which trusts are subject to this requirement. Which of the following trusts is generally required to use a calendar year for tax purposes?$EXPL$
WHERE id = 4262;

-- ID 4247: Trusts and Estates (17 words)
-- ORIGINAL STEM: Which of the following is a distinguishing characteristic of a simple trust compared to a complex trust?
UPDATE questions SET
  stem = $EXPL$The trustee of the Whitfield Family Trust is preparing the trust''s Form 1041 and must determine whether the trust qualifies as a simple trust or a complex trust for the current year. Which of the following is a distinguishing characteristic of a simple trust compared to a complex trust?$EXPL$
WHERE id = 4247;

-- ============================================================
-- WEALTH TRANSFER AND GIFTING STRATEGIES (9 questions)
-- ============================================================

-- ID 4027: Wealth Transfer and Gifting Strategies (15 words)
-- ORIGINAL STEM: Which of the following statements about the predeceased parent exception to the GSTT is correct?
UPDATE questions SET
  stem = $EXPL$Margaret Collins, age 82, wants to transfer $2 million directly to her granddaughter. Margaret''s son (the granddaughter''s father) passed away in 2020. Margaret''s estate planner advises that the predeceased parent exception may apply. Which of the following statements about this exception to the GSTT is correct?$EXPL$
WHERE id = 4027;

-- ID 14177: Wealth Transfer and Gifting Strategies (15 words)
-- ORIGINAL STEM: Under Section 2043, how is consideration received by a decedent treated for estate tax purposes?
UPDATE questions SET
  stem = $EXPL$Before her death, Helen Ward transferred a $3 million rental property to an irrevocable trust while retaining a life estate, receiving $1 million in cash consideration from the trust beneficiaries. Under Section 2043, how is the consideration Helen received treated for estate tax purposes?$EXPL$
WHERE id = 14177;

-- ID 12809: Wealth Transfer and Gifting Strategies (17 words)
-- ORIGINAL STEM: What is a key requirement for the unlimited marital deduction to apply to an estate tax transfer?
UPDATE questions SET
  stem = $EXPL$Arthur Brennan dies in 2026 with a $20 million gross estate. His will leaves the bulk of the estate to his surviving spouse. The estate''s executor is calculating the marital deduction on Form 706. What is a key requirement for the unlimited marital deduction to apply to this estate tax transfer?$EXPL$
WHERE id = 12809;

-- ID 14675: Wealth Transfer and Gifting Strategies (17 words)
-- ORIGINAL STEM: Under federal gift tax law, what is the effect of adequate and full consideration on a transfer?
UPDATE questions SET
  stem = $EXPL$Sandra Mitchell sells her vacation home to her nephew for $450,000, which equals the property''s appraised fair market value. Sandra''s CPA is evaluating whether this arm''s-length sale triggers any gift tax. Under federal gift tax law, what is the effect of adequate and full consideration on a transfer?$EXPL$
WHERE id = 14675;

-- ID 4005: Wealth Transfer and Gifting Strategies (19 words)
-- ORIGINAL STEM: Which of the following is a requirement for the unlimited marital deduction to apply to a transfer between spouses?
UPDATE questions SET
  stem = $EXPL$Richard Lawson gifts $500,000 in securities to his spouse, Catherine, during 2026 and expects to claim the unlimited marital deduction on his gift tax return. Which of the following is a requirement for the unlimited marital deduction to apply to this transfer between spouses?$EXPL$
WHERE id = 4005;

-- ID 4007: Wealth Transfer and Gifting Strategies (19 words)
-- ORIGINAL STEM: A donor makes a gift of $119,000 to a single donee in 2026. What is the taxable gift amount?
UPDATE questions SET
  stem = $EXPL$In 2026, Patricia Dunn gives her adult son $119,000 in cash as a present interest gift. Patricia is unmarried and does not elect gift-splitting. Given the $19,000 annual exclusion for 2026, what is the taxable gift amount?$EXPL$
WHERE id = 4007;

-- ID 14192: Wealth Transfer and Gifting Strategies (19 words)
-- ORIGINAL STEM: Under Section 2041, a power of appointment limited by an ascertainable standard is classified as which type of power?
UPDATE questions SET
  stem = $EXPL$A trust gives the beneficiary the power to withdraw trust principal for health, education, maintenance, and support. The estate planner explains this is limited by an ascertainable standard. Under Section 2041, a power of appointment limited by an ascertainable standard is classified as which type of power?$EXPL$
WHERE id = 14192;

-- ID 14193: Wealth Transfer and Gifting Strategies (19 words)
-- ORIGINAL STEM: In a split-dollar life insurance arrangement, what determines whether the death benefit is included in the insured's gross estate?
UPDATE questions SET
  stem = $EXPL$Graystone Corp and its CEO, James Hartley, enter into a split-dollar life insurance arrangement on a $5 million policy. Upon Hartley''s death, the estate planner must determine whether the death benefit is included in Hartley''s gross estate. In a split-dollar arrangement, what factor determines inclusion?$EXPL$
WHERE id = 14193;

-- ID 3999: Wealth Transfer and Gifting Strategies (20 words)
-- ORIGINAL STEM: A grandparent establishes an irrevocable trust for grandchildren with Crummey withdrawal powers. What is the purpose of the Crummey power?
UPDATE questions SET
  stem = $EXPL$Eleanor Voss establishes an irrevocable trust and funds it with $76,000 for the benefit of her four grandchildren. The trust agreement includes Crummey withdrawal powers allowing each beneficiary a limited time to withdraw their share. What is the purpose of the Crummey power?$EXPL$
WHERE id = 3999;

COMMIT;
