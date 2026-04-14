-- Spec cleanup for TCP Passive Activity and At-Risk Rules (TCP/I/B/0)
-- Post-audit cleanup for 35 banned-term hits flagged by audit-topic-content.ts
-- after the TCP Passive Activity and At-Risk Rules spec was authored.
--
-- All 35 flagged questions are genuine drift into out-of-scope material.
-- There are no rewrites in this cleanup — every flagged question teaches
-- mechanics that belong outside the AICPA 2026 TCP/I/B scope:
--
--   - Seven material participation tests at mechanics depth (spec allows
--     only the 500-hour test concept)
--   - Grouping of activities under Reg 1.469-4 and grouping elections
--     (appropriate economic unit, 5-factor test)
--   - Self-rental rule under Reg 1.469-2(f)(6) — recharacterization mechanics
--   - Self-charged interest rules under Reg 1.469-7
--   - Personal service corporation PAL rules under Sec 469(a)(2)(C)
--   - Closely-held C corporation PAL rules under Sec 469(a)(2)(B)
--   - Publicly traded partnership separate-basket rules under Sec 469(k)
--   - Passive activity credit limitation (explicitly excluded by the AICPA
--     group name: "excluding tax credit implications")
--   - Net investment income tax under Sec 1411 as applied to passive income
--     (belongs to Individual Taxation, not PAL topic)
--   - Former passive activities rules under Sec 469(f)
--
-- Net: 128 → 93 questions. Topic drops below the ~100-question target but
-- remains above the 80-question floor. Queues for spec-constrained
-- regeneration in a later batch.

BEGIN;

-- Grouping mechanics (Reg 1.469-4, grouping elections, appropriate economic unit)
DELETE FROM questions WHERE id = 917;   -- grouping election concept question
DELETE FROM questions WHERE id = 3971;  -- appropriate economic unit factors
DELETE FROM questions WHERE id = 5912;  -- grouping election evaluation
DELETE FROM questions WHERE id = 5951;  -- Reg 1.469-4 single economic unit
DELETE FROM questions WHERE id = 5965;  -- Reg 1.469-4 grouped activity
DELETE FROM questions WHERE id = 5991;  -- grouping election benefit/risk analysis
DELETE FROM questions WHERE id = 6021;  -- Reg 1.469-4 grouping change timing

-- Seven material participation tests mechanics
DELETE FROM questions WHERE id = 918;   -- one-of-seven tests
DELETE FROM questions WHERE id = 3960;  -- which of seven MP tests
DELETE FROM questions WHERE id = 5921;  -- failing all seven tests
DELETE FROM questions WHERE id = 5942;  -- 500-hour as one of seven tests
DELETE FROM questions WHERE id = 6018;  -- satisfies three of the seven tests

-- Self-rental rule recharacterization
DELETE FROM questions WHERE id = 5936;  -- self-rental rule
DELETE FROM questions WHERE id = 5967;  -- self-rental rule classification
DELETE FROM questions WHERE id = 5996;  -- self-rental rule treatment
DELETE FROM questions WHERE id = 6056;  -- self-rental rule classification

-- Self-charged interest rules (Reg 1.469-7)
DELETE FROM questions WHERE id = 5934;  -- self-charged interest treatment
DELETE FROM questions WHERE id = 5979;  -- self-charged interest recharacterization

-- Personal service corporation / closely held C corp PAL rules (Sec 469(a)(2))
DELETE FROM questions WHERE id = 5946;  -- PSC PAL under Sec 469(a)(2)
DELETE FROM questions WHERE id = 5949;  -- Sec 469(a)(2) application
DELETE FROM questions WHERE id = 5986;  -- PSC PAL
DELETE FROM questions WHERE id = 6023;  -- PSC PAL limitation
DELETE FROM questions WHERE id = 6066;  -- PSC PAL offset rules

-- Publicly traded partnership (PTP) separate-basket rules (Sec 469(k))
DELETE FROM questions WHERE id = 5943;  -- Sec 469(k) PTP passive losses
DELETE FROM questions WHERE id = 5972;  -- Sec 469(k) PTP treatment
DELETE FROM questions WHERE id = 6057;  -- Sec 469(k) PTP separate basket
DELETE FROM questions WHERE id = 6077;  -- Sec 469(k) PTP loss offset

-- Passive activity credit limitation (excluded by AICPA)
DELETE FROM questions WHERE id = 5977;  -- passive activity credit offset
DELETE FROM questions WHERE id = 6016;  -- passive activity credit carryforward
DELETE FROM questions WHERE id = 6041;  -- passive activity credit tax offset

-- Net investment income tax (NIIT, Sec 1411) — Individual Taxation topic
DELETE FROM questions WHERE id = 5928;  -- NIIT consequences of regrouping
DELETE FROM questions WHERE id = 5940;  -- NIIT computation
DELETE FROM questions WHERE id = 5985;  -- NIIT computation
DELETE FROM questions WHERE id = 6044;  -- NIIT computation

-- Former passive activities under Sec 469(f)
DELETE FROM questions WHERE id = 5938;  -- Sec 469(f) former PA treatment

COMMIT;
