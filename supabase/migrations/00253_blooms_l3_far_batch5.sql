-- Migration: Bloom's L3 rebalancing — FAR batch 5 (50 questions)
-- Date: 2026-02-26
-- Purpose: Rewrite 50 L2 (Application) questions to L3 depth for FAR section
-- Affected topics: Accounting Changes and Error Corrections, Bonds and Debt, Cash and Receivables, Conceptual Framework and Standards, Consolidations, Contingencies, Earnings Per Share, Employee Benefit Plans, Equity, Fair Value, Financial Statements, Fixed Assets, Governmental Accounting, Governmental Accounting Fundamentals, Income Taxes, Intangible Assets, Inventory, Leases, Not-for-Profit Accounting, Payables and Accrued Liabilities, Revenue Recognition, Special Purpose Frameworks, Statement of Cash Flows

BEGIN;

-- ============================================================
-- ACCOUNTING CHANGES AND ERROR CORRECTIONS (1 questions)
-- ============================================================

-- ID 5253: Accounting Changes and Error Corrections — Misclassifying error as estimate change
-- correct_index = 2
UPDATE questions SET
  stem = 'Whitfield Industries discovers that it omitted $120,000 of depreciation expense on factory equipment in Year 1. The controller proposes treating the omission as a change in accounting estimate rather than an error correction. What is the most likely effect on Whitfield''s comparative financial statements if the controller''s classification is accepted?',
  choices = '["Prior-period statements would be restated, producing the same outcome regardless of classification", "Retained earnings would be reduced by $120,000 in Year 3 under either approach, so the classification is irrelevant", "Year 1 net income would remain overstated in comparative statements because prospective estimate-change treatment does not restate prior periods, unlike the restatement required for error corrections", "Total stockholders'' equity would be permanently higher because estimate changes bypass retained earnings entirely"]'::jsonb,
  explanation = 'Under ASC 250-10-45-23, prior-period errors require restatement of comparative financial statements to correct the period in which the error occurred. Changes in estimate under ASC 250-10-45-17 are applied prospectively. Misclassifying the error leaves Year 1 net income overstated by $120,000, misleading users of comparative statements. Unlike a genuine estimate change reflecting new information, this omission was correctable when it occurred, whereas prospective treatment would inappropriately preserve the misstatement.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 5253;

-- ============================================================
-- BONDS AND DEBT (3 questions)
-- ============================================================

-- ID 45: Bonds and Debt — Effect of discount vs premium on total interest expense
-- correct_index = 0
UPDATE questions SET
  stem = 'Ashford Manufacturing issues two $1,000,000 face value, 10-year bond series on the same date. Series A is issued at 96 (discount) and Series B is issued at 104 (premium). Both carry a 6% stated rate. How would the issuance price most likely affect total interest expense recognized over the bond term?',
  choices = '["Series A''s total interest expense of $640,000 exceeds Series B''s $560,000 because the discount represents additional borrowing cost amortized into expense, indicating the market demanded a higher effective yield", "Total interest expense is $600,000 for both series because the stated rate and face value are identical", "Series B''s total expense exceeds Series A''s because the premium increases the carrying amount used to compute effective interest", "Both series produce different annual expense but identical total expense of $600,000 over the term"]'::jsonb,
  explanation = 'Under ASC 835-30, total interest expense equals total cash interest plus discount amortization or minus premium amortization. Series A: $600,000 cash + $40,000 discount = $640,000. Series B: $600,000 cash − $40,000 premium = $560,000. The discount signals the stated rate was below market, requiring additional compensation. However, choice C reverses the effect because premium amortization reduces, rather than increases, interest expense.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 45;

-- ID 46: Bonds and Debt — Effect of discount amortization on carrying amount pattern
-- correct_index = 3
UPDATE questions SET
  stem = 'Greystone Corp. issues a $500,000, 5-year, 6% bond at $459,342 when the market rate is 8%, paying interest semiannually. In the first period, interest expense is $18,374 and the cash payment is $15,000. What is the most likely effect of this $3,374 difference on subsequent periods?',
  choices = '["The difference will remain constant at $3,374 each period because the effective interest method uses a fixed rate", "The difference will decrease each period as the carrying amount approaches face value", "The carrying amount will decline each period, causing interest expense to fall below the cash payment by maturity", "The difference will increase each period because the growing carrying amount produces progressively larger interest expense while the cash payment remains fixed at $15,000"]'::jsonb,
  explanation = 'Under ASC 835-30, the effective interest method computes expense as carrying amount times the market rate. Each period, the $3,374 discount amortization increases the carrying amount, which in turn produces a larger interest expense in the next period. The cash payment stays fixed at $15,000. This creates an accelerating amortization pattern that continues until the carrying amount reaches face value. However, choice A incorrectly assumes constant dollar expense, whereas the method produces a constant rate, not a constant amount.',
  correct_index = 3,
  difficulty = 'hard',
  cognitive_level = 3
WHERE id = 46;

-- ID 167: Bonds and Debt — Effect of unrealized intercompany profit on consolidated income
-- correct_index = 1
UPDATE questions SET
  stem = 'Hargrove Corp. owns 100% of Dalton Inc. During 2025, Dalton sold inventory to Hargrove for $500,000 (cost $350,000). At year-end, Hargrove has resold 80% to outside customers but retains 20% in ending inventory. Combined standalone net income is $950,000. What is the most likely effect of the retained inventory on consolidated net income?',
  choices = '["No effect, because the intercompany sale was completed at arm''s length and both entities are profitable", "Consolidated net income decreases to $920,000 because the $30,000 unrealized profit in retained inventory must be eliminated until the goods are sold to external parties", "Consolidated net income decreases to $800,000 because the full $150,000 intercompany gross profit is eliminated regardless of external resale", "Consolidated net income increases to $980,000 because eliminating intercompany COGS reduces expenses"]'::jsonb,
  explanation = 'Under ASC 810-10-45-1, unrealized intercompany profit in ending inventory must be eliminated. The gross profit is $150,000, of which 80% ($120,000) is realized through external sales. The remaining 20% ($30,000) sits in ending inventory as unrealized profit, reducing consolidated net income to $920,000. However, choice C incorrectly eliminates the entire gross profit, whereas only the portion retained in inventory at year-end remains unrealized from the consolidated perspective.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 167;

-- ============================================================
-- CASH AND RECEIVABLES (2 questions)
-- ============================================================

-- ID 1096: Cash and Receivables — Effect of original maturity on cash equivalent classification
-- correct_index = 2
UPDATE questions SET
  stem = 'Greystone Corp. holds four instruments at year-end: a 60-day Treasury bill ($2 million), a 120-day certificate of deposit ($1.5 million), a money market fund ($800,000), and commercial paper purchased with 45 days remaining to maturity ($500,000). Which factor most likely determines whether each instrument qualifies as a cash equivalent under ASC 230?',
  choices = '["Current market liquidity, which qualifies all four instruments totaling $4.8 million because each can be converted to cash within days", "Daily redemption capability, which limits cash equivalents to the money market fund at $800,000", "Original maturity from the entity''s purchase date, which qualifies the Treasury bill, money market fund, and commercial paper ($3.3 million) but excludes the 120-day CD", "Remaining maturity at the balance sheet date, which qualifies all instruments maturing within 90 days of year-end"]'::jsonb,
  explanation = 'Under ASC 230-10-20, cash equivalents must have an original maturity of three months or less from the entity''s purchase date. The Treasury bill (60 days), money market fund (daily liquidity), and commercial paper (45 days at purchase) qualify, totaling $3.3 million. The CD''s 120-day original maturity disqualifies it. However, choice D incorrectly uses remaining maturity at the balance sheet date, whereas ASC 230 measures from the purchase date.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 1096;

-- ID 1097: Cash and Receivables — Effect of reconciling items on bank vs book adjustments
-- correct_index = 0
UPDATE questions SET
  stem = 'Ashford Industries'' bank statement shows $124,500. Outstanding checks total $18,200, deposits in transit $9,800, an NSF check from a customer $3,400, bank service charges $275, a note collected by the bank $12,000, and a $5,000 deposit credited to Ashford''s account in error by the bank. Which factor most likely determines whether each item adjusts the bank balance or the book balance?',
  choices = '["Whether the item represents a timing difference or bank error (adjusts bank) versus new information requiring a journal entry (adjusts books), producing an adjusted bank balance of $111,100", "Whether the item is a debit or credit on the bank statement, producing an adjusted bank balance of $127,625", "Whether the amount exceeds a materiality threshold set by Ashford''s audit committee", "Whether the item originated from an external party, making all items bank-side adjustments"]'::jsonb,
  explanation = 'Under ASC 305-10-05, bank reconciliation separates timing differences and bank errors (bank-side) from items requiring journal entries (book-side). Bank balance: $124,500 − $18,200 + $9,800 − $5,000 = $111,100. The NSF check, service charges, and note collection adjust the book balance because Ashford has not yet recorded them. However, choice D incorrectly classifies all items as bank-side, whereas the NSF check and note collection require entries on Ashford''s books.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 1097;

