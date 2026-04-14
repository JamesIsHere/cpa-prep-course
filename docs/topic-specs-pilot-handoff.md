# Topic specs — session handoff (2026-04-14, post Stage 1 + Stage 2 + Stage 3 first wave)

**Status:** 20 specs live, all at 0 drift. Stage 1 closed (backlog topics cleaned). Stage 2 infrastructure built and census run twice. Stage 3 underway — 3 of ~10-12 specs done. Drift test 106/106. Read this first on a cold pickup.

## State of the world

**Bank state:** 8,721 questions. Drift test 106/106 passing. 20 topic specs registered in `src/lib/topic-specs/index.ts` covering ~16% of the bank.

**Authored specs (20):**

| # | Topic | Section | Anchor | Authored |
|---|---|---|---|---|
| 1 | Prospective Analysis and Forecasting | BAR | BAR/I/B/1 | pilot wave |
| 2 | Financial Valuation Methods | BAR | BAR/I/B/3 | pilot wave |
| 3 | Derivatives and Hedging | BAR | BAR/II/H/0 | pilot wave |
| 4 | International Tax | TCP | TCP/II/A/4 | pilot wave |
| 5 | S Corporations | REG | REG/V/C | pilot wave |
| 6 | Capital Structure and Valuation | BAR | BAR/I/B/2 | pilot wave |
| 7 | Risk Management and Economics | BAR | BAR/I/B/4 | pilot wave |
| 8 | Fair Value | FAR | FAR/III/E/0 | rollout wave |
| 9 | C Corporations | REG | REG/V/B | rollout wave |
| 10 | Owner-Entity Transactions | TCP | TCP/IV/C | rollout wave (cleanup Stage 1) |
| 11 | Financial Statement Analysis | BAR | BAR/I/A/1 | rollout wave |
| 12 | Partnerships | REG | REG/V/D | rollout wave (cleanup Stage 1) |
| 13 | Passive Activity and At-Risk Rules | TCP | TCP/I/B/0 | rollout wave |
| 14 | Leases | FAR | FAR/III/F/0 | rollout wave |
| 15 | Business Combinations | BAR | BAR/II/F/0 | rollout wave |
| 16 | Audit Evidence | AUD | AUD/III/B | rollout wave |
| 17 | Risk Assessment | AUD | AUD/II/E/0 | rollout wave |
| 18 | **Advanced Basis Calculations** | **TCP** | **TCP/II/C** | **Stage 3 #1** |
| 19 | **Foreign Currency Transactions** | **BAR** | **BAR/II/G** | **Stage 3 #2 (clean on authoring)** |
| 20 | **Using the Work of Others** | **AUD** | **AUD/II/F** | **Stage 3 #3** |

**Authoritative session-wrap docs:**
- `docs/session-log-2026-04-14-stage-1-3.md` — this session's detailed record (Stage 1 + 2 + 3 first wave)
- `docs/session-log-2026-04-14-specs-rollout.md` — the prior rollout wave session record
- `docs/drift-census-2026-04-14-v2.md` — current ranked drift census (48 universal bans at ≥2-spec agreement)

## Immediate next task

**Author the next Stage 3 spec from the census v2 ranked list.** The working priority list (after filtering out the 3 we already did):

| Rank | Topic | Section | Qs | Flagged | % | Top terms hit |
|------|---------|-------|----|---------|---|---------------|
| #3 | Audit Sampling | AUD | 52 | 23 | 44% | `tolerable misstatement` (13); `attribute sampling` (10) |
| #2 | Capital Structure Tax Planning | TCP | 52 | 26 | 50% | `Section 163(j)` (26) |
| #7 | Entity Formation and Liquidation | TCP | 105 | 14 | 13% | `unrealized receivable` (5); `Section 752` (4); `Section 736` (3) |
| #5 | Entity Choice and Planning | TCP | 56 | 15 | 27% | `Section 199A` (6); `qualified business income` (6); `Section 704(b)` (4) |
| #6 | Audit Planning | AUD | 61 | 9 | 15% | `component auditor` (8); `tolerable misstatement` (1) |
| #8 | Individual Taxation: Deductions | REG | 64 | 8 | 13% | `qualified business income` (8); `Section 199A` (7) |
| #9 | Multi-Jurisdictional Tax Planning | TCP | 56 | 7 | 13% | `Section 482` (7); `transfer pricing` (6) |
| #10 | Materiality | AUD | 64 | 5 | 8% | `tolerable misstatement` (3); `component auditor` (2) |

