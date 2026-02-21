-- Migration: Upgrade remaining moderate-scoring REG questions
-- Fixes: short-stem, length-cuing, absolute-assurance-trap, short-expl, missing citations
-- Target: all questions score 7+ after this migration

-- === Agency and Regulation ===

-- Q206 [score:4] absolute-assurance-trap + length-cuing -> replace guarantee distractor with real misconception, balance choice lengths, expand explanation
UPDATE questions SET
  stem = 'Rodriguez, a licensed real estate agent, has been representing Martinez LLC in acquiring commercial properties throughout 2025. Martinez LLC''s managing partner asks Rodriguez to evaluate whether any fiduciary duties have been breached during the engagement. In an agency relationship, which of the following is NOT a fiduciary duty that the agent owes the principal?',
  choices = '["Duty of loyalty, requiring the agent to act solely in the principal''s interest and avoid conflicts","Duty of obedience, requiring the agent to follow the principal''s lawful instructions and directions","Duty to independently set the strategic direction and business objectives of the principal''s enterprise","Duty of care, requiring the agent to act with the competence expected of a reasonable professional"]',
  explanation = 'Under the Restatement (Third) of Agency, an agent owes the principal fiduciary duties of loyalty (Section 8.01), obedience, care, accounting, and notification. However, agents have no duty to assume management functions or set strategic direction for the principal''s business — those responsibilities belong to the principal. Choice C is incorrect because it describes a management responsibility, not a fiduciary duty — agents execute directions but do not independently determine business strategy. Choice A describes the genuine duty of loyalty under Section 8.01, and Choice D describes the duty of care that requires agents to exercise reasonable competence in performing assigned tasks.'
WHERE id = 206;

-- === Business Law: Contracts ===

-- Q498 [score:6] length-cuing -> balance choice lengths so correct answer isn't longest
UPDATE questions SET
  choices = '["The full contract price regardless of how the goods were used after acceptance by the buyer","The difference between accepted value and warranted value, plus incidental and consequential damages","Only the direct cost of inspecting, returning, and reshipping the nonconforming goods to seller","Punitive damages calculated at three times the original contract price as a statutory penalty"]',
  explanation = 'Under UCC 2-714, when a buyer has accepted nonconforming goods, the measure of damages is the difference between the value of the goods as accepted and the value they would have had if they had been as warranted, determined at the time and place of acceptance. The buyer may also recover incidental damages under UCC 2-715(1) and consequential damages under UCC 2-715(2) when the seller had reason to know of the buyer''s particular needs. Choice A is incorrect because the buyer retains the goods and is only entitled to the diminished value, not a full refund. Choice D is incorrect because the UCC does not provide for punitive damages — it aims to place the buyer in the position they would have been in had the seller performed as warranted.'
WHERE id = 498;

-- Q499 [score:6] length-cuing -> balance choice lengths so correct answer isn't longest
UPDATE questions SET
  choices = '["The buyer purchases goods of any kind from any seller, regardless of the seller''s expertise or knowledge","The buyer makes a specific written request to the seller for an express warranty covering fitness for use","The goods are sold in their original factory-sealed packaging with the manufacturer''s written guarantee","The seller knows the buyer''s particular purpose and the buyer relies on the seller''s skill or judgment"]',
  explanation = 'Under UCC 2-315, an implied warranty of fitness for a particular purpose arises when two conditions are met: (1) the seller has reason to know the buyer''s particular purpose for the goods, and (2) the buyer relies on the seller''s skill or judgment to select or furnish suitable goods. Unlike the implied warranty of merchantability under UCC 2-314, fitness for a particular purpose does not require the seller to be a merchant — it can arise in any transaction where these two conditions are satisfied. Choice A is incorrect because the warranty requires the seller''s knowledge of the buyer''s purpose and actual reliance, not merely a purchase transaction. Choice B is incorrect because fitness is an implied warranty arising by operation of law, not an express warranty requiring a written request.'
WHERE id = 499;

-- === Business Structures ===

