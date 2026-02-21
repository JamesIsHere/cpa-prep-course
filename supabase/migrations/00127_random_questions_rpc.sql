-- Server-side random question sampling
-- Replaces fetch-all-then-shuffle pattern in quiz/exam start routes

CREATE OR REPLACE FUNCTION get_random_questions(
  p_section_id int,
  p_count int,
  p_topics text[] DEFAULT NULL
)
RETURNS SETOF questions
LANGUAGE sql STABLE
AS $$
  SELECT * FROM questions
  WHERE section_id = p_section_id
    AND (p_topics IS NULL OR topic = ANY(p_topics))
  ORDER BY random()
  LIMIT p_count;
$$;
