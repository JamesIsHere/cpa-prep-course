# Session log — 2026-04-20

Continued from 2026-04-19 evening session. Focus: acceptance decisions, Phase 1E pinning across all sections, hygiene pass, queue retirement.

## State at session start

- AUD 79.1%, ISC 60.7%, FAR "97.3%" (inflated), BAR 58.8%, TCP 52.9%, REG 41.2%
- Routing-first lens had revealed three distinct section failure modes
- REG/BAR accepted at current rates (no further routing)
- Discrepancy queue: 7 open items (some from Wave B era)

## Major commits

| Commit   | Subject                                                                 |
|----------|-------------------------------------------------------------------------|
| `8c44c29`| Phase 1E: pin FAR questions to DB (1414/1539 = 91.9%) + 4 new tools     |
| `16a546c`| PROJECT_STATE: correct FAR figure to 91.9% + record Phase 1E completion |
| `296952b`| Phase 1E: pin remaining 5 sections (AUD/BAR/ISC/REG/TCP) to DB          |
| `0606dff`| PROJECT_STATE: Phase 1E complete for all 6 sections (65.4% pinned)      |
| `f03f44b`| Hygiene pass: dedup classify-*.json, gitignore partials, SKILL_TO_BLOOM fix, lint clean |
| `f2e19a0`| Queue #11: verify 154 previously-unverified questions (100% verdict coverage) |
| `15a4d5c`| Queue #12: fix 3 TCP review questions → bank at 100% pass               |
| `447af8a`| PROJECT_STATE: bank at 100% verify-correctness pass                     |
| `6d36f33`| Queue #9: clean up 5 phantom applied_migrations rows (ledger in sync)   |
| `cc4788c`| PROJECT_STATE: scope-close queue #4 and #5, refresh verification log    |

10 commits total.

## Key findings

### 1. FAR "97.3%" was inflated

Memory claimed FAR at 97.3% match but classify-far.json only had 1000/1539 classified (65%). Ran classifier on the 539 unclassified — 509 matched / 30 homeless (94.4% conversion) — and merged. True FAR figure: **91.9%** (1414/1539 matched, 125 homeless). PROJECT_STATE and memory corrected.

### 2. Phase 1E completed across all 6 sections

Migrations 01066-01071 applied. Bank-wide state: **5,629 / 8,612 = 65.4% pinned** across 460 unique pin_refs. Per-section: FAR 1414/1539, AUD 1127/1424, ISC 882/1452, BAR 903/1509, TCP 711/1291, REG 592/1397. All verified via `scripts/qa/verify-pins.ts` (DB exactly matches deduped classifier suggestions).

### 3. Wave B "L1 overshoot" finding REVERSED

The `SKILL_TO_BLOOM` bug in `scripts/qa/audit-task-coverage.ts` mapped `"Remembering"` and `"Understanding"` as separate keys, but AICPA JSON uses `"Remembering and Understanding"` as a single literal. Every L1 AICPA task was silently miscategorized as L2 via the `?? 2` fallback. Fixed 2026-04-20. Re-run showed:

| Section | AICPA L1 (corrected) | Bank L1 actual |
|---------|---------------------|----------------|
| AUD     | 46%                 | 32%            |
| BAR     | 35%                 | 32%            |
| FAR     | 25%                 | 21%            |
| ISC     | 59%                 | 39%            |
| REG     | 33%                 | 29%            |
| TCP     | 28%                 | 20%            |

AICPA has substantial L1 content (25-59% per section). The bank is close to or slightly UNDER target. The "2,500 excess L1 questions need re-leveling" rationale for task-driven rearchitecture is void. ISC is notably under-L1 by 20 points — if anything, the direction is opposite.

### 4. Bank at 100% verify-correctness pass

