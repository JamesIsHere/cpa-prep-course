# Topic-specs pilot — session handoff (2026-04-14)

This is the resume point for the topic-specs pilot work. Read this first if you're picking
up the work in a fresh Claude Code session.

## Where we are

**Bank state:** 8,832 questions, 100% in `verified-ids.json` pass, 0 fail/review/stale.

**True bank error rate (Phase 3 adversarial sample):** 0.75% with 95% Wilson CI of
0.16% — 2.18%. See `docs/phase3-report.md` for the full Phase 3 results and
`docs/phase3-disagreements.json` for the 13 adjudicated disagreements.

**Topic-specs pilot:** 1 of 5 specs written. Format locked. Drift-prevention test passing.

## Why this matters

The biggest finding from the multi-session trust audit is that the AICPA Blueprint is
**deliberately vague at the level of "what depth is testable per topic."** The question
generator drifted into graduate econometrics in BAR / Prospective Analysis (20 questions
deleted in `01024`) precisely because no constraint existed at the right level.

Established CPA prep shops compensate with (a) released past-exam questions, (b)
institutional editorial knowledge, (c) recent-passer SME review. Slayer doesn't have any
of these structural advantages yet. **Topic specs are the structural fix.** Without them
the generator will keep producing off-blueprint or content-misplaced questions at ~5% per
batch.

## What's done

```
src/lib/topic-specs/
  ├── types.ts                                              ← TopicSpec interface
  ├── blueprint-task-resolver.ts                            ← AICPA JSON path resolver
  ├── index.ts                                              ← barrel + getTopicSpec()
  └── bar-prospective-analysis-and-forecasting.ts           ← FIRST CONCRETE SPEC
                                                              (read this for format)

tests/unit/topic-specs.test.ts                              ← drift-prevention test
                                                              (passing 10/10)

scripts/qa/audit-topic-orphans.ts                           ← supporting audit script
docs/trust-audit-topic-orphans.json                         ← orphan check output
```

The format is locked. The drift-prevention test enforces:
1. Every spec's `topic` exists in some `questionTopics[]` array in `blueprint.ts`
2. Every spec's `blueprintRef` resolves in `alignment/aicpa-blueprint-tasks.json`
3. `section` field matches the `blueprintRef` section prefix
4. `inScope` and `outOfScope` are non-empty with non-trivial items

Run `npx vitest run tests/unit/topic-specs.test.ts` to verify the scaffold.

## Critical architectural facts

**`blueprint.ts` and `aicpa-blueprint-tasks.json` STRUCTURALLY DIVERGE at the group level.**
For example, AICPA puts "Budgeting, forecasting and projection" at `BAR/I/B/1` (its own
group), but `blueprint.ts` folds it into `bar.1.A` alongside "Financial statement analysis."
**Specs treat this as the canonical case** — the `topic` field anchors to Slayer's tagging
vocabulary, the `blueprintRef` field anchors to AICPA's path; both are validated
independently against their own sources of truth.

**Don't anchor specs to `blueprint.ts` internal IDs** like `bar.1.A.2`. Use the AICPA JSON
path format `<SECTION>/<AREA>/<GROUP>/<TOPIC_NUMBER>` like `BAR/I/B/1`.

**Don't duplicate AICPA representative task text in specs.** Reference the JSON via
`blueprintRef` and let `blueprint-task-resolver.ts` pull the canonical text and skill levels
at runtime.

## Pre-flight diligence already done

These checks ran clean and don't need to be re-run unless the data changes:

- 130 distinct topics in `blueprint.ts` ↔ 130 in live DB → 0 orphans
- 0 cross-section drift between question section and blueprint section
- 0 cross-section lesson references in `blueprint.ts`
- 0 cross-section lesson references in `alignment/csv/aicpa-far-blueprint-mapping.csv`

Topic hygiene is perfect. The architecture decision was free of orphan-handling
complications.

## What to do next

### Step 1 — Read the existing pilot spec

Open `src/lib/topic-specs/bar-prospective-analysis-and-forecasting.ts` and read it end to
end. This is the format anchor for all other specs. Note especially:
- 14 in-scope items at "what the candidate does" granularity
- 18 out-of-scope items written as concrete drift patterns
- 8 common misconceptions tied to wrong-answer testing
- The `notes` field with editorial context from the audit that motivated this spec

### Step 2 — Draft 4 more pilot specs

Topics agreed with James, in suggested write order:

