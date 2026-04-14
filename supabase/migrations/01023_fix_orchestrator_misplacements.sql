-- Phase 2 + content-misplacement scan + orchestrator re-verify run.
-- 37 correct_index fixes for questions where the explanation describes a choice that is
-- not at the keyed correct_index, plus 5 no-op UPDATEs to promote orchestrator false-
-- positives back to pass via the validate-migration Gap 1 sweep.
--
-- Pattern across all 37: the scaffold pre-assigned correct_index but the question writer
-- placed the conceptually-correct content at a different slot, leaving the explanation
-- argument and the keyed index pointing at different choices. Many of the rebuttals are
-- internally contradictory ("Wrong (X): this is actually the correct answer").
--
-- REG has the heaviest concentration (17 of 37 = 46%) — worth investigating whether REG
-- generation runs had a particular slot-confusion pattern.

BEGIN;

-- ── AUD (3 fixes) ────────────────────────────────────────────────

-- Q108: walkthrough purpose. Explanation: "confirm the auditor's understanding of control
-- design and whether controls have been implemented" → choice B. Keyed D is "determine
-- audit fee" — nonsense.
UPDATE questions SET correct_index = 1 WHERE id = 108;

-- Q334: other-matter paragraph. Explanation: "matters not presented or disclosed in the FS
-- relevant to users' understanding" → choice B verbatim. Keyed D talks about replacing the
-- basis for opinion section.
UPDATE questions SET correct_index = 1 WHERE id = 334;

-- Q1474: audit planning for estimates. Explanation: "must identify areas with significant
-- estimates and plan procedures to evaluate their reasonableness" → choice A. Keyed D is
-- "accept management's estimates" which the explanation explicitly calls incorrect.
UPDATE questions SET correct_index = 0 WHERE id = 1474;

-- ── REG (17 fixes — heaviest concentration) ──────────────────────

-- Q61: Circular 230 practice rights. Explanation: EA has unlimited rights, bookkeeper has
-- limited rights under §10.7 → choice B. Keyed C says "bookkeeper has greater authority".
UPDATE questions SET correct_index = 1 WHERE id = 61;

-- Q64: Statute of Frauds. Explanation: land sale unenforceable, painting contract enforceable
-- → choice A. Keyed C says "Statute of Frauds was abolished" — false.
UPDATE questions SET correct_index = 0 WHERE id = 64;

-- Q74: Section 1031 like-kind. Explanation: Ramirez qualifies (real property), Cho doesn't
-- (stocks excluded) → choice A. Keyed C says "§1031 was fully repealed by TCJA" — false.
UPDATE questions SET correct_index = 0 WHERE id = 74;

-- Q75: §1031 boot recognition. Explanation: Callahan recognizes $50K (limited to boot),
-- Drake $0 → choice B. Keyed A says "both recognize $0".
UPDATE questions SET correct_index = 1 WHERE id = 75;

-- Q83: §243 DRD tiers. Explanation: Apex 25% gets 65%, Crest 85% gets 100% → choice D.
-- Keyed B says "flat 65% for both".
UPDATE questions SET correct_index = 3 WHERE id = 83;

-- Q89: §732 partnership distribution. Explanation: Xavier $15K (cash reduces basis first),
-- Yates $25K carryover → choice D. Keyed B says "$30K FMV basis for both".
UPDATE questions SET correct_index = 3 WHERE id = 89;

-- Q201: contract consideration. Explanation: Henderson's forbearance valid, Martinez's past
-- consideration fails → choice A. Keyed D inverts the analysis.
UPDATE questions SET correct_index = 0 WHERE id = 201;

-- Q212: depreciable basis. Explanation: only building portion depreciable, Kowalski's $200K
-- vs Park's $150K building allocation → choice D. Keyed B has the wrong investor.
UPDATE questions SET correct_index = 3 WHERE id = 212;

-- Q217: §1250 unrecaptured gain. Explanation: $300K depreciation gain at max 25% as
-- unrecaptured §1250, $100K LTCG, $80K equipment ordinary → choice C. Keyed B claims
-- "§1250 does not apply to straight-line".
UPDATE questions SET correct_index = 2 WHERE id = 217;

-- Q220: §1031 deferred exchange timing. Explanation: April 20 identification past 45-day
-- deadline (April 15), Sharma met both deadlines → choice C. Keyed D says "10% penalty
-- option" — no such option exists.
UPDATE questions SET correct_index = 2 WHERE id = 220;

