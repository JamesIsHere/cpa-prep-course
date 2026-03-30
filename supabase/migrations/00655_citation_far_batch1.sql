-- Migration: Citation backfill — FAR batch 1 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for FAR section
-- Affected topics: Financial Reporting: For-Profit, Financial Statement Ratios, Intangible Assets, Inventory, Special Purpose Frameworks

BEGIN;

-- ============================================================
-- FINANCIAL REPORTING: FOR-PROFIT (10 questions)
-- ============================================================

-- ID 376: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = $EXPL$Correct answer: IFRS permits classification by nature or function. Under IAS 1.99, entities may present expenses classified by nature (e.g., depreciation, salaries) or by function (e.g., cost of sales, administrative). U.S. GAAP, through ASC 220-10-45 and SEC Regulation S-X Rule 5-03, generally requires functional classification for public companies. This flexibility under IFRS contrasts with GAAP''s effective mandate for functional presentation. While neither framework mandates a single-step or multi-step format, the key distinction is in expense classification approach, not overall statement structure.$EXPL$
WHERE id = 376;

-- ID 4706: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = $EXPL$Correct answer: providing useful financial information to resource providers. SFAC No. 8, Chapter 1, paragraph OB2 states the primary objective of general-purpose financial reporting is to provide information useful to existing and potential investors, lenders, and other creditors in making decisions about providing resources to the entity. This decision-usefulness objective drives all other aspects of the Conceptual Framework. While tax determination is governed by the IRC and managerial accounting serves internal users, general-purpose reporting under GAAP is directed at external capital providers rather than tax authorities or management.$EXPL$
WHERE id = 4706;

-- ID 4709: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = $EXPL$Correct answer: the gain element represents equity increases from peripheral transactions. Under ASC 105-10-05 (the FASB Conceptual Framework codified in SFAC No. 6, paragraph 82), gains are defined as increases in equity from peripheral or incidental transactions, distinct from revenues or owner investments. A land sale outside core operations fits this definition precisely. Unlike revenue, which arises from an entity''s ongoing major or central operations, gains result from transactions outside the entity''s primary business activities rather than from its core earning process.$EXPL$
WHERE id = 4709;

-- ID 4711: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = $EXPL$Correct answer: relevance is the capacity to make a difference in user decisions. Under ASC 105-10-05 and the FASB Conceptual Framework (SFAC No. 8, QC6-QC10), relevance means information has predictive value, confirmatory value, or both, enabling it to influence user decisions. If information cannot affect decisions, it lacks relevance regardless of other qualities. Although faithful representation requires completeness, neutrality, and freedom from error, it is a separate fundamental characteristic rather than a component of relevance.$EXPL$
WHERE id = 4711;

-- ID 4712: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = $EXPL$Correct answer: faithful representation requires completeness, neutrality, and freedom from error. Under ASC 105-10-05 and the FASB Conceptual Framework (SFAC No. 8, QC12), these three attributes are necessary for a faithfully represented depiction. Complete information includes all data necessary for understanding, neutral information is free from bias, and freedom from error means no mistakes in description or process. While predictive value, confirmatory value, and materiality relate to relevance under QC6-QC11, they are components of the other fundamental characteristic rather than faithful representation.$EXPL$
WHERE id = 4712;

-- ID 4714: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = $EXPL$Correct answer: the entity will continue in operation long enough to carry out existing commitments. SFAC No. 8, Chapter 1, paragraph OB7 and ASC 205-40-50 describe the going concern assumption as the presumption that the entity will continue operating for the foreseeable future. This assumption underlies historical cost accounting, systematic depreciation, and the current/noncurrent balance sheet classification. Unlike liquidation-basis accounting, which assumes imminent asset disposal, the going concern premise supports long-term measurement and reporting of assets and liabilities at their carrying amounts.$EXPL$
WHERE id = 4714;

-- ID 4717: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = $EXPL$Correct answer: comparability is the enhancing characteristic most directly impaired. SFAC No. 8, paragraphs QC20-QC25 define comparability as enabling users to identify similarities and differences among items across entities and periods. Changing depreciation methods disrupts period-to-period trend analysis because prior statements used a different method, requiring ASC 250-10-45 disclosures about the change. Although verifiability (QC26) means independent observers could confirm the figures, the analyst''s difficulty here stems from inconsistent methods across periods rather than inability to verify the amounts.$EXPL$
WHERE id = 4717;

