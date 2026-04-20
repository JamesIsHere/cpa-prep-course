-- Direction W Phase 1F: add optional `p_pinned_only` filter to get_random_questions.
--
-- When true, the RPC only returns questions with pin_ref IS NOT NULL. Default
-- false preserves existing behavior (returns all questions in section).
--
-- This is the API plumbing for exam-aligned quiz mode. UI surface (toggle,
-- admin-only default, etc.) is a separate decision — the filter is off by
-- default so this migration is a no-op for current callers.

CREATE OR REPLACE FUNCTION public.get_random_questions(
  p_section_id int,
  p_count int,
  p_topics text[] DEFAULT NULL,
  p_difficulties text[] DEFAULT NULL,
  p_pinned_only boolean DEFAULT false
)
RETURNS SETOF public.questions
LANGUAGE sql STABLE
SET search_path = ''
AS $$
  SELECT * FROM public.questions
  WHERE section_id = p_section_id
    AND (p_topics IS NULL OR topic = ANY(p_topics))
    AND (p_difficulties IS NULL OR difficulty = ANY(p_difficulties))
    AND (p_pinned_only = false OR pin_ref IS NOT NULL)
  ORDER BY random()
  LIMIT p_count;
$$;
