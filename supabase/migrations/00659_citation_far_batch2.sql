-- Migration: Citation backfill — FAR batch 2 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for FAR section
-- Affected topics: Accounting Changes and Error Corrections, Financial Reporting: For-Profit, Financial Statement Ratios, Special Purpose Frameworks

BEGIN;

-- ============================================================
-- ACCOUNTING CHANGES AND ERROR CORRECTIONS (1 questions)
-- ============================================================

-- ID 12332: Accounting Changes and Error Corrections
UPDATE questions SET
  explanation = 'Under ASC 250-10-45 (Accounting Changes and Error Corrections) and SEC Staff Accounting Bulletin (SAB) No. 108, when an error is immaterial to the period in which it occurred but correcting it entirely in the current period would be material, the entity should revise the prior-period comparative financial statements using a "little r" revision. This dual-approach framework (rollover and iron curtain methods) ensures that neither the current nor prior period is materially misstated. However, simply charging the full correction to the current period is incorrect because the iron curtain analysis reveals the cumulative effect would materially distort current-period income.'
WHERE id = 12332;

-- ============================================================
-- FINANCIAL REPORTING: FOR-PROFIT (10 questions)
-- ============================================================

-- ID 11521: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = 'Under FASB ASC 105-10 and SFAC No. 8, the monetary unit assumption requires that financial information be expressed in units of currency, such as the U.S. dollar, providing a common denomination for measuring and reporting transactions. This assumption also implies that the unit of measure remains reasonably stable over time, ignoring the effects of inflation. While the going concern assumption also appears in the Conceptual Framework, it addresses the entity''s ability to continue operating for the foreseeable future rather than the unit of measurement used in reporting.'
WHERE id = 11521;

-- ID 11526: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = 'Under the FASB Conceptual Framework (SFAC No. 8, QC7-QC10), relevance has two components: predictive value and confirmatory value. Information has confirmatory value when it provides feedback about prior evaluations or decisions. The actual $310,000 in warranty claims confirms or corrects investors'' prior assessment of the $250,000 estimate, fulfilling the confirmatory role defined by the framework. Although the data may also have predictive value for estimating future warranty costs, the question specifically addresses evaluating a prior estimate''s accuracy, which is the definition of confirmatory value under the Conceptual Framework.'
WHERE id = 11526;

-- ID 11529: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = 'Under the FASB Conceptual Framework (SFAC No. 8, QC19-QC34), timeliness and verifiability are both enhancing qualitative characteristics of useful financial information. Timeliness means providing information early enough to influence decisions, while verifiability means independent observers can reach consensus on the measurement. These two characteristics are in tension when faster reporting requires less-verified estimates. However, it would be incorrect to characterize this as a conflict between fundamental characteristics, because relevance and faithful representation are the fundamental qualities — timeliness and verifiability are enhancing characteristics that support them.'
WHERE id = 11529;

-- ID 11530: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = 'Under the FASB Conceptual Framework (SFAC No. 8, Chapter 4, as amended), an asset is defined as a present right of an entity to an economic benefit. The three key elements are: (1) a present right exists, (2) the entity controls it, and (3) it provides economic benefit. This updated definition replaced the prior SFAC No. 6 language of "probable future economic benefits." However, a present obligation to sacrifice economic benefits arising from past events describes a liability under the framework, not an asset — the two elements are distinct and should not be confused.'
WHERE id = 11530;

-- ID 11532: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = 'Under the FASB Conceptual Framework (SFAC No. 8, QC30-QC32), understandability is the enhancing qualitative characteristic that requires classifying, characterizing, and presenting information clearly and concisely so that reasonably knowledgeable users can comprehend it. Financial reports are prepared for users with reasonable knowledge of business and economic activities. While comparability is also an enhancing characteristic, it enables users to identify similarities and differences between entities rather than addressing the clarity of presentation itself — a distinct purpose from understandability.'
WHERE id = 11532;

-- ID 11535: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = 'Under the FASB Conceptual Framework (SFAC No. 8), the economic entity assumption requires that the activities of an entity be kept separate from the activities of its owner and other entities. This separation applies regardless of legal structure — even sole proprietorships must distinguish business from personal transactions for meaningful financial reporting. Although a sole proprietorship lacks legal separation between the owner and the business, the economic entity assumption still mandates accounting separation for reporting purposes, unlike the legal entity concept which would not require such separation.'
WHERE id = 11535;