-- Q208 [score:5] short-stem(11w) -> expand with scenario and named entity
UPDATE questions SET
  stem = 'Thornfield and Nakamura are considering forming a general partnership to operate a consulting firm. Thornfield''s attorney warns them about the liability exposure compared to other entity types. Which of the following accurately describes a disadvantage of operating as a general partnership?',
  explanation = 'Under the Revised Uniform Partnership Act (RUPA), all general partners bear joint and several liability for partnership debts and obligations — meaning personal assets can be reached to satisfy partnership creditors. This unlimited personal liability is the principal disadvantage of the general partnership form. Choice A is incorrect because partnerships are pass-through entities under IRC Subchapter K; income is taxed once at the partner level, avoiding the double taxation that affects C corporations. Choice D is incorrect because shareholder meetings are a corporate governance requirement — partnerships are governed by the partnership agreement and do not issue stock or hold shareholder meetings.'
WHERE id = 208;

-- Q209 [score:5] short-stem(7w) -> expand with scenario
UPDATE questions SET
  stem = 'Caldwell, a real estate developer, wants to form a limited partnership to raise $2.5 million in capital for a commercial development project. Caldwell plans to manage the project while passive investors contribute funding. Under the Revised Uniform Limited Partnership Act (RULPA), a limited partnership must have at least:',
  explanation = 'Under the Revised Uniform Limited Partnership Act (RULPA), a limited partnership requires a minimum of one general partner (who has unlimited liability and manages the business) and one limited partner (who has liability limited to their capital contribution and acts as a passive investor). This dual structure is fundamental to the limited partnership form and distinguishes it from general partnerships. Choice B is incorrect because only one general partner is required — additional general partners are permitted but not mandated. Choice D is incorrect because RULPA requires specific partner types (at least one general and one limited), not merely a minimum headcount of any type.'
WHERE id = 209;

-- Q210 [score:6] length-cuing -> balance choice lengths so correct answer isn't longest
UPDATE questions SET
  choices = '["Partners have no personal liability for any debts, obligations, or torts of the partnership","LLPs cannot be formed by professional service firms such as CPA or law practices under state law","LLPs are taxed as C corporations and subject to double taxation on all distributed earnings","Partners are shielded from other partners'' malpractice but remain liable for their own acts"]',
  explanation = 'In a limited liability partnership, individual partners are not personally liable for the negligence, malpractice, or misconduct of other partners. However, each partner remains fully liable for their own professional errors and for general contractual obligations of the partnership. This partial liability shield makes the LLP form especially popular among CPA firms, law firms, and other professional service organizations. Choice A is incorrect because LLP status does not provide blanket protection from all partnership obligations — partners remain liable for their own wrongful acts and for partnership contractual debts in many jurisdictions. Choice B is incorrect because LLPs are specifically designed for professional service firms and are widely adopted by accounting and legal practices.'
WHERE id = 210;

-- Q598 [score:4] short-stem(10w) + length-cuing -> expand stem with scenario, balance choice lengths
UPDATE questions SET
  stem = 'Mercer Industries borrows $500,000 from First National Bank, and two individuals agree to back the obligation. Dawson signs the loan documents as a co-obligor alongside Mercer, while Patterson provides a separate agreement to pay only if the bank first exhausts its remedies against Mercer. Under suretyship law, a guarantor differs from a surety in that a guarantor:',
  choices = '["Is primarily liable along with the debtor and may be pursued immediately by the creditor","Is secondarily liable and can be pursued only after the creditor first seeks collection from the debtor","Has no personal liability under any circumstances and serves only as a character reference for the debtor","Must be a federally regulated financial institution or licensed bonding company approved by the creditor"]',
  explanation = 'Under suretyship law, a guarantor of collection is secondarily liable, meaning the creditor must first exhaust remedies against the principal debtor — including obtaining and attempting to execute a judgment — before pursuing the guarantor. By contrast, a surety is primarily liable alongside the debtor and can be pursued immediately upon default without the creditor first proceeding against the debtor. Choice A is incorrect because it describes a surety, not a guarantor — primary liability and immediate recourse are characteristics of suretyship. Choice C is incorrect because guarantors do bear personal liability once the creditor has exhausted remedies against the principal debtor and the debt remains unsatisfied.'
