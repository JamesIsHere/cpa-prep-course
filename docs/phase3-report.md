# Phase 3 Adversarial Re-Solve Report

Generated: 2026-04-14T05:37:51.681Z

## Summary

| Metric | Value |
|--------|------:|
| Sample size (verdicts logged) | 400 |
| Verifier matched keyed answer | 387 |
| Verifier disagreed with keyed answer | 13 |
| Verifier marked uncertain | 0 |
| Errors / parse failures | 0 |
| Resolved (match + mismatch) | 400 |

## Estimated miss rate (Mode B) — questions where the verifier disagrees with the keyed answer

- Point estimate: **3.69%**
- 95% Wilson CI: **1.91% — 5.48%**

Caveat: this is the disagreement rate, not the true error rate. Each disagreement still needs human adjudication to determine whether the verifier was right (real error in the bank), the keyed answer was right (verifier hallucination), or both are defensible (ambiguous question). The true error rate is bounded above by the disagreement rate point estimate.

## Per-section breakdown

| Section | Total | Match | Mismatch | Uncertain | Error | Match rate |
|---------|------:|------:|---------:|----------:|------:|-----------:|
| AUD | 65 | 64 | 1 | 0 | 0 | 98.5% |
| FAR | 71 | 71 | 0 | 0 | 0 | 100.0% |
| REG | 65 | 61 | 4 | 0 | 0 | 93.8% |
| BAR | 69 | 65 | 4 | 0 | 0 | 94.2% |
| ISC | 66 | 66 | 0 | 0 | 0 | 100.0% |
| TCP | 64 | 60 | 4 | 0 | 0 | 93.8% |
| **TOTAL** | **400** | **387** | **13** | **0** | **0** | **96.8%** |

## Disagreements

13 disagreements written to `docs/phase3-disagreements.json` for human adjudication. Walk each one to classify as (true error / verifier wrong / ambiguous).

### Disagreement IDs by section

- **AUD** (1): 4442
- **REG** (4): 2674, 10757, 13060, 13177
- **BAR** (4): 1202, 14741, 14953, 15053
- **TCP** (4): 4037, 4077, 7778, 14081

## Files

- Verdicts (raw, append-only): `docs/phase3-verdicts.jsonl`
- Disagreements (with full context): `docs/phase3-disagreements.json`
- This report: `docs/phase3-report.md`