-- ============================================================
-- CONCEPTUAL FRAMEWORK AND STANDARDS (1 questions)
-- ============================================================

-- ID 5211: Conceptual Framework and Standards — Effect of verifiability on faithful representation
-- correct_index = 3
UPDATE questions SET
  stem = 'Two companies report identical revenue of $5 million. Company A''s revenue is from a publicly traded commodity with observable market prices, while Company B''s revenue is from a long-term contract using management''s percentage-of-completion estimates. Which qualitative characteristic of financial information most likely explains why investors would view Company A''s revenue figure as more reliable?',
  choices = '["Relevance, because commodity revenue provides more predictive value than contract revenue", "Timeliness, because commodity transactions are recorded faster than contract estimates", "Comparability, because commodity pricing uses a standardized measurement approach", "Verifiability, because independent observers can corroborate Company A''s revenue against market prices, whereas Company B''s estimate depends on management''s subjective inputs"]'::jsonb,
  explanation = 'Under FASB Concepts Statement No. 8 (QC26), verifiability means different knowledgeable and independent observers could reach consensus that a depiction is faithful. Company A''s observable market prices are directly verifiable, while Company B''s estimates require evaluation of management assumptions. This enhancing characteristic supports faithful representation. However, choice A incorrectly cites relevance, whereas both revenue figures may be equally relevant to forecasting future cash flows.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 5211;

-- ============================================================
-- CONSOLIDATIONS (3 questions)
-- ============================================================

-- ID 55: Consolidations — Effect of NCI measurement choice on goodwill and impairment risk
-- correct_index = 1
UPDATE questions SET
  stem = 'Thornfield Corp. acquires 80% of Summit Industries for $8 million when Summit''s identifiable net assets have a fair value of $9 million. Full fair value NCI is $2.1 million, and proportionate share NCI is $1.8 million. What is the most likely long-term financial statement effect of choosing the full fair value method over the proportionate share method?',
  choices = '["Post-acquisition income allocation shifts more subsidiary earnings to the parent, improving the parent''s reported EPS", "Goodwill increases by $300,000 ($1.1 million vs $800,000), exposing a larger asset to future impairment testing under ASC 350 without affecting the 80/20 income allocation", "Total consolidated equity is permanently higher because full fair value NCI increases total net assets beyond identifiable amounts", "The proportionate share method is prohibited under U.S. GAAP, so the comparison is moot"]'::jsonb,
  explanation = 'Under ASC 805-20-30, full fair value NCI produces goodwill of $1.1 million versus $800,000 under the proportionate method. The $300,000 difference represents goodwill attributable to the NCI. Post-acquisition income is allocated by ownership percentage under ASC 810-10-45-15 regardless of NCI measurement. The larger goodwill creates higher impairment exposure under ASC 350. However, choice A incorrectly suggests income allocation changes, whereas ownership percentages solely drive the split.',
  correct_index = 1,
  difficulty = 'hard',
  cognitive_level = 3
WHERE id = 55;

-- ID 56: Consolidations — Effect of elimination entries on consolidated entity presentation
-- correct_index = 2
UPDATE questions SET
  stem = 'Brighton Holdings owns 100% of three subsidiaries. During 2025, Sub A sold $2 million in goods to Sub B, Sub B loaned $500,000 to Sub C at 5% interest, and Sub C paid $180,000 in management fees to the parent. If Brighton eliminated only the intercompany loan and interest but not the sales or fees, what is the most likely effect on consolidated financial statements?',
  choices = '["No material effect because the sales and fees represent legitimate arm''s-length transactions", "Consolidated revenue and expenses would both be understated because partial elimination distorts the matching principle", "Consolidated revenue would be overstated by $2.18 million because the intercompany sales and management fees inflate top-line and expense figures, misrepresenting the entity''s transactions with external parties", "Consolidated net income would increase by $2.18 million because intercompany revenue is not offset by corresponding expense"]'::jsonb,
  explanation = 'Under ASC 810-10-45-1, all intercompany balances and transactions must be eliminated in consolidated statements. Failing to eliminate the $2 million intercompany sale overstates both revenue and COGS, while the $180,000 fee overstates both revenue and expense. Net income is unaffected, but the gross amounts misrepresent the entity''s economic activity with outside parties. However, choice D incorrectly assumes revenue lacks offsetting expense, whereas intercompany transactions inflate both sides equally.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 56;

-- ID 185: Consolidations — Effect of NCI presentation on income statement analysis
-- correct_index = 0
UPDATE questions SET
  stem = 'Brighton Holdings owns 80% of Cascade Inc. Cascade reports net income of $500,000. Consolidated net income after eliminations is $2,200,000. An analyst calculates the controlling interest''s share as $2,200,000 minus Cascade''s full net income of $500,000. What is the most likely error in this approach?',
  choices = '["The analyst deducts 100% of Cascade''s income instead of the 20% NCI share, overstating the deduction by $400,000 and understating the controlling interest''s share", "The analyst''s approach is correct because the parent excludes 100% of subsidiary income under ASC 810", "The NCI share should be reported only in footnotes, making the analyst''s allocation unnecessary", "Consolidated net income should exclude Cascade''s results entirely because Cascade is less than wholly owned"]'::jsonb,
  explanation = 'Under ASC 810-10-45-19, consolidated net income includes 100% of the subsidiary''s results and is then attributed between controlling and noncontrolling interests. The NCI share is 20% × $500,000 = $100,000, leaving $2,100,000 for the controlling interest. The analyst''s error deducts $500,000 instead of $100,000. However, choice B incorrectly validates the deduction of full subsidiary income, whereas ASC 810 allocates only the NCI ownership percentage.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 185;

-- ============================================================
-- CONTINGENCIES (2 questions)
-- ============================================================

-- ID 192: Contingencies — Effect of best estimate availability on accrual amount
-- correct_index = 3
UPDATE questions SET
  stem = 'Ridgemont Manufacturing is defendant in a product liability suit. Legal counsel estimates the probable loss range at $1.2 million to $1.8 million, with $1.5 million as the best estimate. A peer company facing a similar suit with the same range but no best estimate accrues $1.2 million. Which factor most likely explains the $300,000 difference in the accrued amounts?',
  choices = '["Different litigation strategies produce different expected outcomes even with identical probability ranges", "The peer company uses a more conservative accounting policy by always accruing the minimum", "The peer company''s legal counsel is less confident in the range estimate, requiring a lower accrual", "The availability of a best estimate within the range determines the accrual: ASC 450-20-25 requires the best estimate when identifiable, but defaults to the range minimum when no amount is more likely than another"]'::jsonb,
  explanation = 'Under ASC 450-20-25-2, when a best estimate exists within a range, that amount is accrued. Ridgemont accrues $1.5 million. Under ASC 450-20-30-1, when no amount in the range is more likely, the minimum ($1.2 million) is accrued. The $300,000 difference arises solely from whether a best estimate is identifiable. However, choice B incorrectly frames the minimum accrual as a policy choice, whereas it is the default rule when no best estimate exists.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 192;

-- ID 1140: Contingencies — Comparing loss recognition for purchase commitments vs inventory write-downs
-- correct_index = 1
UPDATE questions SET
  stem = 'Ashford Manufacturing has a noncancelable purchase commitment for 5,000 units at $80 per unit when market price has declined to $65, and finished goods inventory of 3,000 units carried at $95 per unit with NRV of $78. What is the most likely reason ASC 450 and ASC 330 both require current-period loss recognition despite the different nature of these items?',
  choices = '["Both losses are contingent and should be disclosed in footnotes rather than recognized, because market conditions may reverse before settlement", "Both represent present economic impairments that cannot be avoided: the commitment creates an unavoidable obligation at above-market prices ($75,000 loss), while the inventory''s carrying value exceeds its recoverable amount ($51,000 write-down)", "Only the inventory write-down is recognized because purchase commitments are executory contracts that remain off-balance-sheet until delivery", "Only the purchase commitment loss is recognized because inventory is not written down until actually sold below cost"]'::jsonb,
  explanation = 'Under ASC 450, the noncancelable purchase commitment at above-market prices creates a probable and estimable loss of $75,000 [(80−65) × 5,000]. Under ASC 330-10-35, inventory carried above NRV requires a $51,000 write-down [(95−78) × 3,000]. Both reflect present economic impairments requiring current recognition. However, choice C incorrectly excludes purchase commitments from recognition, whereas noncancelable commitments with other-than-temporary declines require accrual under ASC 450.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 1140;

