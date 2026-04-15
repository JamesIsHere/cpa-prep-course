# Topic specs — session handoff (2026-04-15, post Stage 3 #18-26)

**Status:** 43 specs live, all at 0 drift. Stage 3 census v3 ranked top list is essentially closed — twenty-three specs authored across Stage 3 (#4-26). Nine of those (#18-26) landed in the most recent wave: TCP NOLs and Consolidated Returns, the full AUD process cluster as 5 INDEPENDENT specs (not shared-base), REG Credits, REG Estate and Gift Tax, and BAR Stock Compensation and Business Combinations. Drift test 221/221. Read this first on a cold pickup.

## State of the world

**Bank state:** 8,612 questions (down 30 from the prior 8,642 mid-session state). Drift test 221/221 passing. 43 topic specs registered in `src/lib/topic-specs/index.ts` covering ~36% of the bank.

**Authored specs (34):**

| # | Topic | Section | Anchor | Authored wave |
|---|---|---|---|---|
| 1 | Prospective Analysis and Forecasting | BAR | BAR/I/B/1 | pilot |
| 2 | Financial Valuation Methods | BAR | BAR/I/B/3 | pilot |
| 3 | Derivatives and Hedging | BAR | BAR/II/H/0 | pilot |
| 4 | International Tax | TCP | TCP/II/A/4 | pilot |
| 5 | S Corporations | REG | REG/V/C | pilot |
| 6 | Capital Structure and Valuation | BAR | BAR/I/B/2 | pilot |
| 7 | Risk Management and Economics | BAR | BAR/I/B/4 | pilot |
| 8 | Fair Value | FAR | FAR/III/E/0 | rollout |
| 9 | C Corporations | REG | REG/V/B | rollout |
| 10 | Owner-Entity Transactions | TCP | TCP/IV/C | rollout (Stage 1) |
| 11 | Financial Statement Analysis | BAR | BAR/I/A/1 | rollout |
| 12 | Partnerships | REG | REG/V/D | rollout (Stage 1) |
| 13 | Passive Activity and At-Risk Rules | TCP | TCP/I/B/0 | rollout |
| 14 | Leases | FAR | FAR/III/F/0 | rollout |
| 15 | Business Combinations | BAR | BAR/II/F/0 | rollout |
| 16 | Audit Evidence | AUD | AUD/III/B | rollout |
| 17 | Risk Assessment | AUD | AUD/II/E/0 | rollout |
| 18 | Advanced Basis Calculations | TCP | TCP/II/C | Stage 3 #1 |
| 19 | Foreign Currency Transactions | BAR | BAR/II/G | Stage 3 #2 |
| 20 | Using the Work of Others | AUD | AUD/II/F | Stage 3 #3 |
| 21 | **Audit Sampling** | **AUD** | **AUD/III/C** | **Stage 3 #4 (pure rightful-owner)** |
| 22 | **Capital Structure Tax Planning** | **TCP** | **TCP/III/B** | **Stage 3 #5** |
| 23 | **Entity Choice and Planning** | **TCP** | **TCP/III/A** | **Stage 3 #6** |
| 24 | **Individual Taxation: Deductions** | **REG** | **REG/IV/C** | **Stage 3 #7 (QBI mechanics home)** |
| 25 | **Materiality** | **AUD** | **AUD/II/D** | **Stage 3 #8** |
| 26 | **Audit Planning** | **AUD** | **AUD/II/A** | **Stage 3 #9** |
| 27 | **Multi-Jurisdictional Tax Planning** | **TCP** | **TCP/III/B** | **Stage 3 #10 (state tax focus)** |
| 28 | **Entity Formation and Liquidation** | **TCP** | **TCP/II/A/2** | **Stage 3 #11 (C corp §351-§337)** |
| 29 | **Entity Formation and Restructuring** | **TCP** | **TCP/II/A/2** | **Stage 3 #12 (§368/§355/§338)** |
| 30 | **SOC Engagements** | **ISC** | **ISC/III/A** | **Stage 3 #13 (pure rightful-owner)** |
| 31 | **SOC Reporting** | **ISC** | **ISC/III/B** | **Stage 3 #14 (pure rightful-owner)** |
| 32 | **SOC Testing Controls** | **ISC** | **ISC/III/A** | **Stage 3 #15 (pure rightful-owner)** |
| 33 | **SOC Report Content and Structure** | **ISC** | **ISC/III/B** | **Stage 3 #16 (pure rightful-owner)** |
| 34 | SOC Reporting and Trust Services Criteria | ISC | ISC/III/B | Stage 3 #17 (pure rightful-owner) |
| 35 | **Entity Tax Compliance: NOLs and Consolidated Returns** | **TCP** | **TCP/II/A/1** | **Stage 3 #18 (§382 territory)** |
| 36 | **Internal Controls** | **AUD** | **AUD/II/C** | **Stage 3 #19** |
| 37 | **Tests of Controls** | **AUD** | **AUD/II/E** | **Stage 3 #20** |
| 38 | **Audit Reports** | **AUD** | **AUD/V/B** | **Stage 3 #21** |
| 39 | **Quality Management** | **AUD** | **AUD/I/D** | **Stage 3 #22 (0 cleanup — spec loosening only)** |
| 40 | **Misstatements and Control Deficiencies** | **AUD** | **AUD/III/F** | **Stage 3 #23** |
| 41 | **Individual Taxation: Credits** | **REG** | **REG/IV/C** | **Stage 3 #24** |
| 42 | **Estate and Gift Tax** | **REG** | **REG/IV/E** | **Stage 3 #25 (pure rightful-owner)** |
| 43 | **Stock Compensation and Business Combinations** | **BAR** | **BAR/II/F** | **Stage 3 #26** |

**Authoritative session-wrap docs:**
- `docs/session-log-2026-04-15-stage3-18-26.md` — most recent wave (Stage 3 #18-26, 9 specs, AUD cluster as independent specs)
- `docs/session-log-2026-04-15-soc-cluster.md` — prior wave (Stage 3 #4-17, 14 specs, SOC cluster architecture)
- `docs/session-log-2026-04-14-stage-1-3.md` — the Stage 1 + 2 + 3 first wave session record
- `docs/session-log-2026-04-14-specs-rollout.md` — the rollout wave (specs #8-17)
- `docs/drift-census-2026-04-15.md` — **stale** ranked drift census (81 universal bans at ≥2-spec agreement, computed with 28 specs loaded — re-run as v4 before next wave)
- `docs/drift-census-2026-04-14-v2.md` — previous census (48 universal bans), for historical comparison

## Architectural note: shared base vs. independent specs for clusters

Two clusters have been authored now, with opposite architectural decisions — and both were right for their specific scope structure.

**Shared base — ISC SOC cluster (specs #30-34, prior wave).** `src/lib/topic-specs/_isc-soc-base.ts` exports `SOC_IN_SCOPE`, `SOC_OUT_OF_SCOPE`, `SOC_KEY_STANDARDS`, `SOC_COMMON_MISCONCEPTIONS`, and `SOC_BANNED_TERMS`. Each of the five topic-spec files is ~30 lines and imports the shared base. Works because the 5 SOC topics are 5 focus points on overlapping AICPA territory — loosen once in the base, all cluster topics re-audit clean.

**Independent — AUD process cluster (specs #36-40, this wave).** Kept as five full specs (131–156 lines each) rather than shared-base. Decision rationale documented in `supabase/migrations/01061_aud_cluster_spec_cleanup.sql` header: each topic needed idiosyncratic ban loosening during cleanup. Quality Management loosened `peer review program` (adjacent concept legitimately referenced in QM questions). Audit Reports loosened `AS 3101` and `component auditor` (CAMs at concept level and group-audit reporting presentation are in-scope). Internal Controls, Tests of Controls, and Misstatements kept stricter bans on those same terms. A shared base would have forced every loosening onto all 5 topics, breaking scope isolation.

**Rule:** shared-base when cluster members genuinely share scope; independent when each member has its own legitimate adjacencies. The test: after authoring one ban, ask whether loosening it for one topic should also loosen it for all siblings. If yes → shared base. If no → independent.

## Immediate next task

**Two reasonable options — user leans toward deciding after a census v4 run.**

### Option A: Re-run drift census as v4

```
npx tsx scripts/qa/drift-census.ts --out=docs/drift-census-2026-04-16-v4.md
```

The v3 census was computed with only 28 specs loaded — the universal ≥2-spec ban set has grown significantly since then (15 more specs including the entire AUD process cluster, each with its own bans). Re-running will:

- Expand the universal ban set (probably from 81 to ~120+ terms)
- Re-rank drift percentages across the remaining ~59 unspecced topics
- Either surface new Stage 3 candidates from the thin tail, or confirm that Stage 3 is essentially done

**Cost:** ~1 minute.

### Option B: Jump to Stage 4 regen queue

Stage 4 regen uses spec-constrained orchestrator batches to fill topics below generation target. Biggest deficits:

| Topic | Current | Target | Deficit |
|---|---|---|---|
| Multi-Jurisdictional Tax Planning | 24 | 80 | **56** |
| Passive Activity and At-Risk Rules | 93 | 130 | 37 |
| Entity Choice and Planning | 48 | 80 | 32 |
| Partnerships (REG) | 52 | 80 | 28 |
| Audit Planning | 53 | ~80 | ~27 |
| Materiality | 61 | ~80 | ~19 |
| Owner-Entity Transactions | 74 | 90 | 16 |
| Entity Formation and Liquidation | 86 | ~100 | ~14 |
| Advanced Basis Calculations | 85 | 95 | 10 |
| C Corporations | 71 | 80 | 9 |

Every topic in the queue has a spec authored, so spec-constrained regen can run immediately. Total deficit is ~248 questions, all in specced territory.

**Recommended sequence:** Run census v4 first (cheap), evaluate the tail, then either (a) close any remaining high-signal Stage 3 candidates or (b) switch to Stage 4 and start with TCP Multi-Jurisdictional Tax Planning.

## Stage 3 recipe — author a spec

1. **Pick from ranked list.** Check the spec wasn't already done.
2. **Read the stub.** `src/lib/topic-specs/<section>-<topic>.ts` — the scaffolder has usually created a stub. Note the `blueprintRef` it guessed.
3. **Verify the anchor against AICPA.** `alignment/aicpa-blueprint-tasks.json` — scaffolder mis-anchors frequently. **Six mis-anchors caught this session alone** (Audit Sampling D→C, Using the Work of Others G→F earlier, Multi-Jurisdictional Tax D→B, Entity Formation and Liquidation E→A/2, Individual Deductions B→C, Entity Choice B→A). Grep for the group letter and the task language.
4. **Sample the questions.** `npx tsx scripts/qa/sample-topic.ts --topic="..." --section=<code> --n=15` — understand what the bank actually tests before writing scope.
5. **Read any matching Slayer lesson** if one exists. `src/content/<section>/` by number.
6. **Draft the spec.** Start from a similar existing spec as a template. Fill `inScope`, `outOfScope`, `keyStandards`, `commonMisconceptions`, and `bannedTerms`. Start STRICT with bans and loosen based on false positives.
7. **For multi-topic clusters**, consider the shared base pattern (see ISC SOC for the worked example).
8. **Register in `index.ts`** — import and add to the SPECS record.
9. **Run drift test.** `npm test -- topic-specs`
10. **Run audit.** `npx tsx scripts/qa/audit-topic-content.ts --topic="..." --section=<code>`
11. **Triage and write cleanup migration** if any flags remain. Use `fetch-questions.ts 1234 5678` (space-separated IDs, NOT --ids=) to pull bodies. Expected flag counts after spec authoring: 0-50% of census count depending on rightful-owner fraction.
12. **Validate migration** (`npm run validate-migration <path>`) — enforces citation word + contrast word in every UPDATE.
13. **Apply migration** (`npm run migrate`) — auto-syncs blueprint.ts, verified-ids.json, CLAUDE.md, sync-counts.
14. **Re-audit** to confirm 0 drift.
15. **Drift test again.**

## Stage 4 regen queue

Stage 3 is now substantially complete — the regen queue is duplicated in the "Immediate next task" section above since it's one of the two active options for the next session.

## Re-run the census as you go

`npx tsx scripts/qa/drift-census.ts --out=docs/drift-census-2026-04-XX.md`

Each new spec adds terms to the universal ≥2-agreement set. Re-running after every 3-5 specs is cheap (<1 minute). This session's v3 run (after 11 new specs since v2) surfaced the ISC SOC cluster as a massive hidden drift surface that v2 could barely see (v2 universal ban set didn't have `SOC 1 Type 2` as a ≥2-spec term yet).

## Key observations from this session

1. **The rightful-owner pattern strengthens as specs compound.** 8 of 14 specs closed as pure or near-pure rightful-owner (flags → 0 on authoring). The pattern holds stronger when the new spec's territory is explicitly pushed out by other existing specs' outOfScope commentary.

2. **Generator pre-spec drift is the largest single cleanup source.** The Multi-Jurisdictional Tax cleanup (32 deletes) was a pre-spec generation batch producing content at a depth the 2026 blueprint doesn't test. Similar patterns in Entity Formation and Liquidation (19 partnership mis-tags), Entity Choice (8 S corp mechanics mis-tags), and Audit Planning (8 group audit / materiality mis-tags). Spec-constrained generation prevents this at write time.

3. **Scaffolder mis-anchors are pervasive.** 6 of 14 specs this session had wrong `blueprintRef` on the stub. ALWAYS verify.

4. **Shared scope base modules are a reusable pattern** for topic clusters sharing AICPA territory. See `_isc-soc-base.ts`.

5. **Start STRICT with bannedTerms, loosen based on false positives.** The SOC cluster iterated four times before reaching 0 flags — each loosening was based on a specific false positive that exposed an overly-strict ban (AU-C 402 for user reliance reference, sampling risk for 100% testing, COBIT for framework alignment, AES-256 for encryption testing). Starting strict makes the feedback loop fast.

6. **Census predicts less than the full audit finds.** The census uses the universal ≥2-spec ban set; the per-topic audit uses the new spec's full bannedTerms. Always expect more flags in the audit than the census listed.

## Tooling state

- **`scripts/qa/drift-census.ts`** — Stage 2 census. `--min-agreement=<N>` to change the threshold. Current setting: ≥2.
- **`scripts/qa/sample-topic.ts`** — Sample N question stems from `(section, topic)`. Required before authoring a spec on an unspecced topic.
- **`scripts/qa/audit-topic-content.ts`** — Per-topic audit using the spec's own bannedTerms. The authoritative cleanup target.
- **`scripts/qa/fetch-questions.ts`** — Fetch full question bodies by ID. Usage: `fetch-questions.ts 1234 5678 9012` (space-separated, NOT `--ids=`).
- **`scripts/qa/validate-migration.ts`** — Pre-commit migration validator. Enforces citation + contrast word in rewrites, auto-strips deleted IDs from `verified-ids.json`.
- **`scripts/orchestrate.ps1`** — Batch orchestrator. ClaudeTimeoutMin bumped to 25 in earlier session. Load-bearing for spec-constrained fills.
- **Orchestrator commit bug** — known issue in `scripts/orchestrate.ps1`'s git commit step. Check `git status` after orchestrator runs.

## Commit log

```
11d110e Stage 3 #18-26: 9 specs across TCP/AUD/REG/BAR
2c27507 Session wrap: refresh handoff + write Stage 3 #4-17 session log
f60f93d Stage 3 #4-17: 14 specs across AUD/TCP/REG/ISC, +5 SOC cluster
d07e2d8 Session wrap: refresh handoff doc + write Stage 1-3 session log
208c1f2 Stage 3 #2 + #3: Foreign Currency Transactions + Using the Work of Others
e93b258 Stage 2 + Stage 3 #1: drift census + Advanced Basis Calculations spec
d877414 Stage 1 cleanup: Owner-Entity Transactions + Partnerships specs, 0 drift
```

## When in doubt

- Ask James one item at a time.
- Show the actual numbers, not assertions.
- Stage 3 cadence is 1-5 specs per session depending on size and cleanup tail.
- Re-run the census between waves — the universal ban set evolves.
- The drift test is cheap. Run it after any change to `src/lib/topic-specs/`.
- When a cleanup would delete 30+ questions in one migration, flag it to James before pulling the trigger (session precedent: Multi-Jurisdictional's 32 deletes were confirmed before apply).

---

> *"Every banned term catches on-topic content somewhere — the question is whether that somewhere has a spec."*