WHERE id = 598;

-- === C Corporations ===

-- Q232 [score:6] length-cuing -> balance choice lengths so correct answer isn't longest
UPDATE questions SET
  choices = '["More than 50% of stock owned by 5 or fewer individuals, and 60% or more of income is PHC income","The corporation must have fewer than 100 shareholders and file an annual information return with the IRS","The corporation must be publicly traded on a national exchange and registered with the SEC","The corporation must have no employees other than the shareholders and their immediate family members"]',
  explanation = 'Under IRC Sections 541-547, a corporation is classified as a personal holding company (PHC) when two tests are met: (1) the stock ownership test — more than 50% of the outstanding stock is owned directly or indirectly by 5 or fewer individuals at any time during the last half of the tax year, and (2) the income test — 60% or more of the corporation''s adjusted ordinary gross income consists of PHC income (dividends, interest, rents, royalties, and certain personal service contracts). Choice B is incorrect because the 100-shareholder limit is an S corporation eligibility requirement under IRC Section 1361, not a PHC test. Choice C is incorrect because PHC status typically applies to closely held private corporations — publicly traded companies are explicitly excluded from PHC classification.'
WHERE id = 232;

-- Q572 [score:5] short-stem(11w) + length-cuing -> expand stem with scenario, balance choice lengths
UPDATE questions SET
  stem = 'The Greenfield Community Foundation was organized in 2024 to provide educational scholarships to underprivileged students in three counties. The foundation''s board of directors wants to confirm that the organization meets all requirements for tax-exempt status. Under IRC Section 501(c)(3), an organization qualifies for exemption when it:',
  choices = '["Operates exclusively for exempt purposes with no private inurement and limited political activity","Distributes all net earnings to its members or shareholders on an annual or quarterly basis","Files Form 1120 as a regular C corporation and elects exempt status on the corporate return","Limits its total annual gross revenue to $500,000 or less and files Form 990-N exclusively"]',
  explanation = 'Under IRC Section 501(c)(3), an organization must be organized and operated exclusively for religious, charitable, scientific, educational, or similar exempt purposes. Additionally, no part of the organization''s net earnings may inure to the benefit of any private shareholder or individual (the private inurement prohibition), the organization must not participate in political campaigns for or against candidates, and lobbying activity must be insubstantial. Choice B is incorrect because distributing earnings to members is the opposite of what 501(c)(3) requires — the private inurement prohibition expressly forbids such distributions. Choice C is incorrect because tax-exempt organizations file Form 990 (or 990-EZ/990-N), not the C corporation return Form 1120.'
WHERE id = 572;

-- Q575 [score:6] length-cuing -> balance choice lengths so correct answer isn't longest
UPDATE questions SET
  choices = '["AET applies only to publicly traded corporations while PHC tax applies exclusively to private ones","AET targets excessive earnings accumulation; PHC tax targets closely held companies with passive income","Both taxes apply only to S corporations that have revoked their election within five years","AET is imposed at a 75% rate while the PHC tax is imposed at a 20% flat rate on undistributed income"]',
  explanation = 'The accumulated earnings tax (AET) under IRC Section 531 penalizes C corporations that accumulate earnings beyond the reasonable needs of the business to help shareholders avoid dividend taxation. The personal holding company (PHC) tax under IRC Section 541 targets closely held corporations where more than 50% of stock is owned by 5 or fewer individuals and at least 60% of adjusted ordinary gross income is passive PHC income (dividends, interest, rents, royalties). Both taxes are imposed at a 20% rate. Choice A is incorrect because the AET can apply to both public and private C corporations — it is based on earnings accumulation behavior, not public trading status. Choice D is incorrect because both the AET and the PHC tax are imposed at 20%, not the rates stated.'