-- ID 4720: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = $EXPL$Correct answer: prior-year revenue figures used to forecast future trends illustrate predictive value. Under ASC 105-10-05 and the FASB Conceptual Framework (SFAC No. 8, QC8), financial information has predictive value if it serves as input to processes users employ to predict future outcomes. Revenue trend data feeding forward-looking projections directly exemplifies this relevance component. While historical cost confirming original purchase price illustrates confirmatory value, and verifying inventory counts demonstrates verifiability, neither alternative addresses the forward-looking predictive component rather than backward-looking confirmation.$EXPL$
WHERE id = 4720;

-- ID 4722: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = $EXPL$Correct answer: an item must meet an element definition and be reliably measurable. Under ASC 105-10-05 and the FASB Conceptual Framework (SFAC No. 5, paragraphs 63-70), recognition requires the item to (1) meet the definition of a financial statement element (asset, liability, equity, revenue, expense, gain, or loss) and (2) possess a relevant attribute measurable with sufficient reliability. Both criteria must be satisfied before an item appears in the financial statements. Unlike footnote disclosure, which supplements recognized amounts, recognition places the item directly in the body of the statements rather than only in the notes.$EXPL$
WHERE id = 4722;

-- ID 4725: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = $EXPL$Correct answer: current replacement cost reflects the amount needed to currently acquire an equivalent asset. Under ASC 105-10-05 and the FASB Conceptual Framework (SFAC No. 5, paragraph 67b), current replacement cost is the cash that would be paid to acquire the same or equivalent asset today. This basis reflects current market acquisition conditions. Although historical cost records the original purchase price without updating for market changes, and ASC 820 fair value measurements may reference exit prices, current replacement cost specifically addresses the entry price for acquiring equivalent service capacity rather than disposal or exit value.$EXPL$
WHERE id = 4725;

-- ============================================================
-- FINANCIAL STATEMENT RATIOS (34 questions)
-- ============================================================

-- ID 14980: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Nexus is in the distress zone with a Z-score of 1.646. Per the Altman Z-score model, Z = 1.2(0.05) + 1.4(0.10) + 3.3(0.02) + 0.6(0.80) + 1.0(0.90) = 0.06 + 0.14 + 0.066 + 0.48 + 0.90 = 1.646. Under ASC 205-40, which requires going concern evaluation, analytical tools like the Z-score inform bankruptcy risk assessment. A score below 1.81 places the firm in the distress zone, indicating high bankruptcy probability. While the grey zone spans 1.81-2.99, Nexus''s 1.646 falls below this threshold rather than within it.$EXPL$
WHERE id = 14980;

-- ID 14981: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: refinancing to reduce principal payments most effectively improves the DSCR. The debt service coverage ratio equals net operating income divided by total debt service (principal plus interest). Currently: $380,000 / ($150,000 + $90,000) = 1.58, below the 1.75 covenant. Refinancing to reduce principal to $80,000 yields $380,000 / $170,000 = 2.24, well exceeding the requirement. Under ASC 470-10, debt covenant compliance is assessed using contractually defined metrics. Although increasing NOI by $60,000 would yield 1.83, the refinancing approach produces a substantially higher ratio of 2.24 rather than the marginal improvement from revenue growth.$EXPL$
WHERE id = 14981;

-- ID 14983: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: the defensive interval ratio is 40 days. This ratio equals (cash + short-term investments + net receivables) / daily operating expenses = ($120,000 + $80,000 + $200,000) / $10,000 = 40 days, measuring how long a company can operate from liquid assets without revenue. The numerator aligns with the quick assets concept under ASC 210-10-45, which addresses current asset classification on the balance sheet. While using only cash would yield 12 days, the defensive interval intentionally includes all quick assets rather than cash alone to capture the full liquid asset base.$EXPL$
WHERE id = 14983;

-- ID 14984: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: ROE increases from 20% to 24% after the share repurchase. ROE equals net income divided by average stockholders'' equity. Before: $600,000 / $3,000,000 = 20%. The buyback reduces equity by $500,000 as treasury stock per ASC 505-30-30, which governs treasury stock accounting. New ROE = $600,000 / $2,500,000 = 24%. Share repurchases reduce the equity denominator, mechanically increasing ROE when income is unchanged. While total assets also decline, the relevant metric is the equity base reduction rather than the asset effect, making the ROE increase a direct consequence of treasury stock recognition.$EXPL$
WHERE id = 14984;