-- ============================================================
-- EARNINGS PER SHARE (1 questions)
-- ============================================================

-- ID 194: Earnings Per Share — Effect of preferred dividends on income available to common shareholders
-- correct_index = 2
UPDATE questions SET
  stem = 'Ridgemont Corp. reports net income of $3,200,000 with 800,000 weighted-average common shares outstanding and $400,000 in cumulative preferred dividends. An analyst computes basic EPS as $4.00 ($3,200,000 ÷ 800,000). What is the most likely error in this calculation, and how does it affect the analyst''s assessment of common shareholder returns?',
  choices = '["The analyst should add preferred dividends to the numerator, producing EPS of $4.50", "The analyst should include preferred shares in the denominator, reducing EPS to $2.67", "The analyst fails to deduct the $400,000 preferred claim from net income, overstating EPS by $0.50 because preferred dividends reduce the income available to common shareholders to $2,800,000", "The calculation is correct because cumulative preferred dividends are deducted only when declared, and no declaration is mentioned"]'::jsonb,
  explanation = 'Under ASC 260-10-45-10, basic EPS equals net income minus preferred dividends divided by weighted-average common shares. The correct numerator is $2,800,000 ($3,200,000 − $400,000), producing EPS of $3.50. The analyst''s $4.00 overstates returns available to common shareholders by $0.50 per share. However, choice D incorrectly suggests cumulative dividends are deducted only when declared, whereas ASC 260 requires deduction of cumulative preferred dividends regardless of declaration.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 194;

-- ============================================================
-- EMPLOYEE BENEFIT PLANS (2 questions)
-- ============================================================

-- ID 1106: Employee Benefit Plans — Effect of ASU 2017-07 on operating income comparability
-- correct_index = 0
UPDATE questions SET
  stem = 'Greystone Manufacturing reports net periodic pension cost of $850,000: service cost $320,000, interest cost $280,000, expected return on plan assets ($210,000), prior service cost amortization $35,000, and net actuarial loss amortization $425,000. How would the presentation requirements of ASU 2017-07 most likely affect comparability between Greystone and a competitor with no defined benefit plan?',
  choices = '["Only the $320,000 service cost appears in operating income, isolating compensation-related pension cost and improving comparability because the remaining $530,000 in non-service components does not distort operating margins", "All $850,000 is reported in operating income, making operating margins appear lower for companies with pension plans", "The $210,000 expected return on plan assets offsets service cost within operating income, improving reported margins", "Non-service components are capitalized as a pension asset rather than expensed, increasing operating income"]'::jsonb,
  explanation = 'Under ASU 2017-07 (ASC 715-30-35-83), only service cost ($320,000) is presented in operating income with other compensation costs. Interest cost, expected return, prior service cost amortization, and net loss amortization ($530,000 total) are reported below the operating line. This bifurcation improves comparability between employers with and without defined benefit plans. However, choice B incorrectly places all components in operating income, whereas ASU 2017-07 specifically bifurcates pension cost.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 1106;

-- ID 1107: Employee Benefit Plans — Effect of separate plan funded status on balance sheet presentation
-- correct_index = 3
UPDATE questions SET
  stem = 'Ashford Industries sponsors two defined benefit plans. Plan A is overfunded by $1.5 million and Plan B is underfunded by $1.2 million. The CFO proposes reporting a single net pension asset of $300,000. What is the most likely effect of this netting approach on the financial statements?',
  choices = '["No effect because both approaches produce the same total stockholders'' equity", "The netting approach is required under ASC 715 to simplify balance sheet presentation", "The netting approach understates total liabilities but has no effect on pension expense", "Total assets would be understated by $1.5 million and total liabilities by $1.2 million because ASC 715 prohibits offsetting separately funded plans, requiring Plan A as a $1.5 million asset and Plan B as a $1.2 million liability"]'::jsonb,
  explanation = 'Under ASC 715-30-25-1, the funded status of each defined benefit plan must be recognized separately on the balance sheet. Netting a $1.5 million asset against a $1.2 million liability to report $300,000 understates both total assets and total liabilities, distorting leverage ratios. However, choice A incorrectly focuses only on equity, whereas the netting approach misrepresents the composition of assets and liabilities even though net equity is unaffected.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 1107;

-- ============================================================
-- EQUITY (2 questions)
-- ============================================================

-- ID 47: Equity — Effect of stock dividend size on retained earnings and APIC
-- correct_index = 1
UPDATE questions SET
  stem = 'Waverly Corp. has 100,000 shares of $5 par common stock outstanding at $40 market price. The board considers a 10% stock dividend versus a 30% stock dividend. How would the size of the dividend most likely affect the amount transferred from retained earnings?',
  choices = '["Both dividends transfer the same amount because the number of shares issued is the only variable", "The 10% dividend transfers $400,000 from retained earnings at market value, whereas the 30% dividend transfers only $150,000 at par value, because small dividends are perceived as income distributions while large dividends are economically equivalent to stock splits", "The 30% dividend transfers $1,200,000 from retained earnings because more shares are issued at market value", "Both dividends use par value, transferring $50,000 and $150,000 respectively"]'::jsonb,
  explanation = 'Under ASC 505-20-30, small stock dividends (below 20–25%) are recorded at market value: 10,000 shares × $40 = $400,000. Large stock dividends use par value: 30,000 shares × $5 = $150,000. The rationale is that small dividends are perceived as income-like distributions justifying market-value capitalization, while large dividends resemble stock splits. However, choice C incorrectly applies market value to the large dividend, whereas ASC 505 uses only the minimum par value for recapitalizations above the threshold.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 47;

-- ID 48: Equity — Effect of treasury stock repurchase on stockholders' equity
-- correct_index = 2
UPDATE questions SET
  stem = 'Ashford Industries originally issued 50,000 shares at $12 per share and reacquires 5,000 shares at $18 per share using the cost method. How would this repurchase most likely affect Ashford''s total stockholders'' equity and why does the $6 per-share premium not appear on the income statement?',
  choices = '["Equity decreases by $60,000 because treasury stock is recorded at the original issue price under the cost method", "Equity decreases by $90,000 and a $30,000 loss is recognized on the income statement for the premium paid over original issue price", "Equity decreases by $90,000 with no income statement effect because the cost method records treasury stock at the $18 repurchase price and equity transactions never flow through earnings", "Equity is unaffected because the repurchase is netted against additional paid-in capital"]'::jsonb,
  explanation = 'Under ASC 505-30-30, the cost method debits treasury stock at the reacquisition cost: 5,000 × $18 = $90,000. Treasury stock is a contra-equity account reducing total stockholders'' equity by $90,000. The $6 premium per share is not a loss because transactions in an entity''s own equity are capital transactions. However, choice B incorrectly recognizes a loss on the income statement, whereas equity transactions do not flow through earnings under U.S. GAAP.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 48;

-- ============================================================
-- FAIR VALUE (2 questions)
-- ============================================================

-- ID 196: Fair Value — Effect of hierarchy level on measurement reliability and audit risk
-- correct_index = 0
UPDATE questions SET
  stem = 'Thornfield Financial holds Portfolio A (publicly traded equities, Level 1, $12 million) and Portfolio B (private equity stakes, Level 3, $12 million). Both report the same fair value. Which factor most likely indicates that Portfolio B poses greater audit risk than Portfolio A?',
  choices = '["Portfolio B''s Level 3 measurement relies on unobservable management assumptions that cannot be independently corroborated, creating estimation uncertainty absent from Portfolio A''s market-quoted Level 1 inputs", "Portfolio B has a longer holding period, which increases the probability of impairment regardless of measurement inputs", "Both portfolios pose equal audit risk because ASC 820 applies the same fair value definition to all hierarchy levels", "Portfolio A poses greater risk because public market prices are more volatile than private equity valuations"]'::jsonb,
  explanation = 'Under ASC 820-10-35, the fair value hierarchy ranks inputs by objectivity: Level 1 uses quoted prices in active markets, while Level 3 uses unobservable inputs requiring significant management judgment. Level 3 measurements increase estimation uncertainty and susceptibility to bias, requiring auditors to evaluate models and assumptions. However, choice C incorrectly equates measurement reliability with the fair value definition, whereas the hierarchy directly indicates the degree of subjectivity in the measurement.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 196;

