// Generate a SQL migration that pins questions to their classifier-suggested
// pin_ref. Reads docs/classify-<section>.json and emits batched UPDATE
// statements grouped by pin_ref (one UPDATE per unique ref).
//
// Homeless questions (pin_ref = null) are NOT touched — they stay at the
// schema default of NULL.
//
// Usage: npx tsx scripts/qa/generate-pin-migration.ts --section=far --out=supabase/migrations/01066_pin_far_questions.sql

import { readFileSync, writeFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "../..");

const section = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const outArg = process.argv.find((a) => a.startsWith("--out="))?.split("=")[1];
if (!section || !outArg) {
	console.error(
		"Usage: --section=<code> --out=supabase/migrations/NNNNN_pin_<section>.sql",
	);
	process.exit(1);
}

const classify = JSON.parse(
	readFileSync(resolve(root, `docs/classify-${section}.json`), "utf-8"),
);
const suggestions = classify.suggestions as {
	question_id: number;
	pin_ref: string | null;
	confidence: string;
}[];

const matched = suggestions.filter((s) => s.pin_ref);
const homeless = suggestions.filter((s) => !s.pin_ref);

// Group by pin_ref
const byRef = new Map<string, number[]>();
for (const s of matched) {
	const list = byRef.get(s.pin_ref!) ?? [];
	list.push(s.question_id);
	byRef.set(s.pin_ref!, list);
}

// Sort pin_refs for deterministic output
const refs = [...byRef.keys()].sort();

let sql = `-- Phase 1E: Pin ${section.toUpperCase()} questions to classifier-suggested pin_ref\n`;
sql += `-- Based on docs/classify-${section}.json (${classify.generatedAt ?? "?"})\n`;
sql += `-- Total: ${suggestions.length} questions | Matched: ${matched.length} (${((100 * matched.length) / suggestions.length).toFixed(1)}%) | Homeless: ${homeless.length}\n`;
sql += `-- Unique pin_refs: ${refs.length}\n`;
sql += `-- Homeless questions remain at pin_ref = NULL (schema default)\n\n`;
sql += `BEGIN;\n\n`;

for (const ref of refs) {
	const ids = byRef.get(ref)!.sort((a, b) => a - b);
	sql += `-- ${ref} (${ids.length} question${ids.length === 1 ? "" : "s"})\n`;
	sql += `UPDATE questions SET pin_ref = '${ref}', pinned_at = now() WHERE id IN (${ids.join(",")});\n\n`;
}

sql += `-- Sanity check: matched rows should equal ${matched.length}\n`;
sql += `-- SELECT count(*) FROM questions WHERE pin_ref IS NOT NULL AND section_id = (SELECT id FROM sections WHERE code = '${section}');\n\n`;
sql += `COMMIT;\n`;

const outPath = resolve(root, outArg);
writeFileSync(outPath, sql);
console.log(`Wrote ${outPath}`);
console.log(`  ${refs.length} unique pin_refs across ${matched.length} matched questions`);
console.log(`  ${homeless.length} homeless questions unaffected`);
