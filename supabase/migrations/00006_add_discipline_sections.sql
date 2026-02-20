-- =============================================================================
-- Add 3 discipline sections (CPA Evolution 2024): BAR, ISC, TCP
-- Each section gets an intro lesson marked as free
-- =============================================================================

-- Insert discipline sections
insert into sections (code, title, description, slug, display_order) values
  ('bar', 'Business Analysis and Reporting', 'Financial analysis, valuation, advanced accounting, and governmental reporting. A discipline section for candidates pursuing corporate finance and advisory careers.', 'bar', 4),
  ('isc', 'Information Systems and Controls', 'IT infrastructure, cybersecurity, data management, and SOC engagements. A discipline section for candidates pursuing IT audit and technology advisory careers.', 'isc', 5),
  ('tcp', 'Tax Compliance and Planning', 'Advanced tax planning, international tax, entity compliance, and specialized transactions. A discipline section for candidates pursuing tax practice careers.', 'tcp', 6);

-- Seed BAR intro lesson (section_id = 4)
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (4, 'Introduction to Business Analysis and Reporting', '01-intro', 'bar/01-intro', 1, true);

-- Seed ISC intro lesson (section_id = 5)
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (5, 'Introduction to Information Systems and Controls', '01-intro', 'isc/01-intro', 1, true);

-- Seed TCP intro lesson (section_id = 6)
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (6, 'Introduction to Tax Compliance and Planning', '01-intro', 'tcp/01-intro', 1, true);
