-- =============================================================================
-- Migration: Gap Coverage — BAR Questions
-- Section: BAR — Business Analysis and Reporting (section_id = 4)
-- New questions: 80 (4 topics × 20)
-- Purpose: Fill 4 blueprint groups that had empty questionTopics
-- =============================================================================

-- =============================================================================
-- Topic 1: Business Combinations (20 questions)
-- correct_index distribution: 0×5, 1×5, 2×5, 3×5
-- difficulty distribution: 6 easy, 8 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Under ASC 805, which of the following costs incurred by the acquirer in a business combination should be expensed as incurred?',
 '["Due diligence advisory fees", "Costs of issuing debt securities to finance the acquisition", "Costs of registering and issuing equity securities", "Stock transfer taxes on share issuance"]'::jsonb,
 0,
 'Under ASC 805, acquisition-related costs such as finder''s fees, advisory fees, legal fees, and due diligence costs are expensed as incurred. Costs of issuing debt or equity securities are accounted for under their respective standards (ASC 470 and ASC 505), not as acquisition costs.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Patel Corp. acquires 100% of Solano Inc. for $8,000,000 cash. Solano''s identifiable net assets have a fair value of $8,600,000. How should Patel record this transaction?',
 '["Record goodwill of $600,000", "Record a gain on bargain purchase of $600,000 in net income", "Reduce the fair values of identifiable assets proportionally by $600,000", "Record the excess as additional paid-in capital"]'::jsonb,
 1,
 'When the fair value of identifiable net assets exceeds the consideration transferred, the acquirer has a bargain purchase. Under ASC 805, the acquirer must first reassess the identification and measurement of net assets, then recognize any remaining excess as a gain in net income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'In a business combination, contingent consideration is initially measured at:',
 '["The undiscounted expected cash outflow", "The maximum possible payment amount", "Fair value as of the acquisition date", "Zero, until the contingency is resolved"]'::jsonb,
 2,
 'Under ASC 805, contingent consideration in a business combination is recognized at fair value as of the acquisition date. This fair value becomes part of the consideration transferred in the exchange. Subsequent changes in fair value are recognized in earnings (if classified as a liability) or in equity (if classified as equity).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Apex Corp. acquires 80% of Banner Inc. for $12,000,000. The fair value of Banner''s identifiable net assets is $13,000,000. Apex elects the fair value option for measuring the noncontrolling interest, which is valued at $3,000,000. What amount of goodwill should Apex recognize?',
 '["$1,200,000", "$400,000", "$2,400,000", "$2,000,000"]'::jsonb,
 3,
 'Under the fair value (full goodwill) method: Goodwill = (Consideration + NCI at fair value) − Fair value of net identifiable assets = ($12,000,000 + $3,000,000) − $13,000,000 = $2,000,000. The full goodwill method attributes goodwill to both the parent and the noncontrolling interest.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Under ASC 805, the measurement period during which the acquirer may adjust provisional amounts recognized in a business combination is limited to:',
 '["6 months from the acquisition date", "The end of the fiscal year in which the acquisition occurred", "One year from the acquisition date", "18 months from the acquisition date"]'::jsonb,
 2,
 'The measurement period is the period after the acquisition date during which the acquirer may adjust provisional amounts. It cannot exceed one year from the acquisition date. During this period, the acquirer adjusts amounts as if the accounting had been completed on the acquisition date.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Reed Co. holds a 30% equity-method investment in Thorn Inc. (carrying value $4,500,000). Reed then acquires the remaining 70% for $11,200,000. The fair value of Thorn''s identifiable net assets on the acquisition date is $14,000,000, and the fair value of Reed''s previously held 30% interest is $4,900,000. What gain should Reed recognize on the step acquisition?',
 '["$0", "$400,000", "$900,000", "$500,000"]'::jsonb,
 1,
 'In a step acquisition, the acquirer remeasures its previously held equity interest at fair value on the acquisition date and recognizes any resulting gain or loss in earnings. Gain = Fair value of previously held interest − Carrying value = $4,900,000 − $4,500,000 = $400,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Which of the following is the correct treatment of in-process research and development (IPR&D) acquired in a business combination under ASC 805?',
 '["Expense immediately upon acquisition", "Capitalize at fair value and amortize over the project''s remaining life", "Record at the acquiree''s historical cost", "Capitalize at fair value as an indefinite-lived intangible asset until the project is completed or abandoned"]'::jsonb,
 3,
 'Under ASC 805, IPR&D acquired in a business combination is recognized as an intangible asset at fair value. It is classified as an indefinite-lived intangible and is not amortized but tested for impairment until the project is completed (then amortized over its useful life) or abandoned (then written off).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Groton Corp. acquires 100% of Hale Inc. The acquisition-date fair values include: customer relationships $2,000,000, trade name $800,000, developed technology $1,500,000, and non-compete agreement $300,000. Hale''s books carry none of these intangibles. How should Groton record these items?',
 '["Aggregate all intangibles into a single goodwill amount", "Recognize only intangibles that meet the contractual-legal criterion", "Record the intangibles at Hale''s historical cost of zero", "Recognize each intangible separately at its acquisition-date fair value"]'::jsonb,
 3,
 'ASC 805 requires that identifiable intangible assets acquired in a business combination be recognized separately from goodwill at their acquisition-date fair values. An intangible is identifiable if it meets the contractual-legal criterion or the separability criterion. All four items here meet at least one criterion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Jensen Corp. acquires 100% of Kline Inc. for $20,000,000. The fair value of Kline''s identifiable assets is $25,000,000 and the fair value of assumed liabilities is $7,000,000. What is the goodwill recognized?',
 '["$2,000,000", "$0 — this is a bargain purchase", "$5,000,000", "$18,000,000"]'::jsonb,
 0,
 'Goodwill = Consideration transferred − Fair value of identifiable net assets = $20,000,000 − ($25,000,000 − $7,000,000) = $20,000,000 − $18,000,000 = $2,000,000. Since consideration exceeds net assets, goodwill exists rather than a bargain purchase.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'In a business combination, which of the following determines the acquirer?',
 '["The entity that issues its equity interests", "The entity that transfers cash or other assets", "The entity with the larger total assets", "The entity that obtains control of the acquiree"]'::jsonb,
 3,
 'Under ASC 805, the acquirer is the entity that obtains control of the acquiree. While the entity transferring consideration or issuing equity often is the acquirer, the key determinant is which entity obtains control. In some reverse acquisitions, the legal acquiree is the accounting acquirer.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'During the measurement period, Draco Corp. discovers that the acquisition-date fair value of an acquired patent was $500,000, not the $350,000 originally recorded. The measurement period adjustment should be recorded by:',
 '["Increasing the patent by $150,000 and decreasing goodwill by $150,000, with retrospective adjustment of prior periods presented", "Increasing the patent and recognizing a $150,000 gain in the current period", "Increasing the patent and recording the $150,000 as other comprehensive income", "No adjustment — provisional amounts become final upon initial recognition"]'::jsonb,
 0,
 'Measurement period adjustments are recorded as if the accounting had been completed at the acquisition date. The acquirer adjusts the identifiable asset (increase patent by $150,000) with a corresponding decrease to goodwill, and retrospectively adjusts comparative information for prior periods presented.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Apex acquires 75% of Bell for $9,000,000. The fair value of Bell''s identifiable net assets is $10,000,000. Apex elects the proportionate share method for measuring noncontrolling interest. What is the NCI reported in the consolidated balance sheet?',
 '["$3,000,000", "$2,500,000", "$2,250,000", "$1,000,000"]'::jsonb,
 1,
 'Under the proportionate share method, NCI is measured at the noncontrolling interest''s proportionate share of the acquiree''s identifiable net assets. NCI = 25% × $10,000,000 = $2,500,000. Goodwill under this method = $9,000,000 − (75% × $10,000,000) = $9,000,000 − $7,500,000 = $1,500,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Gamma Corp. acquires Delta Inc. and agrees to pay an additional $2,000,000 if Delta achieves certain revenue targets within two years. At the acquisition date, the fair value of this contingent consideration is estimated at $1,200,000 and is classified as a liability. One year later, the fair value increases to $1,600,000. How is the $400,000 change reported?',
 '["As a measurement period adjustment reducing goodwill", "As a loss in current-period earnings", "As an adjustment to other comprehensive income", "As an increase to goodwill"]'::jsonb,
 1,
 'Contingent consideration classified as a liability is remeasured at fair value each reporting period, with changes recognized in earnings. Since this is a fair value change (not new information about acquisition-date conditions), it is not a measurement period adjustment. The $400,000 increase is recognized as a loss in current-period income.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Which of the following liabilities assumed in a business combination is an exception to the general fair value measurement principle under ASC 805?',
 '["Accounts payable", "Contingent liabilities", "Employee benefit obligations under ASC 715", "Long-term debt"]'::jsonb,
 2,
 'ASC 805 requires most identifiable assets and liabilities to be measured at fair value. However, certain items are exceptions, including employee benefit obligations (measured per ASC 715), income tax assets/liabilities (measured per ASC 740), and lease obligations. These follow their own specific measurement guidance rather than acquisition-date fair value.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Voss Corp. acquires Webb Inc. and the acquiree has an operating lease as a lessee with terms favorable relative to market. Under ASC 805, how is the favorable lease recognized?',
 '["As a separate intangible asset at fair value", "As part of the right-of-use asset measurement", "As goodwill", "As a deferred credit (liability)"]'::jsonb,
 1,
 'Under ASC 842 and ASC 805, the acquirer does not recognize separate favorable or unfavorable lease intangibles/liabilities for operating leases as lessee. Instead, the lease is measured at the present value of remaining payments, and the right-of-use asset is adjusted for any off-market terms.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Push-down accounting, when elected by the acquiree, results in:',
 '["The acquiree restating its assets and liabilities to the acquirer''s basis (fair value), with any goodwill recorded on the acquiree''s separate financial statements", "The acquiree continuing to use its historical cost basis in its separate financial statements", "The acquirer recording the acquiree''s assets at historical cost on the consolidated statements", "Eliminating the need for consolidation entries"]'::jsonb,
 0,
 'Under push-down accounting (ASC 805-50), the acquiree adjusts its standalone financial statements to reflect the acquirer''s basis — assets and liabilities are restated to fair value, and any goodwill or bargain purchase gain is recorded in the acquiree''s separate books. This is an election, not a requirement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'On January 1, Reno Corp. acquires 100% of Sierra Inc. for $5,000,000. Sierra''s identifiable assets have fair values of $7,400,000 and assumed liabilities have fair values of $1,800,000. After reassessing the identification and measurement of all assets and liabilities, the excess remains. What amount and classification should Reno report?',
 '["Goodwill of $600,000", "Bargain purchase gain of $600,000 in other comprehensive income", "Bargain purchase gain of $600,000 in net income", "Negative goodwill of $600,000 as a deferred credit"]'::jsonb,
 2,
 'Net identifiable assets = $7,400,000 − $1,800,000 = $5,600,000. Consideration transferred is $5,000,000, which is $600,000 less than the net identifiable assets. After reassessing measurements and confirming the excess, the $600,000 bargain purchase gain is recognized in net income under ASC 805. It is not reported in OCI or as a deferred credit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'In a reverse acquisition, which entity''s equity structure is reflected in the post-combination consolidated financial statements?',
 '["The legal acquirer (accounting acquiree)", "The legal acquiree (accounting acquirer)", "Both entities'' equity structures are combined", "The entity with the higher market capitalization"]'::jsonb,
 0,
 'In a reverse acquisition, the legal acquirer is the accounting acquiree. The consolidated financial statements are issued under the legal acquirer''s name and reflect its equity structure (shares outstanding), but the financial statement amounts (assets, liabilities, income) reflect the continuation of the accounting acquirer (legal acquiree).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Under ASC 805, the acquisition date is defined as:',
 '["The date the merger agreement is signed", "The date regulatory approval is obtained", "The date the acquirer obtains control of the acquiree", "The date due diligence is completed"]'::jsonb,
 2,
 'The acquisition date is the date on which the acquirer obtains control of the acquiree. This is generally the closing date — the date on which the acquirer legally transfers consideration, acquires the assets, and assumes the liabilities. All recognition and measurement is determined as of this date.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Business Combinations',
 'Frost Corp. acquires 60% of Glacier Inc. on March 1. Glacier reports net income of $1,200,000 for the full calendar year. What amount of Glacier''s net income is included in the consolidated income statement for the year of acquisition?',
 '["$720,000", "$600,000", "$1,200,000", "$1,000,000"]'::jsonb,
 3,
 'In a business combination, the acquiree''s results are included in the consolidated financial statements from the acquisition date forward. From March 1 to December 31 is 10 months. Assuming income is earned evenly: $1,200,000 × (10/12) = $1,000,000 is included. The full $1,000,000 is reported, with NCI''s 40% share separately presented.',
 'medium');

