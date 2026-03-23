-- FAR cleanup batch 10 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q2249 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 326-20-30-1 (CECL model), the allowance for credit losses is maintained at the level of expected lifetime losses. The required allowance is $2,000,000 × 4% = $80,000. Since the existing allowance is $50,000, bad debt expense is the adjustment needed: $80,000 − $50,000 = $30,000.
Wrong (A): $80,000 would be the full required allowance balance, not the expense for the period. The expense only covers the incremental amount needed to bring the existing allowance up to the required level.
Wrong (C): $50,000 is the existing allowance balance, not the bad debt expense. Using this figure ignores the need to increase the allowance to the required $80,000 level.
Wrong (D): $130,000 incorrectly adds the existing allowance to the required allowance rather than computing the difference between them.$19$,
  difficulty = 'medium'
WHERE id = 2249;

-- Q2250 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 860-20-25-1, a transfer of receivables without recourse that meets the sale criteria results in derecognition. Cash received = $500,000 − $15,000 (3% factor fee) − $25,000 (5% holdback) = $460,000. The holdback is recorded as a receivable from the factor.
Wrong (B): $470,000 incorrectly omits the holdback deduction, treating only the factor fee as a reduction from proceeds.
Wrong (C): $475,000 incorrectly applies only the holdback deduction and ignores the factor fee entirely.
Wrong (D): $485,000 incorrectly applies only the factor fee deduction and ignores the holdback.$19$,
  difficulty = 'medium'
WHERE id = 2250;

-- Q2252 [hard] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 860-20-40-1, when a transfer with recourse qualifies as a sale, the loss equals the carrying amount of receivables less net proceeds received. Proceeds include cash ($800,000 − $32,000 fee − $80,000 holdback = $688,000) and the holdback receivable ($80,000), totaling $768,000. The recourse liability of $20,000 must also be recognized. Loss = $800,000 − $768,000 + $20,000 = $52,000.
Wrong (A): $32,000 accounts only for the factor fee and ignores the recourse liability that must be recognized as part of the loss computation.
Wrong (C): $112,000 incorrectly double-counts both the holdback and the fee without offsetting the holdback receivable asset.
Wrong (D): $20,000 considers only the recourse liability and ignores the factor fee component of the loss.$19$,
  difficulty = 'hard'
WHERE id = 2252;

-- Q2254 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 860-10-40-5, an assignment of receivables is a secured borrowing, not a sale. Jasper records Cash (debit) $320,000 and Notes Payable (credit) $320,000. The receivables remain on Jasper''s balance sheet and are disclosed as collateral for the loan.
Wrong (B): Debiting Cash $400,000 and crediting Accounts Receivable treats the assignment as a sale for the full receivable amount, which mischaracterizes a secured borrowing.
Wrong (C): Crediting Accounts Receivable for $320,000 incorrectly removes receivables from the books; in an assignment, the receivables remain on the borrower''s balance sheet.
Wrong (D): Recording a gain of $80,000 is incorrect because no sale has occurred and the $80,000 difference simply represents the excess collateral over the loan amount.$19$,
  difficulty = 'medium'
WHERE id = 2254;

-- Q2256 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 835-30-25-2, a noninterest-bearing note received in a revenue transaction must be recorded at its present value using the prevailing market rate. PV = $50,000 ÷ (1.10)² = $50,000 ÷ 1.21 = $41,322 (rounded). The $8,678 discount represents imputed interest recognized over the note''s term.
Wrong (A): $50,000 is the face value, not the present value. Recording the note at face value overstates revenue and ignores the time value of money.
Wrong (B): $45,455 would be the present value of $50,000 discounted for only one year ($50,000 ÷ 1.10), not two years as required.
Wrong (D): $40,000 is not the result of any valid present value calculation at the given rate and term.$19$,
  difficulty = 'medium'
WHERE id = 2256;

-- Q2257 [easy] topic: Cash and Receivables
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$Under the CECL model, which method is NOT a valid approach for estimating expected credit losses on trade receivables?$19$,
  choices = $19$["Aging schedule method","Loss-rate method based on historical data","Discounted cash flow method","Specific identification of accounts already deemed uncollectible"]$19$::jsonb,
  explanation = $19$Correct (D): Under ASC 326-20-30-3, CECL requires forward-looking estimation of expected credit losses at inception, not reactive write-offs of individually identified bad accounts. Waiting for specific identification before recording any allowance contradicts the lifetime expected loss principle.
Wrong (A): The aging schedule method is an acceptable CECL approach that groups receivables by delinquency status and applies historical loss rates adjusted for current conditions.
Wrong (B): The loss-rate method uses historical loss experience adjusted for current and forecasted conditions and is explicitly permitted under ASC 326-20-30-5.
Wrong (C): The discounted cash flow method estimates expected cash flows and is a valid measurement technique under ASC 326-20-30-4.$19$,
  difficulty = 'easy'
WHERE id = 2257;