-- ID 14985: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Trident''s dividend yield is 4.0%. Dividend yield equals annual dividends per share divided by market price per share = $2.40 / $60 = 4.0%, measuring the cash return investors receive relative to stock price. This metric relates to ASC 260-10-45 earnings per share disclosures, which require per-share data presentation. EPS is not needed for the dividend yield calculation. Although 8.33% ($5.00 / $60) represents the earnings yield rather than the dividend yield, and 48.0% ($2.40 / $5.00) represents the payout ratio, neither measures the cash return relative to market price.$EXPL$
WHERE id = 14985;

-- ID 14986: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: the quick ratio is classified as a liquidity ratio. The quick ratio (acid-test ratio) measures ability to meet short-term obligations using only the most liquid current assets: cash, marketable securities, and receivables per ASC 210-10-45, which governs current asset and current liability classification on the balance sheet. This classification directly supports liquidity assessment for creditors. While profitability ratios like net margin and ROE measure earning power, and activity ratios like inventory turnover measure asset utilization efficiency, the quick ratio is fundamentally a short-term debt-paying capacity measure rather than an earnings or efficiency metric.$EXPL$
WHERE id = 14986;

-- ID 14987: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: gross profit margin equals gross profit divided by net sales. Gross profit is net sales minus cost of goods sold, per the income statement presentation requirements of ASC 220-10-45. This ratio measures the percentage of revenue retained after direct production costs. For Calloway: ($1,200,000 - $780,000) / $1,200,000 = 35%. While net income divided by net sales calculates the net profit margin (which includes all expenses), and operating income divided by net sales gives the operating margin, gross profit margin isolates only the direct cost-of-revenue impact rather than total expense burden.$EXPL$
WHERE id = 14987;

-- ID 14988: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: the operating cycle measures time from inventory purchase to cash collection. The operating cycle equals days inventory outstanding plus days sales outstanding, capturing the full cash-to-cash conversion period. Under ASC 210-10-45-3, the operating cycle concept underpins the definition of current assets and current liabilities, as items expected to be realized within one operating cycle qualify as current. A shorter cycle indicates faster cash conversion. Although the defensive interval ratio measures days a company can operate without external financing, it addresses liquidity reserves rather than the cash conversion timeline that the operating cycle captures.$EXPL$
WHERE id = 14988;

-- ID 14989: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: the utility relies on leverage while the software firm relies on operational efficiency. DuPont analysis decomposes ROE into margin, turnover, and equity multiplier per the framework derived from ASC 220 (income) and ASC 210 (balance sheet) presentations. The utility''s high equity multiplier (3.5) compensates for low ROA (4%), meaning debt amplification drives returns. The software firm''s high ROA (18%) with minimal leverage (1.2x) shows returns from operations. While both achieve similar ROEs, the utility''s heavy leverage creates substantially greater financial risk and interest rate sensitivity rather than indicating comparable risk profiles.$EXPL$
WHERE id = 14989;

-- ID 14990: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: ROA measures how efficiently management uses assets to generate earnings. ROA equals net income divided by average total assets, per the relationship between ASC 220-10-45 income reporting and ASC 210-10 balance sheet presentation. A higher ROA indicates more productive asset utilization. This ratio evaluates management''s ability to deploy invested resources profitably. While the debt-to-assets ratio measures what proportion of assets is financed through borrowing, ROA addresses earning power from the total asset base rather than financing structure.$EXPL$
WHERE id = 14990;

-- ID 14991: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Apex''s price-to-sales ratio is 3.0. Market capitalization equals 2,000,000 shares x $45 = $90,000,000. P/S ratio = market cap / revenue = $90,000,000 / $30,000,000 = 3.0. This valuation metric, used alongside ASC 820 fair value measurements, indicates how much investors pay per dollar of revenue. It is particularly useful for comparing companies with different profitability levels. Although 0.67 would represent the inverse (revenue / market cap), the P/S ratio places market value in the numerator rather than the denominator to show the premium investors assign to each revenue dollar.$EXPL$
WHERE id = 14991;

-- ID 14992: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Meridian''s dividend payout ratio is 30%. The payout ratio equals total dividends divided by net income = $720,000 / $2,400,000 = 30%, per ASC 505-10-50 which governs equity disclosures including dividend information. This indicates 30% of earnings are distributed to shareholders, with the remaining 70% retained for reinvestment. While 3% ($1.20 / $40) represents the dividend yield rather than the payout ratio, the payout ratio measures the proportion of earnings distributed as dividends rather than the return relative to stock price.$EXPL$
WHERE id = 14992;

