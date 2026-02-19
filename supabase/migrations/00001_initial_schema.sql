-- Profiles (extends Supabase Auth users)
create table profiles (
  id uuid references auth.users primary key,
  subscription_status text default 'free'
    check (subscription_status in ('free', 'active', 'canceled')),
  stripe_customer_id text,
  created_at timestamptz default now()
);

-- Auto-create profile on signup
create or replace function public.handle_new_user()
returns trigger as $$
begin
  insert into public.profiles (id) values (new.id);
  return new;
end;
$$ language plpgsql security definer;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- Sections
create table sections (
  id serial primary key,
  code text unique not null,
  title text not null,
  description text,
  slug text unique not null,
  display_order int not null
);

-- Lessons
create table lessons (
  id serial primary key,
  section_id int references sections not null,
  title text not null,
  slug text unique not null,
  content_path text not null,
  display_order int not null,
  is_free boolean default false
);

-- Questions
create table questions (
  id serial primary key,
  section_id int references sections not null,
  topic text,
  stem text not null,
  choices jsonb not null,
  correct_index int not null,
  explanation text,
  difficulty text default 'medium'
    check (difficulty in ('easy', 'medium', 'hard'))
);

-- Quiz attempts
create table quiz_attempts (
  id serial primary key,
  user_id uuid references auth.users not null,
  section_id int references sections not null,
  started_at timestamptz default now(),
  completed_at timestamptz,
  score int,
  total int,
  answers jsonb
);

-- Exam attempts
create table exam_attempts (
  id serial primary key,
  user_id uuid references auth.users not null,
  section_id int references sections not null,
  started_at timestamptz default now(),
  completed_at timestamptz,
  time_limit_minutes int default 240,
  score int,
  total int,
  answers jsonb
);

-- Row Level Security
alter table profiles enable row level security;
alter table quiz_attempts enable row level security;
alter table exam_attempts enable row level security;

create policy "users read own profile"
  on profiles for select using (auth.uid() = id);
create policy "users update own profile"
  on profiles for update using (auth.uid() = id);
create policy "users read own quizzes"
  on quiz_attempts for select using (auth.uid() = user_id);
create policy "users insert own quizzes"
  on quiz_attempts for insert with check (auth.uid() = user_id);
create policy "users read own exams"
  on exam_attempts for select using (auth.uid() = user_id);
create policy "users insert own exams"
  on exam_attempts for insert with check (auth.uid() = user_id);

create policy "public read sections"
  on sections for select using (true);
create policy "public read lessons"
  on lessons for select using (true);
create policy "public read questions"
  on questions for select using (true);

-- Seed sections
insert into sections (code, title, description, slug, display_order) values
  ('aud', 'Auditing and Attestation', 'Ethics, risk assessment, audit evidence, and forming conclusions. Covers the full audit lifecycle from engagement acceptance through reporting.', 'aud', 1),
  ('far', 'Financial Accounting and Reporting', 'Financial statement preparation, select transactions, and governmental accounting. The most content-heavy section of the CPA exam.', 'far', 2),
  ('reg', 'Taxation and Regulation', 'Federal taxation for individuals and entities, business law, and ethics. Covers tax compliance, planning, and professional responsibilities.', 'reg', 3);

-- Seed lessons
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (1, 'Introduction to Auditing and Attestation', '01-intro', 'aud/01-intro', 1, true),
  (2, 'Introduction to Financial Accounting and Reporting', '01-intro', 'far/01-intro', 1, true),
  (3, 'Introduction to Taxation and Regulation', '01-intro', 'reg/01-intro', 1, true);
