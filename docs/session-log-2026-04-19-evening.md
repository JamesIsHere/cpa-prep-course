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

The next big leverage target is REG (41.2%, 822 homeless). Same diagnosis pattern as AUD iter-2/3/4 and ISC iter-1/2 should apply: run homeless audit, identify biggest-cluster topics, check AICPA structure for the correct-home group, re-anchor, selectively reclassify, measure lift.
