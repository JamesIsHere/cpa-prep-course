-- Update get_random_questions to support difficulty filtering for adaptive learning
CREATE OR REPLACE FUNCTION public.get_random_questions(
  p_section_id int,
  p_count int,
  p_topics text[] DEFAULT NULL,
  p_difficulties text[] DEFAULT NULL
)
RETURNS SETOF public.questions
LANGUAGE sql STABLE
SET search_path = ''
AS $$
  SELECT * FROM public.questions
  WHERE section_id = p_section_id
    AND (p_topics IS NULL OR topic = ANY(p_topics))
    AND (p_difficulties IS NULL OR difficulty = ANY(p_difficulties))
  ORDER BY random()
  LIMIT p_count;
$$;