-- ID 11536: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = 'Under the FASB Conceptual Framework (SFAC No. 8, Chapter 4), expenses are defined as outflows or other using up of assets, or incurrences of liabilities, from delivering goods, rendering services, or carrying out other activities that constitute the entity''s ongoing major or central operations. This definition distinguishes expenses from losses, which arise from peripheral or incidental transactions. However, decreases in equity from distributions to owners or from peripheral activities are not classified as expenses — losses and owner distributions fall outside the expense definition under the Conceptual Framework.'
WHERE id = 11536;

-- ID 11540: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = 'Under the FASB Conceptual Framework (SFAC No. 8, Chapter 4), revenues arise from an entity''s ongoing major or central operations, while gains arise from peripheral or incidental transactions. Brookfield''s machinery sales constitute revenue because custom manufacturing is its core business activity. The land sale, however, is properly classified as a gain because selling real estate is incidental to Brookfield''s operations. Although some might argue both items increase net assets, the Conceptual Framework explicitly distinguishes revenues from gains based on the nature of the activity relative to the entity''s ongoing operations.'
WHERE id = 11540;

-- ID 11543: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = 'Under SFAC No. 5 and SFAC No. 8, present value of future cash flows measures an asset or liability at the discounted amount of future net cash inflows or outflows expected to arise from the item. This measurement attribute is commonly applied to long-term receivables, lease liabilities under ASC 842, and pension obligations under ASC 715. Unlike historical cost, which measures the exchange price at the date of acquisition without considering the time value of money, present value explicitly incorporates future cash flow expectations and a discount rate reflecting risk and time preferences.'
WHERE id = 11543;

-- ID 11544: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = 'Under the FASB Conceptual Framework (SFAC No. 8, Chapter 4), equity is defined as the residual interest in the assets of an entity that remains after deducting its liabilities. Equity is not independently measured — it is derived from the difference between total assets and total liabilities (the accounting equation: Assets = Liabilities + Equity). While market capitalization represents the market''s valuation of outstanding shares, the Conceptual Framework''s definition of equity refers to the balance sheet measurement (assets minus liabilities), not the stock market value of the entity.'
WHERE id = 11544;

-- ============================================================
-- FINANCIAL STATEMENT RATIOS (35 questions)
-- ============================================================

-- ID 15115: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per financial analysis standards under ASC 825 (Financial Instruments) and SEC reporting guidance, net debt equals total debt minus cash and short-term investments: $8,000,000 − $2,200,000 − $800,000 = $5,000,000. Net debt-to-EBITDA = $5,000,000 / $3,000,000 = 1.67. This metric adjusts leverage for available liquid assets, providing a more accurate view of repayment burden. However, using gross debt without subtracting liquid assets ($8,000,000 / $3,000,000 = 2.67) overstates leverage because it ignores cash that could immediately retire debt.'
WHERE id = 15115;

-- ID 15116: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 210-10-45 and SEC Regulation S-X Rule 5-02, the current ratio includes all current assets divided by current liabilities, while the quick ratio (acid-test ratio) excludes inventory and prepaid expenses, including only cash, marketable securities, and net receivables. This makes the quick ratio a more conservative liquidity measure that focuses on the most readily convertible assets. Unlike the current ratio, the quick ratio deliberately omits inventory because converting inventory to cash requires additional time and may involve markdowns, making it less reliable for short-term obligation coverage.'
WHERE id = 15116;

-- ID 15118: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per financial statement analysis standards and ASC 330-10 (Inventory), days inventory outstanding equals (average inventory / COGS) × 365. For Beacon: ($1,460,000 / $7,300,000) × 365 = 0.20 × 365 = 73 days. Equivalently, inventory turnover = $7,300,000 / $1,460,000 = 5.0 times, and DIO = 365 / 5.0 = 73 days. This measures how quickly inventory converts to sales. However, using an incorrect turnover of 7.3 times (from a computational error in the denominator) would understate DIO and misrepresent inventory management efficiency.'
WHERE id = 15118;