-- ID 197: Fair Value — Effect of highest and best use on nonfinancial asset measurement
-- correct_index = 3
UPDATE questions SET
  stem = 'Ridgemont Properties uses a downtown parcel as a surface parking lot generating $180,000 annual revenue, giving a value-in-use of $1.5 million. An appraiser determines the highest and best use is mixed-use commercial development with a fair value of $4.2 million. How would the highest and best use principle most likely affect the fair value measurement under ASC 820?',
  choices = '["Fair value is $1.5 million because ASC 820 requires nonfinancial assets to be measured at value-in-use to the reporting entity", "Fair value is the average of $1.5 million and $4.2 million, reflecting both current use and development potential", "Fair value is the capitalized parking revenue of $180,000 divided by a market rate, because the income approach is required for all real estate", "Fair value is $4.2 million because ASC 820-10-35-10 measures nonfinancial assets at their highest and best use from a market participant perspective, regardless of the entity''s current use"]'::jsonb,
  explanation = 'Under ASC 820-10-35-10, nonfinancial asset fair value is based on highest and best use from a market participant''s perspective, considering what is physically possible, legally permissible, and financially feasible. A buyer would value the parcel at $4.2 million based on development potential. However, choice A incorrectly substitutes entity-specific value-in-use, whereas ASC 820 explicitly states that fair value is not a measure of the asset''s value to the reporting entity.',
  correct_index = 3,
  difficulty = 'hard',
  cognitive_level = 3
WHERE id = 197;

-- ============================================================
-- FINANCIAL STATEMENTS (3 questions)
-- ============================================================

-- ID 31: Financial Statements — Effect of year-end acquisition on ROA analysis
-- correct_index = 1
UPDATE questions SET
  stem = 'Brighton Corp. reports total assets of $6.0 million and net income of $900,000. On December 29, it acquires $1.8 million in loan-financed equipment. What is the most likely effect of this acquisition''s timing on the year-end return on assets ratio?',
  choices = '["ROA remains 15.0% because the loan offsets the asset increase, leaving net assets unchanged", "ROA declines from 15.0% to 11.5% because the denominator includes three-day-old assets that generated no revenue, distorting the ratio''s measure of asset efficiency", "ROA improves because the new equipment signals future revenue capacity, which analysts incorporate into the numerator", "ROA is unaffected because loan-financed assets are excluded from total assets until they generate revenue"]'::jsonb,
  explanation = 'Under ASC 210, total assets at year-end include all recognized assets regardless of acquisition timing. ROA = $900,000 ÷ $7.8 million = 11.5%, down from $900,000 ÷ $6.0 million = 15.0%. The equipment contributed virtually no revenue in three days yet inflated the denominator. However, choice A incorrectly nets the loan against the asset, whereas ROA uses total assets regardless of funding source, and the $1.8 million liability does not reduce assets.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 31;

-- ID 33: Financial Statements — Effect of subsequent event type on financial statement treatment
-- correct_index = 2
UPDATE questions SET
  stem = 'In March 2026, a company discovers that a warehouse destroyed by a January 2026 fire was uninsured. The December 31, 2025 financial statements have not yet been issued. What is the most likely implication of the fire occurring after the balance sheet date?',
  choices = '["The loss should be recognized and the December 31, 2025 financial statements adjusted because the statements have not been issued", "The event should be ignored entirely because it occurred in a subsequent fiscal year", "The event requires disclosure in the notes without adjusting the 2025 statements because the conditions causing the loss did not exist at the balance sheet date", "The loss should be split between 2025 and 2026 to reflect the insurable period in each year"]'::jsonb,
  explanation = 'Under ASC 855-10-25, subsequent events are classified as recognized (Type I) or nonrecognized (Type II) based on whether the condition existed at the balance sheet date. The fire occurred in January 2026, so conditions causing the loss did not exist at December 31, 2025, making it Type II requiring disclosure only. However, choice A incorrectly assumes all pre-issuance events require adjustment, whereas only events providing evidence of conditions existing at the balance sheet date are recognized.',
  correct_index = 2,
  difficulty = 'hard',
  cognitive_level = 3
WHERE id = 33;

-- ID 145: Financial Statements — Effect of reclassification on covenant compliance
-- correct_index = 0
UPDATE questions SET
  stem = 'Westbrook Industries reports current assets of $3.2 million and current liabilities of $2.0 million. A $500,000 note receivable classified as noncurrent matures in 10 months, requiring reclassification. Westbrook''s loan covenant requires a minimum current ratio of 1.5. What is the most likely effect of this reclassification on covenant compliance?',
  choices = '["The current ratio improves from 1.60 to 1.85, strengthening covenant compliance through a classification change rather than any operational improvement", "The current ratio declines because reclassifying the receivable also requires recognizing a corresponding current liability", "The current ratio is unaffected because total assets and total liabilities remain unchanged", "The note receivable cannot be reclassified because it was originally classified as noncurrent"]'::jsonb,
  explanation = 'Under ASC 210-10-45, assets expected to be realized within one year are classified as current. Reclassifying the $500,000 note increases current assets to $3.7 million. Current ratio = $3.7 million ÷ $2.0 million = 1.85, up from 1.60, purely from a presentation shift. However, choice C incorrectly focuses on total assets rather than the current ratio, whereas the current ratio depends specifically on the current/noncurrent classification, not aggregate totals.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 145;

-- ============================================================
-- FIXED ASSETS (3 questions)
-- ============================================================

-- ID 39: Fixed Assets — Effect of DDB depreciation on turnover analysis
-- correct_index = 3
UPDATE questions SET
  stem = 'Cascade Freight purchases a delivery truck for $200,000 with a 10-year life and $20,000 residual value using double-declining balance depreciation. Cumulative revenue through Year 3 is $450,000. How would the accelerated depreciation method most likely affect the fixed asset turnover ratio compared to straight-line?',
  choices = '["DDB produces a lower turnover ratio because accumulated depreciation reduces net revenue", "DDB produces the same turnover because total depreciation over the asset''s life is identical under both methods", "DDB produces a lower turnover because the declining book value approaches zero faster, increasing the denominator", "DDB produces a higher turnover ratio (4.39 vs 3.08) because the faster asset write-down reduces the net book value denominator more quickly than straight-line would"]'::jsonb,
  explanation = 'Under ASC 360, DDB applies 2/10 = 20% to declining balance. Year 3 NBV is $102,400, giving turnover of $450,000 ÷ $102,400 = 4.39. Straight-line NBV would be $146,000 ($18,000/year), giving turnover of 3.08. DDB''s faster depreciation creates a lower denominator and higher turnover. However, choice B incorrectly equates lifetime totals with annual ratios, whereas identical total depreciation produces different period-by-period book values and turnover ratios.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 39;

-- ID 40: Fixed Assets — Effect of avoidable interest on asset cost and income statement
-- correct_index = 1
UPDATE questions SET
  stem = 'Thornfield Industries constructs a plant with $6 million in qualifying expenditures, a $4 million construction loan at 8%, and $10 million in general borrowings at 5%. The CFO proposes capitalizing only the $320,000 from the specific construction loan. What is the most likely effect of the CFO''s approach on the financial statements?',
  choices = '["The CFO''s approach correctly applies ASC 835-20 because only interest on specific borrowings is capitalizable", "The asset''s cost would be understated by $100,000 and interest expense overstated by $100,000 because the CFO ignores the $2 million excess expenditures that should be multiplied by the 5% weighted-average rate under the avoidable interest concept", "The asset''s cost would be overstated because the $320,000 specific interest should be reduced by the expected return on plan assets", "The CFO''s approach overstates capitalized interest because general borrowings at 5% should replace the 8% specific rate"]'::jsonb,
  explanation = 'Under ASC 835-20, avoidable interest uses a two-tiered approach: specific borrowings ($4 million × 8% = $320,000) plus excess expenditures at the weighted-average rate [($6M − $4M) × 5% = $100,000], totaling $420,000. The CFO''s $320,000 understates the asset and overstates period interest expense by $100,000. However, choice A incorrectly limits capitalization to specific borrowings, whereas ASC 835-20 explicitly includes general borrowings to the extent expenditures exceed specific debt.',
  correct_index = 1,
  difficulty = 'hard',
  cognitive_level = 3
WHERE id = 40;

-- ID 158: Fixed Assets — Effect of post-completion costs on capitalization
-- correct_index = 2
UPDATE questions SET
  stem = 'Thornfield Properties constructs a warehouse incurring $85,000 in architect fees, $12,000 in building permits, $340,000 in excavation, $45,000 in construction-period loan interest, and $22,000 in routine maintenance after the building was placed in service. What factor most likely determines whether the $22,000 maintenance cost is capitalized or expensed?',
  choices = '["Whether the maintenance was scheduled before or after the building was placed in service", "Whether the maintenance cost exceeds the entity''s capitalization threshold", "Whether the cost was incurred before or after the asset reached its intended use, because post-completion routine maintenance does not extend the asset''s life and is expensed, unlike the $482,000 in pre-service costs that are capitalized", "Whether the maintenance contractor is an employee or an independent vendor"]'::jsonb,
  explanation = 'Under ASC 360, costs necessary to bring an asset to its intended use are capitalized: architect fees ($85,000), permits ($12,000), excavation ($340,000), and construction-period interest under ASC 835-20 ($45,000) total $482,000. The $22,000 post-completion maintenance is expensed because routine maintenance does not extend useful life or add future benefit. However, choice A incorrectly focuses on scheduling rather than the principle, whereas the distinction is whether the cost was incurred to achieve intended use or to maintain it afterward.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 158;