WHERE id = 575;

-- === Circular 230 ===

-- Q491 [score:5] short-stem(11w) -> expand stem with scenario
UPDATE questions SET
  stem = 'Vasquez, a CPA who prepares individual and business tax returns, advises a new client that the IRS does not randomly select every return for examination. The client asks how the IRS decides which returns to audit. Which of the following statements about the IRS audit selection process is correct?',
  explanation = 'The IRS uses the Discriminant Index Function (DIF) scoring system to identify returns with the highest probability of resulting in a tax change upon examination. Returns are scored based on statistical formulas that compare line items against norms for similar returns — significant deviations produce high DIF scores that flag returns for potential audit selection. Other selection methods include document matching (comparing Forms W-2 and 1099 to reported income), related examinations (auditing entities connected to a return already under examination), and informant tips. Choice A is incorrect because the IRS audits only a small percentage of returns each year — there is no mandate to audit all returns within any timeframe. Choice D is incorrect because the filing method (electronic or paper) does not create any exemption from audit; e-filed returns are subject to the same selection criteria.'
WHERE id = 491;

-- === Estate and Gift Tax ===

-- Q247 [score:6] short-stem(10w) -> expand stem with scenario and specific amounts
UPDATE questions SET
  stem = 'In 2025, Davidson transfers $50,000 in cash to a close friend, Collins, as a gift with no consideration received. Davidson also donates $25,000 to a qualified charity, pays $18,000 of a grandchild''s tuition directly to the university, and pays $12,000 of a child''s medical bills directly to the hospital. Under the federal gift tax rules, which of the following transfers is subject to gift tax?',
  explanation = 'Under IRC Section 2501, the $50,000 transfer to Collins is a taxable gift because it exceeds the annual exclusion amount ($18,000 for 2025) and does not qualify for any statutory exclusion or deduction. The excess over the annual exclusion ($32,000) is reportable on Form 709. Choice A is incorrect because charitable gifts to qualified organizations are fully deductible under IRC Section 2522 and do not result in taxable gifts. Choice B is incorrect because direct payments to educational institutions for tuition are excluded from gift tax under IRC Section 2503(e), regardless of amount — the exclusion applies only to tuition, not room and board. Choice D is incorrect because direct payments to medical providers are similarly excluded under Section 2503(e).'
WHERE id = 247;

-- Q567 [score:6] short-stem(11w) -> expand stem with scenario
UPDATE questions SET
  stem = 'Harrison died in 2025 with a taxable estate of $4.2 million, leaving his entire estate to his surviving spouse, Whitfield. The executor wants to ensure that Harrison''s unused estate tax exemption amount can benefit Whitfield''s estate in the future. Under the estate tax portability rules, the surviving spouse may:',
  explanation = 'Under IRC Section 2010(c)(4), the surviving spouse can elect to use the deceased spouse''s unused exclusion (DSUE) amount, effectively combining both spouses'' basic exclusion amounts. To claim portability, the executor of the deceased spouse''s estate must file a timely Form 706 (estate tax return), even if the estate is below the filing threshold — this is the sole mechanism for electing portability. The DSUE amount equals the deceased spouse''s basic exclusion amount minus the taxable estate. Choice B is incorrect because an estate tax return (Form 706) must be filed to elect portability, even when no estate tax is due. Choice C is incorrect because portability applies to the estate and gift tax exemption, not the annual gift tax exclusion — the annual exclusion under Section 2503(b) is an individual amount that does not transfer between spouses.'
WHERE id = 567;

-- === Individual Taxation: Credits ===