-- ID 15122: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 230-10 (Statement of Cash Flows) and financial analysis guidance, the quality of earnings ratio compares operating cash flow to net income. A ratio significantly above 1.0 indicates the company generates more cash from operations than reported net income, reflecting high-quality, cash-backed earnings with minimal reliance on accruals. This suggests conservative accounting practices and strong cash collections. While aggressive revenue recognition might seem to boost this ratio, it actually inflates net income relative to cash flow, typically producing a ratio below 1.0 rather than above it.'
WHERE id = 15122;

-- ID 15123: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per SEC reporting requirements and ASC 260-10 (Earnings Per Share), earnings yield equals EPS divided by price per share — the inverse of the P/E ratio. Vertex''s earnings yield = $3.60 / $48.00 = 7.50%, with P/E = 13.33. The comparable company''s earnings yield = 1 / 18 = 5.56%. Vertex''s 7.50% earnings yield exceeds the peer''s 5.56%, suggesting Vertex offers more earnings per dollar invested. However, confusing the peer''s 5.56% yield with Vertex''s would reverse the comparison and lead to an incorrect valuation conclusion.'
WHERE id = 15123;

-- ID 15124: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 820 (Fair Value Measurement) and financial analysis standards, enterprise value = market cap + total debt − cash = $40,000,000 + $15,000,000 − $5,000,000 = $50,000,000. EV/EBITDA = $50,000,000 / $8,000,000 = 6.25x. Since 6.25x is below the peer''s 8.0x multiple, Solaris appears relatively undervalued on this metric. However, concluding Solaris is overvalued would be incorrect because 6.25x is below, not above, the comparable company''s 8.0x multiple — a lower EV/EBITDA indicates the market prices the firm at a discount to peers.'
WHERE id = 15124;

-- ID 15125: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 310-10 (Receivables) and financial analysis standards, DSO = 365 / AR turnover = 365 / 8.0 ≈ 45.6 days, approximately 46 days. This exceeds Clearwater''s 30-day credit terms, indicating customers are paying late on average. The industry DSO = 365 / 12.0 ≈ 30 days, so Clearwater lags significantly behind peers. While a claim that DSO equals the 30-day credit terms might seem plausible, an AR turnover of 8.0 mathematically produces a DSO of about 46 days, not 30 — indicating a collections problem rather than alignment with terms.'
WHERE id = 15125;

-- ID 15126: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per financial analysis standards and ASC 210-10 (Balance Sheet), return on net assets (RONA) equals net income divided by net assets, where net assets = total assets minus non-interest-bearing current liabilities. Net assets = $15,000,000 − $3,000,000 = $12,000,000. RONA = $1,800,000 / $12,000,000 = 15.0%. RONA isolates returns on assets that require explicit financing decisions. However, using total assets in the denominator ($1,800,000 / $15,000,000 = 12.0%) calculates ROA instead of RONA, failing to exclude liabilities that carry no financing cost.'
WHERE id = 15126;

-- ID 15127: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 330-10 (Inventory) and retail financial analysis standards, gross margin return on inventory investment (GMROI) equals gross profit divided by average inventory cost. For Montclair: $3,600,000 / $1,200,000 = 3.0. A GMROI above 1.0 indicates the company earns more in gross margin than it invests in inventory. Retailers use this metric to evaluate product category profitability. Unlike inventory turnover, which uses COGS and measures how frequently inventory cycles, GMROI directly links margin dollars to the inventory investment required to generate them.'
WHERE id = 15127;

-- ID 15128: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 470-10 (Debt) and financial leverage analysis standards, the LBO replaces $30,000,000 of equity with debt. Times interest earned (TIE) falls from $6,000,000 / $500,000 = 12.0x to $6,000,000 / $3,000,000 = 2.0x. The equity multiplier (assets/equity) rises because equity shrinks. Despite lower net income from higher interest expense, ROE typically increases because the equity base contracts dramatically — the denominator effect exceeds the numerator decline. However, concluding that TIE increases would be incorrect because the sixfold rise in interest expense clearly reduces coverage capacity.'
WHERE id = 15128;

