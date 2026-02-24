-- Enable RLS on content tables that were missing it.
-- These tables already have "public read" SELECT policies from 00001,
-- but RLS was never turned on, so the policies were not enforced.
-- Without RLS enabled, any authenticated client can INSERT/UPDATE/DELETE.

alter table sections enable row level security;
alter table lessons enable row level security;
alter table questions enable row level security;
