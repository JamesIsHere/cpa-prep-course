-- Wrap auth.uid() in subselects so Postgres evaluates once per query, not per row.
-- Fixes all 10 "Auth RLS Initialization Plan" performance warnings.

-- profiles (2 policies)
drop policy "users read own profile" on profiles;
create policy "users read own profile"
  on profiles for select using ((select auth.uid()) = id);

drop policy "users update own profile" on profiles;
create policy "users update own profile"
  on profiles for update using ((select auth.uid()) = id);

-- quiz_attempts (3 policies)
drop policy "users read own quizzes" on quiz_attempts;
create policy "users read own quizzes"
  on quiz_attempts for select using ((select auth.uid()) = user_id);

drop policy "users insert own quizzes" on quiz_attempts;
create policy "users insert own quizzes"
  on quiz_attempts for insert with check ((select auth.uid()) = user_id);

drop policy "users update own quizzes" on quiz_attempts;
create policy "users update own quizzes"
  on quiz_attempts for update
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

-- exam_attempts (3 policies)
drop policy "users read own exams" on exam_attempts;
create policy "users read own exams"
  on exam_attempts for select using ((select auth.uid()) = user_id);

drop policy "users insert own exams" on exam_attempts;
create policy "users insert own exams"
  on exam_attempts for insert with check ((select auth.uid()) = user_id);

drop policy "users update own exams" on exam_attempts;
create policy "users update own exams"
  on exam_attempts for update
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

-- feedback (2 policies)
drop policy "Authenticated users can submit feedback" on feedback;
create policy "Authenticated users can submit feedback"
  on feedback for insert
  with check ((select auth.uid()) is not null and user_id = (select auth.uid()));

drop policy "Users can view their own feedback" on feedback;
create policy "Users can view their own feedback"
  on feedback for select using ((select auth.uid()) = user_id);