-- ID 14993: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Northwind''s return on common equity is 20.0%. Return on common equity equals (net income minus preferred dividends) divided by average common stockholders'' equity = ($1,800,000 - $200,000) / $8,000,000 = 20.0%. Under ASC 260-10-45, preferred dividends must be subtracted to isolate earnings available to common shareholders, paralleling the EPS computation. While 22.5% results from using total net income without the preferred dividend deduction ($1,800,000 / $8,000,000), proper computation requires removing the preferred claim rather than including it in the common equity return.$EXPL$
WHERE id = 14993;

-- ID 14995: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: improve asset utilization to address declining total asset turnover. DuPont decomposition shows ROE = margin x turnover x multiplier. Year 1: 6% x 1.5 x 2.0 = 18%. Year 2: 6% x 1.0 x 2.0 = 12%. The decline is entirely driven by falling asset turnover, consistent with ASC 360-10 guidance on productive use of long-lived assets. The recommendation should target revenue growth or shedding unproductive assets. Although cost reduction would improve profit margin, margin held steady at 6%, so the root cause lies in asset productivity rather than cost management.$EXPL$
WHERE id = 14995;

-- ID 14997: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: the equity ratio is 0.40, meaning 40% of assets are financed by equity. The equity ratio equals total stockholders'' equity divided by total assets = $2,000,000 / $5,000,000 = 0.40, per ASC 210-10-45 balance sheet classification requirements. This indicates the remaining 60% is financed by liabilities. While 0.60 represents the debt ratio (total liabilities / total assets) measuring debt financing, and 2.50 is the equity multiplier (total assets / equity) measuring leverage, the equity ratio specifically isolates the shareholders'' funding proportion rather than the creditor-financed portion.$EXPL$
WHERE id = 14997;

-- ID 14998: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: planned growth of 20% exceeds the 9% sustainable growth rate, requiring external financing. Sustainable growth rate equals ROE x retention ratio = 15% x (1 - 0.40) = 9%. Under ASC 505-10 equity accounting principles, maintaining capital structure without new equity limits internally funded growth to this rate. Vertex''s planned 20% growth far exceeds 9%, requiring either reduced dividends or additional leverage. While increasing the payout ratio might seem like a financing strategy, it would further reduce retention and lower the sustainable growth rate rather than supporting the higher growth target.$EXPL$
WHERE id = 14998;

-- ID 14999: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Waverly''s EBITDA margin is 17.0%. EBITDA equals operating income plus depreciation plus amortization = $600,000 + $200,000 + $50,000 = $850,000. EBITDA margin = $850,000 / $5,000,000 = 17.0%. This metric, referenced in ASC 280-10-50 segment reporting disclosures as an alternative performance measure, shows operating results before non-cash charges and capital structure effects. Although 12.0% ($600,000 / $5,000,000) represents the operating margin, EBITDA margin adds back depreciation and amortization rather than using operating income alone.$EXPL$
WHERE id = 14999;

-- ID 15000: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: inventory turnover equals cost of goods sold divided by average inventory. This ratio measures how many times inventory is sold and replaced during a period, per the inventory accounting principles in ASC 330-10-35. Using COGS rather than sales provides accuracy because both numerator and denominator are stated at cost. For Lakeshore, this enables comparison with industry benchmarks on a consistent cost basis. While net sales divided by average total assets calculates total asset turnover, inventory turnover specifically uses COGS in the numerator rather than revenue to avoid distortion from the profit markup.$EXPL$
WHERE id = 15000;

-- ID 15001: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: the equity multiplier measures financial leverage. The equity multiplier equals total assets divided by total stockholders'' equity per ASC 210-10-45 balance sheet presentation. It quantifies the extent to which a company uses debt to finance its assets, serving as a key component of DuPont analysis. A higher multiplier indicates greater reliance on debt financing. Although return on equity measures the return earned on shareholders'' investment, and the price-to-book ratio compares market to book value, the equity multiplier specifically isolates the leverage component rather than profitability or market valuation.$EXPL$
WHERE id = 15001;

