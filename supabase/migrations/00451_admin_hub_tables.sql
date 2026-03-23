-- Admin hub: resume cursors + review enhancements

-- Track resume position per section for the admin reviewer
CREATE TABLE admin_review_cursors (
  section_code     text NOT NULL,
  user_id          uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  last_question_id int NOT NULL,
  updated_at       timestamptz DEFAULT now(),
  PRIMARY KEY (section_code, user_id)
);
ALTER TABLE admin_review_cursors ENABLE ROW LEVEL SECURITY;
CREATE POLICY "users manage own cursors" ON admin_review_cursors
  FOR ALL USING ((select auth.uid()) = user_id)
  WITH CHECK ((select auth.uid()) = user_id);

-- Flag resolution notes (resolved_at column already exists)
ALTER TABLE question_flags
  ADD COLUMN IF NOT EXISTS resolution_notes text DEFAULT '';

-- Freeform notes on reviewed questions (not tied to a flag category)
ALTER TABLE question_reviews
  ADD COLUMN IF NOT EXISTS notes text DEFAULT '';
