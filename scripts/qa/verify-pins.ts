// Verify pin counts match classify-<section>.json counts.
// Usage: npx tsx scripts/qa/verify-pins.ts --section=far

import { readFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { supabase } from "./db-client";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "../..");

const sectionRaw = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
if (!sectionRaw) {
	console.error("Usage: --section=<code>");
	process.exit(1);
}
const section: string = sectionRaw;

async function main() {
	const classify = JSON.parse(
		readFileSync(resolve(root, `docs/classify-${section}.json`), "utf-8"),
	);
	// Dedup by question_id (classifier files can carry multiple entries for
	// the same ID from merged partial runs; all entries for a given ID have
	// identical pin_ref by construction of the merge logic). The DB has one
	// row per ID, so we compare against unique-ID counts.
	const uniqById = new Map<number, { pin_ref: string | null }>();
	for (const s of classify.suggestions as { question_id: number; pin_ref: string | null }[]) {
		uniqById.set(s.question_id, s);
	}
	const uniq = [...uniqById.values()];
	const expected = uniq.filter((s) => s.pin_ref).length;
	const expectedHomeless = uniq.filter((s) => !s.pin_ref).length;
	const rawTotal = (classify.suggestions as unknown[]).length;
	if (rawTotal !== uniq.length) {
		console.log(`(classifier file has ${rawTotal - uniq.length} duplicate entry/ies — deduped for comparison)`);
	}

	const { data: sec } = await supabase
		.from("sections")
		.select("id")
		.eq("code", section)
		.single();
	const sectionId = sec!.id;

	const { count: pinned } = await supabase
		.from("questions")
		.select("*", { count: "exact", head: true })
		.eq("section_id", sectionId)
		.not("pin_ref", "is", null);

	const { count: unpinned } = await supabase
		.from("questions")
		.select("*", { count: "exact", head: true })
		.eq("section_id", sectionId)
		.is("pin_ref", null);

	const { count: totalSec } = await supabase
		.from("questions")
		.select("*", { count: "exact", head: true })
		.eq("section_id", sectionId);

	console.log(`Section: ${section.toUpperCase()}`);
	console.log(`DB total in section: ${totalSec}`);
	console.log(`Expected pinned (classifier matched): ${expected}`);
	console.log(`Actual pinned (DB pin_ref NOT NULL): ${pinned}`);
	console.log(`Expected unpinned (classifier homeless): ${expectedHomeless}`);
	console.log(`Actual unpinned (DB pin_ref IS NULL): ${unpinned}`);
	console.log();
	if (expected === pinned && expectedHomeless === unpinned) {
		console.log("PASS — counts match expectation");
	} else {
		console.log("FAIL — mismatch detected");
		process.exit(1);
	}

	// Also check distinct pin_refs (paginate to avoid Supabase 1000-row default truncation)
	const allRefs: string[] = [];
	let offset = 0;
	while (true) {
		const { data } = await supabase
			.from("questions")
			.select("pin_ref")
			.eq("section_id", sectionId)
			.not("pin_ref", "is", null)
			.range(offset, offset + 999);
		if (!data || data.length === 0) break;
		allRefs.push(...data.map((r: { pin_ref: string }) => r.pin_ref));
		if (data.length < 1000) break;
		offset += 1000;
	}
	const unique = new Set(allRefs);
	console.log(`Distinct pin_refs in DB: ${unique.size}`);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