-- Q2258 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 326-20-30-2, the aging schedule method applies expected loss percentages to each aging category. Current: $500,000 × 1% = $5,000; 31–60 days: $200,000 × 3% = $6,000; 61–90 days: $80,000 × 8% = $6,400; Over 90 days: $40,000 × 25% = $10,000. Total required allowance = $27,400.
Wrong (A): $21,400 understates the allowance, likely by miscalculating one or more aging bucket amounts.
Wrong (C): $32,400 overstates the allowance, possibly by applying incorrect loss rates to certain aging categories.
Wrong (D): $41,000 significantly overstates the allowance, likely by applying the highest loss rate too broadly across multiple categories.$19$,
  difficulty = 'medium'
WHERE id = 2258;

-- Q2259 [easy] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 250-10-45-23, a bank error is corrected on the bank side of the reconciliation. Since the bank incorrectly deducted $2,000, the bank balance is understated and must be increased by $2,000. Company A notifies the bank but makes no journal entry.
Wrong (A): Adjusting Company A''s book balance is incorrect because the error was made by the bank, not by Company A''s accounting records.
Wrong (B): Assuming the bank will automatically correct the error without any reconciling adjustment ignores the need to present the correct reconciled balance.
Wrong (C): Adjusting Company B''s book balance is irrelevant to Company A''s reconciliation; Company B''s records are separate.$19$,
  difficulty = 'easy'
WHERE id = 2259;

-- Q2260 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 440-10-50-1, the undrawn portion of a line of credit is an off-balance-sheet commitment. Only the $400,000 drawn is recorded as a liability. The $600,000 available commitment is disclosed in the notes to the financial statements as a financial commitment.
Wrong (A): The undrawn portion is not a cash equivalent because no cash has been received, and it does not meet the definition of a highly liquid short-term investment.
Wrong (B): A note payable of $600,000 would require an actual borrowing to have occurred; the undrawn portion represents only a future borrowing capacity.
Wrong (D): Accounts receivable of $600,000 is incorrect because the company has no right to receive cash from the bank without first drawing on the line.$19$,
  difficulty = 'medium'
WHERE id = 2260;

-- Q2261 [easy] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 326-20-35-8, when a specific receivable is deemed uncollectible, the write-off entry debits Allowance for Credit Losses and credits Accounts Receivable. The expense was already recognized when the allowance was established, so the write-off has no income statement impact.
Wrong (A): Debiting Bad Debt Expense at write-off would double-count the loss because the expense was already recorded when the allowance was initially established.
Wrong (C): Debiting Accounts Receivable and crediting the Allowance reverses the correct entry direction and would increase, rather than decrease, both accounts.
Wrong (D): Debiting Bad Debt Expense and crediting the Allowance records additional expense without removing the uncollectible receivable from the books.$19$,
  difficulty = 'easy'
WHERE id = 2261;

-- Q2262 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 835-30-35-2, interest revenue is accrued based on the passage of time. From March 1 to December 31 is 10 months. Accrued interest = $200,000 × 5% × 10/12 = $8,333. The adjusting entry debits Interest Receivable and credits Interest Revenue.
Wrong (B): $10,000 represents a full year of interest ($200,000 × 5%), but only 10 months have elapsed since the note was accepted on March 1.
Wrong (C): $5,000 represents only 6 months of interest, understating the accrual by 4 months.
Wrong (D): Debiting Cash is incorrect because the interest has been earned but not yet received; the debit should be to Interest Receivable until cash is collected.$19$,
  difficulty = 'medium'
WHERE id = 2262;

-- Q2263 [hard] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 326-20-30-1, the required ending allowance equals expected credit losses: $3,000,000 × 5% = $150,000. The allowance before adjustment = beginning balance $130,000 − write-offs $120,000 + recoveries $15,000 = $25,000. Bad debt expense = $150,000 − $25,000 = $125,000.
Wrong (A): $150,000 is the total required allowance balance, not the expense. The expense is only the amount needed to bring the existing allowance up to the required level.
Wrong (B): $45,000 likely subtracts only write-offs from the beginning balance without adding recoveries, resulting in an incorrect pre-adjustment allowance.
Wrong (C): $105,000 may result from ignoring the recovery of $15,000 in the allowance rollforward calculation.$19$,
  difficulty = 'hard'
WHERE id = 2263;

-- Q2267 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 810-10-45-16, the noncontrolling interest is adjusted each period for the NCI''s share of the subsidiary''s income and dividends. NCI share of income = 25% × $400,000 = $100,000. NCI share of dividends = 25% × $80,000 = $20,000. Ending NCI = $600,000 + $100,000 − $20,000 = $680,000.
Wrong (B): $700,000 incorrectly adds the full NCI income share without subtracting the NCI share of dividends declared.
Wrong (C): $720,000 may result from using an incorrect ownership percentage or failing to properly account for the dividend distribution.
Wrong (D): $520,000 incorrectly reduces NCI for the full dividend or income amount rather than the 25% NCI share.$19$,
  difficulty = 'medium'
WHERE id = 2267;

