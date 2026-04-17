-- Fix 10 FAR questions assigned to the wrong topic.
-- These were identified during Direction W Phase 1D classification:
-- the classifier routes questions by topic → AICPA group, so wrong
-- topics cause questions to land in the wrong group and go homeless.

-- Q157: Tests ASC 360 long-lived asset impairment, not inventory
UPDATE questions SET topic = 'Property, Plant and Equipment'
WHERE id = 157 AND topic = 'Inventory';

-- Q163: Tests ASC 842 lease expense patterns, not intangible assets
UPDATE questions SET topic = 'Leases'
WHERE id = 163 AND topic = 'Intangible Assets';

-- Q167: Tests intercompany inventory elimination in consolidation, not debt
UPDATE questions SET topic = 'Consolidations'
WHERE id = 167 AND topic = 'Debt';

-- Q5253: Tests ASC 250 accounting changes for a for-profit entity, not govt
UPDATE questions SET topic = 'Accounting Changes and Error Corrections'
WHERE id = 5253 AND topic = 'State and Local Government';

-- Q11704: Tests ASC 805 contingent consideration remeasurement, not ASC 450
UPDATE questions SET topic = 'Consolidations'
WHERE id = 11704 AND topic = 'Contingencies';

-- Q11725: Tests ASC 805 business combination contingencies, not ASC 450
UPDATE questions SET topic = 'Consolidations'
WHERE id = 11725 AND topic = 'Contingencies';

-- Q11729: Tests ASC 842 variable lease payment calculation, not contingencies
UPDATE questions SET topic = 'Leases'
WHERE id = 11729 AND topic = 'Contingencies';

-- Q12068: Tests ASC 805 bargain purchase gain, not intangible assets
UPDATE questions SET topic = 'Consolidations'
WHERE id = 12068 AND topic = 'Intangible Assets';

-- Q11698: Tests ASC 805 stock issuance costs — already in Consolidations,
-- which is correct. No matching task-spec yet but topic is right.
-- (No update needed)

-- Q12380: Tests goodwill impairment testing under ASU 2011-08
UPDATE questions SET topic = 'Intangible Assets'
WHERE id = 12380 AND topic = 'Consolidations';