-- Q229: child tax credit phase-out. Explanation: Andersons full $6K, Garcias $3,500 after
-- $2,500 phase-out → choice A. Keyed C says "neither receives credit".
UPDATE questions SET correct_index = 0 WHERE id = 229;

-- Q496: UCC §2-601 partial acceptance. Explanation: buyer may accept whole, reject whole,
-- or accept commercial unit(s) → choice D. Keyed A says "must accept all 500".
UPDATE questions SET correct_index = 3 WHERE id = 496;

-- Q2693: education credits AOTC + LLC. Explanation: both credits permissible for different
-- students → choice D. Keyed A says "MBA doesn't qualify" — but LLC covers grad school.
UPDATE questions SET correct_index = 3 WHERE id = 2693;

-- Q2740: estimated tax due dates. Explanation lists exactly April 15, June 15, Sept 15,
-- Jan 15 next year → choice D. Keyed A says "last day of each quarter" — wrong.
UPDATE questions SET correct_index = 3 WHERE id = 2740;

-- Q2891: PMSI superpriority. Explanation: PMSI in equipment perfected within 20 days has
-- superpriority over prior-perfected SI → Seller wins, choice D. Keyed A says "neither"
-- which is not a UCC outcome.
UPDATE questions SET correct_index = 3 WHERE id = 2891;

-- Q12856: reasonable cause and interest. Explanation: penalty waived under §6664(c)(1),
-- interest accrues independently under §6601(a) → choice B. Keyed A says "both waived".
UPDATE questions SET correct_index = 1 WHERE id = 12856;

-- Q12865: Tax Court vs District Court vs Court of Federal Claims. Explanation: Tax Court is
-- the only forum without prepayment requirement → choice C. Keyed B inverts the rule.
UPDATE questions SET correct_index = 2 WHERE id = 12865;

-- ── BAR (7 fixes) ────────────────────────────────────────────────

-- Q12980: regression model selection. Explanation: Model B's adjusted R² of 0.87 is highest,
-- Model C's third variable signals overfitting → choice C. Keyed D says "all equivalent".
UPDATE questions SET correct_index = 2 WHERE id = 12980;

-- Q13238: private bank DCF illiquidity. Explanation: add illiquidity premium to public-
-- comparable WACC → choice B. Keyed D says "replace DCF with NAV".
UPDATE questions SET correct_index = 1 WHERE id = 13238;

-- Q14246: orderly transaction definition. Explanation: "adequate exposure to the market...
-- usual and customary marketing activities" → choice C. Keyed D says "within 30 days" — no
-- such ASC 820 deadline.
UPDATE questions SET correct_index = 2 WHERE id = 14246;

-- Q14250: WARA vs WACC in PPA. Explanation: "goodwill bridges the gap as the residual asset
-- carrying the highest implied return" → choice B. Keyed D says "purchase price below FV".
UPDATE questions SET correct_index = 1 WHERE id = 14250;

-- Q14256: greenfield method definition. Explanation: "models a hypothetical startup owning
-- only the subject intangible... cash flows and costs needed to build a business around it,
-- netting out returns to other contributed assets" → choice C. Keyed B is the simplified
-- "with-and-without" framing.
UPDATE questions SET correct_index = 2 WHERE id = 14256;

-- Q14266: measurement date definition. Explanation: "the specific date as of which the
-- fair value of an asset or liability is determined" → choice C. Keyed D says "date the
-- valuation report is completed" which the explanation explicitly distinguishes.
UPDATE questions SET correct_index = 2 WHERE id = 14266;

-- Q14270: principal market. Explanation: "market with the greatest volume and level of
-- activity" → choice B. Keyed D says "closest to entity's geographic headquarters" — not a
-- fair-value criterion.
UPDATE questions SET correct_index = 1 WHERE id = 14270;

-- ── ISC (6 fixes) ────────────────────────────────────────────────

-- Q783: ETL data quality control. Explanation: "implementing reconciliation controls
-- comparing record counts and totals... addresses the root cause of undetected data loss"
-- → choice A. Keyed B says "accept the 2% variance".
UPDATE questions SET correct_index = 0 WHERE id = 783;

