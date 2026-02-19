-- Allow users to update their own exam attempts (for scoring/completion)
create policy "users update own exams"
  on exam_attempts for update using (auth.uid() = user_id);