Ran verify-correctness.ts on 154 previously-unverified recent additions (30 REG + 26 BAR + 98 TCP). Result: 151 pass, 0 fail, 3 TCP flagged review. Fixed the 3 review questions via migration 01072:
- Q15956 (International Tax): reframed stem from pre-TCJA to post-TCJA §863(b) and rekeyed A→B
- Q15992 (Entity Formation §351): rekeyed A→B (both notes are boot under §354 5+ year threshold)
- Q15993 (Entity Formation §362(e)(2)): corrected stem arithmetic ($150K → $250K basis) and expanded explanation

Re-verify confirmed all 3 now pass. Bank state: **8,612 pass / 0 review / 0 fail.**

### 5. Migration ledger cleaned

5 phantom `applied_migrations` rows identified (1058 applied / 1053 on disk). Traced to commit `d6da50c` (2026-03-28): 3 unfilled scaffolds were deleted from disk + 2 renumbered migrations left their old rows behind. Migration 01073 deletes the 5 phantom rows. Ledger now in sync (1054/1054).

## Discrepancy queue state at session end

| # | Item | Status |
|---|------|--------|
| 1 | ~~Blueprint coordinate systems~~ | Closed 2026-04-15 |
| 2 | ~~87 scaffolder stubs~~ | Closed 2026-04-15 |
| 3 | ~~ISC 791 unrouted~~ | Closed 2026-04-19 (mis-diagnosed — fixed via ISC routing iter-1+2) |
| 4 | ~~REG Individual Tax proliferation~~ | Scope-closed 2026-04-20 (REG accepted; would be part of future content rewrite) |
| 5 | ~~4 slash-named mixed-content topics~~ | Scope-closed 2026-04-20 (2 are legitimate AICPA naming; 2 covered under #4) |
| 6 | ~~~2,500 L1 overshoot~~ | REVERSED 2026-04-20 via SKILL_TO_BLOOM bug fix — was never real |
| 7 | ~~Lint errors~~ | Closed 2026-04-15, re-verified clean 2026-04-20 |
| 8 | ~~Untracked files~~ | Closed 2026-04-15 + partials gitignored 2026-04-20 |
| 9 | ~~Migration ledger 5-delta~~ | Closed 2026-04-20 via migration 01073 |
| 10 | Topic-specs vs task-specs dual-tracking | Open — architectural, tied to rearchitecture decision |
| 11 | ~~143 unverified questions~~ | Closed 2026-04-20 (100% verdict coverage) |
| 12 | ~~3 TCP review questions~~ | Closed 2026-04-20 via migration 01072 |

**Only #10 remains open**, and it's architectural rather than actionable cleanup.

## Bank state at session end

- **8,612 questions**
- **100% pass verify-correctness** (0 review, 0 fail)
- **65.4% pinned** to classifier-suggested pin_ref via Direction W Phase 1E
- **100% verdict coverage** in verified-ids.json
- **Migration ledger in sync** (1054 on-disk = 1054 applied)
- **Lint clean** (0 errors, 0 warnings)

Match rates: FAR 91.9%, AUD 79.1%, ISC 60.7%, BAR 59.8%, TCP 55.0%, REG 42.4%. Direction W thesis "uniform 95%+ match" no longer applies — three distinct section failure modes require different treatments documented in `memory/feedback_routing_patterns_per_section.md`.

## Remaining paths forward

1. **Direction W Phase 1F** — Quiz engine `pin_ref IS NOT NULL` filter, task-level coverage analysis (the actual downstream use of pinning).
2. **REG/BAR content-level work** — rewrite ~300 off-blueprint REG questions + reassign ~186 BAR questions to FAR (or accept). Multi-week project, deferred.
3. **AUD/ISC under-specced task-spec authoring** — IV/D, III/G in AUD; II/A residual in ISC. Moderate lift.
4. **Task-rearchitecture decision** — now that Wave B L1 finding is voided, one major pillar of the rearchitecture argument is gone. The remaining signals (distribution unevenness, section-level pattern diversity) are weaker rationale. Decision can be revisited.