-- Q2268 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 230-10-50-8 (as amended by ASU 2016-18), restricted cash held in escrow is classified based on the expected timing of the restriction. Since the building purchase is expected in 18 months (beyond one year), the $250,000 is classified as a noncurrent asset. Restricted cash must also be included in the cash reconciliation on the statement of cash flows.
Wrong (A): Classifying restricted cash as a current cash equivalent is incorrect because the restriction prevents the funds from being used for general purposes and the restriction extends beyond 12 months.
Wrong (B): While the cash is restricted, it does not qualify as a current asset because the restriction extends beyond the next 12 months.
Wrong (D): Restricted cash is a real asset that must be reported on the balance sheet; omitting it would understate total assets.$19$,
  difficulty = 'medium'
WHERE id = 2268;

-- Q2271 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 958-605-25-2, a purpose-restricted grant is recognized in full as revenue with donor restrictions when received. As qualifying expenditures of $140,000 are incurred, that amount is reclassified from net assets with donor restrictions to net assets without donor restrictions, satisfying the purpose restriction. The remaining $60,000 stays restricted.
Wrong (A): Recording $200,000 as revenue without donor restrictions ignores the donor''s explicit purpose stipulation, which requires classification as with donor restrictions until the condition is met.
Wrong (B): Withholding reclassification until the full amount is spent is not required; reclassification occurs as qualifying expenditures are incurred, not only upon full exhaustion of the grant.
Wrong (C): Recognizing only $140,000 in revenue understates total revenue; the full $200,000 is recognized upon receipt, with a separate reclassification entry for the portion spent.$19$,
  difficulty = 'medium'
WHERE id = 2271;

-- Q2277 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASU 2020-07 (ASC 958-605-50-2A through 50-2E), NFPs must present contributed nonfinancial assets as a separate line item on the statement of activities and disclose disaggregation by category, valuation techniques and inputs, donor-imposed restrictions, and policies for monetization versus utilization.
Wrong (A): Reporting only aggregate fair value is insufficient; ASU 2020-07 specifically requires disaggregation by category and additional qualitative disclosures.
Wrong (B): Claiming no specific disclosures are required is incorrect; ASU 2020-07 was issued precisely to enhance transparency around contributed nonfinancial assets.
Wrong (C): Disclosing only whether assets were used or sold omits the required information about valuation techniques, donor restrictions, and categorical disaggregation.$19$,
  difficulty = 'medium'
WHERE id = 2277;

-- Q2278 [easy] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 958-205-45-4, when a time restriction expires, the NFP reclassifies net assets from with donor restrictions to without donor restrictions. The entry debits net assets with donor restrictions and credits net assets without donor restrictions for $3,000,000, reported as net assets released from restrictions on the statement of activities.
Wrong (B): Debiting and crediting contribution revenue accounts is incorrect because no new revenue is created; this is a reclassification between net asset classes, not a revenue recognition event.
Wrong (C): Waiting until funds are actually spent conflates a time restriction with a purpose restriction; time restrictions expire by the passage of time regardless of spending.
Wrong (D): Debiting Cash is incorrect because no cash transaction occurs upon expiration of a time restriction; the entry involves only net asset reclassification.$19$,
  difficulty = 'easy'
WHERE id = 2278;

-- Q2280 [hard] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$A not-for-profit has an endowment with an original gift value of $2,000,000. Due to investment losses, the endowment''s fair value has declined to $1,850,000. Under UPMIFA, how should the NFP report this endowment?$19$,
  choices = $19$["Restore the endowment to $2,000,000 using unrestricted funds","Report the $150,000 decline as a loss in net assets without donor restrictions","Write off the endowment as permanently impaired","Report at $1,850,000 within net assets with donor restrictions and disclose the underwater amount"]$19$::jsonb,
  explanation = $19$Correct (D): Under ASC 958-205-45-6, when an endowment''s fair value falls below the original gift amount (an "underwater" endowment), the entire balance remains in net assets with donor restrictions. The NFP must disclose the aggregate fair value of underwater endowments, the original gift amounts, and the aggregate deficiency amount.
Wrong (A): UPMIFA does not require NFPs to restore underwater endowments from unrestricted funds; the loss remains within the donor-restricted net asset class.
Wrong (B): Reporting the decline in net assets without donor restrictions is incorrect because the investment losses on donor-restricted endowments remain classified within the restricted category.
Wrong (C): Endowments are not written off as impaired; the donor restriction remains even when the fair value drops below the original gift amount.$19$,
  difficulty = 'hard'
WHERE id = 2280;

-- Q2282 [easy] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 958-210-45-1, the statement of financial position equation for NFPs is Total Assets − Total Liabilities = Total Net Assets. Total net assets = $8,500,000 − $2,200,000 = $6,300,000. Net assets without donor restrictions = $6,300,000 − $3,100,000 = $3,200,000.
Wrong (B): $5,400,000 likely subtracts only the restricted net assets from total assets without first deducting liabilities.
Wrong (C): $6,300,000 is total net assets (both categories combined), not the without donor restrictions portion alone.
Wrong (D): $8,500,000 is total assets before deducting liabilities and does not represent any net asset category.$19$,
  difficulty = 'easy'
WHERE id = 2282;

