-- Fix 1: Set immutable search_path on handle_new_user
create or replace function public.handle_new_user()
returns trigger as $$
begin
  insert into public.profiles (id) values (new.id);
  return new;
end;
$$ language plpgsql security definer set search_path = '';

-- Fix 2: Set immutable search_path on get_random_questions
CREATE OR REPLACE FUNCTION public.get_random_questions(
  p_section_id int,
  p_count int,
  p_topics text[] DEFAULT NULL
)
RETURNS SETOF public.questions
LANGUAGE sql STABLE
SET search_path = ''
AS $$
  SELECT * FROM public.questions
  WHERE section_id = p_section_id
    AND (p_topics IS NULL OR topic = ANY(p_topics))
  ORDER BY random()
  LIMIT p_count;
$$;

-- Fix 3: Require authentication for feedback submissions
drop policy if exists "Anyone can submit feedback" on feedback;
drop policy if exists "Authenticated users can submit feedback" on feedback;
create policy "Authenticated users can submit feedback"
  on feedback for insert
  with check (auth.uid() is not null and user_id = auth.uid());
