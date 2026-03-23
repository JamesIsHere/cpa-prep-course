/* eslint-disable @typescript-eslint/no-require-imports */
const fs = require('fs');
const path = require('path');
const dir = 'supabase/migrations';

const files = fs.readdirSync(dir).filter(f => /cleanup_far_batch(1[7-9]|2\d)\.sql$/.test(f));

for (const file of files) {
  const filepath = path.join(dir, file);
  let sql = fs.readFileSync(filepath, 'utf8');

  // Replace any $TAG$ dollar-quoted string with $EXPL$ tag
  // Matches: $19$content$19$, $$content$$, $42$content$42$, etc.
  sql = sql.replace(/\$(\d*)\$([\s\S]*?)\$\1\$/g, (match, tag, content) => {
    // Inside dollar quotes, single quotes don't need escaping — unescape them
    const clean = content.replace(/''/g, "'");
    return '$EXPL$' + clean + '$EXPL$';
  });

  // Fix over-escaped single quotes (from previous fix attempts)
  sql = sql.replace(/''''''/g, "''");
  sql = sql.replace(/''''/g, "''");

  // Strip trailing junk
  sql = sql.replace(/\n'*\s*$/g, '\n');

  fs.writeFileSync(filepath, sql);
  console.log('Fixed:', file);
}