-- Q2284 [easy] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 958-720-45-2, the program efficiency ratio measures the proportion of total expenses devoted to program services: $3,600,000 ÷ $6,000,000 = 60%. This is a key metric used by donors and watchdog organizations to assess how effectively an NFP directs resources toward its mission.
Wrong (B): 75% overstates the program efficiency ratio and does not correspond to any valid calculation from the given data.
Wrong (C): 85% significantly overstates program spending as a proportion of total expenses and is not supported by the figures provided.
Wrong (D): 25% is the management and general ratio ($1,500,000 ÷ $6,000,000), not the program efficiency ratio.$19$,
  difficulty = 'easy'
WHERE id = 2284;

-- Q2286 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 958-605-25-5A, conditional contributions are not recognized until the barrier is substantially overcome and the right of return or release no longer exists. The barrier here is hiring the certified counselor. Once hired (two months later), the $800,000 is recognized as contribution revenue. Any purpose restrictions then determine the net asset classification.
Wrong (A): Recognizing revenue at signing is premature because the condition (hiring the counselor) has not yet been met and the donor retains a right of return.
Wrong (B): Ratably recognizing revenue over the condition period is incorrect because conditional contributions are recognized at the point the barrier is overcome, not on a straight-line basis.
Wrong (C): Waiting until fiscal year-end ignores the actual date the condition was met, which is two months after the grant agreement.$19$,
  difficulty = 'medium'
WHERE id = 2286;

-- Q2289 [hard] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 958-205-45-10, when an NFP elects the policy of implying a time restriction over the useful life of contributed long-lived assets, the contribution remains in net assets with donor restrictions even after the asset is purchased. It is released proportionally over the equipment''s useful life as depreciation is recognized.
Wrong (A): Recognizing the full amount as unrestricted at receipt ignores the donor''s purpose restriction and the NFP''s elected policy of implying a time restriction.
Wrong (B): Deferred revenue is not the appropriate classification for contributions under ASC 958; contributions are classified within net asset categories, not as liabilities.
Wrong (C): Immediate release upon purchase would only be appropriate if the NFP''s accounting policy does not imply a time restriction over the asset''s useful life.$19$,
  difficulty = 'hard'
WHERE id = 2289;

-- Q2290 [hard] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 958-605-25-7, multi-year unconditional pledges are recorded at present value using a discount rate. Each subsequent period, the discount amortization (accretion) is recognized as additional contribution revenue. In year 2, the amortization equals the 6% discount rate applied to the carrying amount at the beginning of year 2, approximately $32,100.
Wrong (A): Revenue is not fully recognized in year one; only the present value of the total pledge ($535,000) is recognized initially. Subsequent accretion creates additional revenue each year.
Wrong (B): $200,000 is the annual cash collection, not the contribution revenue from discount amortization. Cash collections reduce the receivable, not increase revenue.
Wrong (C): $21,667 applies a straight-line method to the total discount, which is incorrect because the effective interest method must be used under ASC 835-30.$19$,
  difficulty = 'hard'
WHERE id = 2290;

-- Q2300 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under GASB Statement No. 54, paragraph 30, capital projects funds account for financial resources restricted, committed, or assigned for acquisition or construction of major capital facilities. Bond proceeds for highway construction and related expenditures are reported in a capital projects fund.
Wrong (A): The General Fund accounts for all financial resources not required to be reported in another fund; major capital construction projects typically use a dedicated capital projects fund.
Wrong (B): Special Revenue Funds account for proceeds from specific revenue sources restricted or committed for purposes other than debt service or capital projects.
Wrong (D): The Debt Service Fund handles principal and interest payments on long-term debt, not the construction expenditures financed by the bonds.$19$,
  difficulty = 'easy'
WHERE id = 2300;

-- Q2301 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under GASB standards and NCGA Statement 1, governmental funds record the legally adopted budget through budgetary journal entries. Estimated Revenues is debited for $40,000,000, Appropriations is credited for $38,000,000, and the $2,000,000 surplus is credited to Budgetary Fund Balance. These accounts are reversed at year-end.
Wrong (B): Debiting Appropriations and crediting Cash confuses the budgetary entry with an actual cash transaction; budgetary entries are nominal and do not involve cash.
Wrong (C): Debiting Cash and crediting Revenue records an actual revenue transaction, not a budgetary entry. The budget is recorded using estimated (budgetary) accounts.
Wrong (D): Governmental funds are required to record the adopted budget in the accounting system, not merely disclose it in the notes.$19$,
  difficulty = 'medium'
WHERE id = 2301;

-- Q2304 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under GASB 34, paragraphs 12–14, government-wide financial statements consist of the statement of net position and the statement of activities. These statements use the economic resources measurement focus and full accrual basis of accounting and report governmental and business-type activities in separate columns.
Wrong (B): The balance sheet and statement of revenues, expenditures, and changes in fund balance are governmental fund financial statements, not government-wide statements.
Wrong (C): The statement of cash flows applies to proprietary funds, and the statement of changes in fiduciary net position applies to fiduciary funds; neither is a government-wide statement.
Wrong (D): The budget-to-actual comparison is required supplementary information (RSI), not a government-wide financial statement.$19$,
  difficulty = 'easy'
WHERE id = 2304;

