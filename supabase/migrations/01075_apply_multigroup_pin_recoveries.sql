-- Apply multi-group classifier pin recoveries (Owner-Entity Transactions + Advanced Basis Calculations)
-- Conservative scope: only NULL → pinned transitions. Does not clobber or re-route existing pins.
-- Generated from classify-tcp.json after classifier enhancement (commit 20bae6e)
--   Owner-Entity Transactions: secondaryRefs = [II/B, II/C, III/D, IV/C]
--   Advanced Basis Calculations: secondaryRefs = [II/B]
-- Total new pins: 34 across 13 refs

BEGIN;

-- TCP/II/A/2/1 (1 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/2/1', pinned_at = now() WHERE id IN (989) AND pin_ref IS NULL;

-- TCP/II/B/1/2 (3 questions)
UPDATE questions SET pin_ref = 'TCP/II/B/1/2', pinned_at = now() WHERE id IN (1000,4210,14566) AND pin_ref IS NULL;

-- TCP/II/B/1/3 (3 questions)
UPDATE questions SET pin_ref = 'TCP/II/B/1/3', pinned_at = now() WHERE id IN (4193,4201,12916) AND pin_ref IS NULL;

-- TCP/II/B/1/4 (4 questions)
UPDATE questions SET pin_ref = 'TCP/II/B/1/4', pinned_at = now() WHERE id IN (12914,13503,13516,14550) AND pin_ref IS NULL;

-- TCP/II/B/2/2 (1 questions)
UPDATE questions SET pin_ref = 'TCP/II/B/2/2', pinned_at = now() WHERE id IN (14544) AND pin_ref IS NULL;

-- TCP/II/C/1/4 (1 questions)
UPDATE questions SET pin_ref = 'TCP/II/C/1/4', pinned_at = now() WHERE id IN (14510) AND pin_ref IS NULL;

-- TCP/II/C/3/1 (2 questions)
UPDATE questions SET pin_ref = 'TCP/II/C/3/1', pinned_at = now() WHERE id IN (4160,14565) AND pin_ref IS NULL;

-- TCP/II/C/3/3 (2 questions)
UPDATE questions SET pin_ref = 'TCP/II/C/3/3', pinned_at = now() WHERE id IN (13497,13511) AND pin_ref IS NULL;

-- TCP/II/C/3/4 (1 questions)
UPDATE questions SET pin_ref = 'TCP/II/C/3/4', pinned_at = now() WHERE id IN (14552) AND pin_ref IS NULL;

-- TCP/III/D/0/2 (6 questions)
UPDATE questions SET pin_ref = 'TCP/III/D/0/2', pinned_at = now() WHERE id IN (4143,4145,4159,4166,4173,14551) AND pin_ref IS NULL;

-- TCP/IV/C/0/1 (4 questions)
UPDATE questions SET pin_ref = 'TCP/IV/C/0/1', pinned_at = now() WHERE id IN (4174,13498,13513,14563) AND pin_ref IS NULL;

-- TCP/IV/C/0/2 (3 questions)
UPDATE questions SET pin_ref = 'TCP/IV/C/0/2', pinned_at = now() WHERE id IN (980,13515,14555) AND pin_ref IS NULL;

-- TCP/IV/C/0/3 (3 questions)
UPDATE questions SET pin_ref = 'TCP/IV/C/0/3', pinned_at = now() WHERE id IN (981,4154,14562) AND pin_ref IS NULL;

COMMIT;
