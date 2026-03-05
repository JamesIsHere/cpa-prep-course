-- Migration tracking table — prevents double-apply of migrations
CREATE TABLE applied_migrations (
  filename TEXT PRIMARY KEY,
  applied_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
ALTER TABLE applied_migrations ENABLE ROW LEVEL SECURITY;
-- No policies = service-role only (anon/authenticated cannot read or write)