-- ID 15130: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 470-10 (Debt) and ASC 210-10 (Balance Sheet), the debt-to-equity ratio measures total liabilities relative to stockholders'' equity. A ratio of 2.0 means total liabilities are two times equity, indicating significant financial leverage and higher financial risk. For Langley, $4 million in liabilities versus $2 million in equity produces this 2.0 ratio. However, stating that equity is twice debt reverses the relationship and would yield a ratio of 0.5, while equal amounts of debt and equity would produce a ratio of 1.0 — neither matches the stated 2.0 figure.'
WHERE id = 15130;

-- ID 15131: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 280-10 (Segment Reporting) and financial analysis best practices, industry-specific business models drive fundamentally different ratio profiles. Under the FASB framework, financial statements must be evaluated in the context of the reporting entity''s specific circumstances. Grocery chains have high inventory turnover and thin margins by design, while luxury retailers operate with low turnover and high margins. Comparing ratios across structurally different industries as if higher values indicate superiority is misleading, whereas adding more ratios or reweighting them does not solve this fundamental cross-industry incomparability problem.'
WHERE id = 15131;

-- ID 15132: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 260-10 (Earnings Per Share) and SEC reporting requirements, market capitalization equals the current market price per share multiplied by total shares outstanding. For Crestview: $62 × 8,000,000 = $496,000,000. Market capitalization represents the total market value of a company''s equity as determined by investors. Although total assets minus total liabilities equals book value of equity under ASC 210-10, this differs from market capitalization because book value reflects historical cost accounting rather than current market pricing of the company''s shares.'
WHERE id = 15132;

-- ID 15133: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 270-10 (Interim Reporting) and financial analysis best practices, seasonal businesses can experience distorted year-end ratios from post-peak cash buildups. Using average ratios across interim periods (quarterly or monthly) provides a more representative view of ongoing liquidity, as required by the spirit of interim reporting guidance. For Snowpeak, the December 31 current ratio of 3.2 overstates liquidity because Q4 cash collections inflate current assets at that measurement point. While the year-end snapshot may appear favorable, it is misleading compared to the quarterly average of 1.5.'
WHERE id = 15133;

-- ID 15195: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 210-10-45 (Balance Sheet Classification) and financial analysis standards, the cash ratio (cash and cash equivalents divided by current liabilities) is the most conservative liquidity measure. It evaluates whether a company can cover short-term obligations using only its most liquid assets — cash and cash equivalents — without relying on receivables, inventory, or other current assets. While the current ratio and quick ratio include progressively broader sets of current assets, the cash ratio isolates the narrowest and most immediately available resources, unlike metrics that describe receivables collection or asset composition.'
WHERE id = 15195;

-- ID 15196: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 470-10 (Debt) and financial analysis standards, the funded debt to net working capital ratio equals long-term debt divided by net working capital (current assets minus current liabilities). This ratio assesses whether a company''s liquid surplus can support its long-term debt obligations, with values above 1.0 indicating long-term debt exceeds net working capital. However, dividing current liabilities by current assets would produce the inverse of the current ratio, while total liabilities divided by equity is the total debt-to-equity ratio — both are distinct metrics measuring different aspects of financial structure.'
WHERE id = 15196;

-- ID 15197: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per the five-factor DuPont framework derived from ASC 260-10 (Earnings Per Share) and financial analysis standards, lower interest expense improves the interest burden ratio (EBT/EBIT) from 0.85 to 0.95. However, higher EBT increases taxable income, raising taxes paid and reducing the tax burden ratio (net income/EBT) below 0.70. The naive calculation of 0.70 × 0.95 × 0.12 × 1.4 × 2.0 = 22.4% overstates the benefit because it holds the tax burden constant. While the net effect on ROE is still positive, the tax offset makes the actual improvement smaller than the mechanical estimate suggests.'
WHERE id = 15197;

-- ID 15198: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 840/842 (Leases) and financial analysis standards, the fixed charge coverage ratio equals (EBIT + lease payments) / (interest expense + lease payments). For Ironclad: ($1,200,000 + $200,000) / ($300,000 + $200,000) = $1,400,000 / $500,000 = 2.80 times. This measures the ability to cover all fixed financing obligations, including lease commitments. However, using only EBIT in the numerator without adding lease payments yields $1,200,000 / $500,000 = 2.40, which understates coverage capacity by excluding the earnings that fund lease obligations.'
WHERE id = 15198;