-- Q558 [score:6] short-stem(9w) -> expand stem with scenario
UPDATE questions SET
  stem = 'Nguyen, a single taxpayer with AGI of $65,000, is enrolled part-time in a graduate certificate program and paid $8,500 in qualified tuition expenses during 2025. Nguyen has already claimed the American Opportunity Tax Credit in four prior years and is evaluating alternative education credits. The Lifetime Learning Credit provides a maximum credit of:',
  explanation = 'Under IRC Section 25A(c), the Lifetime Learning Credit equals 20% of up to $10,000 in qualified education expenses, yielding a maximum credit of $2,000 per tax return (not per student). The credit is nonrefundable and is available for an unlimited number of years, making it the primary education credit after the four-year AOTC limit is exhausted. It cannot be claimed in the same year as the AOTC for the same student. Choice A is incorrect because $2,500 per student is the maximum for the American Opportunity Tax Credit under Section 25A(b), not the Lifetime Learning Credit. Choice B is incorrect because $4,000 was the former maximum for the tuition and fees deduction (now expired), not a credit amount.'
WHERE id = 558;

-- Q560 [score:5] short-stem(9w) + length-cuing -> expand stem with scenario, balance choice lengths
UPDATE questions SET
  stem = 'Park, a self-employed consultant, earned 80% of her 2025 income in the fourth quarter due to a large project that closed in November. Her CPA advises that she may reduce earlier quarterly estimated tax payments by using a special computation method. The annualized income installment method allows a taxpayer to:',
  choices = '["Defer all required estimated tax payments to the fourth quarter without incurring any penalty","Base each quarterly estimated payment on income actually earned that period, reducing early payments","Pay estimated taxes only when annual self-employment income exceeds the $100,000 filing threshold","Avoid all estimated tax underpayment penalties regardless of when income was actually earned"]',
  explanation = 'Under IRC Section 6654(d)(2), the annualized income installment method (computed on Form 2210, Schedule AI) allows taxpayers to calculate each quarterly estimated tax payment based on income actually earned during that period rather than assuming even income distribution. This benefits taxpayers with uneven income — such as seasonal businesses, year-end bonuses, or large project completions — by reducing earlier installments when little income has been earned. Choice A is incorrect because the method adjusts the timing of payments across all quarters based on actual income; it does not permit deferral of all payments to the final quarter. Choice D is incorrect because the method reduces penalties only when earlier payments are proportionate to income earned — it does not provide blanket penalty avoidance.'
WHERE id = 560;

-- Q561 [score:6] length-cuing -> balance choice lengths
UPDATE questions SET
  choices = '["$5,000 — the entire amount of unearned income is taxed at the parents'' marginal rate","$2,400 — the amount of unearned income exceeding the two-tier kiddie tax threshold","$1,300 — only the first tier above the standard deduction is taxed at the parents'' rate","$0 — a 15-year-old dependent''s unearned income is always taxed entirely at the child''s rate"]',
  explanation = 'Under IRC Section 1(g), the kiddie tax applies to unearned income of dependent children under age 19 (or under 24 if full-time students). The first $1,300 of unearned income is offset by the child''s standard deduction and is tax-free. The next $1,300 is taxed at the child''s own rate. Unearned income exceeding $2,600 is taxed at the parents'' marginal rate. For this child: $5,000 minus the $2,600 threshold equals $2,400 taxed at the parents'' rate. Choice A is incorrect because the first $2,600 receives preferential treatment — only the excess is taxed at the parents'' rate. Choice C is incorrect because $1,300 represents only the first tier (the standard deduction offset), not the amount taxed at the parents'' rate.'
WHERE id = 561;

-- === Individual Taxation: Income ===

-- Q542 [score:6] length-cuing -> balance choice lengths so correct answer isn't longest
UPDATE questions SET
  choices = '["More than 750 hours in real property trades with material participation, and majority of personal services","The taxpayer must own and actively manage at least 10 separate rental properties simultaneously","The taxpayer must hold a current real estate broker''s license issued by the state of residence","The taxpayer must earn more than $150,000 annually from real estate activities to qualify for the exception"]',
  explanation = 'Under IRC Section 469(c)(7), a taxpayer qualifies as a real estate professional by meeting two requirements: (1) performing more than 750 hours of services during the tax year in real property trades or businesses in which the taxpayer materially participates, and (2) more than 50% of the taxpayer''s total personal services during the year must be performed in such real property activities. When both tests are met, rental activities are not automatically treated as passive, allowing losses to offset nonpassive income. Choice B is incorrect because there is no minimum property count requirement — the test is based on hours of service and material participation, not the number of properties owned. Choice C is incorrect because a real estate license is not required; the qualification is based on actual hours worked in real property trades or businesses.'
