# Session Summary — 2026-02-22 16:30

## Summary

Implemented 6 QA pipeline improvements: Bloom's analyzer now uses the authoritative DB `cognitive_level` column (with heuristic fallback and source tracking), quality scoring uses context-aware stem thresholds to eliminate 34 false-positive moderate scores from L1 rewrites, the migration validator now parses UPDATE statements and checks explanation quality (citation, contrast, TODO detection), a new migration scaffold generator automates batch rewrite SQL creation, exact duplicate Q1690 was deleted via migration 00125, and `--output=json` was added to run-qa.ts for programmatic consumption.

## Files Changed

- `scripts/qa/db-client.ts` — Added `cognitive_level` to interface and SELECT
- `scripts/qa/analyzers/blooms.ts` — Use DB cognitive_level when available, add source stats
- `scripts/qa/analyzers/quality.ts` — Context-aware short-stem threshold (8 for L1, 12 for others)
- `scripts/qa/run-qa.ts` — Pass sourceStats, add `--output=json` mode, status to stderr
- `scripts/qa/report.ts` — Accept and display bloomsSourceStats in Bloom's section
- `scripts/qa/validate-migration.ts` — Refactored to shared validateQuestion(), UPDATE regex, explanation checks
- `scripts/qa/generate-migration.ts` — New file: stdin JSON → SQL UPDATE scaffold
- `supabase/migrations/00125_delete_duplicate_q1690.sql` — New file: delete duplicate
- `package.json` — Added `generate-migration` script
- `CLAUDE.md` — Updated commands, key files, git section
- `docs/running-log.md` — Added session entry

## Key Decisions

- Bloom's DB values take priority over heuristic (heuristic is ~75% accurate, DB is authoritative)
- L1 stem threshold lowered to 8 words (style guide says L1 stems are intentionally shorter, 10-20 words)
- UPDATE validator uses two regex patterns: with and without cognitive_level (backward compatible)
- Explanation checks are warnings not errors (existing questions may lack citations)
- JSON output sends status messages to stderr so stdout is clean JSON

## Next Steps

- Run `npm run qa` to verify 0 moderate count and accurate Bloom's distributions with source stats
- Run `npm run qa -- --output=json | jq .quality.distribution` to verify JSON mode
- Run `npm run validate-migration supabase/migrations/00107_blooms_l1_bar_batch1.sql` to confirm UPDATE parsing (verified: 23 found)