-- ID 15002: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: the price-to-book ratio compares market price per share to book value per share. Book value per share = total stockholders'' equity / shares outstanding = $120,000,000 / 4,000,000 = $30. P/B = $54 / $30 = 1.80. Under ASC 505-10-50, equity disclosures provide the book value basis for this calculation. A P/B above 1.0 indicates the market values the company above its recorded net assets. While market capitalization divided by total revenue describes the price-to-sales ratio, the P/B ratio specifically relates share price to accounting net worth rather than revenue.$EXPL$
WHERE id = 15002;

-- ID 15003: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Pinnacle''s ROIC is 15.0%. ROIC equals NOPAT divided by invested capital. NOPAT = EBIT x (1 - tax rate) = $900,000 x 0.75 = $675,000. Invested capital = total debt + total equity - cash = $2,000,000 + $3,000,000 - $500,000 = $4,500,000. ROIC = $675,000 / $4,500,000 = 15.0%. This metric, consistent with the capital allocation principles underlying ASC 280-10-50 segment performance evaluation, measures returns on deployed capital net of excess cash. Although 13.5% results from not subtracting cash ($675,000 / $5,000,000), proper ROIC deducts cash rather than including it in the capital base.$EXPL$
WHERE id = 15003;

-- ID 15004: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: working capital equals current assets minus current liabilities. Per ASC 210-10-45, the balance sheet classifies assets and liabilities as current or noncurrent. Working capital = $3,200,000 - $1,900,000 = $1,300,000, measuring the short-term financial cushion for day-to-day obligations. Positive working capital indicates sufficient current assets to cover near-term debts. While total assets minus total liabilities equals stockholders'' equity under the accounting equation, working capital specifically addresses the current portion rather than the entity''s total net worth.$EXPL$
WHERE id = 15004;

-- ID 15005: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: asset turnover increases while ROA decreases. Higher depreciation under double-declining balance reduces net book value of assets per ASC 360-10-35, shrinking the denominator of asset turnover (sales / assets) and increasing the ratio. However, higher depreciation expense also reduces net income, decreasing ROA (net income / total assets). The income decline outweighs the asset base reduction in the ROA formula. Although one might expect both ratios to move together, the depreciation method change affects the income numerator and asset denominator differently rather than producing uniform directional changes.$EXPL$
WHERE id = 15005;

-- ID 15009: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: the current ratio increases and the debt-to-equity ratio decreases. When the current ratio exceeds 1.0, repaying current liabilities with cash removes equal dollar amounts from both numerator and denominator, but the proportional effect is larger on the smaller denominator, increasing the ratio per ASC 210-10-45 current classification principles. The debt-to-equity ratio decreases because total liabilities decline by $300,000 while equity remains unchanged. Although one might assume reducing current assets would lower the current ratio, the mathematical effect of removing equal amounts favors improvement when the starting ratio is above 1.0 rather than below it.$EXPL$
WHERE id = 15009;

-- ID 15104: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Larkspur''s cash flow adequacy ratio is 1.33. This ratio equals operating cash flow divided by the sum of capital expenditures, dividends, and debt repayments = $2,400,000 / ($800,000 + $400,000 + $600,000) = 1.33. Under ASC 230-10-45, the statement of cash flows provides the operating cash flow figure used in this computation. A ratio above 1.0 indicates sufficient internally generated cash to cover essential outflows. While dividing CFO by capital expenditures alone yields a different metric (free cash flow coverage), the adequacy ratio includes all three major cash commitments rather than only capital spending.$EXPL$
WHERE id = 15104;

-- ID 15105: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: reducing DIO by 20 days provides the greatest CCC improvement. The cash conversion cycle equals DIO + DSO - DPO per the working capital framework supported by ASC 210-10-45 current classification. Each component change directly maps to a one-day CCC change: DIO reduction of 20 days improves CCC by 20 days, DSO reduction by 10 days, and DPO increase by 15 days. The JIT inventory initiative delivers the largest single improvement. Although extending vendor payment terms (DPO +15 days) provides the second-largest benefit, it is still 5 days less impactful than the 20-day DIO reduction rather than exceeding it.$EXPL$
WHERE id = 15105;

-- ID 15106: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: the capital intensity ratio measures dollars of assets required per dollar of revenue. It equals total assets divided by net sales, the inverse of total asset turnover. Per ASC 210-10-45, the balance sheet total assets figure provides the basis for this efficiency metric. For Vanguard: $25,000,000 / $40,000,000 = 0.625, meaning $0.625 in assets generates each revenue dollar. While interest payments relative to revenue describe interest burden, the capital intensity ratio addresses asset utilization efficiency rather than financing cost as a proportion of sales.$EXPL$
WHERE id = 15106;

