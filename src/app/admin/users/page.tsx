import { createAdminClient } from "@/lib/admin";
import { createClient } from "@/lib/supabase/server";

export const dynamic = "force-dynamic";

export const metadata = {
	title: "Users — Admin",
};

interface UserRow {
	id: string;
	email: string;
	created_at: string;
	last_sign_in_at: string | null;
	subscription_status: string | null;
	quiz_count: number;
	exam_count: number;
}

export default async function UsersPage() {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) return null;

	// Use service-role client to list auth users
	const admin = createAdminClient();
	const { data: authData } = await admin.auth.admin.listUsers();
	const authUsers = authData?.users ?? [];

	// Fetch profiles for subscription status
	const { data: profiles } = await admin
		.from("profiles")
		.select("id, subscription_status");

	const profileMap = new Map(
		(profiles ?? []).map((p) => [p.id, p.subscription_status]),
	);

	// Fetch quiz + exam attempt counts per user
	const { data: quizCounts } = await admin
		.from("quiz_attempts")
		.select("user_id");

	const quizCountMap = new Map<string, number>();
	for (const q of quizCounts ?? []) {
		quizCountMap.set(q.user_id, (quizCountMap.get(q.user_id) ?? 0) + 1);
	}

	const { data: examCounts } = await admin
		.from("exam_attempts")
		.select("user_id");

	const examCountMap = new Map<string, number>();
	for (const e of examCounts ?? []) {
		examCountMap.set(e.user_id, (examCountMap.get(e.user_id) ?? 0) + 1);
	}

	const users: UserRow[] = authUsers
		.map((u) => ({
			id: u.id,
			email: u.email ?? "(no email)",
			created_at: u.created_at,
			last_sign_in_at: u.last_sign_in_at ?? null,
			subscription_status: profileMap.get(u.id) ?? null,
			quiz_count: quizCountMap.get(u.id) ?? 0,
			exam_count: examCountMap.get(u.id) ?? 0,
		}))
		.sort((a, b) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime());

	return (
		<div className="max-w-5xl mx-auto px-6 py-8">
			<div className="mb-6">
				<h1 className="text-2xl font-bold text-gray-900 mb-1">Users</h1>
				<p className="text-sm text-gray-500">
					{users.length} registered user{users.length !== 1 ? "s" : ""}
				</p>
			</div>

			<div className="bg-white border border-gray-200 rounded-2xl shadow-sm overflow-hidden">
				<table className="w-full text-sm">
					<thead>
						<tr className="bg-gray-50 border-b border-gray-200 text-left">
							<th className="px-6 py-3 text-xs font-bold text-gray-400 uppercase tracking-widest">
								Email
							</th>
							<th className="px-4 py-3 text-xs font-bold text-gray-400 uppercase tracking-widest">
								Signed Up
							</th>
							<th className="px-4 py-3 text-xs font-bold text-gray-400 uppercase tracking-widest">
								Last Login
							</th>
							<th className="px-4 py-3 text-xs font-bold text-gray-400 uppercase tracking-widest">
								Status
							</th>
							<th className="px-4 py-3 text-xs font-bold text-gray-400 uppercase tracking-widest text-right">
								Quizzes
							</th>
							<th className="px-4 py-3 text-xs font-bold text-gray-400 uppercase tracking-widest text-right">
								Exams
							</th>
						</tr>
					</thead>
					<tbody className="divide-y divide-gray-100">
						{users.map((u) => (
							<tr key={u.id} className="hover:bg-gray-50 transition-colors">
								<td className="px-6 py-3 font-medium text-gray-900">
									{u.email}
								</td>
								<td className="px-4 py-3 text-gray-500">
									{new Date(u.created_at).toLocaleDateString()}
								</td>
								<td className="px-4 py-3 text-gray-500">
									{u.last_sign_in_at
										? new Date(u.last_sign_in_at).toLocaleDateString()
										: "Never"}
								</td>
								<td className="px-4 py-3">
									<StatusBadge status={u.subscription_status} />
								</td>
								<td className="px-4 py-3 text-gray-500 text-right">
									{u.quiz_count}
								</td>
								<td className="px-4 py-3 text-gray-500 text-right">
									{u.exam_count}
								</td>
							</tr>
						))}
					</tbody>
				</table>
			</div>
		</div>
	);
}

function StatusBadge({ status }: { status: string | null }) {
	const map: Record<string, string> = {
		active: "bg-emerald-100 text-emerald-700",
		trialing: "bg-blue-100 text-blue-700",
		past_due: "bg-amber-100 text-amber-700",
		canceled: "bg-red-100 text-red-700",
	};

	const label = status ?? "free";
	const colors = map[label] ?? "bg-gray-100 text-gray-600";

	return (
		<span className={`text-[10px] font-bold px-2 py-0.5 rounded-full ${colors}`}>
			{label}
		</span>
	);
}
