-- Feedback table for contact form and inline widget submissions
create table feedback (
  id bigint generated always as identity primary key,
  user_id uuid references auth.users,
  email text,
  page_url text,
  category text default 'general'
    check (category in ('general', 'content_issue', 'bug', 'suggestion')),
  message text not null,
  created_at timestamptz default now()
);

-- RLS: users can insert their own feedback, anon can insert with no user_id
alter table feedback enable row level security;

create policy "Anyone can submit feedback"
  on feedback for insert
  with check (true);

create policy "Users can view their own feedback"
  on feedback for select
  using (auth.uid() = user_id);