-- Q2305 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under GASB 34, paragraph 32, net position = (Total Assets + Deferred Outflows) − (Total Liabilities + Deferred Inflows) = ($250,000,000 + $8,000,000) − ($160,000,000 + $12,000,000) = $86,000,000. Net position is reported in three categories. Unrestricted = $86,000,000 − $45,000,000 (net investment in capital assets) − $15,000,000 (restricted) = $26,000,000.
Wrong (A): $86,000,000 is total net position, not the unrestricted component alone.
Wrong (B): $41,000,000 incorrectly subtracts only the net investment in capital assets from total net position without also deducting the restricted component.
Wrong (D): $98,000,000 likely ignores deferred inflows of resources in the net position calculation.$19$,
  difficulty = 'medium'
WHERE id = 2305;

-- Q2306 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$Under modified accrual accounting, which revenue source is recognized when the underlying exchange occurs, provided the revenue is available?$19$,
  choices = $19$["Property taxes levied for the current year","Fines assessed but not yet collected","Federal grants reimbursing qualifying expenditures","Sales taxes collected by merchants"]$19$::jsonb,
  explanation = $19$Correct (D): Under GASB 33, paragraph 16, sales taxes are derived tax revenues recognized when the underlying exchange (the sale) occurs, provided the revenue is available (collected within the availability period). They follow the exchange-transaction timing of the taxable event.
Wrong (A): Property taxes are imposed nonexchange revenues recognized in the period for which they are levied under GASB 33, paragraph 17, not when an underlying exchange occurs.
Wrong (B): Fines are imposed nonexchange revenues recognized when the government has an enforceable legal claim and the amount is available, not tied to an underlying exchange transaction.
Wrong (C): Federal reimbursement grants are voluntary nonexchange transactions recognized when qualifying expenditures are incurred under GASB 33, paragraph 21, following eligibility requirements rather than an exchange event.$19$,
  difficulty = 'medium'
WHERE id = 2306;

-- Q2307 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under GASB 34, paragraph 67, enterprise funds are proprietary funds used to account for activities where the government provides goods or services to the general public for a fee. A municipal water utility charges customers for water service, making it an enterprise fund activity using full accrual accounting.
Wrong (A): The General Fund accounts for resources not specifically required to be in another fund; a fee-based utility with identifiable users should be reported separately in an enterprise fund.
Wrong (B): Special Revenue Funds are for specific restricted or committed revenue sources used for purposes other than capital projects or debt service, not for fee-based public utilities.
Wrong (D): Internal Service Funds provide goods or services to other government departments, not to the external public. A water utility serves external customers.$19$,
  difficulty = 'easy'
WHERE id = 2307;

-- Q2308 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$A government''s internal service fund provides printing services to other departments. During the year, the fund billed $2,400,000 and incurred costs of $2,100,000. How are internal service fund activities typically reported in the government-wide financial statements?$19$,
  choices = $19$["In a dedicated internal service activities column","Eliminated entirely from government-wide reporting","Reported within business-type activities","Reported within governmental activities when governmental funds are the predominant participants"]$19$::jsonb,
  explanation = $19$Correct (D): Under GASB 34, paragraph 15, internal service fund activities are typically reported within governmental activities in the government-wide statements when governmental funds are the predominant customers. This prevents distortion of the business-type activities column, since internal service funds primarily serve governmental programs.
Wrong (A): GASB 34 does not provide a separate column for internal service activities; the government-wide statements report only governmental and business-type activities columns.
Wrong (B): Internal service fund activities are not eliminated entirely; they are consolidated into the appropriate activity column based on the predominant participant analysis.
Wrong (C): Reporting as business-type activities would be appropriate only if external parties are the predominant customers, which is uncommon for internal service funds.$19$,
  difficulty = 'hard'
WHERE id = 2308;

-- Q2312 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under GASB 34, paragraph 38, the statement of activities uses a net cost format. Program revenues ($22,000,000) are deducted from program expenses ($80,000,000) to show the net expense of $58,000,000 that must be financed by general revenues such as taxes and unrestricted grants.
Wrong (A): $80,000,000 is total gross expenses, not the net expense. The net cost format requires deducting directly associated program revenues from gross expenses.
Wrong (B): $102,000,000 incorrectly adds expenses and program revenues rather than subtracting program revenues from expenses.
Wrong (C): $22,000,000 is the total program revenue, not the net expense borne by general taxpayers.$19$,
  difficulty = 'easy'
WHERE id = 2312;

-- Q2313 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under GASB 34, paragraphs 18–20, governmental funds use modified accrual and the current financial resources focus, so the fire truck is a $650,000 expenditure. In the government-wide statements, which use full accrual and the economic resources focus, the fire truck is capitalized as a $650,000 capital asset and depreciated over its useful life. This difference is a key reconciling item.
Wrong (A): Both statements do not report an expenditure; the government-wide statements capitalize capital assets rather than expensing them.
Wrong (B): The General Fund does not report capital assets; under current financial resources measurement focus, the purchase is an expenditure, not an asset.
Wrong (C): Both statements do not report a capital asset; the General Fund reports expenditures, not capital assets, under modified accrual.$19$,
  difficulty = 'medium'
WHERE id = 2313;

