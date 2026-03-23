const fs = require('fs');
const path = require('path');
const dir = 'supabase/migrations';

for (let i = 6; i <= 16; i++) {
  const pattern = new RegExp('cleanup_far_batch' + i + '[.]sql$');
  const files = fs.readdirSync(dir).filter(f => pattern.test(f));
  if (files.length === 0) continue;

  const filepath = path.join(dir, files[0]);
  let sql = fs.readFileSync(filepath, 'utf8');

  // Convert single-quoted strings back to dollar-quoted with a safe tag
  // that won't collide with dollar amounts in content.
  // $EXPL$ is safe because no explanation contains the literal text "EXPL$"

  // Match: column = 'content' where content may span multiple lines
  // We need to be careful to only match explanation/stem/choices assignments
  sql = sql.replace(/  (explanation|stem|choices) = '([\s\S]*?)('(?:,|\n|::jsonb))/g, (match, col, content, ending) => {
    // Unescape single quotes back to raw
    const raw = content.replace(/''/g, "'");
    const tag = '$EXPL$';
    const suffix = ending.replace("'", tag);
    return `  ${col} = ${tag}${raw}${suffix}`;
  });

  fs.writeFileSync(filepath, sql);
  console.log('Fixed:', files[0]);
}
