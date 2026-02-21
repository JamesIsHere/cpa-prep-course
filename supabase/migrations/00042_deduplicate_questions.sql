-- Migration: Remove 18 duplicate questions
-- Each pair had identical or trivially rephrased stems testing the same concept.
-- Kept the lower-numbered (original) question; deleted the higher-numbered (expansion copy).
--
-- Pairs removed (kept → deleted):
--   Q34  → Q1923  Revenue Recognition (identical)
--   Q453 → Q2161  Income Taxes (capitalization only)
--   Q190 → Q1888  Statement of Cash Flows (identical)
--   Q1146→ Q2219  Fair Value (identical)
--   Q798 → Q3546  System Availability (capitalization only)
--   Q1040→ Q4283  Entity Choice (identical)
--   Q1098→ Q2247  Cash and Receivables (identical)
--   Q635 → Q3007  Capital Structure (article "that" added)
--   Q899 → Q3928  Individual Tax Planning (article "a" added)
--   Q234 → Q2811  S Corporations ("in" vs "of")
--   Q1091→ Q3396  Pension ("plan assets" vs "pension plan assets")
--   Q730 → Q3239  State and Local Govt (word order)
--   Q1126→ Q1416  Government Auditing Standards (trivial rephrasing)
--   Q74  → Q2593  Like-Kind Exchanges (trivial rephrasing)
--   Q246 → Q2755  Estate and Gift Tax ("amount" dropped)
--   Q742 → Q3219  State and Local Govt (trivial rephrasing)
--   Q27  → Q1379  Quality Management (citation shortened)
--   Q885 → Q3778  SOC Reporting (trivial rephrasing)
--
-- 11 pairs with similarity >0.8 were kept because they test distinct concepts:
--   FIFO vs LIFO, Type I vs Type II, above-the-line vs NOT,
--   subject vs NOT subject, leading vs lagging indicators,
--   current vs noncurrent assets, 45-day vs 180-day windows,
--   different depreciation numbers (3 pairs), LLP vs limited partner.

DELETE FROM questions
WHERE id IN (
  1923,  -- Revenue Recognition duplicate of Q34
  2161,  -- Income Taxes duplicate of Q453
  1888,  -- Statement of Cash Flows duplicate of Q190
  2219,  -- Fair Value duplicate of Q1146
  3546,  -- System Availability duplicate of Q798
  4283,  -- Entity Choice duplicate of Q1040
  2247,  -- Cash and Receivables duplicate of Q1098
  3007,  -- Capital Structure duplicate of Q635
  3928,  -- Individual Tax Planning duplicate of Q899
  2811,  -- S Corporations duplicate of Q234
  3396,  -- Pension duplicate of Q1091
  3239,  -- State and Local Govt duplicate of Q730
  1416,  -- Government Auditing Standards duplicate of Q1126
  2593,  -- Like-Kind Exchanges duplicate of Q74
  2755,  -- Estate and Gift Tax duplicate of Q246
  3219,  -- State and Local Govt duplicate of Q742
  1379,  -- Quality Management duplicate of Q27
  3778   -- SOC Reporting duplicate of Q885
);