-- =============================================================================
-- Topic 2: Foreign Currency Transactions (20 questions)
-- correct_index distribution: 0×5, 1×5, 2×5, 3×5
-- difficulty distribution: 6 easy, 8 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'A U.S. company purchases inventory from a German supplier for €500,000 when the spot rate is $1.10/€. At the balance sheet date, the spot rate is $1.12/€. The payable is settled when the rate is $1.08/€. What is the transaction gain or loss recognized at the balance sheet date?',
 '["$10,000 transaction loss", "$10,000 transaction gain", "$15,000 transaction loss", "$15,000 transaction gain"]'::jsonb,
 0,
 'Initial recording: €500,000 × $1.10 = $550,000 payable. At balance sheet date: €500,000 × $1.12 = $560,000. The payable increased by $10,000, creating a transaction loss (the company will need to pay more dollars). The settlement gain/loss is recognized separately in the next period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Under ASC 830, which method is used to translate the financial statements of a foreign subsidiary whose functional currency is NOT the same as the parent''s reporting currency?',
 '["Temporal method", "Current rate method", "Monetary/nonmonetary method", "Historical rate method"]'::jsonb,
 1,
 'When a foreign subsidiary''s functional currency differs from the parent''s reporting currency (and is not the reporting currency), the current rate method is used for translation. Assets and liabilities are translated at the current exchange rate, equity at historical rates, and income statement items at the average rate for the period. The resulting translation adjustment is reported in OCI.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'A foreign subsidiary operates in a highly inflationary economy. Under ASC 830, how should the parent account for this subsidiary?',
 '["Use the current rate method with CTA in OCI", "Discontinue consolidation until inflation subsides", "Translate using purchasing power parity rates", "Use the temporal method as if the parent''s currency were the functional currency"]'::jsonb,
 3,
 'Under ASC 830, when a foreign subsidiary operates in a highly inflationary economy (cumulative inflation of approximately 100% or more over three years), its financial statements are remeasured using the temporal method as if the reporting currency were the functional currency. Remeasurement gains and losses are reported in income, not OCI.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Under the current rate method, which exchange rate is used to translate a foreign subsidiary''s revenue and expense accounts?',
 '["Spot rate at transaction date", "Historical rate at the beginning of the period", "Weighted-average exchange rate for the period", "Current rate at the balance sheet date"]'::jsonb,
 2,
 'Under the current rate method (ASC 830), revenue and expense items are translated at the exchange rate at the date of each transaction. However, for practical purposes, a weighted-average rate for the period is commonly used as an approximation when transactions occur relatively evenly throughout the period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Sigma Corp. (U.S. parent) has a subsidiary in Japan whose functional currency is the Japanese yen. When translating the subsidiary''s financial statements, the cumulative translation adjustment (CTA) is reported in:',
 '["Net income as a foreign currency gain or loss", "Retained earnings as a direct adjustment", "A separate translation reserve account outside equity", "Accumulated other comprehensive income (AOCI)"]'::jsonb,
 3,
 'When a foreign subsidiary''s functional currency differs from the reporting currency and the current rate method is used, the resulting translation adjustment is reported as a component of other comprehensive income and accumulates in AOCI within stockholders'' equity. It is not recognized in net income until sale or liquidation of the subsidiary.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Under the temporal method, which of the following balance sheet items is remeasured at the current exchange rate?',
 '["Inventory carried at cost", "Property, plant, and equipment", "Cash and receivables", "Prepaid expenses"]'::jsonb,
 2,
 'Under the temporal method (remeasurement), monetary items — cash, receivables, and payables — are remeasured at the current exchange rate. Nonmonetary items carried at historical cost (inventory at cost, PP&E, prepaid expenses, equity) are remeasured at the historical rate when acquired. Only nonmonetary items carried at fair value use the current rate.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Delta Corp. has a British subsidiary with a functional currency of British pounds. The subsidiary reports equipment with a carrying value of £2,000,000. The historical rate when acquired was $1.30/£ and the current rate is $1.25/£. Under the current rate method, the equipment is translated at:',
 '["$2,600,000 (historical rate)", "$2,550,000 (average rate)", "$2,000,000 (no translation needed)", "$2,500,000 (current rate)"]'::jsonb,
 3,
 'Under the current rate method, ALL assets and liabilities — including nonmonetary items like equipment — are translated at the current exchange rate at the balance sheet date. Equipment = £2,000,000 × $1.25 = $2,500,000. The historical rate is only used for equity accounts under the current rate method.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Which of the following factors is most important in determining an entity''s functional currency under ASC 830?',
 '["The currency of the country where the entity is incorporated", "The currency of the primary economic environment in which the entity operates", "The parent company''s reporting currency", "The currency in which the entity''s stock is traded"]'::jsonb,
 1,
 'ASC 830 defines the functional currency as the currency of the primary economic environment in which the entity operates. Indicators include the currency that mainly influences sales prices, labor/material costs, and financing activities. The country of incorporation and parent''s reporting currency are not determinative.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Under the temporal method, remeasurement gains and losses on a foreign subsidiary''s financial statements are reported in:',
 '["Accumulated other comprehensive income", "The subsidiary''s retained earnings only", "A separate component of equity", "The parent''s consolidated net income"]'::jsonb,
 3,
 'Under the temporal method (used when the functional currency is the reporting currency, or in highly inflationary economies), remeasurement gains and losses are included in the determination of net income in the period they occur. This contrasts with the current rate method, where translation adjustments bypass income and go to OCI.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Orion Inc. (U.S.) sells goods to a Canadian customer for CAD 1,000,000 on November 1. The spot rate is $0.75/CAD. At December 31 (fiscal year-end), the spot rate is $0.78/CAD. Payment is received on January 15 at $0.76/CAD. What is the total transaction gain or loss recognized in the second fiscal year (the year of collection)?',
 '["$10,000 gain", "$20,000 loss", "$30,000 gain", "$20,000 gain"]'::jsonb,
 1,
 'At December 31, the receivable was CAD 1,000,000 × $0.78 = $780,000. On January 15, collection is CAD 1,000,000 × $0.76 = $760,000. The change from $780,000 to $760,000 is a $20,000 loss in the second year. The $30,000 gain ($750,000 to $780,000) was recognized in the first year.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'When a U.S. parent has an intercompany receivable from a foreign subsidiary that is of a long-term investment nature and settlement is not planned or anticipated in the foreseeable future, the exchange gain or loss on this receivable is:',
 '["Recognized in consolidated net income each period", "Deferred until the receivable is settled", "Eliminated entirely in consolidation", "Reported in other comprehensive income (CTA)"]'::jsonb,
 3,
 'Under ASC 830-20-35, foreign currency transaction gains and losses on intercompany balances that are of a long-term investment nature (settlement not planned or anticipated) are reported in OCI as part of the cumulative translation adjustment, similar to the treatment of translation adjustments. They are not recognized in income.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Vista Corp. designates a foreign currency forward contract as a cash flow hedge of a forecasted purchase denominated in euros. The effective portion of the gain or loss on the hedging instrument is reported in:',
 '["Net income in the current period", "Other comprehensive income until the hedged transaction affects earnings", "Goodwill", "A contra-asset account against the hedged item"]'::jsonb,
 1,
 'For a cash flow hedge, the effective portion of the gain or loss on the hedging instrument is reported in other comprehensive income and reclassified into earnings in the period(s) in which the hedged forecasted transaction affects earnings. The ineffective portion, if any, is recognized in current earnings immediately.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'A foreign subsidiary uses the local currency as its functional currency. When the parent sells (liquidates) the subsidiary, the cumulative translation adjustment (CTA) balance related to that subsidiary is:',
 '["Written off against retained earnings", "Left in AOCI permanently", "Reclassified from AOCI into net income as part of the gain or loss on disposal", "Reversed against the investment account"]'::jsonb,
 2,
 'Upon the sale or substantially complete liquidation of an investment in a foreign entity, the CTA balance that has accumulated in AOCI is reclassified into net income as part of the gain or loss on the disposal. This release recognizes in income the cumulative effect of exchange rate changes that were previously deferred in equity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Under ASC 830, which of the following is translated at historical exchange rates when using the current rate method?',
 '["Accounts payable", "Bonds payable", "Common stock", "Inventory"]'::jsonb,
 2,
 'Under the current rate method, all assets and liabilities are translated at the current rate. However, equity accounts (common stock, additional paid-in capital) are translated at the historical rates in effect when the equity transactions occurred. Retained earnings is a composite of translated income over time.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Pine Corp. has a Mexican subsidiary whose functional currency is the Mexican peso. During the year, the peso weakened from $0.060 to $0.052 against the U.S. dollar. The subsidiary reported net assets of MXN 50,000,000 at year-end. Assuming beginning net assets were also MXN 50,000,000 and no income, the translation adjustment for the year is approximately:',
 '["$400,000 unfavorable (debit to AOCI)", "$400,000 favorable (credit to AOCI)", "$200,000 unfavorable", "$600,000 unfavorable"]'::jsonb,
 0,
 'The peso weakened, so translating net assets at the lower current rate produces a negative translation adjustment. Net assets at beginning rate: MXN 50,000,000 × $0.060 = $3,000,000. Net assets at ending rate: MXN 50,000,000 × $0.052 = $2,600,000. The CTA is approximately $400,000 unfavorable (debit to OCI), reflecting the decline in the dollar value of the subsidiary''s net assets.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'A U.S. company borrows €2,000,000 from a European bank when the exchange rate is $1.08/€. At year-end, the rate is $1.05/€. The company should recognize:',
 '["A $60,000 transaction gain", "A $60,000 transaction loss", "No gain or loss until the loan is repaid", "A $60,000 credit to OCI"]'::jsonb,
 0,
 'Initial liability: €2,000,000 × $1.08 = $2,160,000. Year-end liability: €2,000,000 × $1.05 = $2,100,000. The liability decreased by $60,000 because the euro weakened. The company will need fewer dollars to repay the loan, resulting in a $60,000 transaction gain recognized in income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Under the temporal method, inventory carried at net realizable value (NRV) in a foreign subsidiary''s financial statements would be remeasured using:',
 '["The historical exchange rate when inventory was acquired", "The current exchange rate at the balance sheet date", "The average exchange rate for the period", "The rate at the date NRV was determined"]'::jsonb,
 1,
 'Under the temporal method, nonmonetary assets carried at current prices (such as inventory written down to NRV or investments at fair value) are remeasured at the current exchange rate. Only nonmonetary assets carried at historical cost use historical exchange rates. Since NRV is a current measure, the current rate applies.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Echo Corp. (U.S.) has a French subsidiary with a euro functional currency. The subsidiary declares and pays a dividend of €1,000,000. The exchange rate was $1.10/€ when declared and $1.08/€ when paid. Under the current rate method, at what rate is the dividend translated for the consolidated retained earnings schedule?',
 '["$1.10/€ (rate when declared)", "$1.08/€ (rate when paid)", "$1.09/€ (average of declared and paid)", "Dividends are not translated; they are eliminated in consolidation"]'::jsonb,
 0,
 'Under the current rate method, dividends declared by a foreign subsidiary are translated at the exchange rate on the date of declaration. This rate is used to determine the reduction in the subsidiary''s translated retained earnings. The intercompany dividend is then eliminated in consolidation entries.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'A highly inflationary economy is defined under ASC 830 as one with cumulative inflation of approximately:',
 '["50% or more over two years", "75% or more over three years", "100% or more over three years", "200% or more over five years"]'::jsonb,
 2,
 'ASC 830 defines a highly inflationary economy as one that has cumulative inflation of approximately 100% or more over a three-year period. When a subsidiary operates in such an economy, the reporting currency (not the local currency) is treated as the functional currency, and the temporal method is used for remeasurement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Foreign Currency Transactions',
 'Quill Corp. designates a forward contract as a fair value hedge of a recognized euro-denominated receivable. The gain on the forward contract for the period is $45,000, and the loss on the hedged receivable due to exchange rate changes is $43,000. How are these amounts reported?',
 '["Both the $45,000 gain and $43,000 loss are reported in net income", "The net $2,000 gain is reported in net income; the rest in OCI", "The $45,000 gain is in OCI and the $43,000 loss is in net income", "Both amounts are reported in other comprehensive income"]'::jsonb,
 0,
 'For a fair value hedge, both the gain or loss on the hedging instrument and the offsetting loss or gain on the hedged item (attributable to the hedged risk) are recognized in current earnings. The $45,000 gain and $43,000 loss are both in income, resulting in a net $2,000 impact reflecting hedge ineffectiveness.',
 'hard');

