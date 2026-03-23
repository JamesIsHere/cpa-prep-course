-- Admin question review tracking tables

-- Track which questions the admin has reviewed
CREATE TABLE question_reviews (
  question_id int NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  user_id     uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  reviewed_at timestamptz DEFAULT now(),
  PRIMARY KEY (question_id, user_id)
);
ALTER TABLE question_reviews ENABLE ROW LEVEL SECURITY;
CREATE POLICY "users manage own reviews" ON question_reviews
  FOR ALL USING ((select auth.uid()) = user_id)
  WITH CHECK ((select auth.uid()) = user_id);
CREATE INDEX idx_question_reviews_user ON question_reviews(user_id);

-- Track flagged issues on questions
CREATE TABLE question_flags (
  id          bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  question_id int NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  user_id     uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  flag_type   text NOT NULL CHECK (flag_type IN (
    'wrong_answer', 'unclear_stem', 'bad_distractor', 'wrong_explanation', 'other'
  )),
  notes       text DEFAULT '',
  created_at  timestamptz DEFAULT now(),
  resolved_at timestamptz,
  UNIQUE (question_id, user_id, flag_type)
);
ALTER TABLE question_flags ENABLE ROW LEVEL SECURITY;
CREATE POLICY "users manage own flags" ON question_flags
  FOR ALL USING ((select auth.uid()) = user_id)
  WITH CHECK ((select auth.uid()) = user_id);
CREATE INDEX idx_question_flags_question ON question_flags(question_id);