-- ID 15199: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 280-10 (Segment Reporting) and financial efficiency analysis, revenue per employee = $24,000,000 / 150 = $160,000. This falls below the industry benchmark of $200,000 per employee, suggesting Clarendon generates less revenue per headcount than peers. This efficiency metric may indicate overstaffing, lower billing rates, or underutilized capacity. While $160,000 is the mathematically correct result, claiming this figure exceeds the $200,000 benchmark would be incorrect because $160,000 is 20% below the industry standard, not above it.'
WHERE id = 15199;

-- ID 15200: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 210-10-45 (Balance Sheet Classification) and financial analysis best practices, a current ratio of 2.8 with a quick ratio of only 0.9 reveals that inventory dominates current assets. An inventory turnover of 3.2 versus the industry average of 8.0 per ASC 330-10 (Inventory) suggests slow-moving or potentially obsolete inventory. The sudden Q4 jump from 1.5 to 2.8 without operational changes points to potential window dressing. Although a high current ratio might appear favorable in isolation, the quality of current assets matters more than quantity — illiquid inventory inflates the ratio without improving genuine liquidity.'
WHERE id = 15200;

-- ID 15201: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 220-10 (Income Statement) and financial analysis standards, the operating expense ratio equals total operating expenses divided by net revenue (or net sales). For Ashford: $4,200,000 / $12,800,000 = 32.8%. This metric measures the proportion of revenue consumed by day-to-day operations, with a lower ratio indicating greater cost efficiency. Unlike return on assets (net income / total assets) or the debt-to-equity ratio (total debt / equity), the operating expense ratio specifically isolates operational cost efficiency rather than measuring profitability, leverage, or coverage.'
WHERE id = 15201;

-- ID 15204: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 820 (Fair Value Measurement) and financial analysis standards, invested capital = total debt + equity − cash = $8,000,000 + $12,000,000 − $2,000,000 = $18,000,000. Invested capital turnover = net sales / invested capital = $20,000,000 / $18,000,000 ≈ 1.11 times. This measures how efficiently deployed capital generates revenue. However, dividing sales by total debt plus equity without subtracting cash ($20M / $20M = 1.00) overstates the capital base because it includes cash that is not actively deployed in operations.'
WHERE id = 15204;

-- ID 15205: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per SEC reporting guidance and ASC 235-10-50 (Accounting Policies), the Beneish M-Score model uses eight financial ratios — including the days sales in receivables index, gross margin index, and asset quality index — to calculate a composite score that flags potential earnings manipulation. An M-Score above −1.78 suggests a higher probability of financial statement manipulation. While the Altman Z-Score predicts bankruptcy likelihood, the M-Score specifically targets earnings quality assessment, unlike discounted cash flow valuation techniques or comparative benchmarking approaches that serve entirely different analytical purposes.'
WHERE id = 15205;

-- ID 15206: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 820 (Fair Value Measurement) and economic value analysis, EVA equals NOPAT minus the capital charge (invested capital × WACC). Meridian''s EVA = $4,200,000 − ($30,000,000 × 10%) = $4,200,000 − $3,000,000 = $1,200,000. Positive EVA means Meridian earns above its cost of capital, creating shareholder value. The competitor''s higher ROE of 24% with negative EVA likely reflects excessive leverage that amplifies ROE while destroying economic value. Unlike ROE, which can be inflated by financial leverage, EVA accounts for the full cost of all capital employed.'
WHERE id = 15206;

-- ID 15207: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 820 (Fair Value Measurement) and commercial real estate lending standards, debt yield = NOI / loan balance = $3,600,000 / $30,000,000 = 12%. Since 12% exceeds the 10% minimum covenant requirement, Crestline is in compliance. Debt yield measures the lender''s return on the loan independent of interest rate or amortization assumptions, making it a preferred underwriting metric. However, confusing the 10% covenant threshold with the actual 12% result would lead to an incorrect compliance conclusion, as the computed yield must be compared against the covenant minimum.'
WHERE id = 15207;

