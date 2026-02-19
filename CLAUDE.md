# CPA Prep Course

Full-scope CPA exam prep website — lessons, quizzes, practice exams, and study frameworks for $9.99/month.

## Tech Stack

| Layer      | Technology                       |
|------------|----------------------------------|
| Framework  | Next.js 15 (App Router)          |
| UI         | React 19 + Tailwind CSS          |
| Auth + DB  | Supabase (Auth + Postgres + RLS) |
| Payments   | Stripe Checkout + Customer Portal|
| Content    | MDX files in `src/content/`      |
| Unit tests | Vitest                           |
| E2e tests  | Playwright                       |
| Hosting    | Vercel                           |
| Package    | npm                              |

## Commands

```bash
npm run dev          # Start dev server
npm run build        # Production build
npm test             # Vitest unit tests (run)
npm run test:watch   # Vitest watch mode
npm run lint         # ESLint
```

## Architecture

- **App Router only** — all routes under `src/app/`, no Pages Router
- **MDX for content** — lessons are `.mdx` files in `src/content/{section}/`, imported dynamically
- **Static data layer** — section/lesson metadata in `src/lib/sections.ts`
- **Server components by default** — client components only where interactivity is required
- **`mdx-components.tsx`** at `src/` root — custom styled overrides for all MDX elements
- **Supabase SSR auth** — `@supabase/ssr` with server/client clients and middleware for session refresh
- **Stripe lazy init** — `getStripe()` function to avoid build-time errors from missing env vars
- **Stripe webhooks** — subscription status updated server-side via service role client (bypasses RLS)
- **Auth middleware** — protects `/dashboard`, `/account`, `/exam` routes and gated lesson pages

## File Conventions

- Components: `kebab-case.tsx` in `src/components/`
- Routes: Next.js App Router conventions (`page.tsx`, `layout.tsx`, `route.ts`)
- MDX content: `NN-slug.mdx` with zero-padded order (e.g., `01-intro.mdx`)
- Tests: `tests/unit/` for Vitest, `tests/e2e/` for Playwright

## Current Phase

**Phase 1: Scaffold + Static Shell** — complete
**Phase 2: Auth + Payments** — complete

Completed (Phase 2):
- Supabase SSR auth (browser + server clients, middleware)
- Email/password signup, login, logout
- Password reset + update password flow
- Auth callback route for email confirmation
- Middleware redirects unauthenticated users from protected routes
- Stripe Checkout session creation ($9.99/mo)
- Stripe webhook handler (subscription created/updated/deleted)
- Stripe Customer Portal for subscription management
- Paywall component on non-free lesson pages
- First lesson of each section marked `is_free: true`
- Dashboard page with section cards
- Account page with subscription status + subscribe/manage buttons
- Nav shows auth-aware links (dashboard, account, logout)
- Database migration with all tables, RLS, trigger, seed data
- `.env.local.example` with all required env vars
- 13 passing Vitest tests, clean build (21 routes)

## Spec Reference

Full product specification with all 7 phases, data model, and acceptance criteria lives at:
`../personal-org/projects/learning-specification/cpa-study-website.md`
