import { redirect } from "next/navigation";
import { isAdmin } from "@/lib/admin";
import { createClient } from "@/lib/supabase/server";
import AdminSidebar from "./admin-sidebar";

export const metadata = {
	title: "Admin",
};

export default async function AdminLayout({
	children,
}: {
	children: React.ReactNode;
}) {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user || !isAdmin(user.id)) {
		redirect("/dashboard");
	}

	return (
		<div className="flex min-h-[calc(100vh-64px)]">
			<AdminSidebar />
			<main className="flex-1 overflow-y-auto">{children}</main>
		</div>
	);
}
