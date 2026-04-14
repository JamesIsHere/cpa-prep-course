# Topic specs — session handoff (2026-04-15, post Stage 3 #4-17)

**Status:** 34 specs live, all at 0 drift. Stage 3 largely complete — fourteen specs closed in a single continuous session covering the last census v2 ranked candidates plus the ISC SOC cluster discovered on a fresh census v3 run. Drift test 176/176. Read this first on a cold pickup.

## State of the world

**Bank state:** 8,642 questions (down 79 from previous session's 8,721). Drift test 176/176 passing. 34 topic specs registered in `src/lib/topic-specs/index.ts` covering ~30% of the bank.

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
| 34 | **SOC Reporting and Trust Services Criteria** | **ISC** | **ISC/III/B** | **Stage 3 #17 (pure rightful-owner)** |

**Authoritative session-wrap docs:**
- `docs/session-log-2026-04-15-soc-cluster.md` — this session's detailed record (Stage 3 #4-17, 14 specs, SOC cluster architecture)
- `docs/session-log-2026-04-14-stage-1-3.md` — the Stage 1 + 2 + 3 first wave session record
- `docs/session-log-2026-04-14-specs-rollout.md` — the rollout wave (specs #8-17)
- `docs/drift-census-2026-04-15.md` — **current** ranked drift census (81 universal bans at ≥2-spec agreement, 28 specs loaded)
- `docs/drift-census-2026-04-14-v2.md` — previous census (48 universal bans), for historical comparison

## Architectural note: shared scope base modules

The ISC SOC cluster (5 topics, specs #30-34) uses a shared base module at `src/lib/topic-specs/_isc-soc-base.ts` exporting `SOC_IN_SCOPE`, `SOC_OUT_OF_SCOPE`, `SOC_KEY_STANDARDS`, `SOC_COMMON_MISCONCEPTIONS`, and `SOC_BANNED_TERMS`. Each of the five topic-spec files is ~30 lines and imports the shared base, with a thin per-topic focus note in the `notes` field.

**When to use this pattern:** multiple DB topic strings that cover the same AICPA territory at different focus points. The shared base eliminates ~1,500 lines of duplication and makes iterative scope-tuning trivial (loosen once in the base → all cluster topics re-audit clean).

**Candidates for this pattern next:** the small AUD cluster (Internal Controls, Tests of Controls, Quality Management, Audit Reports, Misstatements) if they turn out to share substantial scope territory; REG Individual Taxation sub-topics (Income, Deductions, Credits, AMT) if needed.

## Immediate next task

**Author specs for the census v3 remaining candidates.** Ranked list (after filtering out topics already done this session):

| Rank | Topic | Section | Qs | Flagged | % | Top terms |
|---|---|---|---|---|---|---|
| 5 | Entity Tax Compliance: NOLs and Consolidated Returns | TCP | 100 | 14 | 14.0% | `long-term tax-exempt rate` (13); `Section 951A` (1) |
| 8 | Internal Controls | AUD | 64 | 6 | 9.4% | `SOC 1 Type 2` (4); `SQMS 1` (1); `AS 2201` (1) |
| 9 | Tests of Controls | AUD | 64 | 6 | 9.4% | `sampling risk` (3); `SOC 1 Type 2` (2); `tolerable rate of deviation` (1) |
| 10 | Audit Reports | AUD | 38 | 3 | 7.9% | `AS 2201` (2); `component auditor` (1) |
| 11 | Quality Management | AUD | 38 | 3 | 7.9% | `SQMS 1` (3) |
| 12 | Misstatements and Control Deficiencies | AUD | 64 | 5 | 7.8% | `tolerable misstatement` (3); `AS 2201` (2); `sampling risk` (1) |
| 13 | Stock Compensation and Business Combinations | BAR | 52 | 4 | 7.7% | `Black-Scholes` (3); `Monte Carlo simulation` (1) |
| 14 | Individual Taxation: Credits | REG | 67 | 5 | 7.5% | `Section 904` (5) |
| 15 | Estate and Gift Tax | REG | 78 | 5 | 6.4% | `Section 7872` (5) |

**My lean:** **TCP Entity Tax Compliance: NOLs and Consolidated Returns (#5)**. It owns `long-term tax-exempt rate` (§382 limitation base rate) and `Section 951A` — both explicitly banned by the Entity Formation and Restructuring spec (#29) as "§382 mechanics territory, separate NOLs topic." Clean rightful-owner with the biggest single-topic impact remaining. Good size (100 Qs, 14 flags).

**Second lean:** After NOLs, consider the small AUD cluster (#8 Internal Controls, #9 Tests of Controls, #11 Quality Management, #10 Audit Reports, #12 Misstatements) — 5 related AUD process topics that might share enough scope to benefit from a shared-base pattern. Worth evaluating whether they warrant one base module or 5 independent specs.

**Third lean:** Individual Taxation: Credits (#14, §904 FTC limitation — international tax adjacent) and Estate and Gift Tax (#15, §7872 below-market loans).

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

## Stage 4 regen queue (deferred until Stage 3 substantially complete)

Topics below generation target needing spec-constrained regeneration:

| Topic | Section | Current | Target | Deficit |
|---|---|---|---|---|
| Multi-Jurisdictional Tax Planning | TCP | 24 | 80 | 56 |
| Passive Activity and At-Risk Rules | TCP | 93 | 130 | 37 |
| Entity Choice and Planning | TCP | 48 | 80 | 32 |
| Partnerships | REG | 52 | 80 | 28 |
| Audit Planning | AUD | 53 | ~80 | ~27 |
| Materiality | AUD | 61 | ~80 | ~19 |
| Owner-Entity Transactions | TCP | 74 | 90 | 16 |
| Entity Formation and Liquidation | TCP | 86 | ~100 | ~14 |
| Advanced Basis Calculations | TCP | 85 | 95 | 10 |
| C Corporations | REG | 71 | 80 | 9 |

**Defer Stage 4 until Stage 3 is substantially complete.** Plan: close ~3-5 more Stage 3 specs, then Stage 4 regen across the queue using orchestrator batches with spec-constrained prompts.

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

## Commit log for Stage 3 #4-17

```
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