-- ID 15208: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 230-10 (Statement of Cash Flows) and financial analysis standards, market cap = 5,000,000 × $30 = $150,000,000. Free cash flow = CFO − CapEx = $18,000,000 − $6,000,000 = $12,000,000. FCF yield = $12,000,000 / $150,000,000 = 8.0%. Since 8.0% exceeds the 6.0% industry average, the stock generates more free cash per dollar of market value than peers, supporting the undervaluation thesis. While one might argue that FCF yield cannot be compared across companies, this metric is specifically designed for such comparisons within an industry.'
WHERE id = 15208;

-- ID 15209: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 220-10 (Income Statement — Reporting Comprehensive Income), operating profit margin equals operating income (EBIT) divided by net sales, excluding interest expense and income taxes. Net profit margin equals net income divided by net sales, which includes the effects of interest and taxes. This distinction isolates core operational performance from financing and tax decisions, explaining Westbrook''s gap from 18% to 9%. Although both margins use net sales as the denominator, they differ in the numerator — confusing the denominators or claiming depreciation treatment differs between them would be factually incorrect.'
WHERE id = 15209;

-- ID 15210: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 260-10 (Earnings Per Share) and growth-adjusted valuation analysis, the PEG ratio divides P/E by the expected earnings growth rate. Atlas PEG = 35 / 25 = 1.40; Zenon PEG = 18 / 8 = 2.25. A lower PEG suggests better value relative to growth, making Atlas appear more attractive on this metric. However, the PEG ratio assumes linear growth, ignores risk differences, and does not adjust for growth sustainability. While comparing absolute P/E ratios alone might favor Zenon''s lower multiple of 18, this approach ignores the substantially different growth rates that the PEG ratio normalizes.'
WHERE id = 15210;

-- ID 15211: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 470-10 (Debt) and ASC 210-10 (Balance Sheet), long-term debt = total liabilities − current liabilities = $9,000,000 − $2,500,000 = $6,500,000. Long-term debt-to-equity = $6,500,000 / $6,500,000 = 1.00. This ratio measures the proportion of long-term financing provided by creditors versus shareholders. However, dividing total liabilities by equity ($9,000,000 / $6,500,000 ≈ 1.38) produces the total debt-to-equity ratio, which includes both short-term and long-term obligations — a meaningfully different metric that overstates long-term leverage exposure.'
WHERE id = 15211;

-- ID 15212: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 230-10 (Statement of Cash Flows) and financial analysis standards, CFO per share = $9,000,000 / 2,000,000 = $4.50. Price-to-cash-flow = $36 / $4.50 = 8.0x. This ratio measures how much investors pay per dollar of operating cash flow, offering an alternative to P/E that is less subject to accrual-based distortions. Unlike the P/E ratio, which relies on net income (affected by depreciation methods, accruals, and one-time items), price-to-cash-flow uses operating cash flows that are harder to manipulate, making it a useful complement in valuation analysis.'
WHERE id = 15212;

-- ID 15213: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 220-10 (Income Statement) and financial leverage analysis, the degree of operating leverage (DOL) means a percentage change in revenue is multiplied by the DOL to determine the percentage change in EBIT. With DOL of 3.0 and a 10% revenue increase, EBIT increases by 3.0 × 10% = 30%. This is verified by DOL = contribution margin / EBIT = ($12,000,000 − $6,000,000) / $2,000,000 = 3.0. However, assuming a 10% EBIT increase ignores the leverage effect entirely, while a 20% increase would correspond to a DOL of only 2.0, not the given 3.0.'
WHERE id = 15213;

-- ID 15214: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 220-10 (Income Statement) and financial analysis standards, basic earning power (BEP) = EBIT / total assets. Atherton: $3,600,000 / $24,000,000 = 15.0%. Berwick: $2,100,000 / $12,000,000 = 17.5%. Berwick''s higher BEP indicates superior operating efficiency relative to its asset base. BEP is useful because it uses EBIT, which excludes interest and taxes per the income statement framework, enabling comparison across firms with different capital structures and tax situations. Although Atherton has higher absolute EBIT, BEP measures efficiency relative to total assets, where Berwick outperforms.'
WHERE id = 15214;