-- Q2317 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under GASB 54 fund balance reporting, the ending fund balance equals beginning balance plus revenues plus other financing sources minus expenditures. Ending = $800,000 + $5,000,000 + $120,000 + $600,000 − $3,500,000 − $1,800,000 = $1,220,000. The $600,000 transfer in is an other financing source that increases fund balance.
Wrong (B): $620,000 likely omits the transfer in from the General Fund, which is a valid other financing source that increases the Debt Service Fund balance.
Wrong (C): $1,520,000 may include the transfer in twice or miscalculate one of the expenditure items in the fund balance rollforward.
Wrong (D): $220,000 likely omits both the interest income and the transfer in from the calculation.$19$,
  difficulty = 'medium'
WHERE id = 2317;

-- Q2319 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under GASB 34, paragraphs 77–79, the reconciliation between governmental fund statements and government-wide governmental activities requires adding capital assets that were recorded as expenditures in the funds. Government-wide statements capitalize long-lived assets under the economic resources focus and accrual basis.
Wrong (B): Proprietary fund activities are not removed; they are reported in the business-type activities column of the government-wide statements and do not require adjustment in the governmental activities reconciliation.
Wrong (C): While certain interfund transfers are eliminated in consolidation, not all transfers are eliminated; only those between governmental and business-type activities may require adjustment.
Wrong (D): Governmental funds use modified accrual, not cash basis. The reconciliation converts from modified accrual to full accrual, not from cash basis.$19$,
  difficulty = 'medium'
WHERE id = 2319;

-- Q2320 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under GASB 33, paragraph 22, and the modified accrual availability criterion, revenue must be measurable and available. Total state aid earned = 5,000 × $8,000 = $40,000,000. The $35,000,000 received by year-end is available. The remaining $5,000,000, expected 90 days after year-end, exceeds the 60-day availability period and is reported as a deferred inflow of resources.
Wrong (A): $37,500,000 does not correspond to any valid calculation under the given availability period and collection timing.
Wrong (B): $40,000,000 recognizes the full amount earned without applying the availability criterion. Under modified accrual, only amounts collected within the availability period qualify as revenue.
Wrong (C): $5,000,000 is the unavailable portion reported as a deferred inflow, not the revenue to be recognized.$19$,
  difficulty = 'hard'
WHERE id = 2320;

-- Q2322 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under GASB 34, paragraph 100, the change in net position for a proprietary fund equals operating income plus nonoperating items plus capital contributions. Operating income = $15,000,000 − $12,000,000 = $3,000,000. Nonoperating = −$800,000 + $200,000 = −$600,000. Capital contributions = $1,500,000. Total = $3,000,000 − $600,000 + $1,500,000 = $3,900,000.
Wrong (A): $3,000,000 is operating income only and ignores nonoperating items and capital contributions that also affect net position.
Wrong (B): $3,200,000 may account for operating income and capital contributions but incorrectly omits or miscalculates the nonoperating items.
Wrong (C): $2,400,000 may subtract nonoperating items from operating income but omit the capital contributions from developers.$19$,
  difficulty = 'medium'
WHERE id = 2322;

-- Q2323 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under GASB 84, paragraph 7, the county acts as a custodian collecting taxes on behalf of the fire district. The $2,450,000 passed through is recorded as a custodial liability (or in a custodial fund), not as county revenue. Only the 2% collection fee of $50,000 ($2,500,000 × 2%) is the county''s revenue for services rendered.
Wrong (A): Recording $2,500,000 as revenue in a special revenue fund treats pass-through collections as the county''s own revenue, which overstates the county''s financial activity.
Wrong (C): Reporting $2,500,000 as revenue and $2,450,000 as an expenditure grosses up both sides, misrepresenting the nature of the agency relationship.
Wrong (D): Recording no entry ignores both the collection fee revenue earned by the county and its custodial obligation to remit the $2,450,000.$19$,
  difficulty = 'medium'
WHERE id = 2323;

-- Q2324 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$A government''s General Fund transfers $3,000,000 to a Capital Projects Fund and $1,000,000 to an Enterprise Fund. How are these transfers reported in the General Fund?$19$,
  choices = $19$["Expenditures of $3,000,000 and transfers out of $1,000,000","Expenditures totaling $4,000,000","Revenue reductions totaling $4,000,000","Other financing uses totaling $4,000,000"]$19$::jsonb,
  explanation = $19$Correct (D): Under GASB 34, paragraph 112, interfund transfers in governmental funds are reported as other financing sources (receiving fund) or other financing uses (sending fund), not as revenues or expenditures. Both the $3,000,000 to the Capital Projects Fund and $1,000,000 to the Enterprise Fund are other financing uses, totaling $4,000,000.
Wrong (A): Splitting the amounts between expenditures and transfers out is incorrect; all interfund transfers are classified as other financing uses in the sending governmental fund, regardless of the receiving fund type.
Wrong (B): Classifying transfers as expenditures misstates their nature; expenditures represent resource outflows for goods, services, or obligations, not interfund resource movements.
Wrong (C): Revenue reductions do not apply to interfund transfers; transfers affect other financing sources/uses, a separate section of the fund financial statements.$19$,
  difficulty = 'easy'
WHERE id = 2324;

