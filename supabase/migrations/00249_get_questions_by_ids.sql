-- RPC: fetch specific questions by ID array (for review-missed-questions feature)
-- Returns the same columns as get_random_questions but filtered to specific IDs.
CREATE OR REPLACE FUNCTION get_questions_by_ids(p_question_ids int[])
RETURNS TABLE (
  id int,
  stem text,
  choices jsonb,
  correct_index int,
  explanation text,
  topic text,
  difficulty text,
  cognitive_level int
)
LANGUAGE sql STABLE SECURITY DEFINER
AS $$
  SELECT q.id, q.stem, q.choices, q.correct_index, q.explanation,
         q.topic, q.difficulty, q.cognitive_level
  FROM questions q
  WHERE q.id = ANY(p_question_ids);
$$;
