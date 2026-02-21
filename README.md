# Slayer CPA

Full-scope CPA exam prep for $29.99/month. 96 lessons, 5,000+ practice questions, timed exams, and downloadable study frameworks across all 6 CPA sections.

**Live:** [slayer-cpa.com](https://www.slayer-cpa.com)

## Sections

| Section | Code | Lessons | Questions | Topics |
|---------|------|---------|-----------|--------|
| Auditing and Attestation | AUD | 13 | ~210 | Ethics, planning, risk, controls, evidence, sampling, reports |
| Financial Accounting and Reporting | FAR | 18 | ~250 | Revenue, leases, bonds, equity, govt, NFP, consolidations |
| Regulation | REG | 18 | ~250 | Contracts, business structures, individual/entity tax, procedures |
| Business Analysis and Reporting | BAR | 16 | ~195 | Valuation, capital structure, derivatives, govt reporting |
| Information Systems and Controls | ISC | 16 | ~190 | IT infrastructure, security, privacy, SOC engagements |
| Tax Compliance and Planning | TCP | 15 | ~180 | Individual/entity planning, wealth transfer, international tax |

## Features

- Lesson content in MDX with exam tips and practice problems
- Quiz engine with randomized questions, scoring, and per-question review
- Timed practice exams with question flagging and navigation grid
- Downloadable PDF study frameworks (concept maps, decision trees, mnemonics, formulas)
- AICPA Blueprint coverage mapping across all 280 framework items
- Stripe-powered subscription with customer portal
- Free intro lessons for every section (no account required)

## Tech Stack

| Layer | Technology |
|-------|------------|
| Framework | Next.js 16 (App Router) |
| UI | React 19 + Tailwind CSS v4 |
| Auth + DB | Supabase (Auth + Postgres + RLS) |
| Payments | Stripe Checkout + Customer Portal |
| Content | MDX files in `src/content/` |
| Hosting | Vercel |

## Development

```bash
npm install
npm run dev          # Start dev server
npm run build        # Production build
npm test             # Vitest unit tests
npm run test:e2e     # Playwright e2e tests
npm run lint         # ESLint
```

### Environment Variables

Copy `.env.local.example` to `.env.local` and fill in:

- `NEXT_PUBLIC_SUPABASE_URL` — Supabase project URL
- `NEXT_PUBLIC_SUPABASE_ANON_KEY` — Supabase anonymous key
- `SUPABASE_SERVICE_ROLE_KEY` — Supabase service role key (server-side only)
- `STRIPE_SECRET_KEY` — Stripe secret key
- `STRIPE_WEBHOOK_SECRET` — Stripe webhook signing secret
- `STRIPE_PRICE_ID` — Stripe price ID for the $29.99/mo plan
- `NEXT_PUBLIC_SITE_URL` — Site URL for redirects

## Project Structure

```
src/
  app/           Routes (App Router)
  components/    React components
  content/       MDX lesson files (96 across 6 sections)
  lib/           Data layer, utilities, study frameworks
tests/
  unit/          Vitest (94 tests)
  e2e/           Playwright (152 tests)
supabase/
  migrations/    22 SQL migrations (schema + seed data)
```

## License

Private. All rights reserved.