-- ============================================================
-- GOVERNMENTAL ACCOUNTING (4 questions)
-- ============================================================

-- ID 52: Governmental Accounting — Effect of fund classification on dual reporting
-- correct_index = 0
UPDATE questions SET
  stem = 'The City of Ashford records a $2 million restricted road construction grant in a capital projects fund. Fund-level statements report the grant as revenue under modified accrual, with construction costs as expenditures. Government-wide statements report the same grant as program revenue under full accrual and capitalize the road as infrastructure. What most likely explains why the same transaction appears differently across the two reporting layers?',
  choices = '["The difference arises from fundamentally different measurement focuses: fund-level statements use current financial resources and modified accrual to show fiscal compliance, while government-wide statements use economic resources and full accrual to show long-term financial position", "The fund-level statements contain an error because road construction should be capitalized in all governmental reports", "The government-wide statements overstate assets because infrastructure should be expensed when constructed", "Both reporting layers should produce identical results if the grant is recorded in the correct fund type"]'::jsonb,
  explanation = 'Under GASB 34, the dual reporting model uses different measurement focuses by design. Fund-level governmental statements employ modified accrual and current financial resources, recognizing expenditures rather than capitalizing assets. Government-wide statements use full accrual and economic resources, capitalizing infrastructure and reporting depreciation. However, choice D incorrectly assumes fund type selection eliminates the difference, whereas the measurement focus distinction persists regardless of which fund is used.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 52;

-- ID 177: Governmental Accounting — Effect of measurement focus on asset and liability recognition
-- correct_index = 3
UPDATE questions SET
  stem = 'A city purchases a $2.4 million fire truck from the general fund and issues $5 million in general obligation bonds for a new community center. A staff accountant records the truck as a capital asset and the bonds as a long-term liability in the general fund. What is the most likely effect of this recording approach on the governmental fund statements?',
  choices = '["The statements would correctly reflect both the asset and liability because governmental funds use the economic resources measurement focus", "Only the truck would be misstated because vehicles are always expensed immediately in governmental funds", "Only the bonds would be misstated because bond proceeds should be recorded in the debt service fund", "Both items would be misstated because governmental funds exclude capital assets and long-term liabilities under the current financial resources measurement focus, requiring the truck as an expenditure and bond proceeds as an other financing source"]'::jsonb,
  explanation = 'Under GASB 34, governmental funds use the current financial resources measurement focus and modified accrual basis, excluding long-term assets and liabilities. The fire truck should be reported as a capital outlay expenditure, and bond proceeds as an other financing source. Both the capital asset and long-term liability appear only in government-wide statements. However, choice A incorrectly applies the economic resources focus to governmental funds, whereas that focus applies exclusively to government-wide and proprietary fund statements.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 177;

-- ID 179: Governmental Accounting — Effect of restriction type on fund classification
-- correct_index = 1
UPDATE questions SET
  stem = 'The City of Brighton receives a $3 million federal grant restricted to road repairs, collects property taxes for annual bond debt payments, and receives a $500,000 donation where only investment earnings can fund youth programs. Which factor most likely determines the appropriate governmental fund type for each activity?',
  choices = '["The dollar amount of each activity, with larger amounts requiring separate fund reporting", "The nature of the restriction: the grant uses a special revenue fund for legally restricted operating revenue, debt payments use a debt service fund for principal and interest, and the donation uses a permanent fund because the principal is nonexpendable", "The source of funding, with federal grants in enterprise funds and donations in trust funds", "The city council''s discretion, because any activity can be reported in the general fund to simplify reporting"]'::jsonb,
  explanation = 'Under GASB standards, the five governmental fund types serve distinct purposes. Special revenue funds track legally restricted revenue sources (the road grant). Debt service funds account for principal and interest payments (the bond payments). Permanent funds hold resources where only earnings are spendable (the donation with restricted principal). However, choice C incorrectly classifies grants as enterprise funds, whereas enterprise funds are proprietary funds used for business-type activities, not governmental grant compliance.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 179;

-- ID 180: Governmental Accounting — Effect of bond proceeds and interfund transfers on fund balance
-- correct_index = 2
UPDATE questions SET
  stem = 'A city issues $8 million in GO bonds for fire station construction and transfers $500,000 from the general fund to cover preliminary architectural costs. What is the most likely effect on the capital projects fund balance and the general fund balance?',
  choices = '["Capital projects fund balance increases by $8 million and general fund balance is unaffected because the transfer is a loan", "Both amounts are recorded in the general fund because general obligation debt is serviced from general revenues", "Capital projects fund balance increases by $8.5 million (bond proceeds as an other financing source plus the transfer in) while the general fund balance decreases by $500,000 from the transfer out", "The $8 million goes to the debt service fund because all bond-related transactions are recorded in the fund responsible for debt repayment"]'::jsonb,
  explanation = 'Under GASB standards, bond proceeds for capital construction are reported as an other financing source in the capital projects fund. The $500,000 interfund transfer is reported as a transfer out in the general fund (reducing fund balance) and transfer in to the capital projects fund. Net effect: capital projects fund balance increases by $8.5 million, general fund decreases by $500,000. However, choice D incorrectly directs bond proceeds to the debt service fund, whereas that fund handles repayment, not receipt of construction financing.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 180;

-- ============================================================
-- GOVERNMENTAL ACCOUNTING FUNDAMENTALS (1 questions)
-- ============================================================

-- ID 5273: Governmental Accounting Fundamentals — Effect of GASB 54 on fund balance terminology
-- correct_index = 0
UPDATE questions SET
  stem = 'A city''s finance director reports fund balance using the categories nonspendable, restricted, committed, assigned, and unassigned. A council member asks why the term "unrestricted" does not appear in the fund balance section. Which factor most likely explains this terminology difference?',
  choices = '["GASB 54 replaced the former reserved/unreserved framework with five specific categories, and ''unrestricted'' applies only to net position in government-wide and proprietary fund statements, not to governmental fund balance", "The term was removed because all governmental fund balance is considered restricted under GASB 54", "The finance director made an error because ''unrestricted'' should replace ''unassigned'' in the fund balance section", "GASB 54 uses ''unrestricted'' only for fiduciary fund net position"]'::jsonb,
  explanation = 'Under GASB 54, governmental fund balance uses five classifications: nonspendable, restricted, committed, assigned, and unassigned. The term "unrestricted" is used for net position in government-wide and proprietary fund statements, not for governmental fund balance. GASB 54 replaced the older reserved/unreserved/designated framework. However, choice C incorrectly equates ''unrestricted'' with ''unassigned,'' whereas these terms belong to different reporting frameworks with distinct definitions.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 5273;

-- ============================================================
-- INCOME TAXES (3 questions)
-- ============================================================

-- ID 49: Income Taxes — Effect of temporary differences on deferred tax balances
-- correct_index = 3
UPDATE questions SET
  stem = 'Prescott Manufacturing has $400,000 excess tax depreciation over book depreciation and a $150,000 warranty accrual deductible only when claims are paid. The enacted tax rate is 25%. What is the most likely effect of these temporary differences on Prescott''s deferred tax position?',
  choices = '["A net deferred tax asset of $62,500 because both differences create future deductible amounts", "A deferred tax liability of $137,500 because both differences increase future taxable income", "A deferred tax asset of $100,000 and deferred tax liability of $37,500, producing a net DTA of $62,500", "A deferred tax liability of $100,000 from the depreciation difference and a deferred tax asset of $37,500 from the warranty accrual, producing a net DTL of $62,500"]'::jsonb,
  explanation = 'Under ASC 740-10-25, excess tax depreciation means the asset''s tax basis is lower than book, creating future taxable amounts: DTL = $400,000 × 25% = $100,000. The warranty accrual is a book expense not yet tax-deductible, creating future deductible amounts: DTA = $150,000 × 25% = $37,500. Net position is a $62,500 DTL. However, choice C reverses the classification, whereas the depreciation timing difference creates a liability (future taxable amounts) and the warranty creates an asset (future deductible amounts).',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 49;