1. **`bar-financial-valuation-methods.ts`** — DCF, Black-Scholes, options, real options,
   EV/EBITDA, WACC. Most quantitative-heavy BAR topic. Drift risk: option Greeks (vega,
   delta, gamma, theta, rho) by name, lattice models beyond conceptual mention,
   stochastic processes. The Q14268 audit earlier today hit this topic with a "vega"
   reference that we kept as borderline-acceptable; the spec should make that explicit.

2. **`bar-derivatives-and-hedging.ts`** — ASC 815 hedge accounting. Drift risk:
   effectiveness regression methodologies, dollar-offset method beyond conceptual,
   advanced hypothetical derivative testing.

3. **`tcp-international-tax.ts`** — GILTI, FDII, BEAT, transfer pricing, treaty
   interpretation. Drift risk: bilateral treaty network analysis, advanced transfer
   pricing methods (CUP / TNMM at depth), formal arm's-length testing.

4. **`reg-s-corporations.ts`** — narrow exception webs (PTTP, AAA freezing,
   two-class-of-stock, built-in gains tax). Q15795 from the orchestrator re-verify
   batch was here — PTTP framing.

5. **(Optional 5th) `aud-substantive-procedures.ts`** — defensive pick. Drift risk:
   formal statistical sampling theory beyond CPA depth (PPS sampling math,
   classical variables sampling derivations).

For each spec:
- Author `topic`, `section`, `blueprintRef` (look up in the JSON via grep first)
- Write `inScope[]` (12-18 items typical)
- Write `outOfScope[]` (15-25 items typical, more if the topic has many drift surfaces)
- Write `keyStandards[]` (the citation roots expected in correct-answer explanations)
- Write `commonMisconceptions[]` (6-12 items)
- Write `notes` (editorial context, especially any audit findings that motivated specific
  in/out-of-scope items)
- Register in `src/lib/topic-specs/index.ts`
- Run `npx vitest run tests/unit/topic-specs.test.ts` to verify

### Step 3 — Commit the pilot

After all 5 specs are registered and the test passes, commit as a single unit. Commit
message should include the structural rationale (why specs at all) and the per-topic
drift surfaces each spec addresses.

### Step 4 — Wire specs into the generator prompt

This is the structural fix that pays for the pilot. Modify `scripts/orchestrate.ps1`
generate-mode prompt (around line 600+) to:
1. Look up the topic spec via `getTopicSpec(topic)`
2. If a spec exists, inject `inScope[]` and `outOfScope[]` into the prompt as hard
   constraints with explicit instructions ("you may only test concepts in the in-scope
   list; you may NOT test any concept in the out-of-scope list — validate-migration will
   reject your batch if you do")
3. Optionally: also inject `commonMisconceptions[]` as guidance for distractor design

After wiring, generate one new test batch in a topic with a spec and verify the constraints
work end-to-end.

### Step 5 — Scale to all 130 topics

Once the pilot proves the format, scaling to all 130 is incremental work — one or two
specs per session over many sessions. Prioritize topics with quantitative content
(BAR Risk Management, BAR Capital Structure, FAR Fair Value Measurements) and topics
with narrow exception webs (REG individual taxation subtopics).

## Things to watch

- **Don't add a `blueprintTaskText[]` field back to the spec.** It was in the first draft
  and was dropped because it duplicates `aicpa-blueprint-tasks.json`. Use the resolver.
- **Don't anchor `blueprintRef` to `blueprint.ts` internal IDs.** Use AICPA JSON paths.
- **The orchestrator runs OUTSIDE Claude Code in PowerShell.** Don't try to run
  `scripts/orchestrate.ps1` from within a Claude Code session — it spawns nested
  `claude --print` invocations and James runs it manually in a separate terminal.
- **`docs/verified-ids.json.pre-reconcile.bak` and `docs/verified-ids.json.pre-unverify.bak`**
  are James's safety backups left untracked. Do not commit them.

## Recent commit log for context

```
0353874 Phase 3 cleanup + topic-specs pilot scaffold     ← STARTING POINT
bff37c2 Phase 3 toolkit: adversarial re-solve sampler, verifier driver, and report
73bf6b6 Generator root cause + off-blueprint cleanup + upstream patches
5669239 Phase 2 trust audit: coupling fix + 23 question corrections
```

The 4 commits above represent the full trust-audit arc from this multi-session work. Read
their commit messages for the "why" behind the current state.

## When in doubt

Ask James one item at a time. Show the actual numbers. Default to delete over rewrite
when off-blueprint. Prefer simpler reframings to elaborate ones. He's the CPA exam expert;
flag any rule-of-thumb claims for his verification.
