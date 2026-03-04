-- RPC to fetch questions that the user has missed and not yet corrected
-- Logic: Finds the most recent answer for every question the user has attempted,
-- and returns those where the last answer was incorrect.

CREATE OR REPLACE FUNCTION get_missed_questions(
  p_user_id UUID,
  p_section_id INT,
  p_count INT DEFAULT 10
)
RETURNS TABLE (
  id INT,
  section_id INT,
  topic TEXT,
  stem TEXT,
  choices JSONB,
  difficulty TEXT
) 
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
  RETURN QUERY
  WITH last_answers AS (
    -- Get the most recent answer for each question the user has ever taken in this section
    SELECT DISTINCT ON (qid)
      (elem->>'question_id')::int as qid,
      (elem->>'choice_index')::int as last_choice,
      qa.completed_at
    FROM quiz_attempts qa,
    jsonb_array_elements(qa.answers) AS elem
    WHERE qa.user_id = p_user_id 
      AND qa.section_id = p_section_id
      AND qa.completed_at IS NOT NULL
    ORDER BY qid, qa.completed_at DESC
  )
  SELECT 
    q.id, 
    q.section_id, 
    q.topic, 
    q.stem, 
    q.choices, 
    q.difficulty
  FROM questions q
  JOIN last_answers la ON q.id = la.qid
  WHERE q.correct_index != la.last_choice
  ORDER BY RANDOM()
  LIMIT p_count;
END;
$$;
