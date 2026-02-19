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
- **Static data layer** — section/lesson metadata in `src/lib/sections.ts` (moves to Supabase in Phase 2)
- **Server components by default** — client components only where interactivity is required
- **`mdx-components.tsx`** at `src/` root — custom styled overrides for all MDX elements

## File Conventions

- Components: `kebab-case.tsx` in `src/components/`
- Routes: Next.js App Router conventions (`page.tsx`, `layout.tsx`, `route.ts`)
- MDX content: `NN-slug.mdx` with zero-padded order (e.g., `01-intro.mdx`)
- Tests: `tests/unit/` for Vitest, `tests/e2e/` for Playwright

## Current Phase

**Phase 1: Scaffold + Static Shell** — complete

Completed:
- Next.js scaffold with TypeScript, Tailwind, App Router
- Landing page with hero, features, pricing, section preview
- Section listing page with AUD/FAR/REG cards
- Section detail page with lesson list
- Lesson page with sidebar nav + MDX rendering + prev/next
- Responsive layout with mobile hamburger nav and collapsible sidebar
- 1 intro MDX lesson per section (AUD, FAR, REG)
- 13 passing Vitest tests
- Clean production build (11 static routes)

## Spec Reference

Full product specification with all 7 phases, data model, and acceptance criteria lives at:
`../personal-org/projects/learning-specification/cpa-study-website.md`