-- ID 15107: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Peregrine''s working capital turnover is 7.50 times. Working capital turnover equals net sales divided by working capital (current assets minus current liabilities) per ASC 210-10-45 balance sheet classification. Working capital = $3,200,000 - $2,000,000 = $1,200,000. Turnover = $9,000,000 / $1,200,000 = 7.50, indicating $7.50 in revenue per dollar of working capital. While dividing net sales by current assets alone ($9,000,000 / $3,200,000 = 2.81) ignores the netting of current liabilities, proper working capital turnover uses the net current position rather than gross current assets.$EXPL$
WHERE id = 15107;

-- ID 15108: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: tangible net worth equals total equity minus intangible assets. Per ASC 350-10-05, intangible assets include goodwill, patents, and trademarks. Tangible net worth = $8,000,000 - $1,500,000 - $600,000 = $5,900,000, representing book value attributable to physical and financial assets only. Lenders use this conservative measure for credit covenants because intangibles may not be realizable in distress. While subtracting intangibles from total assets yields tangible assets, tangible net worth specifically deducts intangibles from equity rather than from gross assets, ensuring liabilities are also accounted for.$EXPL$
WHERE id = 15108;

-- ID 15110: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Fenwick''s degree of financial leverage is 1.25. DFL equals EBIT divided by (EBIT minus interest expense) = $500,000 / ($500,000 - $100,000) = 1.25. This measures EPS sensitivity to EBIT changes, consistent with the leverage analysis framework underlying ASC 470-10 debt disclosures. A DFL of 1.25 means a 1% change in EBIT produces a 1.25% change in EPS. Although dividing EBIT by interest alone ($500,000 / $100,000 = 5.00) yields the times interest earned ratio, the DFL formula uses EBIT minus interest in the denominator rather than interest alone.$EXPL$
WHERE id = 15110;

-- ID 15111: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: EPS halves and the P/E ratio remains unchanged. After a 2-for-1 split, shares double to 2,000,000 per ASC 260-10-55, which requires retroactive adjustment of EPS for stock splits. EPS = $5,000,000 / 2,000,000 = $2.50, and the price halves to $50 (market cap unchanged). P/E = $50 / $2.50 = 20, identical to pre-split P/E of $100 / $5.00 = 20. A stock split is a cosmetic change that proportionally adjusts both price and earnings per share. While one might expect the P/E to change, both numerator and denominator adjust by the same factor rather than moving independently.$EXPL$
WHERE id = 15111;

-- ID 15112: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: the debt-to-assets ratio indicates the proportion of assets financed through borrowing. It equals total liabilities divided by total assets = $7,800,000 / $12,000,000 = 0.65, per ASC 210-10-45 balance sheet presentation requirements. This solvency metric shows 65% of assets are debt-financed, informing creditors about financial leverage risk. While return on assets measures how efficiently assets generate profit and asset turnover measures revenue generation efficiency, the debt-to-assets ratio specifically addresses the financing structure rather than operational performance of the asset base.$EXPL$
WHERE id = 15112;

-- ID 15113: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Pinnacle''s ROA improves more due to higher operating leverage. High fixed costs mean that as revenue grows, fixed costs remain constant per ASC 220-10-45 income statement presentation. Pinnacle''s 80% fixed cost structure means only variable costs (20%) scale with the 15% revenue increase, producing greater incremental profit. Flex Services'' 70% variable cost structure scales more of its costs upward with revenue, yielding less incremental margin. The greater profit increase lifts Pinnacle''s ROA more. Although both start with identical net income, their different cost structures create divergent profit sensitivities rather than uniform responses to revenue growth.$EXPL$
WHERE id = 15113;

-- ID 15114: Financial Statement Ratios
UPDATE questions SET
  explanation = $EXPL$Correct answer: Alpha has higher net income and profit margin but lower asset turnover. Under ASC 730-10-25, U.S. GAAP requires immediate expensing of research and development costs. Alpha (IFRS, capitalizing under IAS 38) expenses only $400,000 amortization versus Beta''s full $2,000,000 expense, yielding higher net income ($3,600,000 vs. $2,000,000). However, Alpha''s total assets are inflated by the capitalized development cost, reducing asset turnover. While one might expect identical economic outcomes to produce identical ratios, the different capitalization policies create materially different financial metrics rather than equivalent presentations.$EXPL$