-- ID 50: Income Taxes — Effect of negative evidence on valuation allowance assessment
-- correct_index = 1
UPDATE questions SET
  stem = 'Meridian Retail has a $2.0 million deferred tax asset from NOL carryforwards, three consecutive years of losses, no taxable temporary differences, and a declining market segment. Which factor most likely indicates that a valuation allowance is warranted?',
  choices = '["The indefinite carryforward period guarantees eventual realization, so no allowance is needed", "The cumulative loss history and absence of positive evidence make it more likely than not that the DTA will not be realized, requiring a full or substantial valuation allowance under ASC 740", "A valuation allowance is required only when realization is remote, and operating companies always retain some recovery potential", "The DTA should be reclassified as a deferred tax liability because cumulative losses signal future tax obligations"]'::jsonb,
  explanation = 'Under ASC 740-10-30-5, a valuation allowance is required when it is more likely than not (>50%) that some or all of a DTA will not be realized. Three years of cumulative losses constitute significant negative evidence, and the declining market and absence of taxable temporary differences provide no offsetting positive evidence. However, choice A incorrectly equates indefinite carryforward with guaranteed realization, whereas the company must generate sufficient future taxable income to use the NOLs.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 50;

-- ID 173: Income Taxes — Effect of permanent vs temporary differences on effective tax rate
-- correct_index = 2
UPDATE questions SET
  stem = 'A corporation earns $10 million in pretax book income, which includes $500,000 in municipal bond interest and $200,000 in excess tax depreciation over book. The statutory rate is 21%. What is the most likely effect of these items on the relationship between book income tax expense and taxes payable?',
  choices = '["Both items reduce taxes payable equally and create temporary differences that reverse over time", "The municipal bond interest creates a deferred tax liability while the depreciation difference creates a permanent difference", "The municipal bond interest permanently reduces the effective tax rate below 21% because it is never taxable, whereas the depreciation difference creates a deferred tax liability that will reverse when book depreciation exceeds tax depreciation", "Both items are permanent differences that reduce the effective tax rate to approximately 19.5%"]'::jsonb,
  explanation = 'Under ASC 740, municipal bond interest is a permanent difference — included in book income but never taxable — permanently lowering the effective tax rate. Depreciation timing creates a temporary difference: excess tax depreciation now produces a DTL that reverses when the asset''s book value exceeds its tax basis. However, choice A incorrectly treats both as temporary, whereas permanent differences like tax-exempt income never reverse and have no deferred tax consequences.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 173;

-- ============================================================
-- INTANGIBLE ASSETS (2 questions)
-- ============================================================

-- ID 41: Intangible Assets — Effect of indefinite vs finite life on amortization
-- correct_index = 0
UPDATE questions SET
  stem = 'Oakridge Corp. acquires a competitor on July 1, 2025, recognizing $2.4 million in goodwill, a $600,000 customer list (5-year life), and a $400,000 patent (8-year remaining legal life). What factor most likely determines why only $85,000 in amortization expense is recorded for 2025 rather than the full-year amount of $170,000?',
  choices = '["The mid-year acquisition date limits amortization to six months for the finite-lived customer list ($60,000) and patent ($25,000), and the $2.4 million goodwill is not amortized under ASC 350 because it has an indefinite life", "All three intangibles are amortized from July 1, producing $85,000 for the customer list and patent plus $240,000 for goodwill", "Only the patent is amortized because customer lists and goodwill are indefinite-lived under ASC 350", "The $85,000 represents a half-year impairment charge rather than amortization"]'::jsonb,
  explanation = 'Under ASC 350-20-35, goodwill is indefinite-lived and tested for impairment rather than amortized. Finite-lived intangibles are amortized over useful lives per ASC 350-30-35: customer list $600,000 ÷ 5 × 6/12 = $60,000, patent $400,000 ÷ 8 × 6/12 = $25,000, totaling $85,000. The mid-year date and goodwill''s indefinite life explain the difference. However, choice B incorrectly amortizes goodwill, whereas ASC 350 requires impairment testing only for public companies.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 41;

-- ID 42: Intangible Assets — Effect of different impairment frameworks on recognition
-- correct_index = 3
UPDATE questions SET
  stem = 'Pemberton Media holds a $3.5 million indefinite-lived broadcast license (fair value $2.9 million) and a $1.6 million finite-lived customer list (undiscounted cash flows $1.7 million, fair value $1.3 million). What most likely explains why the broadcast license is impaired but the customer list is not, even though both assets have fair values below carrying amount?',
  choices = '["The broadcast license is older and therefore more likely to be impaired", "Both assets should be impaired because fair value is below carrying amount for each", "The customer list is not impaired because finite-lived assets are tested only when triggering events occur", "The impairment frameworks differ: indefinite-lived assets compare directly to fair value (producing a $600,000 loss), while finite-lived assets must first fail a recoverability screen comparing carrying amount to undiscounted cash flows, and the customer list passes this screen ($1.7 million > $1.6 million)"]'::jsonb,
  explanation = 'Under ASC 350-30, indefinite-lived intangibles are impaired when carrying amount exceeds fair value: $3.5M − $2.9M = $600,000 loss. Under ASC 360-10, finite-lived assets use a two-step test: Step 1 compares carrying amount to undiscounted cash flows. Since $1.7M > $1.6M, the customer list is recoverable and no impairment is recognized. However, choice B incorrectly applies a single test to both, whereas the undiscounted cash flow screen in ASC 360 intentionally prevents impairment where operational value exceeds market value.',
  correct_index = 3,
  difficulty = 'hard',
  cognitive_level = 3
WHERE id = 42;

-- ============================================================
-- INVENTORY (2 questions)
-- ============================================================

-- ID 37: Inventory — Effect of replacement cost as costing method
-- correct_index = 1
UPDATE questions SET
  stem = 'Belmont Distributors'' controller proposes using replacement cost to value a new product line''s ending inventory, arguing it better reflects economic reality than historical cost. What is the most likely implication of this approach under U.S. GAAP?',
  choices = '["The approach is permitted because replacement cost is an accepted cost flow assumption alongside FIFO and LIFO", "The approach would violate ASC 330 because replacement cost is not a permitted inventory costing method under U.S. GAAP, which requires historical cost using FIFO, LIFO, or weighted-average assumptions", "The approach is permitted only when replacement cost is lower than historical cost under the LCM rule", "The approach would be required because replacement cost provides the most relevant measurement of inventory"]'::jsonb,
  explanation = 'Under ASC 330-10-30, inventory must be valued at historical cost using an acceptable cost flow assumption: FIFO, LIFO, or weighted-average. Replacement cost (NIFO) departs from the historical cost principle and is not a permitted costing method. While replacement cost plays a limited role in the lower of cost or market test for LIFO inventories, it cannot serve as the primary method. However, choice C confuses the LCM test role with standalone costing, whereas replacement cost''s involvement in LCM does not validate it as a costing method.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 37;

-- ID 38: Inventory — Effect of LIFO reserve on cross-company comparability
-- correct_index = 2
UPDATE questions SET
  stem = 'Ridgemont Manufacturing uses LIFO and reports inventory of $500,000 with an $80,000 LIFO reserve. Its FIFO-based competitor Cascade reports inventory of $620,000. Ridgemont''s COGS is $2,000,000 and Cascade''s is $2,100,000. How would converting Ridgemont to FIFO most likely affect the inventory turnover comparison?',
  choices = '["No conversion is needed because LIFO and FIFO produce the same turnover when prices are rising", "Ridgemont''s FIFO-adjusted turnover increases from 4.0 to 4.76 because the LIFO reserve is subtracted from inventory", "Ridgemont''s turnover decreases from 4.0 to approximately 3.45, narrowing the gap with Cascade''s 3.39, because LIFO understates inventory and overstates turnover during rising prices", "Ridgemont''s turnover increases because the FIFO conversion also adjusts COGS upward by $80,000"]'::jsonb,
  explanation = 'Under ASC 330, the LIFO reserve converts LIFO to FIFO: $500,000 + $80,000 = $580,000. LIFO turnover is $2,000,000 ÷ $500,000 = 4.0; FIFO-adjusted turnover is $2,000,000 ÷ $580,000 = 3.45, close to Cascade''s 3.39. LIFO understates inventory during inflation, artificially inflating turnover. However, choice D incorrectly adjusts COGS upward, whereas the simplified conversion adjusts only the inventory denominator, and a full conversion would actually reduce COGS.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 38;

-- ============================================================
-- LEASES (3 questions)
-- ============================================================

