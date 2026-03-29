-- Migration: Stem expansion — BAR batch 9 (4 questions)
-- Date: 2026-03-29
-- Purpose: Expand 4 short stems with scenario context for BAR section
-- Affected topics: Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Derivatives and Hedging

BEGIN;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (1 questions)
-- ============================================================

-- ID 3390: Advanced Lease Transactions (20 words)
-- ORIGINAL STEM: A lessee with an operating lease reports the following on the statement of cash flows: lease payments are classified as:
UPDATE questions SET
  stem = $EXPL$Nova Logistics signed a five-year operating lease for warehouse space in January 2025 with annual payments of $96,000. The controller is preparing the year-end statement of cash flows. How should the lease payments be classified?$EXPL$
WHERE id = 3390;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 3105: Advanced Revenue and Intangibles (20 words)
-- ORIGINAL STEM: A company acts as an agent rather than a principal in a transaction. Under ASC 606, it should recognize revenue:
UPDATE questions SET
  stem = $EXPL$QuickShip Marketplace facilitates sales between third-party vendors and customers, charging a 12% commission on each transaction. QuickShip never takes title to the merchandise and does not set prices. Under ASC 606, how should QuickShip recognize revenue?$EXPL$
WHERE id = 3105;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 14419: Business Combinations (19 words)
-- ORIGINAL STEM: In a business combination, which category of identifiable intangible asset may have an indefinite useful life under ASC 805?
UPDATE questions SET
  stem = $EXPL$Apex Industries acquired Brightstone Corp. in March 2025 for $42 million. During the purchase price allocation, the valuation team identified several intangible assets. Which category of identifiable intangible asset may have an indefinite useful life under ASC 805?$EXPL$
WHERE id = 14419;

-- ============================================================
-- DERIVATIVES AND HEDGING (1 questions)
-- ============================================================

-- ID 719: Derivatives and Hedging (19 words)
-- ORIGINAL STEM: If a cash flow hedge is discontinued because it is no longer highly effective, the amount in OCI is:
UPDATE questions SET
  stem = $EXPL$Ridgeline Energy designated an interest rate swap as a cash flow hedge of its variable-rate debt. In Q3 2025, effectiveness testing revealed the hedge no longer meets the highly effective threshold, and the company discontinues hedge accounting. What happens to the cumulative gain previously recorded in OCI?$EXPL$
WHERE id = 719;

COMMIT;