-- ID 15215: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 470-10 (Debt) and financial leverage analysis, the degree of total leverage (DTL) equals DOL × DFL = 2.5 × 1.6 = 4.0. The expected percentage change in EPS equals DTL × percentage change in revenue = 4.0 × 8% = 32%. DTL captures the combined amplification from both operating fixed costs and financial fixed costs (interest). While applying only operating leverage (2.5 × 8% = 20%) or only financial leverage (1.6 × 8% = 12.8%) would capture partial effects, the DTL multiplies both factors to reflect the full cascading impact on earnings per share.'
WHERE id = 15215;

-- ID 15216: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 820-10 (Fair Value Measurement) and financial analysis standards, enterprise value equals market capitalization plus total debt (including preferred stock and minority interest if applicable) minus cash and cash equivalents. EV represents the total theoretical cost to acquire the firm, accounting for both the equity purchase price and net debt obligations assumed by the acquirer. Unlike book equity (total assets minus total liabilities per ASC 210-10), enterprise value is a market-based measure that reflects investor pricing rather than historical cost accounting.'
WHERE id = 15216;

-- ID 15217: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Per ASC 820-10 (Fair Value Measurement) and valuation analysis, Tobin''s Q = (market cap + debt − cash) / replacement cost of assets = ($80M + $30M − $10M) / $120M = 0.833. A Q below 1.0 suggests the market values the firm below its asset replacement cost. However, this could reflect rational discounting for poor management, industry decline, or obsolescence rather than pure undervaluation. While the PE firm may see an acquisition opportunity, replacement cost estimates are inherently subjective, and a low Q does not definitively prove undervaluation without investigating the underlying causes.'
WHERE id = 15217;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (4 questions)
-- ============================================================

-- ID 11508: Special Purpose Frameworks
UPDATE questions SET
  explanation = 'Under FASB ASC 235-10-50 (Accounting Policies) and the AICPA''s special purpose framework guidance, cash-basis financial statements recognize revenue when cash is received and expenses when cash is paid. Delaying $200,000 in vendor payments to January removes those expenses from the current year, while accelerating $150,000 in collections into December adds that revenue. The combined $350,000 income increase illustrates a key limitation of cash-basis reporting — unlike accrual accounting under ASC 606 and ASC 840/842, income can be manipulated through payment and collection timing decisions.'
WHERE id = 11508;

-- ID 11509: Special Purpose Frameworks
UPDATE questions SET
  explanation = 'Under AICPA special purpose framework guidance (AR-C Section 80 and AR-C Section 90), modified cash-basis statements may incorporate accrual modifications that have substantial support. Capitalizing equipment and recording straight-line depreciation per ASC 360-10 is an accepted modification because long-lived assets provide benefits over multiple periods. The principle is that modifications for items with long-term effects (depreciation, debt, income taxes) are acceptable. However, modifications for routine operating items like accounts receivable or payable would push the framework too close to full GAAP, defeating its simplification purpose.'
WHERE id = 11509;

-- ID 11511: Special Purpose Frameworks
UPDATE questions SET
  explanation = 'Under IRC Section 1366 and the AICPA''s tax-basis framework guidance, an S corporation reports its full net income on the tax-basis income statement regardless of pass-through status. While the income flows through to shareholders'' individual returns via Schedule K-1 per IRC Section 1366(a), the entity-level financial statements still present the income earned. Shareholder distributions reduce equity on the balance sheet, similar to GAAP dividends reducing retained earnings. Unlike some who suggest netting income against distributions, the entity does not combine these — they are reported separately.'
WHERE id = 11511;

-- ID 11513: Special Purpose Frameworks
UPDATE questions SET
  explanation = 'Under AICPA professional standards (AR-C Section 80 and AR-C Section 90) and FASB ASC 105-10-05, special purpose frameworks exist primarily to reduce reporting complexity and cost for entities that do not need full GAAP compliance. Small and mid-sized entities benefit from simpler recognition and measurement rules while still producing meaningful financial information for lenders and owners. Although some might assume SPFs eliminate the need for CPAs or remove all disclosures, they simply offer a less complex reporting alternative — they do not provide tax advantages or eliminate professional oversight requirements.'
WHERE id = 11513;

COMMIT;