WHERE id = 542;

-- === Like-Kind Exchanges ===

-- Q219 [score:5] short-stem(8w) + length-cuing -> expand stem with scenario, balance choice lengths
UPDATE questions SET
  stem = 'Rodriguez exchanges a commercial warehouse (adjusted basis $280,000, FMV $410,000) for an office building valued at $375,000 plus $35,000 in cash through a qualified intermediary. Rodriguez''s tax advisor explains that the cash received will trigger partial gain recognition. In a Section 1031 like-kind exchange, "boot" refers to:',
  choices = '["Non-like-kind property or cash received that triggers recognition of realized gain","The replacement property acquired by the taxpayer through the qualified intermediary","The relinquished property surrendered by the taxpayer to complete the exchange transaction","The qualified intermediary''s fee and transaction costs deducted from the exchange proceeds"]',
  explanation = 'Under IRC Section 1031(b), "boot" refers to any non-like-kind property received in an otherwise qualifying exchange, including cash, personal property, and net debt relief. Boot triggers gain recognition equal to the lesser of the realized gain or the total boot received. In Rodriguez''s case, the $35,000 cash constitutes boot, and gain is recognized to that extent assuming sufficient realized gain exists. Choice B is incorrect because the replacement property is the like-kind property received, not boot — boot is specifically the non-qualifying portion of the exchange proceeds. Choice D is incorrect because qualified intermediary fees are transaction costs that reduce the amount realized, not boot received by the taxpayer.'
WHERE id = 219;

-- === Partnerships ===

-- Q240 [score:5] short-stem(8w) -> expand stem with scenario
UPDATE questions SET
  stem = 'Thornfield Partners LLP has three equal partners. Partner Chen manages daily operations and receives a fixed annual payment of $120,000 for management services, regardless of whether the partnership earns a profit. The partnership agreement specifies this amount is determined without regard to partnership income. Under IRC Section 707(c), a guaranteed payment in a partnership is:',
  explanation = 'Under IRC Section 707(c), guaranteed payments are payments to a partner for services rendered or for the use of capital that are determined without regard to the partnership''s income. These payments are treated as ordinary income to the recipient partner and are deductible by the partnership in computing its ordinary income (similar to salary expenses). The partner reports the guaranteed payment as ordinary income on Schedule SE, subject to self-employment tax. Choice B is incorrect because distributions from partnership profits are allocations of partnership income based on the partner''s distributive share under Section 704, not guaranteed payments. Choice C is incorrect because a loan from the partnership to a partner is a debtor-creditor transaction under Section 707(a), not a guaranteed payment for services or capital use.'
WHERE id = 240;

-- Q588 [score:6] short-stem(9w) + length-cuing -> expand stem with scenario, balance choice lengths
UPDATE questions SET
  stem = 'Fletcher sells her 25% partnership interest in Oakridge Development Partners to an outside buyer for $400,000. The partnership holds $300,000 in unrealized accounts receivable and inventory with a fair market value that is 140% of its adjusted basis. Fletcher''s tax advisor warns that a portion of the gain may be recharacterized as ordinary income. Under Section 751, "hot assets" in a partnership include:',
  choices = '["Cash, marketable securities, and short-term investment holdings of the partnership entity","Unrealized receivables including Section 1245 recapture, and substantially appreciated inventory","Real property held for long-term investment that has appreciated beyond its original purchase price","Goodwill, customer lists, and other self-created intangible assets recorded on the partnership books"]',
  explanation = 'Under IRC Section 751(a), "hot assets" consist of two categories: (1) unrealized receivables, which include not only accounts receivable but also potential recapture income under Sections 1245 and 1250, and (2) substantially appreciated inventory, defined as inventory whose fair market value exceeds 120% of its adjusted basis. When a partner sells their interest, gain attributable to hot assets is recharacterized as ordinary income rather than capital gain, preventing partners from converting ordinary income into preferential capital gain rates. Choice A is incorrect because cash and marketable securities are not hot assets — they do not generate ordinary income recognition upon sale of a partnership interest. Choice C is incorrect because investment real property typically generates capital gain, not ordinary income, and is not classified as a hot asset under Section 751.'