-- ID 44: Leases — Effect of lease classification on expense pattern
-- correct_index = 0
UPDATE questions SET
  stem = 'Clearwater Corp. enters a 5-year lease with annual payments of $50,000 and a present value of $210,618. Year 1 total expense under finance classification is $54,761 (depreciation $42,124 + interest $12,637), while operating classification produces $50,000 straight-line. How does the finance lease classification most likely affect the pattern of total expense over the lease term?',
  choices = '["Finance classification front-loads expense because interest is highest in early years when the liability balance is largest, producing declining annual totals that converge with the constant operating lease amount, though total 5-year expense is identical under both classifications", "Finance classification produces lower total expense because accelerated depreciation creates tax benefits that offset interest cost", "Both classifications produce identical annual expense amounts because ASC 842 eliminated the distinction between finance and operating leases", "Finance classification produces higher total expense over the lease term because the interest component is an additional cost beyond the lease payments"]'::jsonb,
  explanation = 'Under ASC 842, both classifications recognize a ROU asset and lease liability of $210,618 and produce identical total expense of $250,000 over five years. The difference is timing: finance leases front-load expense through declining-balance interest on the liability, while operating leases spread expense evenly. However, choice D incorrectly assumes finance leases cost more in total, whereas the interest component redistributes the same aggregate amount across periods rather than adding additional cost.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 44;

-- ID 57: Leases — Effect of ASC 842 on operating lease balance sheet recognition
-- correct_index = 3
UPDATE questions SET
  stem = 'On January 1, 2026, Thornfield Corp. signs a 5-year operating lease with $120,000 annual payments. The present value is approximately $505,740. How would the balance sheet recognition under ASC 842 most likely differ from the treatment under the prior standard, ASC 840?',
  choices = '["No difference, because operating leases remain off-balance-sheet under both ASC 840 and ASC 842", "Under ASC 842, only a lease liability is recognized because operating leases do not generate a right-of-use asset", "Under ASC 842, both a ROU asset and liability are recognized, but only the liability affects the debt-to-equity ratio", "Under ASC 842, both a ROU asset and lease liability of approximately $505,740 are recognized on the balance sheet, whereas ASC 840 kept operating leases off-balance-sheet, materially increasing reported assets and liabilities for lessees with significant operating lease portfolios"]'::jsonb,
  explanation = 'Under ASC 842-20-25-1, lessees recognize a right-of-use asset and lease liability for all leases exceeding 12 months, including operating leases. Both are measured at the present value of lease payments ($505,740). This was a fundamental change from ASC 840, which kept operating leases off the balance sheet. However, choice A incorrectly assumes continuity between standards, whereas ASC 842''s core objective was bringing operating leases onto the balance sheet.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 57;

-- ID 164: Leases — Effect of short-term threshold on comparability
-- correct_index = 1
UPDATE questions SET
  stem = 'Ridgemont LLC leases identical equipment: one unit for 10 months ($5,000/month, short-term exemption elected) and another for 13 months ($5,000/month, PV approximately $62,000). What is the most likely effect of the 12-month threshold on the comparability of these economically similar commitments?',
  choices = '["No comparability issue because both leases are expensed straight-line under ASC 842", "The 10-month lease has no balance sheet recognition while the 13-month lease requires a $62,000 ROU asset and liability, creating a binary reporting distinction for nearly identical obligations due to the 12-month bright-line threshold", "Both leases require balance sheet recognition because ASC 842 rounds lease terms to the nearest year", "The 10-month lease creates a prepaid asset while the 13-month lease creates a lease liability, resulting in similar balance sheet effects"]'::jsonb,
  explanation = 'Under ASC 842-20-25-2, the short-term lease exemption applies only to leases with terms of 12 months or less at commencement. The 10-month lease qualifies for the exemption with no balance sheet recognition, while the 13-month lease requires a $62,000 ROU asset and liability. This bright-line threshold creates a comparability gap for economically similar commitments. However, choice C incorrectly assumes rounding, whereas ASC 842''s 12-month cutoff is a strict threshold with no rounding provision.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 164;

-- ============================================================
-- NOT-FOR-PROFIT ACCOUNTING (2 questions)
-- ============================================================

-- ID 54: Not-for-Profit Accounting — Effect of perpetual restriction on net asset classification
-- correct_index = 2
UPDATE questions SET
  stem = 'A donor contributes $500,000 to a not-for-profit hospital, stipulating that the principal must be maintained in perpetuity with only investment income available for general operations. When the endowment earns $25,000 in Year 1, how does the perpetual restriction most likely affect the classification of both the contribution and the investment income?',
  choices = '["Both the $500,000 and $25,000 are classified as net assets without donor restrictions because the income is unrestricted", "The $500,000 is classified as a liability until the perpetuity condition is met", "The $500,000 is classified as net assets with donor restrictions due to the perpetual restriction on principal, while the $25,000 investment income is reclassified to net assets without donor restrictions when earned because the donor placed no restriction on earnings", "Both amounts remain in net assets with donor restrictions permanently"]'::jsonb,
  explanation = 'Under ASC 958-205, contributions with perpetual donor restrictions are classified as net assets with donor restrictions. The $500,000 principal carries a perpetual restriction. Investment income of $25,000 is released to net assets without donor restrictions when earned, since the donor restricted only the principal. However, choice D incorrectly retains the income in restricted net assets, whereas only the principal carries the perpetual restriction unless the donor also restricts earnings.',
  correct_index = 2,
  difficulty = 'hard',
  cognitive_level = 3
WHERE id = 54;

-- ID 182: Not-for-Profit Accounting — Effect of conditional vs unconditional distinction on revenue timing
-- correct_index = 0
UPDATE questions SET
  stem = 'Ridgemont Youth Services receives two $500,000 pledges. Pledge A is unconditional, payable over 2026–2027. Pledge B is conditional on raising $1 million from other donors by June 30, 2026; the organization has raised $400,000. What most likely explains why Pledge A is recognized as revenue in 2025 but Pledge B is not?',
  choices = '["Pledge A is recognized at present value because unconditional promises create enforceable obligations when made, while Pledge B is not recognized because the $1 million matching condition has not been substantially met, regardless of the 40% progress", "Pledge B is partially recognized at $200,000 reflecting the 40% progress toward the matching requirement", "Both pledges are deferred until cash is received because not-for-profit organizations use the cash basis", "Pledge A is deferred because the two-year payment term creates uncertainty about collectibility"]'::jsonb,
  explanation = 'Under ASC 958-605, unconditional promises are recognized as revenue when made, measured at present value of expected cash flows. Pledge A''s time restriction classifies it as net assets with donor restrictions. For Pledge B, ASC 958-605-25-11 requires that conditional promises with a barrier are not recognized until substantially met. The 40% progress does not constitute substantial performance. However, choice B incorrectly applies proportional recognition, whereas conditional promises are an all-or-nothing threshold, not a percentage-of-completion model.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 182;

-- ============================================================
-- PAYABLES AND ACCRUED LIABILITIES (1 questions)
-- ============================================================

-- ID 5230: Payables and Accrued Liabilities — Effect of goods receipt without invoice on period-end accrual
-- correct_index = 3
UPDATE questions SET
  stem = 'On December 28, 2025, Belmont Wholesale receives and accepts a $45,000 inventory shipment, but the vendor invoice does not arrive until January 8, 2026. The controller debates whether to record the liability at year-end without the invoice. What is the most likely effect of waiting until January to record the payable?',
  choices = '["No effect because the invoice date determines the recognition date for accounts payable", "Inventory would be overstated by $45,000 at year-end because the goods would be counted but not recorded", "Both assets and liabilities would be overstated because the goods should not be recorded until the invoice confirms the exact amount", "Accounts payable and inventory would both be understated by $45,000 at December 31 because accrual accounting requires recognizing the obligation when goods are received, not when the invoice arrives"]'::jsonb,
  explanation = 'Under ASC 330-10-30 and ASC 405-20, a liability is recognized when the obligation exists, not when the invoice arrives. Belmont received goods on December 28, creating both an asset (inventory) and an obligation (payable). Waiting until January understates both by $45,000 at year-end, violating the matching principle. However, choice A incorrectly ties recognition to the invoice date, whereas accrual accounting recognizes obligations based on the underlying economic event.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 5230;

-- ============================================================
-- REVENUE RECOGNITION (3 questions)
-- ============================================================

