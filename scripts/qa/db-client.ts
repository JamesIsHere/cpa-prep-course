// Supabase client for QA scripts — uses service role key to bypass RLS

import { createClient } from "@supabase/supabase-js";
import { config } from "dotenv";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));

// Load .env.local from project root
config({ path: resolve(__dirname, "../../.env.local") });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!supabaseUrl || !serviceRoleKey) {
	console.error(
		"Missing NEXT_PUBLIC_SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY in .env.local",
	);
	process.exit(1);
}

export const supabase = createClient(supabaseUrl, serviceRoleKey);

export interface DbQuestion {
	id: number;
	section_id: number;
	topic: string;
	difficulty: string;
	stem: string;
	choices: string[];
	correct_index: number;
	explanation: string;
}

/**
 * Fetch all questions, optionally filtered by section code.
 * Fetches in pages of 1000 to avoid Supabase row limits.
 */
export async function fetchAllQuestions(
	sectionCode?: string,
): Promise<DbQuestion[]> {
	// Resolve section code to numeric ID once before pagination loop
	let sectionId: number | undefined;
	if (sectionCode) {
		const { data: section } = await supabase
			.from("sections")
			.select("id")
			.eq("code", sectionCode)
			.single();

		if (!section) {
			console.error(`Section '${sectionCode}' not found in DB`);
			process.exit(1);
		}
		sectionId = section.id;
	}

	const all: DbQuestion[] = [];
	const pageSize = 1000;
	let offset = 0;

	while (true) {
		let query = supabase
			.from("questions")
			.select(
				"id, section_id, topic, difficulty, stem, choices, correct_index, explanation",
			)
			.range(offset, offset + pageSize - 1)
			.order("id");

		if (sectionId !== undefined) {
			query = query.eq("section_id", sectionId);
		}

		const { data, error } = await query;
		if (error) {
			console.error("DB query error:", error.message);
			process.exit(1);
		}

		if (!data || data.length === 0) break;
		all.push(...(data as DbQuestion[]));
		if (data.length < pageSize) break;
		offset += pageSize;
	}

	return all;
}
