# Session Summary — 2026-03-20 16:07

## Summary

Migrated from old Supabase project (ayhrgcqihukghpyazpoi) to new Supabase project (flfoefqafyqxyrnumacc) under root@slayer-cpa.com. Set up `.env.local` with new keys (sb_publishable/sb_secret format — new Supabase key format, legacy JWT keys rejected by new projects). Applied all 435 migrations to populate the new database (12,282 questions, 96 lessons, 6 sections). Configured Supabase auth (email/password only, no OAuth), URL redirects, and Vercel environment variables. Fixed a pre-existing build error in `generate-pdf-guides.ts`. Verified end-to-end: signup creates user + profile in DB, Stripe webhook endpoint confirmed pointing to correct URL.

## What Changed

### Infrastructure
- **New Supabase project:** `flfoefqafyqxyrnumacc.supabase.co` (was `ayhrgcqihukghpyazpoi.supabase.co`)
- **New key format:** `sb_publishable_` / `sb_secret_` (not legacy JWT `eyJ...` keys)
- **exec_sql RPC + applied_migrations table:** Created manually in SQL Editor before running migrations
- **All 435 migrations applied:** Schema, seed data, 12,282 questions, RLS policies, indexes, RPCs
- **Duplicate stem cleanup:** One REG duplicate removed to allow unique stem index (migration 00442)

### Supabase Auth Configuration
- Site URL: `https://www.slayer-cpa.com`
- Redirect URLs: `https://www.slayer-cpa.com/**` and `http://localhost:3000/**`
- Email provider enabled, no OAuth providers (explicit decision — email/password only)
- Confirm email enabled (but users can log in before confirming — Supabase default)

### Vercel Environment Variables Updated
- `NEXT_PUBLIC_SUPABASE_URL` → `https://flfoefqafyqxyrnumacc.supabase.co`
- `NEXT_PUBLIC_SUPABASE_ANON_KEY` → new sb_publishable key
- `SUPABASE_SERVICE_ROLE_KEY` → new sb_secret key
- All other vars (Stripe, Site URL) unchanged

### Files Changed
- `scripts/generate-pdf-guides.ts` — Fixed `renderToBuffer` ReactElement type cast (pre-existing build error)
- `.env.local` — Created with new Supabase keys + existing Stripe/Vercel keys
- `.env.local.example` — Reverted to placeholder values (was accidentally populated with real keys)

### Stripe
- Webhook endpoint verified: `https://www.slayer-cpa.com/api/webhooks/stripe` (Active, 3 events)
- 100% error rate shown is from previous dead Supabase — will self-heal on next real event
- No Stripe config changes needed

## Verified Working
- Production site loads at slayer-cpa.com
- Signup creates user in Supabase Auth
- `handle_new_user` trigger creates profile row (subscription_status: 'free')
- Confirmation email sent to user
- Build passes on Vercel (green deploy)

## Key Decisions
- **No OAuth** — email/password auth only (user's explicit choice)
- **New Supabase key format** — `sb_publishable_`/`sb_secret_` instead of legacy JWT. supabase-js v2 works with both for REST/auth; legacy JWT keys were rejected by the new project's API gateway
- **Business email ownership** — all production services (Supabase, Stripe, domain) under root@slayer-cpa.com; personal email only as Gmail backup

## Architecture Reference (for next session)

```
User Browser
  ↓ signup/login
Supabase Auth (flfoefqafyqxyrnumacc.supabase.co)
  ↓ trigger: handle_new_user
Supabase Postgres (profiles, questions, quiz_attempts, etc.)
  ↑ reads via anon key (RLS enforced)
  ↑ writes via service_role key (webhooks, migrations)

Stripe Checkout → webhook → /api/webhooks/stripe → service_role → profiles.subscription_status

Vercel (cpa-prep-course) → builds from GitHub master → serves slayer-cpa.com
  env vars: 3 Supabase + 3 Stripe + 1 Site URL
```

## Next Steps
1. Test quiz flow end-to-end (may need active subscription or test with free content)
2. Delete test user from Supabase Auth if desired
3. Continue question generation pipeline against new DB
4. Consider enforcing email confirmation before login (optional)