**My lean:** **AUD Audit Sampling (#3)**. It is a clean rightful-owner for sampling theory. The two top banned terms (`tolerable misstatement`, `attribute sampling`) are squarely on-topic for a sampling spec, so most of the 23 flags should whitelist on spec authoring alone. Size (52 Qs) makes it a quick close.

**Alternative:** **TCP Capital Structure Tax Planning (#2)** is larger-impact (26 flags) but more ambiguous — Section 163(j) business interest limitation is a borderline call between "belongs here" and "belongs to a 163(j)-specific topic or expense limitation topic." Requires a scope judgment call before authoring.

**Entity Formation and Liquidation (#7)** is the new v2 discovery (invisible on v1). Largest topic (105 Qs) and mixed drift — probably a rightful owner for partnership formation mechanics but with some sale-of-interest drift. Save for later in Stage 3.

## Stage 3 recipe — author a spec

1. **Pick from ranked list.** Check the spec wasn't already done.
2. **Read the stub.** `src/lib/topic-specs/<section>-<topic>.ts` — the scaffolder has usually created a stub. Note the `blueprintRef` it guessed.
3. **Verify the anchor against AICPA.** `alignment/aicpa-blueprint-tasks.json` — scaffolder mis-anchors frequently. Every spec this session needed correction. Grep for the group letter and the task language.
4. **Sample the questions.** `npx tsx scripts/qa/sample-topic.ts --topic="..." --section=<code> --n=15` — understand what the bank actually tests before writing scope.
5. **Read any matching Slayer lesson** if one exists. `src/content/<section>/` by number.
6. **Draft the spec.** Start from a similar existing spec as a template. Fill `inScope`, `outOfScope`, `keyStandards`, `commonMisconceptions`, and `bannedTerms`.
7. **Register in `index.ts`** — import and add to the SPECS record.
8. **Run drift test.** `npm test -- topic-specs`
9. **Run audit.** `npx tsx scripts/qa/audit-topic-content.ts --topic="..." --section=<code>`
10. **Triage and write cleanup migration** if any flags remain. Use `fetch-questions.ts` to pull bodies. Expected flag counts after spec authoring alone: 0-50% of the census count, depending on how many were rightful-owner false positives.
11. **Validate migration** (`npm run validate-migration <path>`) — will enforce IRC/Section/ASC/AU-C citation word + contrast word (`while`/`whereas`/`however`/`rather than`/`unlike`/`in contrast`) in every UPDATE.
12. **Apply migration** (`npm run migrate`) — auto-syncs blueprint.ts, verified-ids.json, CLAUDE.md.
13. **Re-audit** to confirm 0 drift.
14. **Drift test again.**

## Stage 4 regen queue

Topics currently below their generation targets that need spec-constrained regeneration:

| Topic | Section | Current | Target | Deficit |
|---|---|---|---|---|
| Owner-Entity Transactions | TCP | 74 | ~90-100 | ~15-25 |
| Partnerships | REG | 52 | ~80 | ~30 |
| Advanced Basis Calculations | TCP | 85 | ~95 | ~10 |
| Passive Activity and At-Risk Rules | TCP | 93 | ~130 | ~35 |
| C Corporations | REG | 71 | ~80 | ~10 |

**Defer Stage 4 until Stage 3 is substantially complete** — no point regenerating topics whose specs may still be evolving. Run a sweep of orchestrator batches against all cleaned topics after the Stage 3 wave lands.

## Re-run the census as you go

`npx tsx scripts/qa/drift-census.ts --out=docs/drift-census-2026-04-XX.md`

Each new spec adds terms to the universal ≥2-agreement set. Re-running after every 3-5 specs is cheap (<1 minute) and can surface drift that was invisible on prior runs. The v1 → v2 re-run this session discovered Entity Formation and Liquidation at #7.

## Key observations from this session

1. **The rightful-owner pattern is strong.** Spec authoring alone — before any cleanup migration — whitelisted 46% of census flags on average across the 3 Stage 3 specs (Advanced Basis, Foreign Currency, Work of Others). Foreign Currency was 100% rightful owner (0 flags after authoring). Use this as the expected pattern when picking a rightful-owner candidate.

2. **Scaffolder `blueprintRef` is often wrong.** Every spec I authored this session had the wrong group letter on the stub. Always verify against `alignment/aicpa-blueprint-tasks.json` before writing.

3. **Hybrid topics span groups.** Advanced Basis Calculations is anchored at group-level TCP/II/C with explicit cross-references to TCP/II/B/1 (S corp basis). This is the same hybrid pattern as C Corporations, Partnerships, and Owner-Entity Transactions. Group-level anchoring is fine when the topic legitimately spans multiple AICPA groups.

4. **Citation + contrast validator requirements** — every UPDATE in a cleanup migration must have both an "IRC"/"Section"/"ASC"/"AU-C"/etc. word and a contrast word. Cleanest fix is to add "IRC" as a generic citation and use "rather than" / "whereas" / "unlike" for contrast.

5. **Census output interpretation:** top-ranked topics are often "rightful owners" rather than "drifted content." Authoring their spec whitelists most flags. Genuine drift is typically lower on the rank list and distributed across multiple banned terms.

## Tooling state (don't forget)

- **`scripts/qa/drift-census.ts`** — Stage 2 census, built this session. `--min-agreement=<N>` to change the threshold.
- **`scripts/qa/sample-topic.ts`** — sample N question stems from `(section, topic)`. Required before authoring a spec on a topic without a registered spec (the audit script needs a spec).
- **`scripts/orchestrate.ps1`** — ClaudeTimeoutMin was bumped from 15 to 25 in the prior session. Load-bearing for spec-constrained fills.
- **Orchestrator commit bug** — known issue in the git commit step of `scripts/orchestrate.ps1`. If you run the orchestrator and see "Commit <hash>" lines all showing the same hash, check `git status` — the commits may not have landed. Tracked but not fixed.
- **Validator** `scripts/qa/validate-migration.ts` — auto-strips deleted IDs from `verified-ids.json` and blocks banned-term violations. Trustworthy.
- **Audit tool** `scripts/qa/audit-topic-content.ts` — reads the spec's bannedTerms inline. Accurate.

## Commit log for Stage 1 + 2 + 3 first wave

```
208c1f2 Stage 3 #2 + #3: Foreign Currency Transactions + Using the Work of Others
e93b258 Stage 2 + Stage 3 #1: drift census + Advanced Basis Calculations spec
d877414 Stage 1 cleanup: Owner-Entity Transactions + Partnerships specs, 0 drift
67578d8 Refresh topic-specs handoff doc for post-rollout-wave cold pickup (prior wave)
```

Read any of these commit messages for the "why" behind each step.

## When in doubt

- Ask James one item at a time.
- Show the actual numbers, not assertions.
- Stage 3 cadence is 1-2 specs per session. Don't rush.
- Re-run the census between specs — the universal ban set evolves.
- The drift test is cheap. Run it after any change to `src/lib/topic-specs/`.

---

> *"Every banned term catches on-topic content somewhere — the question is whether that somewhere has a spec."*