WHERE id = 588;

-- === Property Transactions: Basis ===

-- Q512 [score:5] short-stem(9w) -> expand stem with scenario
UPDATE questions SET
  stem = 'Nakamura, a sole proprietor, purchased a new delivery van for $48,000 and office furniture costing $12,500 for her consulting business in January 2025. Her CPA is determining the applicable MACRS recovery periods for depreciation. Under the Modified Accelerated Cost Recovery System (MACRS), 5-year property includes which of the following?',
  explanation = 'Under IRC Section 168 and IRS Publication 946, MACRS assigns specific recovery periods based on asset class. Five-year property includes automobiles, light trucks, computers, and certain technological equipment. Nakamura''s delivery van falls into the 5-year class. By contrast, office furniture and fixtures are classified as 7-year property, residential rental buildings use a 27.5-year recovery period, and land improvements (such as fences, parking lots, and sidewalks) use a 15-year recovery period. Choice A is incorrect because office furniture is 7-year MACRS property under Asset Class 00.11. Choice C is incorrect because residential rental buildings use the 27.5-year straight-line recovery period under Section 168(c), making them among the longest MACRS recovery classes.'
WHERE id = 512;

-- === S Corporations ===

-- Q235 [score:6] length-cuing -> balance choice lengths so correct answer isn't longest
UPDATE questions SET
  choices = '["Dividend to the extent of AE&P, then return of capital, then capital gain on any excess","Always treated as a nontaxable return of capital regardless of the corporation''s AE&P balance","Treated entirely as capital gain income reported on the shareholder''s Schedule D for the tax year","Not taxable to the shareholder because S corporation income was previously taxed at the entity level"]',
  explanation = 'Under IRC Section 1368(c), when an S corporation has accumulated earnings and profits (AE&P) from prior C corporation years, distributions follow a specific ordering rule: first, distributions come from the accumulated adjustments account (AAA), which represents previously taxed S corporation income and is tax-free. Distributions exceeding the AAA are treated as dividends to the extent of AE&P. After AE&P is exhausted, any remaining distribution is a tax-free return of capital reducing stock basis, and amounts exceeding basis are taxed as capital gain. Choice B is incorrect because the return-of-capital treatment applies only after both the AAA and AE&P layers have been exhausted. Choice D is incorrect because while AAA distributions reflect previously taxed income, distributions from the AE&P layer have not been taxed at the shareholder level and are taxable dividends.'
WHERE id = 235;

-- Q236 [score:6] short-stem(11w) -> expand stem with scenario
UPDATE questions SET
  stem = 'Whitfield Technology Inc. elected S corporation status effective January 1, 2025. The company''s sole shareholder, Whitfield, previously operated on a September 30 fiscal year as a C corporation and asks whether the same year-end can be maintained. Under IRC Section 1378, an S corporation must use which of the following tax years?',
  explanation = 'Under IRC Section 1378(a), an S corporation is generally required to adopt a calendar year (December 31 year-end) as its tax year. A fiscal year is permitted only if the corporation establishes a business purpose acceptable to the IRS under Section 1378(b) or makes a Section 444 election, which allows a fiscal year with a maximum three-month deferral period (September 30, October 31, or November 30 year-end) but requires an annual required payment to compensate for the tax deferral benefit. Choice B is incorrect because S corporations cannot freely elect any fiscal year — the default requirement is a calendar year, and deviations require justification or a Section 444 election. Choice D is incorrect because the required tax year is determined by statute (calendar year), not by matching the majority shareholder''s individual tax year.'
