import { createClient } from "@/lib/supabase/server";
import FlagsClient from "./flags-client";

export const dynamic = "force-dynamic";

export const metadata = {
	title: "Flags — Admin",
};

export interface FlagRow {
	id: number;
	question_id: number;
	flag_type: string;
	notes: string;
	created_at: string;
	resolved_at: string | null;
	resolution_notes: string;
	stem: string;
	section_code: string;
	topic: string;
}

export default async function FlagsPage() {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) return null;

	// Fetch all sections for the lookup
	const { data: sectionRows } = await supabase
		.from("sections")
		.select("id, code")
		.order("id");

	const sectionById = new Map(
		(sectionRows ?? []).map((s) => [s.id, s.code]),
	);

	// Fetch all flags (open + resolved) with question data
	const { data: flagRows } = await supabase
		.from("question_flags")
		.select("id, question_id, flag_type, notes, created_at, resolved_at, resolution_notes, questions!inner(stem, section_id, topic)")
		.eq("user_id", user.id)
		.order("created_at", { ascending: false });

	const flags: FlagRow[] = (flagRows ?? []).map((f) => {
		const q = f.questions as unknown as {
			stem: string;
			section_id: number;
			topic: string;
		};
		return {
			id: f.id,
			question_id: f.question_id,
			flag_type: f.flag_type,
			notes: f.notes,
			created_at: f.created_at,
			resolved_at: f.resolved_at,
			resolution_notes: f.resolution_notes ?? "",
			stem: q.stem,
			section_code: sectionById.get(q.section_id) ?? "???",
			topic: q.topic,
		};
	});

	const sections = (sectionRows ?? []).map((s) => s.code);

	return <FlagsClient flags={flags} sections={sections} />;
}
