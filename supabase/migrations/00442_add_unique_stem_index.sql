-- Normalized unique index prevents exact duplicate stems per section.
-- normalize_stem() strips dollar amounts, percentages, and large numbers
-- so that questions differing only in entity names/numbers are caught.

CREATE OR REPLACE FUNCTION normalize_stem(stem TEXT) RETURNS TEXT AS $$
  SELECT LOWER(
    REGEXP_REPLACE(
      REGEXP_REPLACE(
        REGEXP_REPLACE(
          REGEXP_REPLACE(stem, '\$[\d,]+(\.\d+)?', '$X', 'g'),
          '\d+(\.\d+)?%', 'X%', 'g'),
        '\b\d{4,}\b', 'NUM', 'g'),
      '\s+', ' ', 'g')
  );
$$ LANGUAGE sql IMMUTABLE;

CREATE UNIQUE INDEX idx_questions_unique_stem
  ON questions (section_id, normalize_stem(stem));
