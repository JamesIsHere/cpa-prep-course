# Session log — 2026-04-21: multi-group classifier routing + Option A probes

Session started as a post-Phase-1F coherence audit and evolved into a full exploration of whether redistribution via the classifier can fill empty task-specs. Answer: no for redistribution, yes for a more specific mechanism — cross-cutting lessons activating multiple AICPA groups.

## What happened, in order

### 1. Repo audit + Strategy-Z naming cleanup (commit `4c73cca`)

- Retired `tests/unit/topic-specs.test.ts` → `lesson-specs.test.ts`. Removed the invalid `spec.topic ∈ questionTopics[]` assertion (stale premise under lesson-specs model). 282/282 pass.
- Deleted two dead scripts: `audit-topic-specs-coupling.ts` (premise void), `scaffold-topic-spec.ts` (broken output path).
- Renamed `audit-topic-content.ts` → `audit-lesson-content.ts`.
- Updated `PROJECT_STATE.md §1` to describe 128 lesson-specs + 676 task-specs.

### 2. AUD/II/C inScope authoring probe (commit `7d62504`)

Tested whether authoring inScope on empty task-spec scaffolds redistributes content away from surplus siblings.

- Authored 4-5 bullet inScope for all 13 AUD/II/C (Internal Controls) task-specs.
- Re-ran classifier on the 61 AUD questions with topic `Internal Controls`.
- **Result: 3 of 4 target-empty tasks stayed empty.** Authoring didn't attract content that doesn't exist.
- **Real finding from the probe**: 7 of 10 "now homeless" rationales say *"question tests operating effectiveness; all tasks focus on design and implementation only."* AUD/II/C covers **D&I**, not TOE. Topic="Internal Controls" in the DB contains both D&I content AND TOE content — the TOE half belongs in AUD/III/* (Further Procedures). That's topic-level section-routing, not redistribution.

### 3. Classifier enhancement — use `secondaryRefs` (commit `20bae6e`)

Found that lesson-spec `secondaryRefs` field was **silently ignored** by `classify-section.ts`. Only `primaryRef` was used for topic → group mapping. This meant cross-cutting lessons (Slayer's thematic units that span multiple AICPA groups by design) could not route to their full set of anchors.

Rewrote the classifier:
- `topicToGroups: Record<string, string[]>` (was `Record<string, string>`).
- For each question, classify against the union of task-specs from its lesson's `primaryRef + secondaryRefs` groups.
- Single-group lessons unchanged (empty `secondaryRefs` → same batch key as before).

Populated `secondaryRefs: ["TCP/II/B", "TCP/II/C", "TCP/III/D", "TCP/IV/C"]` on `tcp-owner-entity-transactions`.

**Owner-Entity probe result (74 questions):**
- Pinned 13 → 37 (**+24**)
- Homeless 61 → 37 (**−24**)
- TCP/IV/C picked up 11 (related party §267, imputed interest — biggest win)
- TCP/III/D picked up 7 (partnership guaranteed payments)
- TCP/II/B picked up 4 (S corp shareholder basis)
- TCP/II/C picked up 2
- TCP/II/A unchanged at 13

### 4. TCP sample-of-2 probe (commit `af4ed95`)

Authored `secondaryRefs` on two more cross-cutting candidates picked via scan:

**Advanced Basis Calculations** (`secondaryRefs: ["TCP/II/B"]`):
- Pinned 34 → 37 (+3 net; 7 homeless recovered, 4 pin-flipped)
- TCP/II/B picked up 6 S-corp shareholder basis pins (directly matches II/B/1/* tasks). **Kept.**

**Capital Structure Tax Planning** (`secondaryRefs: ["TCP/III/C", "TCP/III/D"]`):
- Pinned 5 → 0 (**−5 backfire**; 0 recoveries, 5 pin-flipped to homeless)
- TCP/III/C and TCP/III/D have tasks on S-corp planning and partnership planning generally — NONE cover §163(j) interest limitation, which is the central content. Adding them diluted the classifier's signal. **Reverted. Comment documents why.**

**Refined criterion** (written into commit message): `secondaryRefs` earn their keep only when the secondary group's `aicpaTask` text actually covers the cross-cutting content. Comment-mentions alone aren't sufficient — verify before adding.

### 5. Trusts and Estates probe — null (no commit)

Scan flagged T&E with potential secondaryRef = TCP/I/C. Reading the lesson comment: both I/C mentions are **out-of-scope pointers** ("GSTT concept-level only in TCP/I/C", "Crummey powers covered in TCP/I/C gift taxation spec"), not in-scope spans.

Pulled the 17 homeless rationales. 11 are estate-specific income tax (personal exemption, fiscal year election, §645, 65-day rule) — no AICPA TCP 2026 home (II/D is trusts-only; I/C is gift-tax-only). 6 are trust content outside II/D's 5 tasks (CRAT, NIIT, compressed brackets as application) — would need task-spec inScope authoring, not lesson-spec secondaryRefs.

Decision: **no secondaryRef changes.** Would be the Capital Structure trap.

### 6. Migration 01075: apply conservative TCP wins to DB (commit `8779d7b`)

Applied 34 "NULL → pin" transitions on the 2 validated lessons (Owner-Entity + Advanced Basis) to `questions.pin_ref`. Conservative scope — `AND pin_ref IS NULL` guard prevents clobber.

**TCP pin rate: 711/1291 (55.1%) → 745/1291 (57.7%).** +2.6 pp.

Did NOT apply:
- 4 "pin → homeless" flips (classifier less confident; could be noise)
- 5 "pin → different pin" re-routes (need judgment, not mass migration)

### 7. Full REG re-classify — null-result (not committed)

Hypothesis: 5 REG lessons had `secondaryRefs` populated by past authors but the classifier was silently ignoring them. A full REG re-classify with the enhanced classifier should activate them for free.

Ran 1397 REG questions through classifier. ~3 hours, 147 batches.

**Result: 594 matched / 803 homeless — net +2 vs baseline 592/805.** Essentially flat.

**Detail by mechanism:**
- 56 homeless → pin recoveries (gross)
- 54 pin → homeless losses (gross)
- 50 re-routes within pinned
- Classifier has real non-determinism on identical input (~3-4% decision variance)

**Of the 5 existing REG multi-group lessons**, only Filing/Credits (IV/E + IV/F) and Income (IV/A + IV/B) delivered cross-group pins — and only 3 each. Circular 230, Agency, and Tax-Exempt Orgs delivered zero cross-group recoveries. Three of five existing REG `secondaryRefs` don't reflect real content spans — same Capital Structure trap.

**Total secondaryRef-attributable cross-group pins across entire REG: 6.**

**Decision**: did not apply any migration. The net +2 is inside classifier noise. The 6 genuine cross-group pins aren't worth a migration on their own. REG's 42.4% pin rate remains accepted as close to the ceiling achievable via routing alone — the rest is content that overshoots AICPA 2026 scope (Estate/Gift, Securities Act, Like-Kind Exchange methodology).

## Hit rate summary for `secondaryRefs` authoring

Across 5 lessons probed this session:

| Lesson | Net cross-group lift | Outcome |
|:-------|---------------------:|:--------|
| TCP Owner-Entity Transactions   | +13 cross-group (+24 total) | Big win |
| TCP Advanced Basis Calculations | +6 cross-group (+3 net)     | Modest win |
| TCP Capital Structure Tax Plan  | 0 (−5 backfire)             | Reverted |
| TCP Trusts and Estates          | 0 (not attempted)           | Declined at scan |
| REG existing × 5                | 6 cross-group (+2 net)      | Mostly noise |

**~40% of speculative secondaryRef authoring delivers real lift. The refined criterion (check each secondary group's `aicpaTask` text for real content coverage) is the gate.**

## Updated state

- Bank: 8,612 questions, 100% verify-pass. TCP now at 57.7% pinned (was 55.1%). Other sections unchanged.
- 8 lesson-specs have populated `secondaryRefs` (was 6 — added TCP Owner-Entity and TCP Advanced Basis this session).
- Classifier now reads `secondaryRefs` — future authoring can leverage this without code changes.
- Migration ledger in sync: 1056 on disk = 1056 applied.

## Open items

The scan at end of session identified **43 additional cross-cutting candidate lessons** across all sections (AUD 19, TCP 13, ISC 5, REG 4, BAR 2) that have empty `secondaryRefs` but comment mentions of multiple groups. Each needs:

1. Read the lesson's comment — in-scope span vs out-of-scope pointer?
2. Verify proposed secondary group's `aicpaTask` text covers real content.
3. Author only if both pass.

AUD has the largest cluster (19 candidates, 297 homeless, 79.1% baseline pin rate). Highest ROI section for next session.

## Things tried and discarded this session

- **inScope authoring on empty task-spec scaffolds as a redistribution mechanism** — proven wrong. AUD/II/C probe showed that empty task-specs that genuinely lack content stay empty after authoring. The classifier becomes more precise, not more inclusive.
- **Speculative `secondaryRefs` authoring based on comment-mentions alone** — proven wrong by Capital Structure backfire. Need the refined criterion.
- **Full REG re-classify as a free-lunch** — proven mostly wrong. Existing REG `secondaryRefs` were authored without the refined criterion, so most don't deliver lift.

## Commits this session

| Hash | Subject |
|------|---------|
| `4c73cca` | Cleanup: retire stale topic-specs naming across tests, scripts, PROJECT_STATE |
| `7d62504` | Author inScope for 13 AUD/II/C task-specs (internal-controls lesson) |
| `20bae6e` | classify-section: use lesson-spec secondaryRefs for multi-group routing |
| `af4ed95` | TCP lesson-specs: Advanced Basis gains secondaryRefs; Capital Structure documented as single-group |
| `8779d7b` | Migration 01075: apply 34 multi-group classifier pin recoveries to TCP DB |
