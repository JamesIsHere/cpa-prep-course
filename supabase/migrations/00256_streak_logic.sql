-- Add streak tracking to profiles
ALTER TABLE profiles ADD COLUMN IF NOT EXISTS current_streak INT DEFAULT 0;
ALTER TABLE profiles ADD COLUMN IF NOT EXISTS last_streak_update DATE;

-- Update the daily progress RPC to also calculate and update streaks
CREATE OR REPLACE FUNCTION get_user_daily_progress(p_user_id UUID)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  v_questions_done INT;
  v_lessons_done INT;
  v_goals JSONB;
  v_current_streak INT;
  v_last_update DATE;
  v_today DATE := CURRENT_DATE;
  v_goal_met BOOLEAN;
BEGIN
  -- 1. Count progress for today
  SELECT COUNT(*) INTO v_questions_done
  FROM (
    SELECT jsonb_array_elements(answers)
    FROM quiz_attempts
    WHERE user_id = p_user_id 
      AND completed_at >= CURRENT_DATE
    UNION ALL
    SELECT jsonb_array_elements(answers)
    FROM exam_attempts
    WHERE user_id = p_user_id 
      AND completed_at >= CURRENT_DATE
  ) sub;

  SELECT COUNT(DISTINCT (q.topic)) INTO v_lessons_done
  FROM quiz_attempts qa,
  jsonb_array_elements(topic_scores) AS q
  WHERE qa.user_id = p_user_id 
    AND qa.completed_at >= CURRENT_DATE;

  -- 2. Get goals and current streak info
  SELECT daily_goals, current_streak, last_streak_update 
  INTO v_goals, v_current_streak, v_last_update 
  FROM profiles 
  WHERE id = p_user_id;

  v_goals := COALESCE(v_goals, '{"questions": 20, "lessons": 1}'::jsonb);
  v_current_streak := COALESCE(v_current_streak, 0);

  -- 3. Streak Logic
  v_goal_met := (v_questions_done >= (v_goals->>'questions')::int AND v_lessons_done >= (v_goals->>'lessons')::int);

  IF v_goal_met THEN
    -- If we hit the goal today and haven't updated the streak today yet
    IF v_last_update IS NULL OR v_last_update < v_today THEN
      -- If last update was yesterday, increment. If longer ago, reset to 1.
      IF v_last_update = v_today - INTERVAL '1 day' THEN
        v_current_streak := v_current_streak + 1;
      ELSE
        v_current_streak := 1;
      END IF;
      
      UPDATE profiles 
      SET current_streak = v_current_streak, 
          last_streak_update = v_today 
      WHERE id = p_user_id;
    END IF;
  ELSE
    -- If goal not met, check if we lost the streak (last update was before yesterday)
    -- BUT don't reset if last update was today or yesterday (give them until end of day)
    IF v_last_update IS NOT NULL AND v_last_update < v_today - INTERVAL '1 day' THEN
      v_current_streak := 0;
      UPDATE profiles SET current_streak = 0 WHERE id = p_user_id;
    END IF;
  END IF;

  RETURN jsonb_build_object(
    'questions_done', COALESCE(v_questions_done, 0),
    'lessons_done', COALESCE(v_lessons_done, 0),
    'goals', v_goals,
    'streak', v_current_streak
  );
END;
$$;
