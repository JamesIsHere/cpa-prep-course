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
  slug text not null,
  content_path text not null,
  unique (section_id, slug),
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

-- Seed AUD lessons
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (1, 'Introduction to Auditing and Attestation', '01-intro', 'aud/01-intro', 1, true),
  (1, 'Ethics and Independence', '02-ethics-and-independence', 'aud/02-ethics-and-independence', 2, false),
  (1, 'Audit Planning', '03-audit-planning', 'aud/03-audit-planning', 3, false),
  (1, 'Risk Assessment', '04-risk-assessment', 'aud/04-risk-assessment', 4, false),
  (1, 'Internal Controls', '05-internal-controls', 'aud/05-internal-controls', 5, false),
  (1, 'Audit Evidence', '06-audit-evidence', 'aud/06-audit-evidence', 6, false),
  (1, 'Audit Sampling', '07-sampling', 'aud/07-sampling', 7, false),
  (1, 'Substantive Procedures', '08-substantive-procedures', 'aud/08-substantive-procedures', 8, false),
  (1, 'Audit Reports', '09-audit-reports', 'aud/09-audit-reports', 9, false),
  (1, 'Review and Compilation Engagements', '10-review-compilation', 'aud/10-review-compilation', 10, false),
  (1, 'Attestation Engagements', '11-attestation-engagements', 'aud/11-attestation-engagements', 11, false),
  (1, 'Quality Management', '12-quality-management', 'aud/12-quality-management', 12, false);

-- Seed FAR lessons
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (2, 'Introduction to Financial Accounting and Reporting', '01-intro', 'far/01-intro', 1, true),
  (2, 'Financial Statements', '02-financial-statements', 'far/02-financial-statements', 2, false),
  (2, 'Revenue Recognition', '03-revenue-recognition', 'far/03-revenue-recognition', 3, false),
  (2, 'Inventory', '04-inventory', 'far/04-inventory', 4, false),
  (2, 'Fixed Assets', '05-fixed-assets', 'far/05-fixed-assets', 5, false),
  (2, 'Intangible Assets', '06-intangible-assets', 'far/06-intangible-assets', 6, false),
  (2, 'Leases', '07-leases', 'far/07-leases', 7, false),
  (2, 'Bonds and Debt', '08-bonds-and-debt', 'far/08-bonds-and-debt', 8, false),
  (2, 'Equity', '09-equity', 'far/09-equity', 9, false),
  (2, 'Income Taxes', '10-income-taxes', 'far/10-income-taxes', 10, false),
  (2, 'Governmental Accounting', '11-governmental-accounting', 'far/11-governmental-accounting', 11, false),
  (2, 'Not-for-Profit Accounting', '12-not-for-profit', 'far/12-not-for-profit', 12, false),
  (2, 'Consolidations', '13-consolidations', 'far/13-consolidations', 13, false);

-- Seed REG lessons
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (3, 'Introduction to Taxation and Regulation', '01-intro', 'reg/01-intro', 1, true),
  (3, 'Circular 230 and Professional Responsibilities', '02-circular-230', 'reg/02-circular-230', 2, false),
  (3, 'Business Law: Contracts', '03-business-law-contracts', 'reg/03-business-law-contracts', 3, false),
  (3, 'Agency and Business Regulation', '04-agency-and-regulation', 'reg/04-agency-and-regulation', 4, false),
  (3, 'Business Structures', '05-business-structures', 'reg/05-business-structures', 5, false),
  (3, 'Property Transactions: Basis', '06-property-transactions-basis', 'reg/06-property-transactions-basis', 6, false),
  (3, 'Property Transactions: Gains and Losses', '07-property-transactions-gains', 'reg/07-property-transactions-gains', 7, false),
  (3, 'Like-Kind Exchanges', '08-like-kind-exchanges', 'reg/08-like-kind-exchanges', 8, false),
  (3, 'Individual Taxation: Income', '09-individual-taxation-income', 'reg/09-individual-taxation-income', 9, false),
  (3, 'Individual Taxation: Credits and AMT', '10-individual-taxation-credits', 'reg/10-individual-taxation-credits', 10, false),
  (3, 'C Corporations', '11-c-corporations', 'reg/11-c-corporations', 11, false),
  (3, 'S Corporations', '12-s-corporations', 'reg/12-s-corporations', 12, false),
  (3, 'Partnerships', '13-partnerships', 'reg/13-partnerships', 13, false);
