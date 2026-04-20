# Session log — 2026-04-19 evening

Focus: AUD routing iter-4 + ISC routing iter-1+2. Apply the same routing-first lens from the prior session to push match rates higher.

## Baseline at start

| Section | Matched | Homeless | Rate   |
|---------|---------|----------|--------|
| AUD     | 1068    | 357      | 75.0%  |
| ISC     | 631     | 826      | 43.3%  |

## AUD iter-4 (commit `b7f86f7`)

**Two re-anchors, 0 regressions, +59 matches (75.0% → 79.1%).**

| Topic | From | To | Homeless before | Rationale |
|---|---|---|---|---|
| Analytical Procedures | III/A (data analytics) | **III/D** (classical AP) | 49/65 | All 5 sampled rationales said "general AU-C 520, not data analytics." |
| Specific Areas and Transactions | II/G (narrow engagement risk, 4 tasks) | **III/E** (6 topics: estimates, investments, inventory, litigation, going concern, single audits) | 52/65 | 4/5 samples were going-concern content that II/G does not cover. |

Selective reclassification on 130 questions (14 batches, ~4 min): 88 matched / 42 homeless. Merged into baseline for 1127/1425 = 79.1%.

Remaining AUD homeless (298, 21%) is mostly **under-specced** (IV/D 2 tasks, III/G 1 task) or **off-blueprint** (bank has L2-L4 content on topics AICPA tests only at L1). Further routing lift requires task-spec authoring or bank-level Bloom's rebalancing, not re-anchoring.

## ISC iter-1 (commit `9421a17`)

**Three re-anchors, 3 regressions vs 189 gains, +187 matches (43.3% → 56.1%).**

The homeless audit revealed a classic pattern: ISC topics were anchored to AICPA groups with name-superficially-similar but content-substantively-different task-specs. Three obvious misroutes:

| Topic | From | To | Homeless before | AICPA group coverage |
|---|---|---|---|---|
| Incident Response and Recovery | II/B Security (21 tasks, none incident-specific) | **II/D Incident response** (new lesson-spec, 4 tasks on NIST 800-61 lifecycle) | 96/100 | II/D tasks cover preparation, detection, containment, post-incident — direct match for bank content. |
| System Availability and Change Management | II/A Regs/frameworks (8 tasks on HIPAA/GDPR/PCI/NIST CSF/COBIT/CIS) | **I/A** (topic 3 Availability 6 tasks + topic 4 Change management 8 tasks) | 86/86 (100%) | I/A directly has AICPA topics for Availability + Change management. |
| Change Management | II/A | **I/A** topic 4 Change management | 85/85 (100%) | Same routing as above. |

The 3 regressions are acceptable — they were matches under the old (wrong) anchor that Claude accepted loosely under broader topic name but don't fit any correctly-scoped task.

## ISC iter-2 (commit `a7a0227`)

**One re-anchor, 0 regressions, +66 matches (56.1% → 60.7%).**

| Topic | From | To | Homeless before | Rationale |
|---|---|---|---|---|
| Data Protection Technologies | II/B Security (threats/attacks/mitigation/testing) | **II/C Confidentiality and privacy** | 69/97 | II/C has explicit "Explain DLP" task + "Explain encryption fundamentals" + "Determine controls and data management practices to securely collect/process/store/transmit/delete confidential information." DLP categories, NIST 800-88 media sanitization, format-preserving encryption all fit directly. |

94 / 97 matched on the reclassify — near-perfect fit.

## Cumulative session delta

| Section | Before | After | Δ | Edits |
|---------|--------|-------|---|-------|
| AUD     | 75.0%  | 79.1% | +4.1 pts, +59 matches | 2 |
| ISC     | 43.3%  | 60.7% | +17.4 pts, +253 matches | 4 |
| **Total** | — | — | **+312 matches** | **6 edits** |

Routing-over-authoring principle holds. Across two sessions now:
- 8 routing edits → +471 matches
- 73 inScope authoring edits → -6 matches (noise)

## New tooling dropped

- `scripts/qa/audit-homeless.ts` — regenerate homeless-audit.json from classify-*.json + current lesson-specs
- `scripts/qa/get-topic-ids.ts` — emit ID list for selective reclassification
- `scripts/qa/sample-homeless.ts` — spot-check homeless question content by topic

## Discrepancy queue

- **#3 closed** — "791 ISC questions unrouted to AICPA groups" was mis-diagnosed. They were classifier-rejected, not structurally unmapped. Fixing the misroutes + one content reroute recovered 253 of them.

## Remaining picture

| Section | Match rate | Homeless | Likely next lever |
|---------|-----------|----------|-------------------|
| FAR     | 97.3%     | ~40      | pin state; no active work |
| AUD     | 79.1%     | 298      | task-spec authoring on IV/D / III/G (under-specced) or accept as off-blueprint |
| ISC     | 60.7%     | 570      | under-specced / off-blueprint (ITIL, NIST RMF, sampling methodology not in AICPA) |
| BAR     | 58.8%     | 623      | **apply routing-first lens — untouched** |
| TCP     | 52.9%     | 609      | **apply routing-first lens — untouched** |
| REG     | 41.2%     | 822      | **apply routing-first lens — untouched** |