-- Q2325 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$A city issues $20,000,000 of general obligation bonds at 102 (a 2% premium). In the Capital Projects Fund, how should the total proceeds be reported?$19$,
  choices = $19$["Revenue of $20,400,000","A single other financing source of $20,400,000","Bond proceeds of $20,000,000 with the premium transferred to the Debt Service Fund","Bond proceeds of $20,000,000 and premium on bonds of $400,000 as separate other financing sources"]$19$::jsonb,
  explanation = $19$Correct (D): Under GASB 34, paragraph 88, bond proceeds are reported as other financing sources in governmental funds. The face value ($20,000,000) and premium ($400,000) are reported separately: face value as "bond proceeds" and the premium as "premium on bonds issued," both classified as other financing sources. Any subsequent transfer of the premium to the Debt Service Fund is a separate interfund transaction.
Wrong (A): Bond proceeds are not classified as revenue; they are other financing sources because they create a long-term liability rather than earning activity.
Wrong (B): Combining face value and premium into a single other financing source fails to provide the required separate disclosure of the premium component.
Wrong (C): While the premium may be transferred to the Debt Service Fund per the bond resolution, the initial reporting in the Capital Projects Fund must show both the face value and premium as separate other financing sources.$19$,
  difficulty = 'hard'
WHERE id = 2325;

-- Q2327 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 715-30-35-4, net periodic pension cost = service cost + interest cost − expected return on plan assets + amortization of prior service cost + amortization of net loss. = $400,000 + $320,000 − $280,000 + $50,000 + $30,000 = $520,000. Under ASU 2017-07, only service cost is in operating income; other components are below the line.
Wrong (B): $720,000 likely adds all components without subtracting the expected return on plan assets, which is a reduction of pension cost.
Wrong (C): $470,000 may omit one of the amortization components (either prior service cost or net actuarial loss) from the calculation.
Wrong (D): $400,000 is only the service cost component, not total net periodic pension cost, which includes all five components.$19$,
  difficulty = 'medium'
WHERE id = 2327;

-- Q2328 [easy] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASU 2017-07 (ASC 715-30-35-5A), only the service cost component of net periodic pension cost is presented with other employee compensation costs in operating income. All other components (interest cost, expected return, amortization of prior service cost, and amortization of net gains/losses) are presented outside of operating income.
Wrong (A): Interest cost is a component of net periodic pension cost but must be presented outside of operating income under ASU 2017-07.
Wrong (B): Expected return on plan assets reduces net periodic pension cost but is presented outside of operating income, not within it.
Wrong (D): Amortization of prior service cost is a non-service cost component that must be reported below operating income.$19$,
  difficulty = 'easy'
WHERE id = 2328;

-- Q2329 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 715-30-35-12, ending PBO = beginning PBO + service cost + interest cost − benefits paid ± actuarial gains/losses. Interest cost = $5,000,000 × 6% = $300,000. Ending PBO = $5,000,000 + $350,000 + $300,000 − $420,000 + $180,000 = $5,410,000.
Wrong (B): $5,230,000 may omit the actuarial loss of $180,000 from the PBO rollforward, understating the ending obligation.
Wrong (C): $5,110,000 may miscalculate interest cost or exclude one or more components from the PBO reconciliation.
Wrong (D): $5,590,000 may double-count the actuarial loss or add benefits paid instead of subtracting them.$19$,
  difficulty = 'medium'
WHERE id = 2329;

-- Q2330 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 715-30-35-21, ending plan assets at fair value = beginning fair value + actual return + employer contributions − benefits paid. = $4,000,000 + $360,000 + $500,000 − $350,000 = $4,510,000. The actual return (not expected return) is used when reconciling plan asset balances.
Wrong (B): $4,150,000 may use the expected return instead of actual return or omit the employer contribution from the calculation.
Wrong (C): $4,860,000 may add benefits paid rather than subtracting them, overstating the ending plan asset balance.
Wrong (D): $4,010,000 may omit both the actual return and employer contribution, significantly understating ending plan assets.$19$,
  difficulty = 'medium'
WHERE id = 2330;

-- Q2331 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 715-30-35-22, when the actual return ($220,000) is less than the expected return ($300,000), an asset loss of $80,000 results. This loss is recognized in other comprehensive income and accumulated in AOCI. It is amortized into pension expense in future periods only if the cumulative unrecognized net gain or loss exceeds the corridor threshold (10% of the greater of PBO or plan assets).
Wrong (A): An asset gain of $80,000 in pension expense is incorrect in both direction and classification; actual return below expected return creates a loss, and it is recognized in OCI, not immediately in expense.
Wrong (C): An asset gain of $80,000 in OCI has the correct reporting location but the wrong direction; the shortfall in actual return creates a loss, not a gain.
Wrong (D): Claiming no effect is incorrect because the difference between actual and expected return must be recognized in OCI as an asset gain or loss.$19$,
  difficulty = 'medium'
WHERE id = 2331;

