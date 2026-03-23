# Session Log — 2026-03-22/23

## What was done

### Admin Hub (major feature)
- Built `/admin` hub with sidebar layout (Hub, Browse, Review, Flags, Users)
- Admin gate page (`/admin-gate`) — binary fork after login: "Review Questions" or "Study Mode"
- Hub landing page with per-section progress bars, today's session count, flag summary, quick resume
- Blueprint browse page (`/admin/review/browse`) — drill down Area → Group → Topic with reviewed/total counts
- Flag dashboard (`/admin/flags`) — filterable list, resolve with notes, click-through to review
- User management (`/admin/users`) — email, signup date, last login, subscription status, quiz/exam counts
- Resume cursor — auto-saves position per section, persists across browser restarts
- Explicit "Mark Reviewed" button — reveal no longer auto-marks
- Freeform notes on review cards with debounced auto-save
- Migration 00451: `admin_review_cursors` table, `question_reviews.notes`, `question_flags.resolution_notes`

### Review Card UX
- Structured explanation rendering — parses "Correct (X):" / "Wrong (X):" into separate colored cards
- Green card for correct answer, gray cards for wrong answers
- Strips "is wrong because" prefix, capitalizes first letter
- Falls back to plain text for unstructured explanations

### FAR-Only Mode
- `NEXT_PUBLIC_ACTIVE_SECTIONS=far` env var filters sections across entire app
- One line change to unlock more sections later
- Admin hub unaffected (queries DB directly)

### Pipeline Diagram
- Interactive HTML at `docs/question-pipeline.html`
- 10 stages from Planning through Deploy, click to expand
- Stats, validation checks, QA scoring, rebalancing passes, orchestrator modes

### FAR Cleanup Pipeline (ready, not yet run)
- Audited FAR: 955/1000 questions need cleanup
- 925 unstructured explanations, 316 missing citations, 736 missing contrast, 146 choice cuing, 80 null cognitive_level
- Built `scripts/qa/select-cleanup-candidates.ts` — prioritizes worst-first
- Test run: 5 questions in 34 seconds, validated successfully
- Full run estimate: ~2 hours (19 batches of 50)
- Next: wire into orchestrate.ps1 as cleanup mode

### Infrastructure
- Root admin account: root@slayer-cpa.com
- `ADMIN_USER_ID` + `NEXT_PUBLIC_ADMIN_USER_ID` env vars
- Middleware redirects admin to gate on login

## Commits
- `4b4f9bc` Add admin question review panel (from prior session, committed this session)
- `cf7d7ee` Build admin hub with sidebar, gate, browse, flags, users, and review upgrades

## Next session priorities
1. Wire cleanup mode into orchestrate.ps1 and run FAR cleanup (~2 hours)
2. Start reviewing FAR questions through the admin panel
3. Continue UI fixes as encountered during review
