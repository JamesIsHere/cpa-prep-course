-- Allow deleting users from Supabase dashboard by cascading to dependent rows

-- profiles: drop and re-add FK with CASCADE
alter table profiles
  drop constraint profiles_id_fkey,
  add constraint profiles_id_fkey
    foreign key (id) references auth.users on delete cascade;

-- quiz_attempts: drop and re-add FK with CASCADE
alter table quiz_attempts
  drop constraint quiz_attempts_user_id_fkey,
  add constraint quiz_attempts_user_id_fkey
    foreign key (user_id) references auth.users on delete cascade;

-- exam_attempts: drop and re-add FK with CASCADE
alter table exam_attempts
  drop constraint exam_attempts_user_id_fkey,
  add constraint exam_attempts_user_id_fkey
    foreign key (user_id) references auth.users on delete cascade;