## Second half of session: REG / BAR / TCP all-section routing survey

### REG iter-1 (commit `aaa4efe`) — 41.2% → 42.4%, +17, 0 regressions

Three re-anchors applied: Individual Taxation Credits/AMT from IV/D + IV/E → **IV/F**. Routing is directionally correct, but AICPA 2026/IV/F has only 3 narrow tasks (refundable-vs-nonrefundable definition, estimated tax safe harbor, tax liability calculation). The bank has deep credit/AMT mechanics that AICPA 2026 doesn't test. Conversion: 17/185 = **9%**.

Spot-checks of other high-homeless REG topics revealed the same pattern repeatedly:
- Government Regulation of Business (57): Securities Act 1933, Rule 10b-5 — not in REG 2026 (moved to BAR)
- Like-Kind Exchanges (48): §1031 boot/timing — not in REG 2026 (III/A is basis-only)
- Estate and Gift Tax (78): GSTT, gift calculation — not in REG at all (moved to TCP)

**Finding: REG 2026 AICPA blueprint is substantially narrower than the bank. Routing alone cannot fix structural scope mismatch.**

### BAR iter-1 proof (commit `60c172f`) — 58.8% → 59.8%, +16, 3 regressions

One re-anchor applied: Interfund Transactions III/C → III/B. III/B is "Deriving government-wide financial statements and reconciliation requirements" — matches the bank content on reciprocal/nonreciprocal classification and interfund-transfer elimination. Conversion: 19/67 raw = 28%, 16/67 net = 24%.

Triage also revealed ~186 structurally misplaced questions (Pension and Postretirement Benefits 138 @ II/K tests sponsor-side ASC 715, which belongs in FAR per 2026; Income Taxes Advanced 48 @ III/C tests ASC 740 corporate tax, which also belongs in FAR). These can't be routed within BAR — they're section-tagged wrong.

### TCP iter-1 (commit `d0bd972`) — 52.9% → 55.0%, +28 net, 14 regressions

Two re-anchors applied:
- Related Party Transactions IV/B → **IV/C** (IV/C has 4 tasks directly on §267 / imputed interest)
- Owner-Entity Transactions IV/C → **II/A** (II/A has 16 C-corp tasks including shareholder-corp loans, distributions, E&P excess)

Clean transposition fix. Conversion: 42/140 raw = 30%, 28/140 net = 20%. 14 regressions are questions that genuinely fit the old anchor (e.g., related-party questions about §1231 gain/loss netting that correctly matched IV/B).

## Section-pattern matrix (final — all 6 sections surveyed)

| Section | Pattern | After this session | Per-edit conversion | Routing ceiling |
|---------|---------|--------------------|--------------------|-----------------|
| FAR     | —       | 97.3% | — | already high |
| AUD     | **AUD/ISC** | 79.1% | 45-65% newly-matched | hit ceiling (under-specced AICPA groups remain) |
| ISC     | **AUD/ISC** | 60.7% | 65-95% | partial — some overshoot remaining |
| TCP     | MIXED   | 55.0% | 30% raw / 20% net | modest additional routing upside |
| BAR     | REG-style + section-misplacement | 59.8% | 28% raw / 24% net | low — + 186 structurally-misplaced questions |
| REG     | REG     | 42.4% | 9% | very low — 300+ off-blueprint |

**Cumulative session delta:** +370 matches across 5 sections from 13 routing edits.

## Strategic conclusion

Routing-first lens surfaced three different failure modes:
1. **Content correctly-scoped, mis-routed** (AUD, ISC): routing is high-leverage.
2. **Content over-scoped for AICPA 2026** (REG, large parts of BAR): routing hits narrow ceiling. Solution requires content-level work: rewrite/delete off-blueprint questions, or tag as "off-blueprint overshoot" and accept lower match rates.
3. **Content wrong section entirely** (BAR's Pension 138 + Income Taxes 48 → FAR): routing can't fix. Requires DB section reassignment or migration.

The Direction W architecture expected high match rates across all sections via lesson-spec re-anchoring. That thesis holds for AUD/ISC/FAR. For REG/BAR/TCP, match rates will plateau below 70% until content-level work addresses scope mismatch.

## Next session candidates

1. **Accept current state** for REG/BAR/TCP — document off-blueprint percentages, stop chasing match rate, move to pinning phase for FAR/AUD/ISC.
2. **Content-level rewrite for REG** — the 300+ off-blueprint questions need rewriting to 2026 scope or deletion.
3. **Section reassignment for BAR** — move Pension (138) and Income Taxes Advanced (48) to FAR (or accept as off-blueprint).
4. **Finish AUD/ISC routing plateau work** — under-specced AICPA groups (AUD/IV/D, AUD/III/G, ISC/II/A large residual) need either task-spec authoring or acceptance as off-blueprint.
5. **Phase 1E: pin FAR questions** to DB — the pending original next step before the routing detour.