-- Q2338 [easy] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 715-70-25-1, in a defined contribution plan, the employer''s expense equals the contribution made each period. Employee contribution = 6% × $120,000 = $7,200. Company match = 50% × $7,200 = $3,600. Unlike defined benefit plans, there is no PBO or complex actuarial calculation.
Wrong (A): $6,000 may incorrectly compute the match based on 5% of salary or use an incorrect matching formula.
Wrong (B): $7,200 is the employee''s own contribution, not the company''s matching expense. The company matches only 50% of the employee''s contribution.
Wrong (C): $1,800 may incorrectly apply the 50% match to only half the employee contribution or use an incorrect salary percentage.$19$,
  difficulty = 'easy'
WHERE id = 2338;

-- Q2340 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 715-30-35-19A, the reclassification adjustment from AOCI equals the total amortized during the period: $25,000 (net loss amortization) + $40,000 (prior service cost amortization) = $65,000. These amounts are removed from AOCI and included in net periodic pension cost on the income statement.
Wrong (B): $25,000 includes only the net loss amortization and omits the prior service cost amortization that is also reclassified in the same period.
Wrong (C): $40,000 includes only the prior service cost amortization and omits the net loss amortization that is reclassified concurrently.
Wrong (D): $630,000 is the total AOCI balance ($450,000 + $180,000), not the amount reclassified during the period. Only the amortized portions are reclassified.$19$,
  difficulty = 'medium'
WHERE id = 2340;

-- Q2344 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 715-30-35-11, prior service cost is amortized over the average remaining service period of active employees expected to receive benefits. Amortization = $500,000 ÷ 8 years = $62,500 per year. This amount is reclassified from AOCI to net periodic pension cost each year.
Wrong (A): $500,000 would recognize the entire prior service cost immediately in the first year, which is not permitted; it must be amortized over the service period.
Wrong (B): $41,667 incorrectly divides by 12 years (or another incorrect denominator) rather than the 8-year average remaining service period.
Wrong (D): $50,000 divides the prior service cost by 10 years (the years of past service credit), which is the basis for the cost calculation, not the amortization period.$19$,
  difficulty = 'medium'
WHERE id = 2344;

-- Q2349 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 715-60-35-8, increasing the healthcare cost trend rate raises expected future benefit payments, which increases the accumulated postretirement benefit obligation (APBO). This in turn increases both service cost (present value of current-year benefit accrual) and interest cost (discount rate applied to the larger APBO).
Wrong (A): Interest cost is affected, but it is not the only component impacted; service cost also increases because the present value of future benefits attributed to current service is higher.
Wrong (B): Trend rates directly affect the APBO by changing projected future healthcare costs; claiming no effect contradicts the sensitivity of OPEB obligations to trend rate assumptions.
Wrong (D): An increase in the trend rate increases rather than decreases the APBO and OPEB expense, because higher projected costs raise the obligation and its components.$19$,
  difficulty = 'medium'
WHERE id = 2349;

-- Q2350 [hard] topic: Employee Benefit Plans
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$A company has a defined benefit pension plan with a PBO of $15,000,000, plan assets of $11,000,000, AOCI losses of $2,800,000, and prior service cost in AOCI of $600,000. The company terminates the plan and settles all obligations by purchasing annuity contracts. What must be recognized upon settlement?$19$,
  choices = $19$["Only the $600,000 prior service cost in income","No immediate recognition; AOCI amounts continue to amortize","Only the $4,000,000 underfunded status in income","All $3,400,000 of AOCI items in income plus any settlement gain or loss"]$19$::jsonb,
  explanation = $19$Correct (D): Under ASC 715-30-35-80, when a pension plan is fully settled, all amounts remaining in accumulated other comprehensive income must be recognized immediately in income. This includes the $2,800,000 of unrecognized net actuarial losses and the $600,000 of prior service cost ($3,400,000 total), plus any gain or loss on the settlement transaction itself.
Wrong (A): Recognizing only the prior service cost ignores the $2,800,000 of actuarial losses also accumulated in AOCI that must be recognized upon full settlement.
Wrong (B): Continued amortization is not permitted upon full settlement; ASC 715-30 requires immediate recognition of all deferred items when the obligation is fully extinguished.
Wrong (C): The $4,000,000 underfunded status is the funded status difference ($15,000,000 − $11,000,000), which is already reflected on the balance sheet as a net pension liability. Settlement recognition relates to AOCI items, not the funded status.$19$,
  difficulty = 'hard'
WHERE id = 2350;

-- Q2351 [easy] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under AR-C 90 (SSARS No. 21) and AU-C 800.A2, the cash basis of accounting recognizes transactions only when cash is received or disbursed. The $50,000 cash receipt is recorded as revenue because cash changed hands. Under pure cash basis, no accruals, receivables, or non-cash allocations are recognized.
Wrong (B): Depreciation is an accrual-basis allocation of an asset''s cost over its useful life and is not recognized under the pure cash basis because no cash disbursement occurs when depreciation is recorded.
Wrong (C): Accruing wages payable at year-end is an accrual-basis adjustment; under cash basis, wage expense is recorded only when wages are actually paid.
Wrong (D): Recording accounts receivable requires accrual-basis recognition of revenue before cash is received, which contradicts the fundamental cash-basis principle.$19$,
  difficulty = 'easy'
WHERE id = 2351;