-- ID 34: Revenue Recognition — Effect of relative standalone prices on allocation
-- correct_index = 1
UPDATE questions SET
  stem = 'Crestview Software sells a $360,000 bundled contract for a perpetual license (standalone $270,000) and two-year support (standalone $180,000). The license transfers at delivery on March 1, 2025. How would the allocation methodology most likely affect the amount of revenue recognized in 2025 compared to recognizing the license at its standalone price?',
  choices = '["Revenue is $360,000 because the license is the dominant obligation and absorbs the full transaction price", "Revenue is $276,000 because the relative allocation reduces the license from $270,000 to $216,000 and recognizes $60,000 of support, yielding less than the $270,000 standalone price that would be recognized if allocation were not required", "Revenue is $270,000 because standalone selling prices are used directly without proportional adjustment", "Revenue is $216,000 because support revenue is deferred entirely until the two-year term ends"]'::jsonb,
  explanation = 'Under ASC 606-10-32-33, the $360,000 is allocated by relative standalone prices: license = ($270K ÷ $450K) × $360K = $216,000 (recognized at delivery), support = ($180K ÷ $450K) × $360K = $144,000 × 10/24 = $60,000 in 2025. Total is $276,000 versus $270,000 if the license used its standalone price directly. However, choice C incorrectly bypasses allocation, whereas ASC 606 requires proportional distribution of the transaction price discount across all performance obligations.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 34;

-- ID 35: Revenue Recognition — Effect of discount allocation on performance obligation pricing
-- correct_index = 0
UPDATE questions SET
  stem = 'Pinnacle Electronics sells a bundle for $80,000 containing hardware (standalone $60,000) and a 2-year service plan (standalone $40,000). How does the $20,000 discount most likely affect the transaction price assigned to each obligation under ASC 606?',
  choices = '["The discount is allocated proportionally: hardware receives $48,000 and services $32,000, because each obligation absorbs its proportionate share of the discount based on relative standalone selling prices", "The discount is split equally at $10,000 each, assigning $50,000 to hardware and $30,000 to services", "The discount is allocated entirely to services at $20,000 because the hardware standalone price equals the total transaction price", "The discount is allocated entirely to hardware because it is delivered first and bears the pricing risk"]'::jsonb,
  explanation = 'Under ASC 606-10-32-33, discounts are allocated proportionally by relative standalone selling prices. Hardware: ($60K ÷ $100K) × $80K = $48,000 (absorbing $12,000 of the discount). Services: ($40K ÷ $100K) × $80K = $32,000 (absorbing $8,000). However, choice B incorrectly assumes equal allocation, whereas the relative method distributes the discount in proportion to each obligation''s standalone value, not evenly.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 35;

-- ID 36: Revenue Recognition — Effect of cost overrun on percentage-of-completion revenue
-- correct_index = 2
UPDATE questions SET
  stem = 'Clearwater Construction has a $10 million bridge contract with original estimated costs of $8 million. At year-end, $3 million in costs have been incurred. The engineer then reports unexpected soil conditions increasing total estimated costs to $9.5 million. How would this cost revision most likely affect revenue recognized to date under the cost-to-cost method?',
  choices = '["Revenue increases because higher total costs accelerate the completion percentage", "Revenue remains at $3,750,000 because ASC 606 locks in the original estimate until contract completion", "Revenue decreases from $3,750,000 to approximately $3,157,895 because the same $3 million in costs now represents a smaller percentage of the higher $9.5 million total, demonstrating the sensitivity of input-method estimates to changes in expected costs", "Revenue drops to $3,000,000 because the reduced profit margin requires revenue equal to costs incurred"]'::jsonb,
  explanation = 'Under ASC 606-10-55-20, the cost-to-cost method sets completion at costs incurred divided by total estimated costs. Originally: $3M ÷ $8M = 37.5%, yielding $3,750,000. After revision: $3M ÷ $9.5M = 31.6%, yielding $3,157,895. The cumulative catch-up adjustment under ASC 606-10-32-14 reduces recognized revenue. However, choice B incorrectly assumes fixed estimates, whereas ASC 606 requires estimates to be updated each reporting period with changes recognized as cumulative adjustments.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 36;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (2 questions)
-- ============================================================

-- ID 1116: Special Purpose Frameworks — Effect of tax-basis framework on recognition and measurement
-- correct_index = 3
UPDATE questions SET
  stem = 'A small manufacturer prepares financial statements using IRC rules, reporting MACRS depreciation instead of GAAP straight-line. An auditor is engaged to report on these statements. Which factor most likely identifies this as a special purpose framework rather than a general-purpose framework?',
  choices = '["The company''s small size, because general-purpose frameworks apply only to public companies", "The use of accelerated depreciation, because GAAP prohibits all forms of accelerated methods", "The regulatory basis classification, because the IRC is a government regulation", "The use of income tax law for recognition and measurement rather than GAAP, which classifies it as a tax basis of accounting under AU-C 800, one of four recognized special purpose frameworks"]'::jsonb,
  explanation = 'Under AU-C Section 800, the tax basis of accounting is a recognized special purpose framework where IRC rules govern recognition and measurement. MACRS depreciation, different revenue timing, and other IRC provisions create systematic differences from GAAP. However, choice C incorrectly classifies this as regulatory basis, whereas the tax basis is a distinct SPF category under AU-C 800, separate from frameworks prescribed by regulatory bodies other than the IRC.',
  correct_index = 3,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 1116;

-- ID 1117: Special Purpose Frameworks — Effect of framework choice on depreciation and income
-- correct_index = 0
UPDATE questions SET
  stem = 'Oakridge Construction purchases $480,000 equipment and reports Year 1 depreciation of $96,000 under 5-year MACRS (20% rate) on its tax-basis statements. Under GAAP, straight-line over 8 years would produce $60,000. What is the most likely effect of the framework choice on reported income and asset values?',
  choices = '["Tax-basis income is $36,000 lower and the asset''s carrying value is $36,000 lower than GAAP because MACRS accelerates cost recovery, illustrating how framework choice directly affects both profitability and balance sheet measures", "Tax-basis income is $36,000 higher because MACRS produces a smaller depreciation deduction in early years", "Both frameworks produce identical Year 1 expense because the methods converge for equipment purchases", "Tax-basis depreciation is always $480,000 in Year 1 under full Section 179 expensing"]'::jsonb,
  explanation = 'Under 5-year MACRS at 20%, Year 1 depreciation is $96,000 versus GAAP straight-line of $60,000 ($480,000 ÷ 8). The $36,000 difference reduces tax-basis income and carrying value relative to GAAP, demonstrating how framework choice affects financial statement measures. However, choice B reverses the direction, whereas MACRS accelerates depreciation in early years, producing higher expense and lower income than GAAP straight-line.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 1117;

-- ============================================================
-- STATEMENT OF CASH FLOWS (2 questions)
-- ============================================================

-- ID 188: Statement of Cash Flows — Effect of receivables decrease on operating cash flows
-- correct_index = 1
UPDATE questions SET
  stem = 'Pinnacle Services reports net income of $620,000 with accounts receivable decreasing from $185,000 to $140,000 during the year. What does the $45,000 receivables decrease most likely indicate about the relationship between revenue recognized and cash collected?',
  choices = '["Cash collections were $45,000 less than revenue, requiring a subtraction from net income in the operating section", "Cash collections exceeded revenue by $45,000 because customers paid down prior-period receivables, requiring an addition to net income in the indirect method reconciliation", "The $45,000 represents an investing inflow from liquidating a financial asset", "The decrease signals declining sales activity and should be disclosed as a negative trend rather than a cash flow adjustment"]'::jsonb,
  explanation = 'Under ASC 230, the indirect method adjusts net income for working capital changes. A decrease in accounts receivable means the company collected $45,000 more cash than it recognized in revenue, as customers paid down prior-period balances. This is added to net income, increasing operating cash flow to $665,000 for this adjustment. However, choice A reverses the direction, whereas a current asset decrease represents a cash inflow that is added to, not subtracted from, net income.',
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 188;

-- ID 189: Statement of Cash Flows — Effect of gain removal on operating and investing classification
-- correct_index = 2
UPDATE questions SET
  stem = 'Thornfield Manufacturing reports net income of $500,000 including a $50,000 gain on equipment sale. Depreciation is $80,000, accounts receivable increased $30,000, and accounts payable decreased $15,000. If the $50,000 gain were not removed from operating activities, what is the most likely effect on the cash flow statement?',
  choices = '["No effect on total cash flow, so the classification is immaterial to financial statement users", "Operating cash flow would be correctly stated because the gain represents a genuine operating achievement", "The $50,000 would be double-counted — once in net income within operating activities and again in the full sale proceeds within investing activities — overstating total reported cash by $50,000 and misclassifying an investing transaction as operating performance", "Operating cash flow would be understated by $50,000 because the gain should be added rather than subtracted"]'::jsonb,
  explanation = 'Under ASC 230-10-45-28, the indirect method starts with net income containing the $50,000 gain. Full sale proceeds are separately reported in investing activities. Without removing the gain from operations, it appears in both sections, overstating total cash flow by $50,000. Operating cash flow after proper adjustments: $500,000 + $80,000 − $30,000 − $15,000 − $50,000 = $485,000. However, choice A incorrectly dismisses the misclassification, whereas distorted operating and investing subtotals impair analytical comparability.',
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 189;

COMMIT;