-- =============================================================================
-- Topic 3: Intangible Assets Advanced (20 questions)
-- correct_index distribution: 0×5, 1×5, 2×5, 3×5
-- difficulty distribution: 6 easy, 8 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Under ASC 350, goodwill impairment testing uses a one-step approach. The impairment loss is measured as:',
 '["The excess of the reporting unit''s carrying amount over its fair value", "The excess of the reporting unit''s fair value over its carrying amount", "The excess of implied goodwill over recorded goodwill", "The difference between the fair value of goodwill and its book value"]'::jsonb,
 0,
 'Under the simplified one-step goodwill impairment test (ASU 2017-04), an impairment loss is recognized for the amount by which the carrying amount of a reporting unit exceeds its fair value. The loss is limited to the total amount of goodwill allocated to that reporting unit. The former Step 2 (implied fair value of goodwill) was eliminated.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Beacon Corp. acquires a customer relationship intangible in a business combination valued at $3,000,000. The expected useful life is 10 years with no residual value. What annual amortization should be recorded?',
 '["$0 — customer relationships are indefinite-lived", "$300,000", "$3,000,000", "$150,000"]'::jsonb,
 1,
 'Customer relationships acquired in a business combination are typically classified as finite-lived intangibles and amortized over their estimated useful life. Annual amortization = $3,000,000 / 10 years = $300,000. Unlike goodwill and certain trade names, customer relationships generally have determinable useful lives.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Under ASC 350, an entity may elect to first assess qualitative factors to determine whether it is more likely than not that an indefinite-lived intangible asset is impaired. This is known as:',
 '["The qualitative assessment option", "Step 0 assessment", "Step 1 screening", "The simplified impairment test"]'::jsonb,
 0,
 'ASC 350 permits entities to first perform a qualitative assessment (sometimes informally called "Step 0") to determine whether it is more likely than not (>50% likelihood) that the fair value of an indefinite-lived intangible asset is less than its carrying amount. If not, the quantitative impairment test is unnecessary.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Atlas Corp. acquires a trade name with an indefinite useful life in a business combination for $5,000,000. Two years later, the trade name''s fair value is determined to be $4,200,000. What is the impairment loss?',
 '["$0 — indefinite-lived intangibles are not subject to impairment testing", "$400,000", "$5,000,000", "$800,000"]'::jsonb,
 3,
 'Indefinite-lived intangible assets are not amortized but must be tested for impairment at least annually. Since no amortization has been recorded, the carrying amount remains $5,000,000. Impairment loss = Carrying amount − Fair value = $5,000,000 − $4,200,000 = $800,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Crane Corp. acquires in-process research and development (IPR&D) in a business combination at a fair value of $2,500,000. The research project is completed 18 months later, and the resulting technology has an estimated useful life of 8 years. When does amortization of this intangible begin?',
 '["At the acquisition date", "When the IPR&D project is completed", "At the end of the measurement period", "18 months after the acquisition date, regardless of project status"]'::jsonb,
 1,
 'IPR&D acquired in a business combination is initially recognized as an indefinite-lived intangible asset and is not amortized. Once the project is completed, it becomes a finite-lived intangible and amortization begins over its estimated useful life (8 years in this case). If abandoned, it is written off entirely.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Hawk Inc.''s reporting unit has a carrying amount of $15,000,000, including $4,000,000 of goodwill. The reporting unit''s fair value is determined to be $12,500,000. Under the current one-step impairment test, the goodwill impairment loss is:',
 '["$1,500,000", "$4,000,000", "$500,000", "$2,500,000"]'::jsonb,
 3,
 'Under the one-step test, impairment loss = Carrying amount − Fair value = $15,000,000 − $12,500,000 = $2,500,000. The loss is limited to the carrying amount of goodwill ($4,000,000). Since $2,500,000 < $4,000,000, the full $2,500,000 is the impairment loss. Goodwill is reduced to $1,500,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Which of the following intangible assets acquired in a business combination would most likely be classified as indefinite-lived?',
 '["A patent with 12 years remaining", "A customer list expected to generate value for 7 years", "A broadcast license that is renewable indefinitely at minimal cost", "A non-compete agreement with a 5-year term"]'::jsonb,
 2,
 'An intangible asset is classified as indefinite-lived when there is no foreseeable limit to the period over which it will generate cash flows. A broadcast license renewable indefinitely at minimal cost has no legal, contractual, or economic limit on its useful life. Patents, customer lists, and non-compete agreements have finite terms or expected durations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Under ASC 360, a finite-lived intangible asset is tested for impairment when events or changes in circumstances indicate the carrying amount may not be recoverable. The recoverability test compares the carrying amount to:',
 '["The asset''s fair value", "The present value of expected future cash flows", "The asset''s replacement cost", "The undiscounted sum of expected future cash flows"]'::jsonb,
 3,
 'For finite-lived intangibles (and other long-lived assets under ASC 360), the recoverability test is a screening test that compares the asset''s carrying amount to the undiscounted sum of expected future cash flows. If the carrying amount exceeds undiscounted cash flows, the asset is impaired and an impairment loss is measured as the excess of carrying amount over fair value.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Delta Corp. acquires a trademark in a business combination. Management initially classifies it as indefinite-lived. Three years later, a competitor launches a superior product that will likely render the trademark obsolete within 5 years. What accounting change is required?',
 '["No change — the classification is locked at acquisition", "Write off the trademark immediately as impaired", "Reclassify as finite-lived and retroactively amortize from the acquisition date", "Reclassify as finite-lived and begin amortizing over the remaining 5-year useful life on a prospective basis"]'::jsonb,
 3,
 'When circumstances change such that an indefinite-lived intangible now has a determinable useful life, the entity reclassifies it as finite-lived. The intangible is first tested for impairment, and then amortization begins over the remaining useful life. This change is applied prospectively, not retroactively.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Forge Inc. acquires a non-compete agreement valued at $600,000 in a business combination. The agreement has a 3-year term. How should Forge account for this intangible?',
 '["Amortize over 3 years; the asset is finite-lived due to its contractual term", "Classify as indefinite-lived and test for impairment annually", "Expense immediately since non-compete agreements are not recognizable intangibles", "Capitalize as part of goodwill"]'::jsonb,
 0,
 'A non-compete agreement meets the contractual-legal criterion for recognition as a separate intangible asset. It is a finite-lived intangible amortized over its contractual term of 3 years. Annual amortization = $600,000 / 3 = $200,000.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Granite Corp. has a reporting unit with a carrying amount of $20,000,000 (including $8,000,000 of goodwill) and a fair value of $11,000,000. Under the one-step goodwill impairment test, the impairment loss recognized is:',
 '["$9,000,000", "$8,000,000", "$1,000,000", "$12,000,000"]'::jsonb,
 1,
 'Carrying amount exceeds fair value by $20,000,000 − $11,000,000 = $9,000,000. However, the goodwill impairment loss is limited to the carrying amount of goodwill, which is $8,000,000. The remaining $1,000,000 difference would be addressed under the long-lived asset impairment model (ASC 360) for other assets in the reporting unit.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Ivy Corp. acquires a technology patent in a business combination with a fair value of $1,200,000 and remaining legal life of 15 years. However, management expects the technology to be superseded in 6 years. What is the appropriate amortization period?',
 '["15 years — the full legal life", "10.5 years — the average of legal and economic lives", "The patent should not be amortized", "6 years — the expected economic useful life"]'::jsonb,
 3,
 'Under ASC 350, a finite-lived intangible is amortized over the shorter of its legal or contractual life and its estimated economic useful life. Since management expects the technology to be superseded in 6 years, the patent is amortized over 6 years. Annual amortization = $1,200,000 / 6 = $200,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'A "defensive intangible asset" is one that the acquirer does not intend to actively use but acquired to prevent competitors from obtaining it. Under ASC 350, such an asset is:',
 '["Expensed immediately because the acquirer will not use it", "Combined with goodwill since it lacks future economic benefit", "Recognized as a separate intangible asset and amortized over the period of its defensive value", "Recognized but never amortized since it has no active use"]'::jsonb,
 2,
 'A defensive intangible asset is separately recognized at fair value in a business combination. Its useful life is the period over which it prevents competitors from gaining access, not the period of the acquirer''s active use. It is amortized over this defensive period, which may be shorter than the asset''s full legal or economic life.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Lumen Corp. has three reporting units. During its annual goodwill impairment test, one reporting unit has a carrying amount of $7,000,000 (including $2,000,000 goodwill) and a fair value of $7,500,000. The result is:',
 '["An impairment loss of $500,000", "No impairment — the fair value exceeds the carrying amount", "An impairment loss of $2,000,000", "The goodwill is reduced to $500,000"]'::jsonb,
 1,
 'Since the reporting unit''s fair value ($7,500,000) exceeds its carrying amount ($7,000,000), there is no goodwill impairment. Goodwill impairment only occurs when the carrying amount exceeds the fair value. The $500,000 excess indicates a cushion against impairment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Nexus Corp. acquires IPR&D in a business combination for $4,000,000. Two years later, the project is abandoned. What is the accounting treatment?',
 '["Write off the full $4,000,000 as an impairment loss in the period of abandonment", "Continue to report the IPR&D as an indefinite-lived intangible at $4,000,000", "Reclassify to goodwill", "Amortize the $4,000,000 over a default 10-year period"]'::jsonb,
 0,
 'When an IPR&D project acquired in a business combination is abandoned, the carrying amount is written off as an impairment loss in the period of abandonment. Since IPR&D is not amortized while in process, the full fair value at acquisition ($4,000,000) remains as the carrying amount to be written off.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Pulse Corp. has a finite-lived customer relationship intangible with a carrying amount of $800,000. Expected future undiscounted cash flows are $750,000, and the fair value is $600,000. The impairment loss under ASC 360 is:',
 '["$50,000", "$150,000", "$200,000", "$800,000"]'::jsonb,
 2,
 'Step 1 (recoverability test): Carrying amount ($800,000) exceeds undiscounted cash flows ($750,000), so the asset is impaired. Step 2 (measurement): Impairment loss = Carrying amount − Fair value = $800,000 − $600,000 = $200,000. The asset is written down to its fair value of $600,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Under ASC 350, how frequently must indefinite-lived intangible assets be tested for impairment?',
 '["Only when triggering events occur", "Quarterly", "At least annually, or more frequently if triggering events occur", "Every two years"]'::jsonb,
 2,
 'Under ASC 350, indefinite-lived intangible assets (including goodwill) must be tested for impairment at least annually. Additionally, testing is required whenever events or changes in circumstances indicate that the asset may be impaired. Finite-lived intangibles under ASC 360 are tested only upon triggering events.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Which qualitative factor would LEAST likely indicate that goodwill may be impaired?',
 '["A sustained increase in the reporting unit''s share price", "Loss of key management personnel", "Increased competition eroding market share", "Adverse regulatory changes in the industry"]'::jsonb,
 0,
 'A sustained increase in share price is a positive indicator suggesting the reporting unit''s fair value is likely increasing, not declining. Loss of key personnel, increased competition, and adverse regulatory changes are all negative factors that could indicate goodwill may be impaired and would require moving to the quantitative test.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Reef Corp. acquires a franchise agreement with 20 years remaining and two 20-year renewal options. Historical evidence strongly supports renewal, and the cost of renewal is minimal. The franchise should be classified as:',
 '["Finite-lived, amortized over 20 years", "Finite-lived, amortized over 60 years", "Indefinite-lived, not amortized", "Finite-lived, amortized over 40 years"]'::jsonb,
 2,
 'Under ASC 350, if renewal is expected, costs of renewal are minimal, and there is no foreseeable limit to the period of expected cash flows, the intangible is classified as indefinite-lived. With strong historical evidence supporting renewal of two 20-year options at minimal cost, there is no foreseeable limit, making this indefinite-lived.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Intangible Assets Advanced',
 'Storm Corp. has goodwill allocated across two reporting units: Unit A ($3,000,000) and Unit B ($5,000,000). Unit A''s fair value exceeds its carrying amount by $200,000. Unit B''s carrying amount exceeds its fair value by $1,500,000. What total goodwill impairment does Storm recognize?',
 '["$1,300,000", "$1,500,000", "$0", "$8,000,000"]'::jsonb,
 1,
 'Goodwill impairment is tested at the reporting unit level. Unit A: fair value exceeds carrying amount, so no impairment. Unit B: carrying amount exceeds fair value by $1,500,000 (which does not exceed the $5,000,000 goodwill balance), so the impairment loss is $1,500,000. Results are not netted across units. Total impairment = $1,500,000.',
 'hard');

