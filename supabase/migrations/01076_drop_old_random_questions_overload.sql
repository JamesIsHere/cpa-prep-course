-- Drop the 4-arg overload of get_random_questions left behind by migration 01074.
--
-- Root cause: 01074 used CREATE OR REPLACE FUNCTION to add p_pinned_only, but
-- Postgres treats different-arity functions as separate objects — so the DB
-- ended up with BOTH the old 4-arg signature and the new 5-arg signature.
-- PostgREST cannot choose between them when callers omit p_pinned_only,
-- emitting:
--   "Could not choose the best candidate function between ..."
--
-- Production quiz/exam routes already pass p_pinned_only explicitly per the
-- Phase 1F wiring, so end users are unaffected — but the health-check RPC
-- probe catches this, and any future caller that omits the new arg would fail.
--
-- Fix: drop the old 4-arg signature. The 5-arg version is the canonical one;
-- callers that don't want the pinned filter can pass p_pinned_only => false
-- (the default) or omit it entirely once this overload is gone.

DROP FUNCTION IF EXISTS public.get_random_questions(
  p_section_id int,
  p_count int,
  p_topics text[],
  p_difficulties text[]
);