WHERE id = 15114;

-- ============================================================
-- INTANGIBLE ASSETS (1 questions)
-- ============================================================

-- ID 416: Intangible Assets
UPDATE questions SET
  explanation = $EXPL$Correct answer: research phase costs must be expensed as incurred. Under IAS 38, paragraph 54, all research expenditures are expensed immediately because the entity cannot demonstrate that an intangible asset exists that will generate probable future economic benefits during the research phase. Only development costs may be capitalized when all six criteria in IAS 38.57 are met. This treatment differs from the stricter U.S. GAAP approach under ASC 730-10-25, which requires expensing of both research and most development costs. Although capitalization based on expected profitability might seem logical, IAS 38 prohibits research phase capitalization regardless of expected outcomes rather than allowing judgment-based deferral.$EXPL$
WHERE id = 416;

-- ============================================================
-- INVENTORY (1 questions)
-- ============================================================

-- ID 12113: Inventory
UPDATE questions SET
  explanation = $EXPL$Correct answer: the COGS difference between perpetual and periodic LIFO is $500. Under ASC 330-10-30, inventory cost flow assumptions determine how costs are assigned to COGS. Perpetual LIFO computes COGS at each sale date: the January 15 sale draws 300 units at $12 + 100 units at $10 = $4,600, using only inventory on hand at that date. Periodic LIFO computes at period end, including all purchases: 100 at $15 + 300 at $12 = $5,100. The $500 difference arises because periodic LIFO includes the January 22 purchase in its cost pool, while perpetual LIFO uses only units available at the sale date rather than the entire period''s purchases.$EXPL$
WHERE id = 12113;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (4 questions)
-- ============================================================

-- ID 11496: Special Purpose Frameworks
UPDATE questions SET
  explanation = $EXPL$Correct answer: under the pure cash basis, long-lived asset purchases are expensed when paid. Per AR-C Section 70 (SSARS) and AICPA guidance on special purpose frameworks, the cash basis records only cash receipts and disbursements. The entire $60,000 truck payment is recorded as an expense in the period paid, with no capitalization or depreciation. ASC 360 property capitalization rules do not apply under cash-basis frameworks. While one might assume assets are excluded entirely from the statements, the cash payment itself is recorded as an expense rather than being omitted from the financial records.$EXPL$
WHERE id = 11496;

-- ID 11497: Special Purpose Frameworks
UPDATE questions SET
  explanation = $EXPL$Correct answer: substantial support means the modifications relate to commonly accepted accrual adjustments. Per AR-C Section 70 and AU-C Section 800.A15, modifications to the cash basis must have substantial support, meaning they correspond to well-established accrual practices such as recording depreciation, capitalizing fixed assets, or accruing income taxes. The concept ensures modifications are widely recognized rather than arbitrary choices by management. Although the term might suggest a connection to audit opinions or regulatory approval, substantial support specifically addresses whether the modification is commonly accepted in accounting practice rather than requiring external authorization.$EXPL$
WHERE id = 11497;

-- ID 11499: Special Purpose Frameworks
UPDATE questions SET
  explanation = $EXPL$Correct answer: SPF statements must describe the framework and how it differs from GAAP. Per AU-C Section 800.13 and AR-C Section 70, special purpose framework financial statements require disclosure of the basis of accounting used and significant differences from GAAP. Additional informative disclosures are required when SPF items are similar to GAAP items, per professional standards. While full GAAP-level disclosures and formal SPF-to-GAAP reconciliations are not required, the framework description ensures users understand the reporting basis rather than assuming GAAP compliance.$EXPL$
WHERE id = 11499;

-- ID 11500: Special Purpose Frameworks
UPDATE questions SET
  explanation = $EXPL$Correct answer: only the income tax accrual (modification 2) qualifies under the substantial support requirement. Per AR-C Section 70 and AICPA guidance on modified cash-basis statements, modifications must address commonly accepted long-term accrual adjustments such as depreciation, long-term debt, and income taxes. Deferred tax liability recognition for timing differences qualifies because it addresses long-term tax effects. However, accruing prepaid insurance and accounts receivable are routine operating items whose inclusion would push statements too close to full accrual GAAP. Although all three proposals involve accrual concepts, the substantial support standard distinguishes long-term structural adjustments from routine operating accruals rather than permitting any accrual modification.$EXPL$
WHERE id = 11500;

COMMIT;