-- Q882: SOC 2 Type II frequency. Explanation: "annually, covering a continuous 12-month
-- examination period" → choice D. Keyed B says "monthly".
UPDATE questions SET correct_index = 3 WHERE id = 882;

-- Q3567: warm site RPO/RTO. Explanation: "daily backup satisfies 24h RPO, 6h restoration
-- + startup fits 12h RTO, meeting both objectives" → choice D. Keyed A adds a nonsense
-- "same building" condition.
UPDATE questions SET correct_index = 3 WHERE id = 3567;

-- Q3707: incident recovery verification. Explanation: "verify backup predates compromise,
-- validate system integrity, monitor for indicators of compromise" → choice C. Keyed D is
-- "update visual/desktop appearance" — irrelevant.
UPDATE questions SET correct_index = 2 WHERE id = 3707;

-- Q3828: change advisory board role. Explanation: "evaluates proposed changes to assess
-- risk, potential impact, resource requirements, and scheduling" → choice D. Keyed A says
-- "monitor production for performance issues" which is the SOC role.
UPDATE questions SET correct_index = 3 WHERE id = 3828;

-- Q3846: COBIT EDM domain scope. Explanation: "evaluating stakeholder needs, setting
-- strategic direction, and monitoring performance and compliance" → choice D. Keyed A is
-- "help desk" which the explanation explicitly assigns to the DSS domain.
UPDATE questions SET correct_index = 3 WHERE id = 3846;

-- ── TCP (4 fixes) ────────────────────────────────────────────────

-- Q952: post-TCJA NOL 80% limit. Explanation: 80% cap = $3.2M, available NOL $3M < cap so
-- entire $3M used, $1M taxable remaining → choice B. Keyed D says "no limit applies".
UPDATE questions SET correct_index = 1 WHERE id = 952;

-- Q12643: SE tax deduction. Explanation: "above-the-line deduction... reduces AGI but does
-- not reduce the SE tax itself" → choice C. Keyed B is internally garbled (says "deduction
-- from AGI" + "above-the-line" + "reduces SE tax" — three contradictions in one sentence).
UPDATE questions SET correct_index = 2 WHERE id = 12643;

-- Q12789: §2518 qualified disclaimer. Explanation: "irrevocable, unqualified written refusal
-- within 9 months of transfer, must not have accepted property or benefits" → choice A.
-- Keyed C says "6 months from learning".
UPDATE questions SET correct_index = 0 WHERE id = 12789;

-- Q12931: BAP-E hierarchy / passive losses. Explanation: "deductible amount is $25,000,
-- remainder suspended at the passive activity level" → choice C. Keyed D says "$0 because
-- limited partner".
UPDATE questions SET correct_index = 2 WHERE id = 12931;

-- ─────────────────────────────────────────────────────────────────
-- Orchestrator false positives — keyed answer is correct, no-op UPDATE to promote back to
-- pass via the validate-migration Gap 1 sweep.
-- ─────────────────────────────────────────────────────────────────

-- Q984 (TCP): §302(b)(2) substantially disproportionate test. Math checks out: 80% × 60%
-- = 48%, post-redemption 45% < both 48% and 50%. Keyed A is correct.
UPDATE questions SET correct_index = 0 WHERE id = 984;

-- Q2813 (REG): S election deadline. March 15 for calendar-year corp under §1362(b). Keyed
-- D matches the explanation exactly.
UPDATE questions SET correct_index = 3 WHERE id = 2813;

-- Q5989 (TCP): passive activity / at-risk. Explanation correctly applies §469 + §465(b)(6)
-- to limited partner with AGI > $150K phase-out. Keyed D ($0 deductible) is correct.
UPDATE questions SET correct_index = 3 WHERE id = 5989;

-- Q13579 (TCP): §355(c)(2) boot in spin-off. Explanation correctly limits gain to the $1M
-- boot. Keyed A is correct. (Stem has a slightly awkward parenthetical but the math holds.)
UPDATE questions SET correct_index = 0 WHERE id = 13579;

-- Q15197 (FAR): five-factor DuPont with refinancing. Explanation correctly notes that the
-- naive 22.4% calculation overstates the benefit because reduced interest expense increases
-- taxable income, partially offsetting via the tax burden ratio. Keyed B is correct.
UPDATE questions SET correct_index = 1 WHERE id = 15197;

COMMIT;