-- =============================================================================
-- Topic 4: Income Taxes Advanced (20 questions)
-- correct_index distribution: 0×5, 1×5, 2×5, 3×5
-- difficulty distribution: 6 easy, 8 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Under ASC 740-10, the first step in evaluating an uncertain tax position is to determine whether it is "more likely than not" that the position will be sustained upon examination. "More likely than not" means a likelihood of:',
 '["Greater than 50%", "Greater than 75%", "At least 90%", "At least 50%"]'::jsonb,
 0,
 'Under the two-step process for uncertain tax positions in ASC 740-10, the recognition threshold (Step 1) requires that the position be "more likely than not" to be sustained, meaning there is a greater than 50% likelihood of being sustained upon examination based on the technical merits of the position.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Volt Corp. has an uncertain tax position that meets the more-likely-than-not recognition threshold. The possible outcomes and their cumulative probabilities are: $1,000,000 benefit (30%), $800,000 benefit (55%), $600,000 benefit (80%), $400,000 benefit (95%). What amount should Volt recognize?',
 '["$1,000,000", "$800,000", "$600,000", "$400,000"]'::jsonb,
 1,
 'In Step 2 (measurement), ASC 740-10 requires the benefit to be measured at the largest amount that is more than 50% likely to be realized upon settlement. Working down: $1,000,000 has only 30% cumulative probability (below 50%), but $800,000 has 55% cumulative probability (above 50%). Therefore, $800,000 is recognized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Under ASC 740, the tax provision for an interim period is computed using the:',
 '["Tax rate in effect at the beginning of the fiscal year", "Statutory federal rate only", "Estimated annual effective tax rate applied to year-to-date ordinary income, with discrete items recognized in the interim period in which they occur", "Actual effective tax rate computed on income earned through the interim date"]'::jsonb,
 2,
 'ASC 740-270 requires entities to estimate the annual effective tax rate (AETR) at each interim date and apply it to year-to-date ordinary income. The interim tax expense is the year-to-date amount minus amounts previously recognized. Certain items (discrete items) such as changes in tax law or resolution of uncertain positions are recognized entirely in the interim period they occur.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Intraperiod tax allocation under ASC 740 requires that income tax expense or benefit be allocated among which of the following?',
 '["Only continuing operations", "Continuing operations and discontinued operations only", "Continuing operations, discontinued operations, other comprehensive income, and items charged directly to equity", "Operating income and non-operating income"]'::jsonb,
 2,
 'Intraperiod tax allocation requires the total income tax expense or benefit for a period to be allocated among continuing operations, discontinued operations, other comprehensive income, and items charged or credited directly to stockholders'' equity. This ensures each component reflects its own tax effect.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'When a deferred tax asset exists, management must assess whether a valuation allowance is needed. A valuation allowance is required when it is:',
 '["More likely than not that some portion or all of the DTA will not be realized", "Certain that the deferred tax asset will not be realized", "Possible that the DTA will not be realized", "Probable that the DTA will not be realized"]'::jsonb,
 0,
 'Under ASC 740, a valuation allowance is recognized when, based on the weight of available evidence, it is more likely than not (>50% likelihood) that some portion or all of the deferred tax asset will not be realized. This requires evaluation of both positive and negative evidence regarding future taxable income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Clay Corp. has a deferred tax liability of $1,500,000 measured at the current enacted rate of 25%. Congress enacts legislation reducing the corporate tax rate to 21%, effective next year. How should Clay adjust its deferred tax liability?',
 '["No adjustment until the new rate takes effect", "Reduce the DTL by $240,000 and recognize a benefit in income in the period of enactment", "Reduce the DTL by $240,000 and recognize it in OCI", "Reduce the DTL by $60,000"]'::jsonb,
 1,
 'Under ASC 740, deferred tax assets and liabilities are adjusted in the period of enactment for changes in tax rates. The underlying temporary difference = $1,500,000 / 0.25 = $6,000,000. New DTL = $6,000,000 × 0.21 = $1,260,000. Reduction = $1,500,000 − $1,260,000 = $240,000, recognized as a benefit in income in the period of enactment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Ridge Corp. has cumulative losses of $3,000,000 in the past three years (negative evidence) but has a signed contract guaranteeing $5,000,000 of future taxable income (positive evidence). When assessing the valuation allowance for a $750,000 DTA, Ridge should:',
 '["Recognize a full valuation allowance because cumulative losses create a presumption of non-realization", "Ignore the cumulative losses because they are historical", "Recognize no valuation allowance because any positive evidence automatically overrides negative evidence", "Weight both positive and negative evidence; the signed contract is objective positive evidence that may overcome the negative evidence"]'::jsonb,
 3,
 'ASC 740 requires weighing all available positive and negative evidence. Cumulative losses are significant negative evidence, but objectively verifiable positive evidence (such as contractually guaranteed income) can overcome the negative evidence. All evidence must be considered and weighted by its objectivity and verifiability.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Under ASC 740, which of the following is considered positive evidence when assessing the need for a valuation allowance on deferred tax assets?',
 '["A history of operating losses", "Unsettled circumstances that are adverse to the entity", "Existing contracts that will produce sufficient taxable income to realize the DTA", "Expiration of tax attribute carryforwards before utilization"]'::jsonb,
 2,
 'Positive evidence supporting realizability of a DTA includes: existing contracts or firm sales backlog producing sufficient income, appreciated asset values exceeding tax basis, and a strong earnings history (excluding the loss that created the DTA). Operating losses, adverse circumstances, and expiring carryforwards are all negative evidence.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'In a business combination, deferred taxes are recognized for temporary differences between the fair values of acquired identifiable assets/liabilities and their tax bases. These deferred taxes are:',
 '["Recognized as an adjustment to goodwill", "Recognized at fair value using a present value technique", "Not recognized until the temporary differences reverse", "Recognized at the enacted tax rate as part of the acquisition accounting, with a corresponding adjustment to goodwill"]'::jsonb,
 3,
 'Under ASC 740 and ASC 805, deferred taxes are recognized in acquisition accounting for the differences between the acquisition-date fair values and the tax bases of identifiable assets and liabilities. These deferred taxes are measured at enacted rates (not fair value) and affect the calculation of goodwill or bargain purchase gain.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Nova Corp. takes a tax position claiming a $2,000,000 deduction. After analysis, management concludes it is more likely than not the position will not be sustained. Under ASC 740-10, the tax benefit recognized is:',
 '["$2,000,000", "$1,000,000", "$0", "The amount cannot be determined without cumulative probability data"]'::jsonb,
 2,
 'Under the two-step process, Step 1 (recognition) must be met before proceeding to Step 2 (measurement). If the position does not meet the more-likely-than-not threshold in Step 1, no benefit is recognized. Since the position is not more likely than not to be sustained, the recognized benefit is $0.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Which of the following items would be treated as a "discrete item" in interim period tax accounting rather than being included in the estimated annual effective tax rate?',
 '["Ordinary recurring revenue", "Regular operating expenses", "Depreciation expense", "A change in enacted tax law"]'::jsonb,
 3,
 'Discrete items are recognized entirely in the interim period in which they occur and are not spread across the year through the estimated annual effective tax rate. Examples include effects of changes in tax law, resolution of uncertain tax positions, and changes in the valuation allowance unrelated to current-year ordinary income. Regular income and expenses flow through the AETR.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Harbor Corp. has foreign earnings of $10,000,000 from its wholly owned foreign subsidiary. Harbor asserts indefinite reinvestment of these earnings outside the United States. Under ASC 740 (post-Tax Cuts and Jobs Act), what deferred taxes are recognized on these earnings?',
 '["A full deferred tax liability for the U.S. tax on repatriation", "Only deferred taxes related to the withholding tax and state tax consequences that would arise upon distribution", "No deferred taxes of any kind", "Deferred tax at the full U.S. statutory rate of 21%"]'::jsonb,
 1,
 'After the TCJA (which imposed a one-time transition tax on previously untaxed foreign earnings and moved to a territorial system for dividends), the indefinite reinvestment assertion (ASC 740-30) still applies to withholding taxes, state income taxes, and other tax consequences of repatriation. While federal tax on dividends from foreign subsidiaries may be largely eliminated, deferred taxes must still be provided for these residual consequences unless indefinite reinvestment is asserted.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Under ASC 740, interest and penalties related to uncertain tax positions should be classified as:',
 '["Always as income tax expense", "Always as interest expense and other expense, respectively", "Based on the entity''s accounting policy election, either as income tax expense or as interest/penalties in other expense categories", "As a component of other comprehensive income"]'::jsonb,
 2,
 'ASC 740-10-45-25 permits an entity to make an accounting policy election to classify interest and penalties related to uncertain tax positions either as a component of income tax expense or as interest expense and another appropriate expense classification, respectively. The policy must be disclosed and consistently applied.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Lynx Corp. has a net operating loss (NOL) carryforward of $8,000,000 from 2023. Under current law, what limitation applies to the use of post-2017 NOL carryforwards?',
 '["The NOL can offset up to 80% of taxable income in any given year, with indefinite carryforward", "The NOL can offset up to 100% of taxable income with a 20-year carryforward period", "The NOL can offset up to 50% of taxable income", "The NOL can only be carried back 2 years"]'::jsonb,
 0,
 'Under the TCJA (for NOLs arising in tax years after December 31, 2017), NOL carryforwards can offset up to 80% of taxable income in any given year (the 80% limitation). These NOLs can be carried forward indefinitely but generally cannot be carried back (with certain exceptions for farming losses).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Zenith Corp. has an unrealized gain on available-for-sale debt securities of $200,000, reported in OCI. The tax rate is 25%. The deferred tax effect of this unrealized gain is:',
 '["A $50,000 deferred tax liability reported in income tax expense", "A $50,000 deferred tax liability allocated to OCI", "A $50,000 deferred tax asset allocated to OCI", "No deferred tax effect until the securities are sold"]'::jsonb,
 1,
 'Under intraperiod tax allocation, the tax effect of items reported in OCI is allocated to OCI, not to income tax expense. The unrealized gain creates a temporary difference requiring a $200,000 × 25% = $50,000 deferred tax liability. This DTL is charged to OCI, reducing the net OCI amount to $150,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Ward Corp. estimates its annual effective tax rate (AETR) at 28% at the end of Q1. Year-to-date pretax income through Q1 is $3,000,000, with no discrete items. At the end of Q2, the AETR is revised to 26%, and cumulative pretax income is $7,000,000 with a discrete tax benefit of $50,000 in Q2. What is the income tax expense for Q2?',
 '["$980,000", "$930,000", "$870,000", "$1,030,000"]'::jsonb,
 1,
 'Year-to-date ordinary tax through Q2 at revised AETR = $7,000,000 × 26% = $1,820,000. Previously recognized in Q1 = $3,000,000 × 28% = $840,000. Q2 ordinary tax expense = $1,820,000 − $840,000 = $980,000 (includes the catch-up from the revised AETR). Discrete benefit in Q2 = ($50,000). Total Q2 tax expense = $980,000 − $50,000 = $930,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'For GILTI (Global Intangible Low-Taxed Income), an entity may make an accounting policy election under ASC 740 to:',
 '["Only use the deferred tax approach", "Only use the period cost approach", "Capitalize GILTI as an intangible asset", "Either treat GILTI as a period cost (no deferred taxes) or recognize deferred taxes for basis differences expected to result in GILTI inclusion"]'::jsonb,
 3,
 'ASC 740 permits an accounting policy election for GILTI: (1) treat GILTI tax as a period cost when incurred, recognizing no deferred taxes related to temporary differences expected to reverse as GILTI, or (2) recognize deferred taxes for temporary differences in the foreign subsidiary that are expected to give rise to GILTI income upon reversal. The policy must be disclosed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Pine Corp. acquires Target Inc. in a business combination. Target has an identifiable intangible asset with a fair value of $4,000,000 and a tax basis of $0 (the asset was internally developed and fully expensed for tax). Assuming a 25% tax rate, what deferred tax is recognized in acquisition accounting?',
 '["A $1,000,000 deferred tax asset", "No deferred tax — intangibles in business combinations are exempt", "A $4,000,000 deferred tax liability", "A $1,000,000 deferred tax liability"]'::jsonb,
 3,
 'The fair value ($4,000,000) exceeds the tax basis ($0), creating a taxable temporary difference. A deferred tax liability of $4,000,000 × 25% = $1,000,000 is recognized. This DTL increases the net amount of consideration allocated to goodwill (or reduces the bargain purchase gain). The goodwill recognition exception does not apply to identifiable intangible assets.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Under ASC 740, goodwill recognized in a business combination where the acquisition is a nontaxable transaction does NOT give rise to a deferred tax liability because of:',
 '["The initial recognition exception for goodwill in nontaxable combinations", "The general prohibition on recording deferred taxes in business combinations", "The indefinite reinvestment assertion", "Push-down accounting rules"]'::jsonb,
 0,
 'ASC 740-10-25-3 provides an exception: deferred taxes are not recognized for goodwill arising in a nontaxable business combination when the goodwill is not deductible for tax purposes. This is because recognizing a DTL would increase goodwill, which would increase the DTL further, creating a gross-up problem with no resolution. In taxable combinations where goodwill IS tax-deductible, book-tax differences in goodwill amortization create deferred taxes.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(4, 'Income Taxes Advanced',
 'Shore Corp. has a deferred tax asset of $500,000 and determines that a valuation allowance of $200,000 is needed. How is this reported on the balance sheet?',
 '["Net DTA of $300,000 (the valuation allowance reduces the reported DTA)", "DTA of $500,000 with a separate $200,000 valuation allowance contra-asset", "DTA of $500,000 and a $200,000 liability", "DTA of $300,000 with no disclosure of the valuation allowance"]'::jsonb,
 0,
 'The valuation allowance is a contra-account that reduces the gross DTA to its net realizable amount. On the balance sheet, the DTA is reported net of the valuation allowance at $300,000. However, the gross DTA and valuation allowance amounts must be disclosed in the notes to the financial statements.',
 'easy');