WHERE id = 236;

-- Q578 [score:6] length-cuing -> balance choice lengths
UPDATE questions SET
  choices = '["Long-term capital gains reported on the shareholder''s individual Schedule D for the tax year","A nontaxable return of capital that reduces the shareholder''s stock basis in the corporation","Tax-exempt income not subject to employment taxes or self-employment tax obligations","Reasonable compensation for services, subject to FICA and federal employment tax withholding"]',
  explanation = 'The IRS requires S corporation shareholder-employees to receive reasonable compensation for services performed before taking distributions. When a shareholder-employee takes no salary and instead receives all payments as distributions, the IRS may reclassify a portion of those distributions as wages subject to FICA taxes (Social Security and Medicare) and federal income tax withholding. The IRS evaluates reasonable compensation based on factors including comparable salaries in similar industries, the employee''s training and experience, duties and hours worked, and dividend history. Choice A is incorrect because distributions from an S corporation are generally not capital gains — and regardless of classification, the IRS''s concern is the avoidance of employment taxes, not the capital gain rate. Choice C is incorrect because S corporation distributions are not tax-exempt income; they are tax-free only to the extent of the shareholder''s stock basis, and the reclassification issue concerns employment tax avoidance.'
WHERE id = 578;

-- Q579 [score:6] short-stem(10w) -> expand stem with scenario
UPDATE questions SET
  stem = 'Ridgemont Electronics Inc. has been an S corporation since 2020. During the 2025 tax year, the corporation reported $180,000 in ordinary income, $25,000 in separately stated capital gains, and distributed $150,000 to its shareholders. The corporation''s CPA needs to update the corporate-level tracking accounts. The Accumulated Adjustments Account (AAA) of an S corporation tracks:',
  explanation = 'Under IRC Section 1368(e)(1), the AAA is a corporate-level account that tracks the cumulative net amount of S corporation taxable income, losses, and deductions during the S election period, reduced by distributions made to shareholders. The AAA serves as the mechanism for determining tax-free distribution capacity — distributions from the AAA layer are not taxed again because they represent previously taxed income. Importantly, the AAA is a corporate-level account (not per-shareholder), can go negative from losses, and excludes tax-exempt income, which is tracked separately in the Other Adjustments Account (OAA). Choice A is incorrect because capital contributions are tracked through stock basis and the capital account, not the AAA. Choice D is incorrect because retained earnings from C corporation years are tracked as accumulated earnings and profits (AE&P), which is a separate account from the AAA.'
WHERE id = 579;

-- Q584 [score:4] short-stem(7w) + length-cuing -> expand stem with scenario, balance choice lengths
UPDATE questions SET
  stem = 'Greenfield Solar Corp., an S corporation, holds $200,000 in municipal bonds that generated $8,500 in tax-exempt interest during 2025. The sole shareholder, Patel, wants to understand how this income affects her individual tax return and her stock basis. An S corporation''s tax-exempt interest income is:',
  choices = '["Reported on the corporate return as taxable ordinary income and included in the shareholder''s AGI","Passed through to shareholders, increasing stock basis without being included in their taxable income","Subject to unrelated business income tax at the corporate level before any pass-through to shareholders","Not reported on any return and has no effect on the shareholder''s stock basis or taxable income"]',
  explanation = 'Under IRC Section 1366, tax-exempt income earned by an S corporation retains its tax-exempt character when passed through to shareholders. The income increases the shareholder''s stock basis under Section 1367(a)(1)(A), which enables larger tax-free distributions in the future, but it is not included in the shareholder''s taxable income. At the corporate level, tax-exempt income increases the Other Adjustments Account (OAA) rather than the AAA, because the AAA tracks only taxable income items. Choice A is incorrect because tax-exempt income does not lose its exempt character upon pass-through — the character of each item is preserved at the shareholder level. Choice C is incorrect because the unrelated business income tax (UBIT) applies to tax-exempt organizations under Section 511, not to S corporations.'
WHERE id = 584;
